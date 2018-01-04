// ESE-507 Fall 2016
// Reference solution for Project 2, Part 3

module mvm3_part3(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   
   input clk, reset;

   input s_valid;
   input [7:0] data_in;
   output logic s_ready;
   
   input 	m_ready;
   output logic m_valid;
   output signed [15:0] data_out;
  
   //change here
   logic [2:0] 		addr_x, addr_b;
   logic [3:0] 		addr_w;
   logic 		clear_acc, wr_en_w, wr_en_x, wr_en_y, wr_en_b;
   
   datapath d(clk, clear_acc, data_in, data_out, wr_en_w, wr_en_x, wr_en_y, wr_en_b, addr_x, addr_w, addr_b, m_valid, m_ready);
   ctrlpath c(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc, wr_en_w, wr_en_x, wr_en_y, wr_en_b, addr_x, addr_w, addr_b);
   
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

module datapath(clk, clear_acc, data_in, data_out, wr_en_w, wr_en_x, wr_en_y, wr_en_b, addr_x, addr_w, addr_b, m_valid, m_ready);

   input clk, clear_acc, wr_en_w, wr_en_x, wr_en_y, wr_en_b, m_valid, m_ready;
   input [7:0] data_in;
   output logic signed [15:0] data_out;
   logic signed [7:0] 	      data_out_x, data_out_w;
   logic [7:0] 		      data_out_b;
   logic signed [15:0] 	      f, mul_out, adder, mul_out_save;
   input logic [2:0] 	      addr_x, addr_b;
   input logic [3:0] 	      addr_w;
   logic 		      delay;
   logic 		      clear_acc_delay;
   
   //change here
   memory #(8, 8, 3)  mem_x(clk, data_in, data_out_x, addr_x, wr_en_x); // memory Instantaion for colum matrix
   memory #(8, 16, 4) mem_w(clk, data_in, data_out_w, addr_w, wr_en_w); // memory Instantation 4*4 matrix
   memory #(8, 8, 3)  mem_b(clk, data_in, data_out_b, addr_b, wr_en_b);  // bias memory

   always_ff @(posedge clk) begin
      if (clear_acc)	
	//f <= {8'b0,data_out_b};
        f <= $signed(data_out_b);
      else if 
	(m_valid && !m_ready) f <= f;
      else 
	f <= adder;
      clear_acc_delay <= clear_acc;
   end

   always_ff @(posedge clk) begin
      delay <= (m_valid && !m_ready);
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
      if (wr_en_y) 
	data_out <= f;
      else if (m_valid && !m_ready)	
	data_out <= data_out;
      else data_out <= 0;
   end
   
   
endmodule

module ctrlpath(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc, wr_en_w, wr_en_x, wr_en_y, wr_en_b, addr_x, addr_w, addr_b);

   input clk, reset;
   input s_valid, m_ready;
   output logic s_ready, m_valid;
   output logic clear_acc, wr_en_w, wr_en_x, wr_en_y, wr_en_b;
   logic [3:0] 	state, next_state;
   //**********change here
   output logic [2:0] addr_x, addr_b;
   output logic [3:0] addr_w;
   logic [4:0] 	      addr_w2;
   logic 	      last_state2, clear_acc_delay, state2to3;
   logic [2:0] 	      out_count; 
   
   assign addr_w = addr_w2[3:0];
   
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
	 else if (state==1 || state == 5 || state2to3) 
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
	 if (wr_en_b  || (clear_acc_delay && !(m_valid && !m_ready)) || (m_ready && m_valid && state != 7)) 
	   addr_b <= addr_b + 1;
	 else if (state==3 || state == 7) 
	   addr_b <= 0;
      end
   end

   // Logic for addr_
   always_ff @ (posedge clk) begin
      if (reset) addr_w2 <= 0;
      else begin
	 if ((wr_en_w && !last_state2) || (state==4 && !(m_valid && !m_ready))) addr_w2 <= addr_w2 + 1;
	 else if (last_state2 || state == 7) addr_w2 <= 0;
	 else addr_w2 <= addr_w2;
      end
   end
   
   always_ff @ (posedge clk) begin
      if (reset) clear_acc <= 1;
      else if (state2to3 || state == 5) begin clear_acc <=1; end
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
   
   
   
   always_comb begin	state2to3 = 0;

      // wait for valid input
      if (state==0) begin
	 if (s_valid) begin
	    next_state = 1;
	 end
	 else begin
	    next_state = 0;
	 end
	 
      end

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

      // accepting x input; stay here until we get all of x vector
      //******** change here
      else if (state == 3) begin
	 if (addr_x < 3) 
	   next_state = 3;
	 else begin
	    next_state = 4; 
	    state2to3 = 1;
	 end
      end			

    //****** change here 
      // computing one output; stay here until we get to the end of the matrix row
      else if (state == 4) begin
	 if (addr_x < 2) 
	   next_state = 4;
	 else 
	    next_state = 5;
      end
// change here******
      // finish the row; check if we are done with the matrix yet; if not, go back to state 4
      else if (state == 5) begin
	 if (out_count < 2) 
	   next_state = 4;
	 else 
	   next_state = 6;
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

   // write to W memory when we are in state 1 and get valid data
   assign wr_en_w  = (next_state == 1 && s_valid);
   
   // write to b memory when we are in state 2 and get valid data
   assign wr_en_b  = (next_state == 2 && s_valid);

   // write to x memory when we are in state 3 and get valid data
   assign wr_en_x = (next_state == 3 && s_valid);

   // 1 cycle before 1st state 3 to set addr_b=0;
   assign last_state2  = (state2to3 && next_state==4);

   // assert s_ready when we are not reseting and our next state will be 0, 1, 2, or 3.
   assign s_ready = ((next_state ==1 || next_state == 3 || next_state == 2 || state == 0) && !reset);
   
endmodule
