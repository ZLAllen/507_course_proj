// ESE-507 Fall 2016
// Reference solution for Project 2, Part 3

module layer_13_16_1_32(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);
   parameter M = 13;
   parameter N = 16;
   parameter T = 32;
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
   layer_13_16_1_32_W_rom mem_w(clk, addr_w, data_out_w); // memory Instantation 4*4 matrix
   layer_13_16_1_32_B_rom mem_b(clk, addr_b, data_out_b);  // bias memory

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



module layer_13_16_1_32_W_rom(clk, addr, z);
   input clk;
   input [7:0] addr;
   output logic signed [31:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -32'd195;
        1: z <= -32'd14584;
        2: z <= 32'd13739;
        3: z <= -32'd16297;
        4: z <= -32'd15757;
        5: z <= -32'd19486;
        6: z <= 32'd8723;
        7: z <= -32'd16534;
        8: z <= -32'd4209;
        9: z <= 32'd19513;
        10: z <= 32'd8806;
        11: z <= -32'd18370;
        12: z <= -32'd11916;
        13: z <= -32'd25743;
        14: z <= -32'd4478;
        15: z <= 32'd24511;
        16: z <= -32'd7297;
        17: z <= -32'd25945;
        18: z <= -32'd32480;
        19: z <= -32'd29688;
        20: z <= 32'd17863;
        21: z <= 32'd5933;
        22: z <= -32'd25175;
        23: z <= 32'd5705;
        24: z <= 32'd9514;
        25: z <= -32'd10951;
        26: z <= -32'd10441;
        27: z <= 32'd17900;
        28: z <= 32'd19141;
        29: z <= -32'd653;
        30: z <= -32'd30303;
        31: z <= -32'd13822;
        32: z <= 32'd17531;
        33: z <= 32'd16204;
        34: z <= 32'd2650;
        35: z <= -32'd30994;
        36: z <= 32'd29486;
        37: z <= -32'd21395;
        38: z <= -32'd14760;
        39: z <= -32'd7491;
        40: z <= 32'd30886;
        41: z <= 32'd26815;
        42: z <= 32'd6907;
        43: z <= -32'd13798;
        44: z <= -32'd31696;
        45: z <= -32'd30339;
        46: z <= -32'd22055;
        47: z <= -32'd6225;
        48: z <= -32'd23515;
        49: z <= -32'd21767;
        50: z <= -32'd3145;
        51: z <= 32'd27116;
        52: z <= 32'd16935;
        53: z <= 32'd4449;
        54: z <= 32'd53;
        55: z <= -32'd6319;
        56: z <= 32'd26266;
        57: z <= 32'd22381;
        58: z <= -32'd21187;
        59: z <= 32'd12639;
        60: z <= -32'd11040;
        61: z <= -32'd18722;
        62: z <= 32'd31586;
        63: z <= -32'd26277;
        64: z <= 32'd30250;
        65: z <= 32'd1468;
        66: z <= -32'd24503;
        67: z <= 32'd26968;
        68: z <= 32'd12841;
        69: z <= -32'd6495;
        70: z <= -32'd13291;
        71: z <= 32'd10959;
        72: z <= -32'd12448;
        73: z <= 32'd26384;
        74: z <= 32'd29929;
        75: z <= -32'd11376;
        76: z <= 32'd28814;
        77: z <= -32'd24894;
        78: z <= 32'd15167;
        79: z <= -32'd27469;
        80: z <= -32'd13893;
        81: z <= -32'd20745;
        82: z <= 32'd32415;
        83: z <= -32'd29726;
        84: z <= 32'd16472;
        85: z <= -32'd300;
        86: z <= -32'd3276;
        87: z <= 32'd9970;
        88: z <= -32'd10687;
        89: z <= 32'd8305;
        90: z <= -32'd10159;
        91: z <= 32'd11041;
        92: z <= 32'd22352;
        93: z <= -32'd11341;
        94: z <= 32'd17532;
        95: z <= 32'd19834;
        96: z <= 32'd22895;
        97: z <= 32'd25797;
        98: z <= 32'd14035;
        99: z <= 32'd2968;
        100: z <= -32'd13465;
        101: z <= -32'd32024;
        102: z <= -32'd18841;
        103: z <= 32'd6855;
        104: z <= 32'd27129;
        105: z <= -32'd21680;
        106: z <= 32'd28248;
        107: z <= 32'd23175;
        108: z <= -32'd13806;
        109: z <= 32'd10647;
        110: z <= 32'd28474;
        111: z <= 32'd5070;
        112: z <= 32'd22670;
        113: z <= 32'd28121;
        114: z <= 32'd8112;
        115: z <= 32'd6374;
        116: z <= -32'd4947;
        117: z <= -32'd27932;
        118: z <= -32'd16424;
        119: z <= 32'd17135;
        120: z <= 32'd13142;
        121: z <= 32'd6186;
        122: z <= -32'd4592;
        123: z <= 32'd2726;
        124: z <= 32'd27613;
        125: z <= -32'd19827;
        126: z <= -32'd10208;
        127: z <= 32'd17741;
        128: z <= -32'd26798;
        129: z <= -32'd28941;
        130: z <= -32'd12059;
        131: z <= -32'd7495;
        132: z <= -32'd28196;
        133: z <= 32'd1869;
        134: z <= 32'd32129;
        135: z <= 32'd31701;
        136: z <= 32'd12957;
        137: z <= 32'd27609;
        138: z <= 32'd22108;
        139: z <= 32'd31920;
        140: z <= 32'd5488;
        141: z <= 32'd17814;
        142: z <= 32'd4222;
        143: z <= -32'd4609;
        144: z <= 32'd13167;
        145: z <= -32'd20434;
        146: z <= -32'd31003;
        147: z <= -32'd24548;
        148: z <= -32'd15597;
        149: z <= -32'd14658;
        150: z <= 32'd25355;
        151: z <= 32'd30313;
        152: z <= 32'd24296;
        153: z <= -32'd12004;
        154: z <= 32'd271;
        155: z <= 32'd19141;
        156: z <= 32'd937;
        157: z <= 32'd22831;
        158: z <= 32'd4114;
        159: z <= 32'd6907;
        160: z <= 32'd26659;
        161: z <= 32'd24824;
        162: z <= 32'd32181;
        163: z <= 32'd31231;
        164: z <= -32'd6075;
        165: z <= 32'd31542;
        166: z <= 32'd30164;
        167: z <= -32'd25886;
        168: z <= 32'd26383;
        169: z <= 32'd19504;
        170: z <= -32'd26734;
        171: z <= -32'd897;
        172: z <= 32'd4550;
        173: z <= 32'd10256;
        174: z <= 32'd27262;
        175: z <= -32'd15051;
        176: z <= 32'd22591;
        177: z <= 32'd29028;
        178: z <= -32'd6831;
        179: z <= -32'd25774;
        180: z <= -32'd18398;
        181: z <= -32'd14243;
        182: z <= -32'd28229;
        183: z <= -32'd26870;
        184: z <= 32'd6521;
        185: z <= 32'd4810;
        186: z <= 32'd25039;
        187: z <= -32'd25310;
        188: z <= -32'd5127;
        189: z <= -32'd3614;
        190: z <= 32'd14365;
        191: z <= -32'd11236;
        192: z <= -32'd11558;
        193: z <= 32'd13778;
        194: z <= -32'd12773;
        195: z <= 32'd15135;
        196: z <= 32'd12552;
        197: z <= -32'd15377;
        198: z <= 32'd22017;
        199: z <= 32'd6167;
        200: z <= -32'd28641;
        201: z <= 32'd28052;
        202: z <= -32'd27497;
        203: z <= 32'd8677;
        204: z <= 32'd5540;
        205: z <= 32'd32533;
        206: z <= 32'd26394;
        207: z <= -32'd4637;
      endcase
   end
endmodule

module layer_13_16_1_32_B_rom(clk, addr, z);
   input clk;
   input [3:0] addr;
   output logic signed [31:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 32'd28793;
        1: z <= -32'd13204;
        2: z <= 32'd2357;
        3: z <= -32'd22373;
        4: z <= 32'd5321;
        5: z <= 32'd6896;
        6: z <= -32'd16475;
        7: z <= -32'd20926;
        8: z <= -32'd21062;
        9: z <= -32'd24203;
        10: z <= -32'd13468;
        11: z <= 32'd6580;
        12: z <= 32'd4951;
      endcase
   end
endmodule

