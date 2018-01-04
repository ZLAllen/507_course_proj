// ESE-507 Fall 2016
// Reference solution for Project 2, Part 3

module layer_8_10_1_16(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   parameter M = 8;
   parameter N = 10;
   parameter T = 16;
   parameter logW = $clog2(M*N+1), logN = $clog2(N+1), logM = $clog2(M+1);
   input clk, reset;

   input s_valid;
   input [T-1:0] data_in;
   output logic s_ready;
   
   input 	m_ready;
   output logic m_valid;
   output signed [T-1:0] data_out;
  
   //change here
   logic [logN-1:0]	addr_x;
   logic [logM-1:0]     addr_b;
   logic [logW-1:0] 	addr_w;
   logic 		clear_acc, wr_en_x, wr_en_y;
   
   datapath #(M,N,T) d(clk, clear_acc, data_in, data_out, wr_en_x, wr_en_y, addr_x, addr_w, addr_b, m_valid, m_ready);
   ctrlpath #(M,N,T) c(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, addr_x, addr_w, addr_b);
   
endmodule

module memory(clk, data_in, data_out, addr, wr_en);
   parameter WIDTH=16, SIZE=64, LOGSIZE=6;
   input [WIDTH-1:0] data_in;
   output logic [WIDTH-1:0] data_out;
   input [LOGSIZE-1:0] 	    addr;
   input 		    clk, wr_en;
   logic [SIZE-1:0][WIDTH-1:0] mem;
   always_ff @(posedge clk) begin
      data_out <= mem[addr];
      if (wr_en)
	mem[addr] <= data_in;
   end
endmodule

module datapath(clk, clear_acc, data_in, data_out, wr_en_x, wr_en_y, addr_x, addr_w, addr_b, m_valid, m_ready);

   parameter M = 3, N = 3, T = 16;
   parameter logW = $clog2(M*N+1), logN = $clog2(N+1), logM = $clog2(M+1);

   input clk, clear_acc, wr_en_x, wr_en_y, m_valid, m_ready;
   input [T-1:0] data_in;
   output logic signed [T-1:0] data_out;
   logic signed [T-1:0]        data_out_x, data_out_w;
   logic [T-1:0] 	      data_out_b;
   logic signed [T-1:0]       f, mul_out, adder, mul_out_save;
   input logic [logN-1:0]     addr_x;
   input logic [logM-1:0]     addr_b;
   input logic [logW-1:0]     addr_w;
   logic 		      delay;
   logic 		      clear_acc_delay, more_delay;
   
   //**************** I changed here (still need to parameterize x) 
   memory #(T,N, logN)  mem_x(clk, data_in, data_out_x, addr_x, wr_en_x); // memory Instantaion for colum matrix
  //They will be ROMMMMMMMMM
   layer_8_10_1_16_W_rom mem_w(clk, addr_w, data_out_w); // memory Instantation 4*4 matrix
   layer_8_10_1_16_B_rom mem_b(clk, addr_b, data_out_b);  // bias memory

   always_ff @(posedge clk) begin
      if (clear_acc_delay)	
	//f <= {8'b0,data_out_b};
        f <= data_out_b;
      else if 
	(m_valid && !m_ready || delay || more_delay) f <= f;
      else 
	f <= adder;

   end
   always_ff @(posedge clk) begin
      clear_acc_delay <= clear_acc;
   end

   always_ff @(posedge clk) begin
      delay <= (m_valid && !m_ready);
      more_delay <= delay;
   end
/*
   always_comb begin
      if (delay) 
	mul_out = mul_out_save;
      else 
	mul_out = data_out_x * data_out_w;	
      adder = mul_out + f;
   end

   always_ff @(posedge clk) begin
      if (clear_acc_delay) 
	mul_out_save <= mul_out;
   end
*/
   always_ff @(posedge clk) begin
       if(!delay) begin 
            mul_out = data_out_x * data_out_w;
       end
   end
   always_comb begin
        adder = mul_out +f;
    end

   always_ff @(posedge clk) begin
      if (wr_en_y) begin
          if (f > 0) begin
              data_out <= f;
          end else begin
              data_out <= 0;
          end
      end
      else if (m_valid && !m_ready)	
	data_out <= data_out;
      else data_out <= 0;
   end
   
   
endmodule

module ctrlpath(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc, wr_en_x, wr_en_y, addr_x, addr_w, addr_b);

   parameter M = 3, N = 3, T = 16;
   parameter logW = $clog2(M*N+1), logN = $clog2(N+1), logM = $clog2(M+1);
   input clk, reset;
   input s_valid, m_ready;
   output logic s_ready, m_valid;
   output logic clear_acc, wr_en_x, wr_en_y;
   logic [3:0] 	state, next_state;
   
   //**********change here need to add parameterization....

   output logic [logN-1:0] addr_x;
   output logic [logM-1:0] addr_b;
   output logic [logW-1:0] addr_w;
   logic [logW:0] 	   addr_w2;
   logic 	      last_state2, clear_acc_delay, state2to3, state2to4;
   logic [logM-1:0] 	      out_count; 
   
   assign addr_w = addr_w2[logW-1:0];
   
   always_ff @ (posedge clk) begin
      if (reset) begin
	 state <=0; 
      end		
      else 
	state <= next_state; 	
   end

   // Logic for addr_x
   always_ff @ (posedge clk) begin
      if (reset) addr_x <= 0;
      else begin
	 if (wr_en_x || (state==4 && !(m_valid && !m_ready))) 
	   addr_x <= addr_x + 1;
	 else if (state==7 || state2to4 || state2to3) 
	   addr_x <= 0;
      end
   end

   // Logic for out_count
   always_ff @ (posedge clk) begin
      if (reset) 
	out_count <= 0;
      else begin
	 if (state == 5) 
	   out_count <= out_count + 1;
	 else if (state == 7) 
	   out_count <= 0;
      end
   end

   // Logic for addr_b
   always_ff @ (posedge clk) begin
      if (reset) 
	addr_b <= 0;
      else begin
	 //if ((clear_acc_delay && !(m_valid && !m_ready)) || (m_ready && m_valid && state != 7 && !clear_acc)) 
	 if (clear_acc_delay)  
	   addr_b <= addr_b + 1;
	 else if (state==3 || state == 7) 
	   addr_b <= 0;
      end
   end

   // Logic for addr_w
   always_ff @ (posedge clk) begin
      if (reset) addr_w2 <= 0;
      else begin
	 if ((state==4 && !(m_valid && !m_ready) && next_state != 5)) addr_w2 <= addr_w2 + 1;
	 else if (last_state2 || state == 7) addr_w2 <= 0;
	 else addr_w2 <= addr_w2;
      end
   end
   
   always_ff @ (posedge clk) begin
      if (reset) clear_acc <= 1;
      else if (state2to3 || state == 2) begin clear_acc <=1; end
      else begin clear_acc <=0; end
   end
   
   always_ff @ (posedge clk) begin
      if (state == 5) begin wr_en_y <= 1; end
      else begin wr_en_y <= 0; end
   end
   
   always_ff @ (posedge clk) begin
      clear_acc_delay<= (clear_acc && state == 4);
   end
   
   always_ff @ (posedge clk) begin
      if (reset) m_valid <= 0;
      else begin
	 if (m_valid && !m_ready)	m_valid <= m_valid;
	 else  	m_valid <= wr_en_y;
      end
   end
   
   
   
   always_comb begin	state2to3 = 0; state2to4 = 0;

      // wait for valid input
      if (state==0) begin
	 if (s_valid) begin
	    next_state = 3;
	 end
	 else begin
	    next_state = 0;
	 end
	 
      end
/*
      // accepting W input; stay here until we get all of W matrix
      //***change here
      else if (state == 1) begin
	 if (addr_w2 < 9) begin	
	    next_state = 1;
	 end
	 else begin
	    next_state = 2;
	 end		
      end	

      // accepting b input; stay here until we get all of b vector
      //******change here
      else if (state == 2) begin
	 if (addr_b < 3) 
	   next_state = 2;
	 else begin
	    next_state = 3; 
	 end
      end	
*/
      // accepting x input; stay here until we get all of x vector
      //******** change here
      else if (state == 3) begin
	 if (addr_x < N) 
	   next_state = 3;
	 else begin
	    next_state = 4; 
	    state2to3 = 1;
	 end
      end			

    //****** change here 
      // computing one output; stay here until we get to the end of the matrix row
      else if (state == 4) begin
	 if (addr_x < N) 
	   next_state = 4;
	 else 
	    next_state = 5;
      end
// change here******
      // finish the row; check if we are done with the matrix yet; if not, go back to state 4
      else if (state == 5) begin
	 if (out_count < M-1) 
	   next_state = 2;
	 else 
	   next_state = 6;
      end

      else if (state == 2) begin
          next_state = 4;
          state2to4 = 1;
      end

      // wait one cycle
      else if (state == 6)
	next_state = 7;

      // wait until we transfer the last output word
      else if (state == 7) begin
	 if (m_ready && m_valid)	
	   next_state = 0;
	 else 
	   next_state = 7;
      end
      
      else next_state = 0;
      
      
      
   end
/* 
* I removed wr_en_x, and wr_en_w, need to disconnect all related signal for
* now
    * */

   // write to W memory when we are in state 1 and get valid data
  // assign wr_en_w  = (next_state == 1 && s_valid);
   
   // write to b memory when we are in state 2 and get valid data
   //assign wr_en_b  = (next_state == 2 && s_valid);

   // write to x memory when we are in state 3 and get valid data
   assign wr_en_x = (next_state == 3 && s_valid);

   // 1 cycle before 1st state 3 to set addr_b=0;
   assign last_state2  = (state2to3 && next_state==4);

   // assert s_ready when we are not reseting and our next state will be 0, 1, 2, or 3.
   assign s_ready = ((next_state == 3 || state == 0) && !reset);
   
endmodule



module layer_8_10_1_16_W_rom(clk, addr, z);
   input clk;
   input [6:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd2;
        1: z <= 16'd59;
        2: z <= 16'd53;
        3: z <= 16'd63;
        4: z <= 16'd38;
        5: z <= 16'd77;
        6: z <= -16'd73;
        7: z <= -16'd22;
        8: z <= -16'd2;
        9: z <= 16'd101;
        10: z <= -16'd19;
        11: z <= 16'd105;
        12: z <= 16'd11;
        13: z <= -16'd14;
        14: z <= 16'd53;
        15: z <= -16'd89;
        16: z <= 16'd14;
        17: z <= 16'd124;
        18: z <= -16'd23;
        19: z <= -16'd109;
        20: z <= 16'd17;
        21: z <= 16'd48;
        22: z <= -16'd123;
        23: z <= -16'd29;
        24: z <= -16'd109;
        25: z <= -16'd107;
        26: z <= -16'd69;
        27: z <= -16'd34;
        28: z <= -16'd44;
        29: z <= -16'd25;
        30: z <= 16'd1;
        31: z <= 16'd82;
        32: z <= -16'd94;
        33: z <= -16'd74;
        34: z <= 16'd17;
        35: z <= 16'd72;
        36: z <= -16'd125;
        37: z <= 16'd72;
        38: z <= -16'd78;
        39: z <= 16'd1;
        40: z <= 16'd46;
        41: z <= 16'd31;
        42: z <= -16'd22;
        43: z <= -16'd71;
        44: z <= -16'd110;
        45: z <= -16'd96;
        46: z <= -16'd32;
        47: z <= 16'd32;
        48: z <= -16'd100;
        49: z <= 16'd73;
        50: z <= 16'd52;
        51: z <= 16'd46;
        52: z <= -16'd7;
        53: z <= 16'd57;
        54: z <= -16'd111;
        55: z <= 16'd12;
        56: z <= 16'd78;
        57: z <= -16'd52;
        58: z <= 16'd106;
        59: z <= -16'd93;
        60: z <= 16'd51;
        61: z <= -16'd21;
        62: z <= 16'd117;
        63: z <= 16'd86;
        64: z <= 16'd33;
        65: z <= 16'd7;
        66: z <= 16'd30;
        67: z <= 16'd36;
        68: z <= -16'd49;
        69: z <= 16'd81;
        70: z <= -16'd90;
        71: z <= 16'd125;
        72: z <= -16'd16;
        73: z <= 16'd16;
        74: z <= -16'd74;
        75: z <= 16'd2;
        76: z <= 16'd48;
        77: z <= 16'd23;
        78: z <= -16'd93;
        79: z <= 16'd77;
      endcase
   end
endmodule

module layer_8_10_1_16_B_rom(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd32;
        1: z <= 16'd87;
        2: z <= -16'd5;
        3: z <= 16'd90;
        4: z <= 16'd16;
        5: z <= 16'd12;
        6: z <= -16'd26;
        7: z <= -16'd34;
      endcase
   end
endmodule

