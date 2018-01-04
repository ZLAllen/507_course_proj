// ESE-507 Fall 2016
// Reference solution for Project 2, Part 3

module layer_13_16_1_32(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   parameter M = 13;
   parameter N = 16;
   parameter T = 32;
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
   layer_13_16_1_32_W_rom mem_w(clk, addr_w, data_out_w); // memory Instantation 4*4 matrix
   layer_13_16_1_32_B_rom mem_b(clk, addr_b, data_out_b);  // bias memory

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
	 if ((clear_acc_delay && !(m_valid && !m_ready)) || (m_ready && m_valid && state != 7)) 
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



module layer_13_16_1_32_W_rom(clk, addr, z);
   input clk;
   input [7:0] addr;
   output logic signed [31:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -32'd11498;
        1: z <= 32'd26306;
        2: z <= 32'd5802;
        3: z <= 32'd25264;
        4: z <= 32'd1128;
        5: z <= -32'd15954;
        6: z <= 32'd4914;
        7: z <= -32'd286;
        8: z <= -32'd24931;
        9: z <= -32'd13185;
        10: z <= 32'd16446;
        11: z <= -32'd11353;
        12: z <= -32'd32461;
        13: z <= -32'd1;
        14: z <= -32'd20271;
        15: z <= 32'd2205;
        16: z <= 32'd28935;
        17: z <= -32'd3354;
        18: z <= -32'd29111;
        19: z <= 32'd15360;
        20: z <= -32'd230;
        21: z <= -32'd25104;
        22: z <= 32'd13729;
        23: z <= 32'd7991;
        24: z <= -32'd11592;
        25: z <= -32'd10873;
        26: z <= -32'd29260;
        27: z <= 32'd13511;
        28: z <= -32'd30818;
        29: z <= -32'd9980;
        30: z <= -32'd26440;
        31: z <= -32'd9548;
        32: z <= -32'd16441;
        33: z <= 32'd12130;
        34: z <= -32'd17051;
        35: z <= 32'd17455;
        36: z <= 32'd28944;
        37: z <= 32'd20631;
        38: z <= -32'd15599;
        39: z <= -32'd28755;
        40: z <= -32'd25321;
        41: z <= -32'd31921;
        42: z <= -32'd7340;
        43: z <= -32'd25014;
        44: z <= 32'd846;
        45: z <= 32'd5157;
        46: z <= 32'd9960;
        47: z <= -32'd2987;
        48: z <= -32'd30964;
        49: z <= 32'd13617;
        50: z <= -32'd20394;
        51: z <= 32'd1574;
        52: z <= 32'd21281;
        53: z <= 32'd26103;
        54: z <= -32'd23202;
        55: z <= -32'd23078;
        56: z <= -32'd17538;
        57: z <= -32'd19694;
        58: z <= 32'd23201;
        59: z <= -32'd15588;
        60: z <= 32'd3094;
        61: z <= 32'd29529;
        62: z <= 32'd7633;
        63: z <= 32'd19421;
        64: z <= 32'd8891;
        65: z <= 32'd23350;
        66: z <= 32'd4109;
        67: z <= 32'd5067;
        68: z <= 32'd11213;
        69: z <= 32'd21278;
        70: z <= 32'd9081;
        71: z <= 32'd18660;
        72: z <= 32'd22126;
        73: z <= -32'd31027;
        74: z <= 32'd26415;
        75: z <= -32'd9796;
        76: z <= 32'd6899;
        77: z <= 32'd3607;
        78: z <= 32'd19986;
        79: z <= 32'd8703;
        80: z <= -32'd15544;
        81: z <= 32'd32360;
        82: z <= -32'd22491;
        83: z <= -32'd27030;
        84: z <= 32'd25695;
        85: z <= -32'd12925;
        86: z <= -32'd17340;
        87: z <= -32'd24611;
        88: z <= 32'd149;
        89: z <= -32'd26907;
        90: z <= -32'd7430;
        91: z <= -32'd29524;
        92: z <= -32'd30146;
        93: z <= -32'd32565;
        94: z <= 32'd22665;
        95: z <= 32'd11513;
        96: z <= 32'd23553;
        97: z <= -32'd5994;
        98: z <= -32'd16188;
        99: z <= 32'd1998;
        100: z <= -32'd17483;
        101: z <= 32'd25661;
        102: z <= -32'd12109;
        103: z <= -32'd28125;
        104: z <= 32'd27403;
        105: z <= -32'd18462;
        106: z <= -32'd5153;
        107: z <= 32'd1534;
        108: z <= 32'd17913;
        109: z <= -32'd17935;
        110: z <= -32'd22531;
        111: z <= -32'd30399;
        112: z <= -32'd18343;
        113: z <= -32'd12254;
        114: z <= -32'd24661;
        115: z <= -32'd25416;
        116: z <= 32'd7590;
        117: z <= -32'd9233;
        118: z <= -32'd17258;
        119: z <= -32'd25029;
        120: z <= -32'd3372;
        121: z <= 32'd8080;
        122: z <= -32'd21785;
        123: z <= -32'd750;
        124: z <= 32'd8283;
        125: z <= -32'd31887;
        126: z <= -32'd22005;
        127: z <= -32'd932;
        128: z <= -32'd5113;
        129: z <= -32'd5424;
        130: z <= -32'd31702;
        131: z <= 32'd10172;
        132: z <= -32'd12531;
        133: z <= -32'd11043;
        134: z <= 32'd14815;
        135: z <= -32'd17896;
        136: z <= 32'd3263;
        137: z <= -32'd23105;
        138: z <= 32'd16406;
        139: z <= -32'd11592;
        140: z <= -32'd8272;
        141: z <= 32'd26643;
        142: z <= -32'd9222;
        143: z <= 32'd6154;
        144: z <= -32'd18378;
        145: z <= -32'd1115;
        146: z <= 32'd13506;
        147: z <= 32'd21980;
        148: z <= 32'd22421;
        149: z <= 32'd29016;
        150: z <= 32'd29719;
        151: z <= -32'd13719;
        152: z <= 32'd4328;
        153: z <= -32'd24833;
        154: z <= 32'd18300;
        155: z <= -32'd20157;
        156: z <= -32'd23952;
        157: z <= 32'd29063;
        158: z <= 32'd11679;
        159: z <= 32'd3703;
        160: z <= -32'd9129;
        161: z <= 32'd12746;
        162: z <= -32'd18892;
        163: z <= 32'd11109;
        164: z <= -32'd31065;
        165: z <= 32'd28691;
        166: z <= 32'd25981;
        167: z <= 32'd4967;
        168: z <= -32'd27182;
        169: z <= 32'd9620;
        170: z <= 32'd26143;
        171: z <= -32'd2685;
        172: z <= 32'd3495;
        173: z <= -32'd15847;
        174: z <= -32'd29299;
        175: z <= 32'd17885;
        176: z <= 32'd15807;
        177: z <= 32'd16975;
        178: z <= 32'd7097;
        179: z <= 32'd5460;
        180: z <= 32'd13224;
        181: z <= 32'd4049;
        182: z <= 32'd24509;
        183: z <= -32'd15216;
        184: z <= 32'd11984;
        185: z <= 32'd10041;
        186: z <= -32'd2604;
        187: z <= 32'd20800;
        188: z <= 32'd6337;
        189: z <= -32'd23693;
        190: z <= -32'd8265;
        191: z <= 32'd29976;
        192: z <= 32'd21821;
        193: z <= 32'd5611;
        194: z <= 32'd8317;
        195: z <= 32'd23525;
        196: z <= 32'd1535;
        197: z <= 32'd1531;
        198: z <= -32'd4276;
        199: z <= 32'd7121;
        200: z <= -32'd21617;
        201: z <= -32'd10901;
        202: z <= -32'd28332;
        203: z <= 32'd14646;
        204: z <= 32'd6021;
        205: z <= -32'd24863;
        206: z <= -32'd236;
        207: z <= -32'd10940;
      endcase
   end
endmodule

module layer_13_16_1_32_B_rom(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [31:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 32'd24881;
        1: z <= -32'd25907;
        2: z <= 32'd27288;
        3: z <= 32'd5337;
        4: z <= 32'd10910;
        5: z <= 32'd19029;
        6: z <= 32'd22889;
        7: z <= -32'd9874;
        8: z <= -32'd3697;
        9: z <= -32'd12483;
        10: z <= -32'd21842;
        11: z <= -32'd30128;
        12: z <= -32'd3407;
      endcase
   end
endmodule

