// ESE-507 Fall 2016
// Reference solution for Project 2, Part 3

module layer_16_12_1_20(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   parameter M = 16;
   parameter N = 12;
   parameter T = 20;
   parameter logW = $clog2(M*N), logN = $clog2(N+1), logM = $clog2(M);
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
   parameter logW = $clog2(M*N), logN = $clog2(N+1), logM = $clog2(M);

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
   logic 		      clear_acc_delay;
   
   //**************** I changed here (still need to parameterize x) 
   memory #(T,N, logN)  mem_x(clk, data_in, data_out_x, addr_x, wr_en_x); // memory Instantaion for colum matrix
  //They will be ROMMMMMMMMM
   layer_16_12_1_20_W_rom mem_w(clk, addr_w, data_out_w); // memory Instantation 4*4 matrix
   layer_16_12_1_20_B_rom mem_b(clk, addr_b, data_out_b);  // bias memory

   always_ff @(posedge clk) begin
      if (clear_acc)	
	//f <= {8'b0,data_out_b};
        f <= data_out_b;
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
   parameter logW = $clog2(M*N), logN = $clog2(N+1), logM = $clog2(M);
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
   logic 	      last_state2, clear_acc_delay, state2to3;
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
	 if ((clear_acc && !(m_valid && !m_ready)) || (m_ready && m_valid && state != 7)) 
	   addr_b <= addr_b + 1;
	 else if (state==3 || state == 7) 
	   addr_b <= 0;
      end
   end

   // Logic for addr_w
   always_ff @ (posedge clk) begin
      if (reset) addr_w2 <= 0;
      else begin
	 if ((state==4 && !(m_valid && !m_ready))) addr_w2 <= addr_w2 + 1;
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
	 if (addr_x < N-1) 
	   next_state = 4;
	 else 
	    next_state = 5;
      end
// change here******
      // finish the row; check if we are done with the matrix yet; if not, go back to state 4
      else if (state == 5) begin
	 if (out_count < M-1) 
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



module layer_16_12_1_20_W_rom(clk, addr, z);
   input clk;
   input [7:0] addr;
   output logic signed [19:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -20'd381;
        1: z <= 20'd450;
        2: z <= -20'd25;
        3: z <= 20'd486;
        4: z <= 20'd76;
        5: z <= 20'd307;
        6: z <= -20'd502;
        7: z <= -20'd467;
        8: z <= 20'd269;
        9: z <= -20'd348;
        10: z <= 20'd473;
        11: z <= -20'd413;
        12: z <= 20'd5;
        13: z <= -20'd505;
        14: z <= -20'd448;
        15: z <= -20'd341;
        16: z <= -20'd216;
        17: z <= -20'd222;
        18: z <= 20'd315;
        19: z <= -20'd291;
        20: z <= 20'd227;
        21: z <= 20'd371;
        22: z <= 20'd348;
        23: z <= -20'd215;
        24: z <= 20'd39;
        25: z <= 20'd469;
        26: z <= 20'd160;
        27: z <= 20'd119;
        28: z <= 20'd335;
        29: z <= 20'd511;
        30: z <= 20'd62;
        31: z <= 20'd467;
        32: z <= 20'd449;
        33: z <= -20'd475;
        34: z <= 20'd441;
        35: z <= 20'd14;
        36: z <= 20'd344;
        37: z <= 20'd451;
        38: z <= 20'd59;
        39: z <= 20'd101;
        40: z <= -20'd409;
        41: z <= 20'd20;
        42: z <= 20'd201;
        43: z <= 20'd108;
        44: z <= 20'd27;
        45: z <= 20'd265;
        46: z <= 20'd279;
        47: z <= 20'd323;
        48: z <= -20'd469;
        49: z <= 20'd83;
        50: z <= -20'd479;
        51: z <= 20'd270;
        52: z <= -20'd58;
        53: z <= 20'd381;
        54: z <= -20'd457;
        55: z <= 20'd493;
        56: z <= 20'd338;
        57: z <= 20'd216;
        58: z <= 20'd100;
        59: z <= 20'd162;
        60: z <= 20'd215;
        61: z <= -20'd350;
        62: z <= 20'd117;
        63: z <= 20'd153;
        64: z <= -20'd312;
        65: z <= 20'd46;
        66: z <= -20'd345;
        67: z <= -20'd480;
        68: z <= -20'd15;
        69: z <= 20'd226;
        70: z <= 20'd134;
        71: z <= 20'd88;
        72: z <= -20'd266;
        73: z <= -20'd177;
        74: z <= -20'd315;
        75: z <= 20'd273;
        76: z <= -20'd424;
        77: z <= 20'd476;
        78: z <= 20'd84;
        79: z <= -20'd381;
        80: z <= 20'd47;
        81: z <= 20'd117;
        82: z <= 20'd401;
        83: z <= 20'd501;
        84: z <= -20'd13;
        85: z <= 20'd457;
        86: z <= 20'd482;
        87: z <= -20'd187;
        88: z <= 20'd161;
        89: z <= 20'd70;
        90: z <= 20'd487;
        91: z <= -20'd136;
        92: z <= 20'd233;
        93: z <= 20'd92;
        94: z <= -20'd495;
        95: z <= 20'd433;
        96: z <= -20'd374;
        97: z <= -20'd328;
        98: z <= 20'd465;
        99: z <= 20'd123;
        100: z <= 20'd410;
        101: z <= 20'd87;
        102: z <= -20'd300;
        103: z <= -20'd368;
        104: z <= 20'd422;
        105: z <= -20'd103;
        106: z <= 20'd417;
        107: z <= 20'd510;
        108: z <= -20'd139;
        109: z <= -20'd10;
        110: z <= -20'd383;
        111: z <= 20'd421;
        112: z <= -20'd405;
        113: z <= -20'd493;
        114: z <= 20'd410;
        115: z <= 20'd94;
        116: z <= 20'd476;
        117: z <= 20'd381;
        118: z <= 20'd420;
        119: z <= 20'd125;
        120: z <= -20'd61;
        121: z <= 20'd395;
        122: z <= 20'd501;
        123: z <= -20'd340;
        124: z <= -20'd24;
        125: z <= -20'd505;
        126: z <= -20'd419;
        127: z <= 20'd114;
        128: z <= -20'd321;
        129: z <= -20'd465;
        130: z <= -20'd274;
        131: z <= -20'd422;
        132: z <= 20'd134;
        133: z <= -20'd62;
        134: z <= -20'd278;
        135: z <= 20'd45;
        136: z <= 20'd347;
        137: z <= -20'd372;
        138: z <= 20'd43;
        139: z <= -20'd304;
        140: z <= 20'd130;
        141: z <= 20'd173;
        142: z <= -20'd395;
        143: z <= 20'd237;
        144: z <= 20'd192;
        145: z <= -20'd496;
        146: z <= -20'd180;
        147: z <= 20'd156;
        148: z <= 20'd397;
        149: z <= -20'd272;
        150: z <= -20'd231;
        151: z <= -20'd176;
        152: z <= -20'd389;
        153: z <= -20'd242;
        154: z <= -20'd3;
        155: z <= 20'd99;
        156: z <= -20'd235;
        157: z <= 20'd90;
        158: z <= -20'd298;
        159: z <= -20'd43;
        160: z <= 20'd137;
        161: z <= -20'd60;
        162: z <= 20'd47;
        163: z <= -20'd240;
        164: z <= 20'd390;
        165: z <= 20'd281;
        166: z <= 20'd317;
        167: z <= 20'd225;
        168: z <= 20'd421;
        169: z <= -20'd152;
        170: z <= 20'd433;
        171: z <= 20'd39;
        172: z <= -20'd491;
        173: z <= -20'd473;
        174: z <= -20'd235;
        175: z <= 20'd213;
        176: z <= -20'd457;
        177: z <= 20'd97;
        178: z <= -20'd143;
        179: z <= 20'd452;
        180: z <= 20'd337;
        181: z <= 20'd138;
        182: z <= -20'd236;
        183: z <= 20'd460;
        184: z <= 20'd409;
        185: z <= 20'd273;
        186: z <= 20'd48;
        187: z <= -20'd338;
        188: z <= -20'd148;
        189: z <= 20'd262;
        190: z <= 20'd131;
        191: z <= 20'd501;
      endcase
   end
endmodule

module layer_16_12_1_20_B_rom(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [19:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -20'd310;
        1: z <= -20'd334;
        2: z <= -20'd251;
        3: z <= -20'd432;
        4: z <= 20'd460;
        5: z <= -20'd446;
        6: z <= 20'd305;
        7: z <= 20'd369;
        8: z <= -20'd85;
        9: z <= 20'd226;
        10: z <= -20'd103;
        11: z <= -20'd64;
        12: z <= 20'd265;
        13: z <= 20'd174;
        14: z <= -20'd362;
        15: z <= 20'd320;
      endcase
   end
endmodule

