module layer_16_12_16_16(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   parameter M = 16; 
   parameter N = 12; 
   parameter T = 16; 
   parameter P = 16; 
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

   logic [logM-1:0]     addr_b_2; 
   logic [logW-1:0]     addr_w_2; 
   logic [T-1:0]        data_out_b_2; 
   logic [T-1:0]        data_out_w_2; 
   logic [T-1:0]        data_out_2; 

   logic [logM-1:0]     addr_b_3; 
   logic [logW-1:0]     addr_w_3; 
   logic [T-1:0]        data_out_b_3; 
   logic [T-1:0]        data_out_w_3; 
   logic [T-1:0]        data_out_3; 

   logic [logM-1:0]     addr_b_4; 
   logic [logW-1:0]     addr_w_4; 
   logic [T-1:0]        data_out_b_4; 
   logic [T-1:0]        data_out_w_4; 
   logic [T-1:0]        data_out_4; 

   logic [logM-1:0]     addr_b_5; 
   logic [logW-1:0]     addr_w_5; 
   logic [T-1:0]        data_out_b_5; 
   logic [T-1:0]        data_out_w_5; 
   logic [T-1:0]        data_out_5; 

   logic [logM-1:0]     addr_b_6; 
   logic [logW-1:0]     addr_w_6; 
   logic [T-1:0]        data_out_b_6; 
   logic [T-1:0]        data_out_w_6; 
   logic [T-1:0]        data_out_6; 

   logic [logM-1:0]     addr_b_7; 
   logic [logW-1:0]     addr_w_7; 
   logic [T-1:0]        data_out_b_7; 
   logic [T-1:0]        data_out_w_7; 
   logic [T-1:0]        data_out_7; 

   logic [logM-1:0]     addr_b_8; 
   logic [logW-1:0]     addr_w_8; 
   logic [T-1:0]        data_out_b_8; 
   logic [T-1:0]        data_out_w_8; 
   logic [T-1:0]        data_out_8; 

   logic [logM-1:0]     addr_b_9; 
   logic [logW-1:0]     addr_w_9; 
   logic [T-1:0]        data_out_b_9; 
   logic [T-1:0]        data_out_w_9; 
   logic [T-1:0]        data_out_9; 

   logic [logM-1:0]     addr_b_10; 
   logic [logW-1:0]     addr_w_10; 
   logic [T-1:0]        data_out_b_10; 
   logic [T-1:0]        data_out_w_10; 
   logic [T-1:0]        data_out_10; 

   logic [logM-1:0]     addr_b_11; 
   logic [logW-1:0]     addr_w_11; 
   logic [T-1:0]        data_out_b_11; 
   logic [T-1:0]        data_out_w_11; 
   logic [T-1:0]        data_out_11; 

   logic [logM-1:0]     addr_b_12; 
   logic [logW-1:0]     addr_w_12; 
   logic [T-1:0]        data_out_b_12; 
   logic [T-1:0]        data_out_w_12; 
   logic [T-1:0]        data_out_12; 

   logic [logM-1:0]     addr_b_13; 
   logic [logW-1:0]     addr_w_13; 
   logic [T-1:0]        data_out_b_13; 
   logic [T-1:0]        data_out_w_13; 
   logic [T-1:0]        data_out_13; 

   logic [logM-1:0]     addr_b_14; 
   logic [logW-1:0]     addr_w_14; 
   logic [T-1:0]        data_out_b_14; 
   logic [T-1:0]        data_out_w_14; 
   logic [T-1:0]        data_out_14; 

   logic [logM-1:0]     addr_b_15; 
   logic [logW-1:0]     addr_w_15; 
   logic [T-1:0]        data_out_b_15; 
   logic [T-1:0]        data_out_w_15; 
   logic [T-1:0]        data_out_15; 

   logic 		clear_acc, wr_en_x, wr_en_y; 
   logic unsigned [logP-1:0] sel; 
    

   memory #(T,N, logN)  mem_x(clk, data_in, data_out_x, addr_x, wr_en_x); 
   layer_16_12_16_16_W_rom_0 mem_w_0(clk, addr_w_0, data_out_w_0);
   layer_16_12_16_16_B_rom_0 mem_b_0(clk, addr_b_0, data_out_b_0);

   layer_16_12_16_16_W_rom_1 mem_w_1(clk, addr_w_1, data_out_w_1);
   layer_16_12_16_16_B_rom_1 mem_b_1(clk, addr_b_1, data_out_b_1);

   layer_16_12_16_16_W_rom_2 mem_w_2(clk, addr_w_2, data_out_w_2);
   layer_16_12_16_16_B_rom_2 mem_b_2(clk, addr_b_2, data_out_b_2);

   layer_16_12_16_16_W_rom_3 mem_w_3(clk, addr_w_3, data_out_w_3);
   layer_16_12_16_16_B_rom_3 mem_b_3(clk, addr_b_3, data_out_b_3);

   layer_16_12_16_16_W_rom_4 mem_w_4(clk, addr_w_4, data_out_w_4);
   layer_16_12_16_16_B_rom_4 mem_b_4(clk, addr_b_4, data_out_b_4);

   layer_16_12_16_16_W_rom_5 mem_w_5(clk, addr_w_5, data_out_w_5);
   layer_16_12_16_16_B_rom_5 mem_b_5(clk, addr_b_5, data_out_b_5);

   layer_16_12_16_16_W_rom_6 mem_w_6(clk, addr_w_6, data_out_w_6);
   layer_16_12_16_16_B_rom_6 mem_b_6(clk, addr_b_6, data_out_b_6);

   layer_16_12_16_16_W_rom_7 mem_w_7(clk, addr_w_7, data_out_w_7);
   layer_16_12_16_16_B_rom_7 mem_b_7(clk, addr_b_7, data_out_b_7);

   layer_16_12_16_16_W_rom_8 mem_w_8(clk, addr_w_8, data_out_w_8);
   layer_16_12_16_16_B_rom_8 mem_b_8(clk, addr_b_8, data_out_b_8);

   layer_16_12_16_16_W_rom_9 mem_w_9(clk, addr_w_9, data_out_w_9);
   layer_16_12_16_16_B_rom_9 mem_b_9(clk, addr_b_9, data_out_b_9);

   layer_16_12_16_16_W_rom_10 mem_w_10(clk, addr_w_10, data_out_w_10);
   layer_16_12_16_16_B_rom_10 mem_b_10(clk, addr_b_10, data_out_b_10);

   layer_16_12_16_16_W_rom_11 mem_w_11(clk, addr_w_11, data_out_w_11);
   layer_16_12_16_16_B_rom_11 mem_b_11(clk, addr_b_11, data_out_b_11);

   layer_16_12_16_16_W_rom_12 mem_w_12(clk, addr_w_12, data_out_w_12);
   layer_16_12_16_16_B_rom_12 mem_b_12(clk, addr_b_12, data_out_b_12);

   layer_16_12_16_16_W_rom_13 mem_w_13(clk, addr_w_13, data_out_w_13);
   layer_16_12_16_16_B_rom_13 mem_b_13(clk, addr_b_13, data_out_b_13);

   layer_16_12_16_16_W_rom_14 mem_w_14(clk, addr_w_14, data_out_w_14);
   layer_16_12_16_16_B_rom_14 mem_b_14(clk, addr_b_14, data_out_b_14);

   layer_16_12_16_16_W_rom_15 mem_w_15(clk, addr_w_15, data_out_w_15);
   layer_16_12_16_16_B_rom_15 mem_b_15(clk, addr_b_15, data_out_b_15);



   datapath #(M,N,T,P) d_0(clk, clear_acc, data_out_x, data_out_0, data_out_w_0, data_out_b_0, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_1(clk, clear_acc, data_out_x, data_out_1, data_out_w_1, data_out_b_1, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_2(clk, clear_acc, data_out_x, data_out_2, data_out_w_2, data_out_b_2, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_3(clk, clear_acc, data_out_x, data_out_3, data_out_w_3, data_out_b_3, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_4(clk, clear_acc, data_out_x, data_out_4, data_out_w_4, data_out_b_4, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_5(clk, clear_acc, data_out_x, data_out_5, data_out_w_5, data_out_b_5, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_6(clk, clear_acc, data_out_x, data_out_6, data_out_w_6, data_out_b_6, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_7(clk, clear_acc, data_out_x, data_out_7, data_out_w_7, data_out_b_7, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_8(clk, clear_acc, data_out_x, data_out_8, data_out_w_8, data_out_b_8, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_9(clk, clear_acc, data_out_x, data_out_9, data_out_w_9, data_out_b_9, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_10(clk, clear_acc, data_out_x, data_out_10, data_out_w_10, data_out_b_10, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_11(clk, clear_acc, data_out_x, data_out_11, data_out_w_11, data_out_b_11, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_12(clk, clear_acc, data_out_x, data_out_12, data_out_w_12, data_out_b_12, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_13(clk, clear_acc, data_out_x, data_out_13, data_out_w_13, data_out_b_13, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_14(clk, clear_acc, data_out_x, data_out_14, data_out_w_14, data_out_b_14, wr_en_y, m_valid, m_ready, sel); 
   datapath #(M,N,T,P) d_15(clk, clear_acc, data_out_x, data_out_15, data_out_w_15, data_out_b_15, wr_en_y, m_valid, m_ready, sel); 
   ctrlpath #(M,N,T,P) c(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, sel, addr_x, addr_w_0, addr_b_0, addr_w_1, addr_b_1, addr_w_2, addr_b_2, addr_w_3, addr_b_3, addr_w_4, addr_b_4, addr_w_5, addr_b_5, addr_w_6, addr_b_6, addr_w_7, addr_b_7, addr_w_8, addr_b_8, addr_w_9, addr_b_9, addr_w_10, addr_b_10, addr_w_11, addr_b_11, addr_w_12, addr_b_12, addr_w_13, addr_b_13, addr_w_14, addr_b_14, addr_w_15, addr_b_15);
    
  always_comb begin
     case (sel) 
         0: data_out <= data_out_0;
         1: data_out <= data_out_1;
         2: data_out <= data_out_2;
         3: data_out <= data_out_3;
         4: data_out <= data_out_4;
         5: data_out <= data_out_5;
         6: data_out <= data_out_6;
         7: data_out <= data_out_7;
         8: data_out <= data_out_8;
         9: data_out <= data_out_9;
         10: data_out <= data_out_10;
         11: data_out <= data_out_11;
         12: data_out <= data_out_12;
         13: data_out <= data_out_13;
         14: data_out <= data_out_14;
         15: data_out <= data_out_15;
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
 
module ctrlpath(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, sel, addr_x, addr_w_0, addr_b_0, addr_w_1, addr_b_1, addr_w_2, addr_b_2, addr_w_3, addr_b_3, addr_w_4, addr_b_4, addr_w_5, addr_b_5, addr_w_6, addr_b_6, addr_w_7, addr_b_7, addr_w_8, addr_b_8, addr_w_9, addr_b_9, addr_w_10, addr_b_10, addr_w_11, addr_b_11, addr_w_12, addr_b_12, addr_w_13, addr_b_13, addr_w_14, addr_b_14, addr_w_15, addr_b_15);
    
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
   output logic [logM-1:0]     addr_b_2; 
   output logic [logW-1:0]     addr_w_2; 
   logic [logW:0]              addr_w2_2; 
   output logic [logM-1:0]     addr_b_3; 
   output logic [logW-1:0]     addr_w_3; 
   logic [logW:0]              addr_w2_3; 
   output logic [logM-1:0]     addr_b_4; 
   output logic [logW-1:0]     addr_w_4; 
   logic [logW:0]              addr_w2_4; 
   output logic [logM-1:0]     addr_b_5; 
   output logic [logW-1:0]     addr_w_5; 
   logic [logW:0]              addr_w2_5; 
   output logic [logM-1:0]     addr_b_6; 
   output logic [logW-1:0]     addr_w_6; 
   logic [logW:0]              addr_w2_6; 
   output logic [logM-1:0]     addr_b_7; 
   output logic [logW-1:0]     addr_w_7; 
   logic [logW:0]              addr_w2_7; 
   output logic [logM-1:0]     addr_b_8; 
   output logic [logW-1:0]     addr_w_8; 
   logic [logW:0]              addr_w2_8; 
   output logic [logM-1:0]     addr_b_9; 
   output logic [logW-1:0]     addr_w_9; 
   logic [logW:0]              addr_w2_9; 
   output logic [logM-1:0]     addr_b_10; 
   output logic [logW-1:0]     addr_w_10; 
   logic [logW:0]              addr_w2_10; 
   output logic [logM-1:0]     addr_b_11; 
   output logic [logW-1:0]     addr_w_11; 
   logic [logW:0]              addr_w2_11; 
   output logic [logM-1:0]     addr_b_12; 
   output logic [logW-1:0]     addr_w_12; 
   logic [logW:0]              addr_w2_12; 
   output logic [logM-1:0]     addr_b_13; 
   output logic [logW-1:0]     addr_w_13; 
   logic [logW:0]              addr_w2_13; 
   output logic [logM-1:0]     addr_b_14; 
   output logic [logW-1:0]     addr_w_14; 
   logic [logW:0]              addr_w2_14; 
   output logic [logM-1:0]     addr_b_15; 
   output logic [logW-1:0]     addr_w_15; 
   logic [logW:0]              addr_w2_15; 
   output logic [logN-1:0] addr_x; 
   logic 	      last_state2, clear_acc_delay, state2to3, state2to4; 
   logic [logOUT-1:0] 	      out_count;  
   logic unsigned [logP-1:0]    sel_count;
    
   assign addr_w_0 = addr_w2_0[logW-1:0]; 
   assign addr_w_1 = addr_w2_1[logW-1:0]; 
   assign addr_w_2 = addr_w2_2[logW-1:0]; 
   assign addr_w_3 = addr_w2_3[logW-1:0]; 
   assign addr_w_4 = addr_w2_4[logW-1:0]; 
   assign addr_w_5 = addr_w2_5[logW-1:0]; 
   assign addr_w_6 = addr_w2_6[logW-1:0]; 
   assign addr_w_7 = addr_w2_7[logW-1:0]; 
   assign addr_w_8 = addr_w2_8[logW-1:0]; 
   assign addr_w_9 = addr_w2_9[logW-1:0]; 
   assign addr_w_10 = addr_w2_10[logW-1:0]; 
   assign addr_w_11 = addr_w2_11[logW-1:0]; 
   assign addr_w_12 = addr_w2_12[logW-1:0]; 
   assign addr_w_13 = addr_w2_13[logW-1:0]; 
   assign addr_w_14 = addr_w2_14[logW-1:0]; 
   assign addr_w_15 = addr_w2_15[logW-1:0]; 
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
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_2 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_2 <= addr_b_2 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_2 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_3 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_3 <= addr_b_3 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_3 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_4 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_4 <= addr_b_4 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_4 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_5 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_5 <= addr_b_5 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_5 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_6 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_6 <= addr_b_6 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_6 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_7 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_7 <= addr_b_7 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_7 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_8 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_8 <= addr_b_8 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_8 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_9 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_9 <= addr_b_9 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_9 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_10 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_10 <= addr_b_10 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_10 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_11 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_11 <= addr_b_11 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_11 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_12 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_12 <= addr_b_12 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_12 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_13 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_13 <= addr_b_13 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_13 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_14 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_14 <= addr_b_14 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_14 <= 0; 
      end 
   end 
 
   always_ff @ (posedge clk) begin 
      if (reset)  
	        addr_b_15 <= 0; 
      else begin 
         if (clear_acc_delay)  
	          addr_b_15 <= addr_b_15 + 1; 
	        else if (state==3 || state == 7)  
	          addr_b_15 <= 0; 
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
      if (reset) addr_w2_2 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_2  <= addr_w2_2  + 1; 
	 else if (last_state2 || state == 7) addr_w2_2  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_3 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_3  <= addr_w2_3  + 1; 
	 else if (last_state2 || state == 7) addr_w2_3  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_4 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_4  <= addr_w2_4  + 1; 
	 else if (last_state2 || state == 7) addr_w2_4  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_5 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_5  <= addr_w2_5  + 1; 
	 else if (last_state2 || state == 7) addr_w2_5  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_6 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_6  <= addr_w2_6  + 1; 
	 else if (last_state2 || state == 7) addr_w2_6  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_7 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_7  <= addr_w2_7  + 1; 
	 else if (last_state2 || state == 7) addr_w2_7  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_8 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_8  <= addr_w2_8  + 1; 
	 else if (last_state2 || state == 7) addr_w2_8  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_9 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_9  <= addr_w2_9  + 1; 
	 else if (last_state2 || state == 7) addr_w2_9  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_10 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_10  <= addr_w2_10  + 1; 
	 else if (last_state2 || state == 7) addr_w2_10  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_11 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_11  <= addr_w2_11  + 1; 
	 else if (last_state2 || state == 7) addr_w2_11  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_12 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_12  <= addr_w2_12  + 1; 
	 else if (last_state2 || state == 7) addr_w2_12  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_13 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_13  <= addr_w2_13  + 1; 
	 else if (last_state2 || state == 7) addr_w2_13  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_14 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_14  <= addr_w2_14  + 1; 
	 else if (last_state2 || state == 7) addr_w2_14  <= 0; 
      end 
   end 
    
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_15 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_15  <= addr_w2_15  + 1; 
	 else if (last_state2 || state == 7) addr_w2_15  <= 0; 
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

module layer_16_12_16_16_W_rom_0(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd46;
        1: z <= 16'd6;
        2: z <= -16'd45;
        3: z <= 16'd49;
        4: z <= 16'd123;
        5: z <= 16'd83;
        6: z <= 16'd57;
        7: z <= 16'd74;
        8: z <= -16'd85;
        9: z <= -16'd1;
        10: z <= -16'd36;
        11: z <= 16'd87;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_1(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd90;
        1: z <= -16'd123;
        2: z <= -16'd75;
        3: z <= 16'd95;
        4: z <= 16'd125;
        5: z <= 16'd88;
        6: z <= 16'd109;
        7: z <= -16'd17;
        8: z <= 16'd119;
        9: z <= 16'd77;
        10: z <= -16'd66;
        11: z <= 16'd87;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_2(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd44;
        1: z <= 16'd41;
        2: z <= 16'd70;
        3: z <= -16'd66;
        4: z <= 16'd61;
        5: z <= -16'd105;
        6: z <= -16'd93;
        7: z <= -16'd21;
        8: z <= 16'd29;
        9: z <= -16'd9;
        10: z <= -16'd100;
        11: z <= 16'd24;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_3(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd54;
        1: z <= 16'd85;
        2: z <= -16'd29;
        3: z <= -16'd11;
        4: z <= -16'd43;
        5: z <= 16'd63;
        6: z <= -16'd52;
        7: z <= -16'd5;
        8: z <= 16'd68;
        9: z <= 16'd1;
        10: z <= -16'd38;
        11: z <= 16'd66;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_4(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd39;
        1: z <= -16'd57;
        2: z <= -16'd79;
        3: z <= -16'd47;
        4: z <= -16'd107;
        5: z <= -16'd17;
        6: z <= -16'd88;
        7: z <= 16'd65;
        8: z <= -16'd104;
        9: z <= 16'd111;
        10: z <= -16'd128;
        11: z <= 16'd85;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_5(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd122;
        1: z <= -16'd93;
        2: z <= -16'd64;
        3: z <= 16'd36;
        4: z <= 16'd26;
        5: z <= -16'd36;
        6: z <= -16'd68;
        7: z <= 16'd101;
        8: z <= -16'd78;
        9: z <= 16'd31;
        10: z <= -16'd38;
        11: z <= 16'd7;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_6(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd33;
        1: z <= 16'd39;
        2: z <= -16'd126;
        3: z <= -16'd93;
        4: z <= -16'd88;
        5: z <= -16'd36;
        6: z <= 16'd101;
        7: z <= 16'd2;
        8: z <= 16'd36;
        9: z <= -16'd106;
        10: z <= 16'd83;
        11: z <= 16'd57;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_7(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd5;
        1: z <= 16'd123;
        2: z <= -16'd6;
        3: z <= 16'd29;
        4: z <= 16'd106;
        5: z <= -16'd6;
        6: z <= -16'd14;
        7: z <= 16'd113;
        8: z <= 16'd30;
        9: z <= 16'd50;
        10: z <= 16'd21;
        11: z <= -16'd72;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_8(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd113;
        1: z <= 16'd81;
        2: z <= -16'd99;
        3: z <= -16'd63;
        4: z <= -16'd15;
        5: z <= -16'd8;
        6: z <= 16'd72;
        7: z <= 16'd80;
        8: z <= -16'd97;
        9: z <= 16'd74;
        10: z <= 16'd115;
        11: z <= -16'd57;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_9(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd90;
        1: z <= 16'd89;
        2: z <= 16'd73;
        3: z <= 16'd74;
        4: z <= 16'd111;
        5: z <= 16'd28;
        6: z <= 16'd3;
        7: z <= -16'd11;
        8: z <= 16'd24;
        9: z <= 16'd126;
        10: z <= -16'd110;
        11: z <= 16'd2;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_10(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd8;
        1: z <= 16'd5;
        2: z <= -16'd13;
        3: z <= -16'd106;
        4: z <= -16'd73;
        5: z <= -16'd120;
        6: z <= -16'd49;
        7: z <= -16'd58;
        8: z <= 16'd90;
        9: z <= -16'd20;
        10: z <= 16'd7;
        11: z <= -16'd53;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_11(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd100;
        1: z <= -16'd49;
        2: z <= -16'd101;
        3: z <= -16'd125;
        4: z <= -16'd103;
        5: z <= -16'd114;
        6: z <= -16'd53;
        7: z <= -16'd64;
        8: z <= 16'd103;
        9: z <= -16'd108;
        10: z <= -16'd118;
        11: z <= 16'd87;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_12(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd49;
        1: z <= 16'd14;
        2: z <= -16'd52;
        3: z <= -16'd55;
        4: z <= 16'd12;
        5: z <= -16'd34;
        6: z <= 16'd75;
        7: z <= -16'd124;
        8: z <= 16'd99;
        9: z <= -16'd65;
        10: z <= -16'd101;
        11: z <= -16'd101;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_13(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd57;
        1: z <= -16'd22;
        2: z <= -16'd31;
        3: z <= -16'd95;
        4: z <= 16'd86;
        5: z <= 16'd105;
        6: z <= -16'd20;
        7: z <= 16'd59;
        8: z <= -16'd72;
        9: z <= 16'd7;
        10: z <= 16'd62;
        11: z <= -16'd46;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_14(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd22;
        1: z <= -16'd119;
        2: z <= 16'd18;
        3: z <= -16'd3;
        4: z <= -16'd98;
        5: z <= 16'd28;
        6: z <= -16'd44;
        7: z <= 16'd79;
        8: z <= -16'd86;
        9: z <= 16'd32;
        10: z <= -16'd104;
        11: z <= 16'd54;
      endcase
   end
endmodule

module layer_16_12_16_16_W_rom_15(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd127;
        1: z <= 16'd99;
        2: z <= 16'd59;
        3: z <= 16'd98;
        4: z <= -16'd94;
        5: z <= 16'd86;
        6: z <= 16'd125;
        7: z <= -16'd22;
        8: z <= -16'd64;
        9: z <= -16'd33;
        10: z <= 16'd11;
        11: z <= -16'd106;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_0(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd56;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_1(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd120;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_2(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd81;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_3(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd0;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_4(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd1;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_5(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd16;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_6(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd82;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_7(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd107;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_8(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd25;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_9(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd28;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_10(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd19;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_11(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd55;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_12(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd127;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_13(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd103;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_14(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd6;
      endcase
   end
endmodule

module layer_16_12_16_16_B_rom_15(clk, addr, z);
   input clk;
   input [0:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd85;
      endcase
   end
endmodule

