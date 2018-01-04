// ESE-507 Fall 2016
// Reference solution for Project 2, Part 3

module layer_16_12_1_20(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   parameter M = 16;
   parameter N = 12;
   parameter T = 20;
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
   layer_16_12_1_20_W_rom mem_w(clk, addr_w, data_out_w); // memory Instantation 4*4 matrix
   layer_16_12_1_20_B_rom mem_b(clk, addr_b, data_out_b);  // bias memory

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



module layer_16_12_1_20_W_rom(clk, addr, z);
   input clk;
   input [7:0] addr;
   output logic signed [19:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 20'd279;
        1: z <= -20'd205;
        2: z <= -20'd294;
        3: z <= 20'd374;
        4: z <= -20'd410;
        5: z <= 20'd448;
        6: z <= -20'd375;
        7: z <= 20'd453;
        8: z <= 20'd449;
        9: z <= 20'd95;
        10: z <= -20'd247;
        11: z <= 20'd222;
        12: z <= -20'd272;
        13: z <= 20'd14;
        14: z <= 20'd177;
        15: z <= -20'd100;
        16: z <= -20'd384;
        17: z <= -20'd435;
        18: z <= -20'd263;
        19: z <= 20'd403;
        20: z <= -20'd290;
        21: z <= 20'd322;
        22: z <= 20'd64;
        23: z <= 20'd161;
        24: z <= -20'd179;
        25: z <= -20'd250;
        26: z <= 20'd316;
        27: z <= 20'd313;
        28: z <= 20'd265;
        29: z <= 20'd279;
        30: z <= -20'd286;
        31: z <= 20'd32;
        32: z <= -20'd437;
        33: z <= -20'd68;
        34: z <= -20'd105;
        35: z <= -20'd335;
        36: z <= -20'd131;
        37: z <= 20'd32;
        38: z <= -20'd394;
        39: z <= -20'd194;
        40: z <= -20'd385;
        41: z <= -20'd128;
        42: z <= -20'd484;
        43: z <= -20'd144;
        44: z <= 20'd398;
        45: z <= 20'd205;
        46: z <= 20'd268;
        47: z <= -20'd498;
        48: z <= 20'd282;
        49: z <= -20'd506;
        50: z <= 20'd417;
        51: z <= 20'd504;
        52: z <= 20'd328;
        53: z <= -20'd30;
        54: z <= 20'd153;
        55: z <= -20'd363;
        56: z <= 20'd232;
        57: z <= -20'd42;
        58: z <= 20'd463;
        59: z <= -20'd15;
        60: z <= -20'd275;
        61: z <= -20'd335;
        62: z <= -20'd494;
        63: z <= -20'd200;
        64: z <= 20'd110;
        65: z <= -20'd87;
        66: z <= -20'd22;
        67: z <= 20'd491;
        68: z <= 20'd457;
        69: z <= 20'd96;
        70: z <= -20'd215;
        71: z <= -20'd439;
        72: z <= 20'd480;
        73: z <= -20'd187;
        74: z <= -20'd71;
        75: z <= 20'd367;
        76: z <= -20'd493;
        77: z <= -20'd315;
        78: z <= 20'd381;
        79: z <= 20'd301;
        80: z <= -20'd309;
        81: z <= 20'd287;
        82: z <= 20'd294;
        83: z <= -20'd492;
        84: z <= -20'd255;
        85: z <= -20'd65;
        86: z <= -20'd343;
        87: z <= 20'd489;
        88: z <= 20'd405;
        89: z <= -20'd392;
        90: z <= -20'd38;
        91: z <= -20'd381;
        92: z <= -20'd214;
        93: z <= -20'd20;
        94: z <= -20'd69;
        95: z <= 20'd408;
        96: z <= 20'd405;
        97: z <= 20'd421;
        98: z <= 20'd387;
        99: z <= 20'd351;
        100: z <= 20'd6;
        101: z <= -20'd340;
        102: z <= 20'd424;
        103: z <= -20'd26;
        104: z <= -20'd15;
        105: z <= -20'd159;
        106: z <= -20'd171;
        107: z <= 20'd4;
        108: z <= 20'd38;
        109: z <= -20'd301;
        110: z <= -20'd206;
        111: z <= 20'd242;
        112: z <= 20'd498;
        113: z <= -20'd424;
        114: z <= 20'd262;
        115: z <= -20'd269;
        116: z <= 20'd23;
        117: z <= 20'd431;
        118: z <= -20'd292;
        119: z <= -20'd83;
        120: z <= -20'd472;
        121: z <= 20'd182;
        122: z <= 20'd48;
        123: z <= -20'd174;
        124: z <= -20'd349;
        125: z <= 20'd491;
        126: z <= -20'd278;
        127: z <= -20'd456;
        128: z <= 20'd401;
        129: z <= -20'd403;
        130: z <= 20'd407;
        131: z <= -20'd105;
        132: z <= -20'd231;
        133: z <= 20'd319;
        134: z <= 20'd381;
        135: z <= 20'd266;
        136: z <= -20'd352;
        137: z <= -20'd301;
        138: z <= -20'd241;
        139: z <= 20'd199;
        140: z <= -20'd90;
        141: z <= 20'd65;
        142: z <= -20'd71;
        143: z <= -20'd104;
        144: z <= 20'd153;
        145: z <= -20'd321;
        146: z <= 20'd139;
        147: z <= -20'd336;
        148: z <= -20'd402;
        149: z <= 20'd359;
        150: z <= 20'd93;
        151: z <= -20'd362;
        152: z <= 20'd29;
        153: z <= -20'd371;
        154: z <= -20'd24;
        155: z <= 20'd192;
        156: z <= -20'd391;
        157: z <= 20'd210;
        158: z <= 20'd249;
        159: z <= -20'd502;
        160: z <= 20'd319;
        161: z <= 20'd144;
        162: z <= -20'd95;
        163: z <= -20'd424;
        164: z <= -20'd48;
        165: z <= -20'd226;
        166: z <= 20'd355;
        167: z <= 20'd112;
        168: z <= -20'd15;
        169: z <= -20'd398;
        170: z <= -20'd201;
        171: z <= 20'd407;
        172: z <= 20'd179;
        173: z <= 20'd240;
        174: z <= -20'd209;
        175: z <= -20'd180;
        176: z <= 20'd431;
        177: z <= 20'd442;
        178: z <= -20'd4;
        179: z <= -20'd482;
        180: z <= 20'd289;
        181: z <= -20'd422;
        182: z <= -20'd332;
        183: z <= -20'd193;
        184: z <= -20'd281;
        185: z <= 20'd157;
        186: z <= 20'd511;
        187: z <= -20'd160;
        188: z <= -20'd145;
        189: z <= 20'd248;
        190: z <= -20'd150;
        191: z <= -20'd337;
      endcase
   end
endmodule

module layer_16_12_1_20_B_rom(clk, addr, z);
   input clk;
   input [4:0] addr;
   output logic signed [19:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -20'd119;
        1: z <= 20'd267;
        2: z <= -20'd249;
        3: z <= 20'd345;
        4: z <= -20'd470;
        5: z <= -20'd406;
        6: z <= -20'd55;
        7: z <= 20'd27;
        8: z <= -20'd292;
        9: z <= 20'd257;
        10: z <= -20'd77;
        11: z <= 20'd399;
        12: z <= -20'd15;
        13: z <= 20'd226;
        14: z <= -20'd293;
        15: z <= -20'd95;
      endcase
   end
endmodule

