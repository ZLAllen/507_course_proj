module layer_4_4_2_16(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   parameter M = 4 ; 
   parameter N = 4 ; 
   parameter T = 16 ;
   parameter P = 2;
   parameter logW = $clog2(M*N+1), logN = $clog2(N+1), logM = $clog2(M+1), logP = $clog2(P+1); 
   input clk, reset; 
 
   input s_valid; 
   input [T-1:0] data_in; 
   output logic s_ready; 
    
   input 	m_ready; 
   output logic m_valid; 
   output logic signed [T-1:0] data_out; 
   
   /*
   two address ports for b and w.

   */
   logic [logN-1:0]	addr_x; 
   logic [logM-1:0]     addr_b_0;
   logic [logM-1:0]     addr_b_1;
   logic [logW-1:0] 	addr_w_0; 
   logic [logW-1:0]     addr_w_1; 
   logic signed [T-1:0]  data_out_x;
   logic signed [T-1:0]  data_out_w_0; 
   logic signed [T-1:0]  data_out_w_1; 
   logic [T-1:0]         data_out_b_0; 
   logic [T-1:0] 	 data_out_b_1;
   logic signed [T-1:0] data_out_0; 
   logic signed [T-1:0] data_out_1;
   logic 		clear_acc, wr_en_x, wr_en_y;
   logic unsigned [logP-1:0] sel;


   //RAM 
   memory #(T,N, logN)  mem_x(clk, data_in, data_out_x, addr_x, wr_en_x); // memory Instantaion for colum matrix

   //ROM 0
   layer_4_4_2_16_W_rom_0 mem_w_0(clk, addr_w_0, data_out_w_0); // memory Instantation 4*4 matrix 
   layer_4_4_2_16_B_rom_0 mem_b_0(clk, addr_b_0, data_out_b_0);  // bias memory 

   //ROM 1
   layer_4_4_2_16_W_rom_1 mem_w_1(clk, addr_w_1, data_out_w_1); // memory Instantation 4*4 matrix 
   layer_4_4_2_16_B_rom_1 mem_b_1(clk, addr_b_1, data_out_b_1);  // bias memory 

    
   datapath #(M,N,T,P) d_0(clk, clear_acc, data_out_0, data_out_w_0, data_out_x, data_out_b_0, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_1(clk, clear_acc, data_out_1, data_out_w_1, data_out_x, data_out_b_1, wr_en_y, m_valid, m_ready, sel); 
   ctrlpath #(M,N,T,P) c(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc, wr_en_x, wr_en_y, addr_x, addr_w_0, addr_w_1, addr_b_0, addr_b_1, sel);

   always_comb begin
       case (sel) 
           0: data_out <= data_out_0;
           1: data_out <= data_out_1;
           default : data_out <= data_out_1;
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
 
module datapath(clk, clear_acc, data_out, data_out_w, data_out_x, data_out_b, wr_en_y, m_valid, m_ready, sel); 
 
   parameter M = 3, N = 3, T = 16, P = 2; 
   parameter logW = $clog2(M*N+1), logN = $clog2(N+1), logM = $clog2(M+1), logP = $clog2(P+1); 
 
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
	//f <= {8'b0,data_out_b}; 
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
   end 
    
    
endmodule 
 
module ctrlpath(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc, wr_en_x, wr_en_y, addr_x, addr_w_0, addr_w_1, addr_b_0, addr_b_1, sel); 
 
   parameter M = 3, N = 3, T = 16, P = 2; 
   parameter logW = $clog2(M*N+1), logN = $clog2(N+1), logM = $clog2(M+1), logP = $clog2(P+1); 
   input clk, reset; 
   input s_valid, m_ready;
   output logic unsigned [logP-1:0] sel;
   output logic s_ready, m_valid; 
   output logic clear_acc, wr_en_x, wr_en_y; 
   logic [3:0] 	state, next_state; 
    
 
   /*
   address duplication..
   */
   output logic [logN-1:0] addr_x; 
   output logic [logM-1:0] addr_b_0;
   output logic [logM-1:0] addr_b_1;
   output logic [logW-1:0] addr_w_0;
   output logic [logW-1:0] addr_w_1;
   logic [logW:0] 	   addr_w2_0; 
   logic [logW:0] 	   addr_w2_1;

   logic 	      last_state2, clear_acc_delay, state2to3, state2to4; 
   logic [logM-1:0]   out_count;  
   logic unsigned [logP-1:0]   sel_count;
   
   /* 
   addr_w duplicate
   */
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
       if (reset) begin
           addr_b_0 <= 0;
           addr_b_1 <= 0;
       end else begin 
          if ((clear_acc_delay && !((m_valid && !m_ready)|| sel_count < P-1)) || (m_ready && m_valid && state != 7 && !clear_acc && sel_count == P)) begin
              addr_b_0 <= addr_b_0 + 1;
              addr_b_1 <= addr_b_1 + 1;
          end
          else if (state==3 || state == 7)  begin
             addr_b_0 <= 0; 
             addr_b_1 <= 0;
         end
      end 
   end 
 
   // Logic for addr_w 
   always_ff @ (posedge clk) begin 
       if (reset) begin addr_w2_0 <= 0; addr_w2_1 <= 0; end
       else begin 
           if ((state==4 && !((m_valid && !m_ready)||sel_count < P-1))) begin addr_w2_0 <= addr_w2_0 + 1; addr_w2_1 <= addr_w2_1 + 1; end
           else if (last_state2 || state == 7) begin addr_w2_0 <= 0;  addr_w2_1 <= 0; end 
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
               sel_count = sel_count + 1;
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
/* 
      // accepting W input; stay here until we get all of W matrix 
      else if (state == 1) begin 
	 if (addr_w2 < 9) begin	 
	    next_state = 1; 
	 end 
	 else begin 
	    next_state = 2; 
	 end		 
      end	 
 
      // accepting b input; stay here until we get all of b vector 
      else if (state == 2) begin 
	 if (addr_b < 3)  
	   next_state = 2; 
	 else begin 
	    next_state = 3;  
	 end 
      end	 
*/ 
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

module layer_4_4_2_16_W_rom_0(clk, addr, z);
   input clk;
   input [4:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd37;
        1: z <= -16'd28;
        2: z <= 16'd31;
        3: z <= -16'd8;
        4: z <= -16'd12;
        5: z <= 16'd68;
        6: z <= 16'd3;
        7: z <= 16'd107;
      endcase
   end
endmodule

module layer_4_4_2_16_W_rom_1(clk, addr, z);
   input clk;
   input [4:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd37;
        1: z <= 16'd114;
        2: z <= 16'd4;
        3: z <= -16'd106;
        4: z <= 16'd105;
        5: z <= 16'd13;
        6: z <= -16'd45;
        7: z <= 16'd89;
      endcase
   end
endmodule

module layer_4_4_2_16_B_rom_0(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd96;
        1: z <= -16'd42;
      endcase
   end
endmodule

module layer_4_4_2_16_B_rom_1(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd115;
        1: z <= 16'd56;
      endcase
   end
endmodule

