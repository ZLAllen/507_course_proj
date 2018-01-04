module layer_16_8_2_16(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   parameter M = 16; 
   parameter N = 8; 
   parameter T = 16; 
   parameter P = 2; 
   parameter logW = $clog2(M*N/P+1), logN = $clog2(N+1), logM = $clog2(M/P+1), logP = $clog2(P+1); 
   input clk, reset; 
 
   input s_valid; 
   input [T-1:0] data_in; 
   output logic s_ready; 
    
   input 	m_ready; 
   output logic m_valid; 
   output logic signed [T-1:0] data_out; 
   
   logic [logN-1:0]	addr_x; 
   logic [T-1:0]	data_out_x; 

   logic [logM-1:0]     addr_b_0; 
   logic [logW-1:0]     addr_w_0; 
   logic [T-1:0]        data_out_b_0; 
   logic [T-1:0]        data_out_w_0; 
   logic [T-1:0]        data_out_0; 

   logic [logM-1:0]     addr_b_1; 
   logic [logW-1:0]     addr_w_1; 
   logic [T-1:0]        data_out_b_1; 
   logic [T-1:0]        data_out_w_1; 
   logic [T-1:0]        data_out_1; 

   logic 		clear_acc, wr_en_x, wr_en_y; 
   logic unsigned [logP-1:0] sel; 
    

   memory #(T,N, logN)  mem_x(clk, data_in, data_out_x, addr_x, wr_en_x); 
   layer_16_8_2_16_W_rom_0 mem_w_0(clk, addr_w_0, data_out_w_0);
   layer_16_8_2_16_B_rom_0 mem_b_0(clk, addr_b_0, data_out_b_0);

   layer_16_8_2_16_W_rom_1 mem_w_1(clk, addr_w_1, data_out_w_1);
   layer_16_8_2_16_B_rom_1 mem_b_1(clk, addr_b_1, data_out_b_1);



   datapath #(M,N,T,P) d_0(clk, clear_acc, data_out_x, data_out_0, data_out_w_0, data_out_b_0, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_1(clk, clear_acc, data_out_x, data_out_1, data_out_w_1, data_out_b_1, wr_en_y, m_valid, m_ready, sel); 
   ctrlpath #(M,N,T,P) c(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, sel, addr_x, addr_w_0, addr_b_0, addr_w_1, addr_b_1);
    
  always_comb begin
     case (sel) 
         0: data_out <= data_out_0;
         1: data_out <= data_out_1;
         default : data_out <= 0;
     endcase
 end     
 
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
 
module datapath(clk, clear_acc, data_out_x, data_out, data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel); 
 
   parameter M = 3, N = 3, T = 16, P = 2; 
   parameter logW = $clog2(M*N/P+1), logN = $clog2(N+1), logM = $clog2(M/P+1), logP = $clog2(P+1); 
 
   input clk, clear_acc, wr_en_y, m_valid, m_ready; 
   input signed [T-1:0]  data_out_x;
   input signed [T-1:0]  data_out_w; 
   input signed [T-1:0]  data_out_b; 
   input unsigned [logP-1:0] sel;
   output logic signed [T-1:0] data_out; 
   logic signed [T-1:0]       f, mul_out, adder, mul_out_save; 
   logic 		      delay; 
   logic 		      clear_acc_delay;
    
 
   always_ff @(posedge clk) begin 
      if (clear_acc)	 
        f <= data_out_b; 
      else if  
	(m_valid && !m_ready || delay) f <= f; 
      else  
	f <= adder; 
      clear_acc_delay <= clear_acc; 
   end 
 
   always_ff @(posedge clk) begin 
      delay <= (m_valid && !m_ready || sel < P-1); 
   end 
 
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
    
   always_ff @(posedge clk) begin 
      if (wr_en_y) begin 
          if (f > 0) begin 
              data_out <= f; 
          end else begin 
              data_out <= 0; 
          end 
      end 
      else if (m_valid && !m_ready || sel < P-1 )	 
	data_out <= data_out; 
     // else data_out <= 0; 
      else data_out <= 0; 
   end 
    
    
endmodule 
 
module ctrlpath(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, sel, addr_x, addr_w_0, addr_b_0, addr_w_1, addr_b_1);
    
   parameter M = 3, N = 3, T = 16, P = 2; 
   parameter logW = $clog2(M*N/P+1), logN = $clog2(N+1), logM = $clog2(M/P+1), logP = $clog2(P+1), logOUT = $clog2(M+1);
   input clk, reset; 
   input s_valid, m_ready;
   output logic unsigned [logP-1:0] sel;
   output logic s_ready, m_valid; 
   output logic clear_acc, wr_en_x, wr_en_y; 
   logic [3:0] 	state, next_state; 
    
 
   output logic [logM-1:0]     addr_b_0; 
   output logic [logW-1:0]     addr_w_0; 
   logic [logW:0]              addr_w2_0; 
   output logic [logM-1:0]     addr_b_1; 
   output logic [logW-1:0]     addr_w_1; 
   logic [logW:0]              addr_w2_1; 
   output logic [logN-1:0] addr_x; 
   logic 	      last_state2, clear_acc_delay, state2to3, state2to4; 
   logic [logOUT-1:0] 	      out_count;  
   logic unsigned [logP-1:0]    sel_count;
    
   assign addr_w_0 = addr_w2_0[logW-1:0]; 
   assign addr_w_1 = addr_w2_1[logW-1:0]; 
   assign sel = sel_count;
    
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
	 if (wr_en_x || (state==4 && !((m_valid && !m_ready) || sel_count < P-1)))  
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
	   out_count <= out_count + P; 
	 else if (state == 7)  
	   out_count <= 0; 
      end 
   end 
 
   // Logic for addr_b 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_0 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_0 <= addr_b_0 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_0 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_1 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_1 <= addr_b_1 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_1 <= 0; 
      end 
   end 
 
   // Logic for addr_w 
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_0 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_0  <= addr_w2_0  + 1; 
	 else if (last_state2 || state == 7) addr_w2_0  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_1 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_1  <= addr_w2_1  + 1; 
	 else if (last_state2 || state == 7) addr_w2_1  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin
      if (reset) clear_acc <= 1;
      else if  (state2to3 || state == 2) begin clear_acc <=1; end
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
	 if (m_valid && !m_ready || sel_count < P-1) m_valid <= m_valid;
	 else  	m_valid <= wr_en_y;
      end
   end
 
   always_ff @ (posedge clk) begin
       if(reset) sel_count <= P;
       else begin
           if(state2to4 || state == 6) sel_count <= 0;
           else if(m_valid && m_ready) begin
               sel_count <= sel_count + 1;
           end
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
	  
      // accepting x input; stay here until we get all of x vector 
      else if (state == 3) begin 
	 if (addr_x < N)  
	   next_state = 3; 
	 else begin 
	    next_state = 4;  
	    state2to3 = 1; 
	 end 
      end			 
 
      // computing one output; stay here until we get to the end of the matrix row 
      else if (state == 4) begin 
	 if (addr_x < N-1)  
	   next_state = 4; 
	 else  
	    next_state = 5; 
      end 
      // finish the row; check if we are done with the matrix yet; if not, go back to state 4 
      else if (state == 5) begin 
	 if (out_count < M-P)  
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
	     if (m_ready && m_valid && sel_count == P-1)	 
	         next_state = 0; 
	     else  
	         next_state = 7; 
          end 
       
      else next_state = 0; 
       
       
       
   end 
 
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

module layer_16_8_2_16_W_rom_0(clk, addr, z);
   input clk;
   input [6:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd1;
        1: z <= 16'd98;
        2: z <= 16'd9;
        3: z <= -16'd50;
        4: z <= -16'd116;
        5: z <= -16'd102;
        6: z <= -16'd126;
        7: z <= 16'd7;
        8: z <= -16'd41;
        9: z <= -16'd76;
        10: z <= -16'd41;
        11: z <= 16'd0;
        12: z <= -16'd66;
        13: z <= 16'd77;
        14: z <= -16'd47;
        15: z <= 16'd99;
        16: z <= 16'd17;
        17: z <= -16'd53;
        18: z <= -16'd75;
        19: z <= 16'd29;
        20: z <= -16'd27;
        21: z <= -16'd73;
        22: z <= -16'd92;
        23: z <= -16'd32;
        24: z <= 16'd92;
        25: z <= 16'd39;
        26: z <= 16'd71;
        27: z <= -16'd102;
        28: z <= -16'd12;
        29: z <= -16'd103;
        30: z <= 16'd126;
        31: z <= 16'd48;
        32: z <= 16'd14;
        33: z <= -16'd42;
        34: z <= -16'd3;
        35: z <= 16'd116;
        36: z <= 16'd13;
        37: z <= 16'd34;
        38: z <= -16'd44;
        39: z <= 16'd94;
        40: z <= 16'd39;
        41: z <= -16'd126;
        42: z <= 16'd2;
        43: z <= -16'd101;
        44: z <= -16'd101;
        45: z <= 16'd0;
        46: z <= 16'd75;
        47: z <= 16'd110;
        48: z <= 16'd32;
        49: z <= 16'd77;
        50: z <= -16'd110;
        51: z <= -16'd83;
        52: z <= -16'd17;
        53: z <= -16'd26;
        54: z <= -16'd117;
        55: z <= -16'd15;
        56: z <= 16'd33;
        57: z <= 16'd65;
        58: z <= -16'd2;
        59: z <= 16'd60;
        60: z <= -16'd62;
        61: z <= -16'd55;
        62: z <= 16'd42;
        63: z <= -16'd30;
      endcase
   end
endmodule

module layer_16_8_2_16_W_rom_1(clk, addr, z);
   input clk;
   input [6:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd123;
        1: z <= -16'd102;
        2: z <= -16'd68;
        3: z <= -16'd81;
        4: z <= 16'd1;
        5: z <= 16'd16;
        6: z <= -16'd105;
        7: z <= -16'd3;
        8: z <= -16'd69;
        9: z <= 16'd58;
        10: z <= 16'd34;
        11: z <= 16'd81;
        12: z <= -16'd25;
        13: z <= 16'd47;
        14: z <= 16'd66;
        15: z <= 16'd102;
        16: z <= -16'd47;
        17: z <= -16'd32;
        18: z <= 16'd16;
        19: z <= 16'd82;
        20: z <= 16'd112;
        21: z <= 16'd39;
        22: z <= -16'd49;
        23: z <= -16'd57;
        24: z <= 16'd83;
        25: z <= 16'd32;
        26: z <= 16'd1;
        27: z <= -16'd70;
        28: z <= -16'd49;
        29: z <= -16'd61;
        30: z <= -16'd95;
        31: z <= 16'd96;
        32: z <= -16'd126;
        33: z <= 16'd100;
        34: z <= 16'd48;
        35: z <= 16'd115;
        36: z <= 16'd12;
        37: z <= -16'd128;
        38: z <= -16'd70;
        39: z <= -16'd24;
        40: z <= -16'd96;
        41: z <= -16'd52;
        42: z <= -16'd87;
        43: z <= -16'd17;
        44: z <= 16'd15;
        45: z <= -16'd54;
        46: z <= -16'd49;
        47: z <= -16'd98;
        48: z <= -16'd53;
        49: z <= 16'd59;
        50: z <= -16'd28;
        51: z <= 16'd87;
        52: z <= 16'd59;
        53: z <= 16'd31;
        54: z <= -16'd65;
        55: z <= -16'd30;
        56: z <= 16'd22;
        57: z <= 16'd83;
        58: z <= 16'd82;
        59: z <= -16'd91;
        60: z <= -16'd99;
        61: z <= -16'd95;
        62: z <= -16'd61;
        63: z <= 16'd61;
      endcase
   end
endmodule

module layer_16_8_2_16_B_rom_0(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd110;
        1: z <= 16'd106;
        2: z <= 16'd60;
        3: z <= 16'd79;
        4: z <= 16'd49;
        5: z <= 16'd94;
        6: z <= 16'd82;
        7: z <= 16'd79;
      endcase
   end
endmodule

module layer_16_8_2_16_B_rom_1(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd43;
        1: z <= -16'd35;
        2: z <= 16'd117;
        3: z <= -16'd121;
        4: z <= -16'd77;
        5: z <= -16'd20;
        6: z <= -16'd99;
        7: z <= -16'd13;
      endcase
   end
endmodule

