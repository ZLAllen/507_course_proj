module network_4_8_12_16_3_16(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   // this module should instantiate three subnetworks and wire them together
    parameter T = 16;
    input clk, reset, s_valid, m_ready;
    input signed [T-1:0] data_in;
    output signed [T-1:0] data_out;
    output m_valid, s_ready;

    logic signed [T-1:0] data_1;
    logic signed [T-1:0] data_2;

    logic valid_1;
    logic valid_2;

    logic ready_1;
    logic ready_2;


layer1_8_4_1_16 layer1(clk, reset, s_valid, ready_1, data_in, valid_1, s_ready, data_1);
layer2_12_8_1_16 layer2(clk, reset, valid_1, ready_2, data_1, valid_2, ready_1, data_2);
layer3_16_12_1_16 layer3(clk, reset, valid_2, m_ready, data_2, m_valid, ready_2, data_out);


endmodule
module layer1_8_4_1_16(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   parameter M = 8; 
   parameter N = 4; 
   parameter T = 16; 
   parameter P = 1; 
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

   logic 		clear_acc, wr_en_x, wr_en_y; 
   logic unsigned [logP-1:0] sel; 
    

   memory #(T,N, logN)  mem_x(clk, data_in, data_out_x, addr_x, wr_en_x); 
   layer1_8_4_1_16_W_rom_0 mem_w_0(clk, addr_w_0, data_out_w_0);
   layer1_8_4_1_16_B_rom_0 mem_b_0(clk, addr_b_0, data_out_b_0);



   layer1_8_4_1_16_datapath #(M,N,T,P) d_0(clk, clear_acc, data_out_x, data_out_0, data_out_w_0, data_out_b_0, wr_en_y, m_valid, m_ready, sel); 
   layer1_8_4_1_16_ctrlpath #(M,N,T,P) c(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, sel, addr_x, addr_w_0, addr_b_0);
    
  always_comb begin
     case (sel) 
         0: data_out <= data_out_0;
         default : data_out <= data_out_0;
     endcase
 end     
 
endmodule 
 
module layer1_8_4_1_16_datapath(clk, clear_acc, data_out_x, data_out, data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel); 
 
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
      else data_out <= 0; 
   end 
    
    
endmodule 
 
module layer1_8_4_1_16_ctrlpath(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, sel, addr_x, addr_w_0, addr_b_0);
    
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
   output logic [logN-1:0] addr_x; 
   logic 	      last_state2, clear_acc_delay, state2to3, state2to4; 
   logic [logOUT-1:0] 	      out_count;  
   logic unsigned [logP-1:0]    sel_count;
    
   assign addr_w_0 = addr_w2_0[logW-1:0]; 
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
 
   // Logic for addr_w 
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_0 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_0  <= addr_w2_0  + 1; 
	 else if (last_state2 || state == 7) addr_w2_0  <= 0; 
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

module layer1_8_4_1_16_W_rom_0(clk, addr, z);
   input clk;
   input [5:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd124;
        1: z <= -16'd58;
        2: z <= 16'd107;
        3: z <= 16'd51;
        4: z <= 16'd125;
        5: z <= 16'd104;
        6: z <= 16'd62;
        7: z <= -16'd98;
        8: z <= -16'd44;
        9: z <= 16'd15;
        10: z <= -16'd39;
        11: z <= 16'd17;
        12: z <= 16'd70;
        13: z <= -16'd63;
        14: z <= -16'd78;
        15: z <= -16'd111;
        16: z <= -16'd86;
        17: z <= 16'd37;
        18: z <= 16'd76;
        19: z <= -16'd77;
        20: z <= -16'd126;
        21: z <= 16'd55;
        22: z <= -16'd65;
        23: z <= 16'd21;
        24: z <= 16'd8;
        25: z <= 16'd10;
        26: z <= -16'd56;
        27: z <= 16'd0;
        28: z <= -16'd19;
        29: z <= -16'd44;
        30: z <= 16'd40;
        31: z <= -16'd15;
      endcase
   end
endmodule

module layer1_8_4_1_16_B_rom_0(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd27;
        1: z <= 16'd19;
        2: z <= -16'd92;
        3: z <= 16'd24;
        4: z <= -16'd5;
        5: z <= 16'd99;
        6: z <= 16'd54;
        7: z <= 16'd79;
      endcase
   end
endmodule

module layer2_12_8_1_16(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   parameter M = 12; 
   parameter N = 8; 
   parameter T = 16; 
   parameter P = 1; 
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

   logic 		clear_acc, wr_en_x, wr_en_y; 
   logic unsigned [logP-1:0] sel; 
    

   memory #(T,N, logN)  mem_x(clk, data_in, data_out_x, addr_x, wr_en_x); 
   layer2_12_8_1_16_W_rom_0 mem_w_0(clk, addr_w_0, data_out_w_0);
   layer2_12_8_1_16_B_rom_0 mem_b_0(clk, addr_b_0, data_out_b_0);



   layer2_12_8_1_16_datapath #(M,N,T,P) d_0(clk, clear_acc, data_out_x, data_out_0, data_out_w_0, data_out_b_0, wr_en_y, m_valid, m_ready, sel); 
   layer2_12_8_1_16_ctrlpath #(M,N,T,P) c(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, sel, addr_x, addr_w_0, addr_b_0);
    
  always_comb begin
     case (sel) 
         0: data_out <= data_out_0;
         default : data_out <= data_out_0;
     endcase
 end     
 
endmodule 
 
module layer2_12_8_1_16_datapath(clk, clear_acc, data_out_x, data_out, data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel); 
 
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
      else data_out <= 0; 
   end 
    
    
endmodule 
 
module layer2_12_8_1_16_ctrlpath(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, sel, addr_x, addr_w_0, addr_b_0);
    
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
   output logic [logN-1:0] addr_x; 
   logic 	      last_state2, clear_acc_delay, state2to3, state2to4; 
   logic [logOUT-1:0] 	      out_count;  
   logic unsigned [logP-1:0]    sel_count;
    
   assign addr_w_0 = addr_w2_0[logW-1:0]; 
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
 
   // Logic for addr_w 
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_0 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_0  <= addr_w2_0  + 1; 
	 else if (last_state2 || state == 7) addr_w2_0  <= 0; 
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

module layer2_12_8_1_16_W_rom_0(clk, addr, z);
   input clk;
   input [6:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd14;
        1: z <= -16'd113;
        2: z <= -16'd31;
        3: z <= -16'd72;
        4: z <= -16'd48;
        5: z <= 16'd19;
        6: z <= -16'd55;
        7: z <= -16'd5;
        8: z <= -16'd72;
        9: z <= -16'd107;
        10: z <= 16'd46;
        11: z <= -16'd70;
        12: z <= 16'd76;
        13: z <= 16'd109;
        14: z <= 16'd80;
        15: z <= -16'd44;
        16: z <= -16'd8;
        17: z <= -16'd104;
        18: z <= 16'd85;
        19: z <= 16'd101;
        20: z <= -16'd19;
        21: z <= -16'd3;
        22: z <= -16'd42;
        23: z <= -16'd120;
        24: z <= -16'd111;
        25: z <= -16'd5;
        26: z <= 16'd32;
        27: z <= 16'd12;
        28: z <= -16'd34;
        29: z <= -16'd42;
        30: z <= -16'd36;
        31: z <= 16'd80;
        32: z <= -16'd27;
        33: z <= 16'd61;
        34: z <= -16'd120;
        35: z <= 16'd54;
        36: z <= -16'd48;
        37: z <= -16'd47;
        38: z <= -16'd79;
        39: z <= 16'd8;
        40: z <= -16'd26;
        41: z <= 16'd95;
        42: z <= 16'd67;
        43: z <= -16'd78;
        44: z <= 16'd77;
        45: z <= 16'd19;
        46: z <= 16'd6;
        47: z <= -16'd59;
        48: z <= 16'd43;
        49: z <= -16'd37;
        50: z <= -16'd86;
        51: z <= -16'd104;
        52: z <= 16'd89;
        53: z <= 16'd0;
        54: z <= -16'd96;
        55: z <= 16'd106;
        56: z <= 16'd123;
        57: z <= 16'd64;
        58: z <= -16'd10;
        59: z <= -16'd39;
        60: z <= -16'd106;
        61: z <= 16'd82;
        62: z <= -16'd87;
        63: z <= -16'd4;
        64: z <= 16'd15;
        65: z <= -16'd79;
        66: z <= -16'd78;
        67: z <= 16'd95;
        68: z <= 16'd2;
        69: z <= -16'd29;
        70: z <= -16'd24;
        71: z <= 16'd104;
        72: z <= -16'd62;
        73: z <= -16'd85;
        74: z <= -16'd102;
        75: z <= -16'd113;
        76: z <= 16'd62;
        77: z <= 16'd33;
        78: z <= -16'd44;
        79: z <= -16'd23;
        80: z <= 16'd124;
        81: z <= -16'd2;
        82: z <= 16'd2;
        83: z <= 16'd85;
        84: z <= 16'd127;
        85: z <= 16'd34;
        86: z <= 16'd63;
        87: z <= 16'd122;
        88: z <= -16'd29;
        89: z <= -16'd74;
        90: z <= -16'd44;
        91: z <= -16'd7;
        92: z <= -16'd120;
        93: z <= -16'd3;
        94: z <= 16'd117;
        95: z <= 16'd24;
      endcase
   end
endmodule

module layer2_12_8_1_16_B_rom_0(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd47;
        1: z <= -16'd89;
        2: z <= -16'd9;
        3: z <= -16'd79;
        4: z <= 16'd10;
        5: z <= 16'd95;
        6: z <= -16'd102;
        7: z <= 16'd77;
        8: z <= -16'd118;
        9: z <= -16'd76;
        10: z <= 16'd92;
        11: z <= 16'd72;
      endcase
   end
endmodule

module layer3_16_12_1_16(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   parameter M = 16; 
   parameter N = 12; 
   parameter T = 16; 
   parameter P = 1; 
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

   logic 		clear_acc, wr_en_x, wr_en_y; 
   logic unsigned [logP-1:0] sel; 
    

   memory #(T,N, logN)  mem_x(clk, data_in, data_out_x, addr_x, wr_en_x); 
   layer3_16_12_1_16_W_rom_0 mem_w_0(clk, addr_w_0, data_out_w_0);
   layer3_16_12_1_16_B_rom_0 mem_b_0(clk, addr_b_0, data_out_b_0);



   layer3_16_12_1_16_datapath #(M,N,T,P) d_0(clk, clear_acc, data_out_x, data_out_0, data_out_w_0, data_out_b_0, wr_en_y, m_valid, m_ready, sel); 
   layer3_16_12_1_16_ctrlpath #(M,N,T,P) c(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, sel, addr_x, addr_w_0, addr_b_0);
    
  always_comb begin
     case (sel) 
         0: data_out <= data_out_0;
         default : data_out <= data_out_0;
     endcase
 end     
 
endmodule 
 
module layer3_16_12_1_16_datapath(clk, clear_acc, data_out_x, data_out, data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel); 
 
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
      else data_out <= 0; 
   end 
    
    
endmodule 
 
module layer3_16_12_1_16_ctrlpath(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, sel, addr_x, addr_w_0, addr_b_0);
    
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
   output logic [logN-1:0] addr_x; 
   logic 	      last_state2, clear_acc_delay, state2to3, state2to4; 
   logic [logOUT-1:0] 	      out_count;  
   logic unsigned [logP-1:0]    sel_count;
    
   assign addr_w_0 = addr_w2_0[logW-1:0]; 
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
 
   // Logic for addr_w 
   always_ff @ (posedge clk) begin 
      if (reset) addr_w2_0 <= 0; 
      else begin 
	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_0  <= addr_w2_0  + 1; 
	 else if (last_state2 || state == 7) addr_w2_0  <= 0; 
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

module layer3_16_12_1_16_W_rom_0(clk, addr, z);
   input clk;
   input [7:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd85;
        1: z <= -16'd79;
        2: z <= -16'd78;
        3: z <= 16'd82;
        4: z <= 16'd47;
        5: z <= 16'd52;
        6: z <= 16'd39;
        7: z <= 16'd46;
        8: z <= -16'd42;
        9: z <= -16'd25;
        10: z <= 16'd41;
        11: z <= 16'd57;
        12: z <= 16'd29;
        13: z <= 16'd125;
        14: z <= -16'd77;
        15: z <= 16'd37;
        16: z <= -16'd6;
        17: z <= -16'd88;
        18: z <= -16'd67;
        19: z <= -16'd87;
        20: z <= -16'd48;
        21: z <= 16'd53;
        22: z <= -16'd37;
        23: z <= 16'd90;
        24: z <= 16'd20;
        25: z <= -16'd11;
        26: z <= 16'd39;
        27: z <= 16'd31;
        28: z <= 16'd41;
        29: z <= 16'd4;
        30: z <= -16'd25;
        31: z <= -16'd1;
        32: z <= 16'd53;
        33: z <= 16'd25;
        34: z <= -16'd47;
        35: z <= -16'd28;
        36: z <= -16'd51;
        37: z <= 16'd120;
        38: z <= -16'd109;
        39: z <= 16'd36;
        40: z <= -16'd33;
        41: z <= 16'd60;
        42: z <= -16'd35;
        43: z <= 16'd124;
        44: z <= 16'd57;
        45: z <= 16'd16;
        46: z <= 16'd34;
        47: z <= -16'd77;
        48: z <= 16'd57;
        49: z <= 16'd95;
        50: z <= -16'd35;
        51: z <= -16'd119;
        52: z <= 16'd20;
        53: z <= 16'd56;
        54: z <= 16'd99;
        55: z <= -16'd87;
        56: z <= -16'd83;
        57: z <= 16'd11;
        58: z <= 16'd72;
        59: z <= 16'd86;
        60: z <= -16'd113;
        61: z <= -16'd81;
        62: z <= -16'd43;
        63: z <= 16'd68;
        64: z <= 16'd73;
        65: z <= 16'd38;
        66: z <= -16'd88;
        67: z <= -16'd106;
        68: z <= 16'd31;
        69: z <= -16'd69;
        70: z <= 16'd58;
        71: z <= 16'd126;
        72: z <= 16'd119;
        73: z <= -16'd104;
        74: z <= 16'd123;
        75: z <= 16'd48;
        76: z <= 16'd40;
        77: z <= 16'd29;
        78: z <= 16'd100;
        79: z <= -16'd31;
        80: z <= -16'd4;
        81: z <= -16'd63;
        82: z <= -16'd22;
        83: z <= -16'd111;
        84: z <= 16'd121;
        85: z <= -16'd50;
        86: z <= -16'd70;
        87: z <= -16'd90;
        88: z <= 16'd89;
        89: z <= -16'd126;
        90: z <= 16'd124;
        91: z <= 16'd104;
        92: z <= -16'd79;
        93: z <= -16'd46;
        94: z <= 16'd44;
        95: z <= 16'd122;
        96: z <= 16'd120;
        97: z <= 16'd84;
        98: z <= -16'd111;
        99: z <= 16'd23;
        100: z <= -16'd112;
        101: z <= 16'd75;
        102: z <= 16'd22;
        103: z <= -16'd121;
        104: z <= 16'd99;
        105: z <= 16'd17;
        106: z <= 16'd56;
        107: z <= 16'd12;
        108: z <= -16'd82;
        109: z <= 16'd28;
        110: z <= 16'd109;
        111: z <= 16'd42;
        112: z <= 16'd93;
        113: z <= -16'd40;
        114: z <= 16'd59;
        115: z <= 16'd86;
        116: z <= 16'd38;
        117: z <= 16'd117;
        118: z <= 16'd124;
        119: z <= -16'd1;
        120: z <= 16'd119;
        121: z <= 16'd120;
        122: z <= -16'd25;
        123: z <= -16'd87;
        124: z <= -16'd54;
        125: z <= -16'd109;
        126: z <= -16'd93;
        127: z <= -16'd61;
        128: z <= 16'd103;
        129: z <= -16'd76;
        130: z <= 16'd90;
        131: z <= 16'd119;
        132: z <= -16'd128;
        133: z <= -16'd16;
        134: z <= 16'd127;
        135: z <= 16'd99;
        136: z <= -16'd127;
        137: z <= 16'd55;
        138: z <= -16'd17;
        139: z <= -16'd81;
        140: z <= -16'd45;
        141: z <= -16'd35;
        142: z <= 16'd90;
        143: z <= -16'd80;
        144: z <= 16'd53;
        145: z <= 16'd21;
        146: z <= -16'd122;
        147: z <= -16'd37;
        148: z <= 16'd11;
        149: z <= -16'd126;
        150: z <= 16'd90;
        151: z <= 16'd2;
        152: z <= 16'd122;
        153: z <= -16'd63;
        154: z <= 16'd43;
        155: z <= -16'd59;
        156: z <= -16'd44;
        157: z <= 16'd79;
        158: z <= 16'd8;
        159: z <= -16'd69;
        160: z <= -16'd125;
        161: z <= -16'd30;
        162: z <= -16'd77;
        163: z <= -16'd125;
        164: z <= 16'd83;
        165: z <= -16'd78;
        166: z <= 16'd103;
        167: z <= 16'd84;
        168: z <= 16'd105;
        169: z <= -16'd42;
        170: z <= -16'd124;
        171: z <= -16'd68;
        172: z <= 16'd51;
        173: z <= 16'd94;
        174: z <= -16'd20;
        175: z <= -16'd24;
        176: z <= -16'd13;
        177: z <= -16'd14;
        178: z <= 16'd67;
        179: z <= 16'd126;
        180: z <= -16'd12;
        181: z <= 16'd29;
        182: z <= 16'd1;
        183: z <= -16'd18;
        184: z <= 16'd94;
        185: z <= -16'd84;
        186: z <= 16'd51;
        187: z <= -16'd78;
        188: z <= 16'd123;
        189: z <= -16'd69;
        190: z <= -16'd18;
        191: z <= 16'd127;
      endcase
   end
endmodule

module layer3_16_12_1_16_B_rom_0(clk, addr, z);
   input clk;
   input [4:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd30;
        1: z <= 16'd33;
        2: z <= -16'd126;
        3: z <= -16'd15;
        4: z <= 16'd83;
        5: z <= 16'd105;
        6: z <= -16'd59;
        7: z <= 16'd60;
        8: z <= -16'd64;
        9: z <= -16'd55;
        10: z <= 16'd120;
        11: z <= 16'd115;
        12: z <= -16'd89;
        13: z <= -16'd28;
        14: z <= -16'd36;
        15: z <= 16'd27;
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
 
