// ESE 507 Project 3 Handout Code
// Fall 2016
// Peter Milder

// Getting started:
// The main() function contains the code to read the parameters. 
// For Parts 1 and 2, your code should be in the genLayer() function. Please
// also look at this function to see an example for how to create the ROMs.
//
// For Part 3, your code should be in the genAllLayers() function.


#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>
#include <cstring>
#include <assert.h>
#include <math.h>
using namespace std;

void printUsage();
void genLayer(int M, int N, int P, int bits, vector<int>& constvector, string modName, ofstream &os);
void genAllLayers(int N, int M1, int M2, int M3, int mult_budget, int bits, vector<int>& constVector, string modName, ofstream &os);
void readConstants(ifstream &constStream, vector<int>& constvector);
void genROM(vector<int>& constVector, int bits, string modName, ofstream &os);


int main(int argc, char* argv[]) {

   // If the user runs the program without enough parameters, print a helpful message
   // and quit.
   if (argc < 7) {
      printUsage();
      return 1;
   }

   int mode = atoi(argv[1]);

   ifstream const_file;
   ofstream os;
   vector<int> constVector;

   //----------------------------------------------------------------------
   // Look here for Part 1 and 2
   if ((mode == 1) && (argc == 7)) {
      // Mode 1: Generate one layer with given dimensions and one testbench

      // --------------- read parameters, etc. ---------------
      int M = atoi(argv[2]);
      int N = atoi(argv[3]);
      int P = atoi(argv[4]);
      int bits = atoi(argv[5]);
      const_file.open(argv[6]);
      if (const_file.is_open() != true) {
         cout << "ERROR reading constant file " << argv[6] << endl;
         return 1;
      }

      // Read the constants out of the provided file and place them in the constVector vector
      readConstants(const_file, constVector);

      string out_file = "layer_" + to_string(M) + "_" + to_string(N) + "_" + to_string(P) + "_" + to_string(bits) + ".sv";

      os.open(out_file);
      if (os.is_open() != true) {
         cout << "ERROR opening " << out_file << " for write." << endl;
         return 1;
      }
      // -------------------------------------------------------------

      // call the genLayer function you will write to generate this layer
      string modName = "layer_" + to_string(M) + "_" + to_string(N) + "_" + to_string(P) + "_" + to_string(bits);
      genLayer(M, N, P, bits, constVector, modName, os); 

   }
   //--------------------------------------------------------------------


   // ----------------------------------------------------------------
   // Look here for Part 3
   else if ((mode == 2) && (argc == 9)) {
      // Mode 2: Generate three layer with given dimensions and interconnect them

      // --------------- read parameters, etc. ---------------
      int N  = atoi(argv[2]);
      int M1 = atoi(argv[3]);
      int M2 = atoi(argv[4]);
      int M3 = atoi(argv[5]);
      int mult_budget = atoi(argv[6]);
      int bits = atoi(argv[7]);
      const_file.open(argv[8]);
      if (const_file.is_open() != true) {
         cout << "ERROR reading constant file " << argv[8] << endl;
         return 1;
      }
      readConstants(const_file, constVector);

      string out_file = "network_" + to_string(N) + "_" + to_string(M1) + "_" + to_string(M2) + "_" + to_string(M3) + "_" + to_string(mult_budget) + "_" + to_string(bits) + ".sv";


      os.open(out_file);
      if (os.is_open() != true) {
         cout << "ERROR opening " << out_file << " for write." << endl;
         return 1;
      }
      // -------------------------------------------------------------

      string mod_name = "network_" + to_string(N) + "_" + to_string(M1) + "_" + to_string(M2) + "_" + to_string(M3) + "_" + to_string(mult_budget) + "_" + to_string(bits);

      // call the genAllLayers function
      genAllLayers(N, M1, M2, M3, mult_budget, bits, constVector, mod_name, os);

   }
   //-------------------------------------------------------

   else {
      printUsage();
      return 1;
   }

   // close the output stream
   os.close();

}

// Read values from the constant file into the vector
void readConstants(ifstream &constStream, vector<int>& constvector) {
   string constLineString;
   while(getline(constStream, constLineString)) {
      int val = atoi(constLineString.c_str());
      constvector.push_back(val);
   }
}

// Generate a ROM based on values constVector.
// Values should each be "bits" number of bits.
void genROM(vector<int>& constVector, int bits, string modName, ofstream &os) {

      int numWords = constVector.size();
      int addrBits = ceil(log2(numWords+1));

      os << "module " << modName << "(clk, addr, z);" << endl;
      os << "   input clk;" << endl;
      os << "   input [" << addrBits-1 << ":0] addr;" << endl;
      os << "   output logic signed [" << bits-1 << ":0] z;" << endl;
      os << "   always_ff @(posedge clk) begin" << endl;
      os << "      case(addr)" << endl;
      int i=0;
      for (vector<int>::iterator it = constVector.begin(); it < constVector.end(); it++, i++) {
         if (*it < 0)
            os << "        " << i << ": z <= -" << bits << "'d" << abs(*it) << ";" << endl;
         else
            os << "        " << i << ": z <= "  << bits << "'d" << *it      << ";" << endl;
      }
      os << "      endcase" << endl << "   end" << endl << "endmodule" << endl << endl;
}

// Parts 1 and 2
// Here is where you add your code to produce a neural network layer.
void genLayer(int M, int N, int P, int bits, vector<int>& constVector, string modName, ofstream &os) {

   // Make your module name: layer_M_N_P_bits, where these parameters are replaced with the
   // actual numbers
   //
/*
    string outModFile = modName + ".sv";
    
   string myCmd = "cat template.txt";
   myCmd += "| sed 's/<MODULENAME>/" + modName + "/g; ";
   myCmd += " s/<BITWIDTH>/" + to_string(bits)  + "/g;";
   myCmd += " s/<ROW>/" + to_string(M)  + "/g;";
   myCmd += " s/<COLUMN>/" + to_string(N)  + "/g;";
   myCmd += " s/<WROMNAME>/" +  modName + "_W_rom" + "/g;";
   myCmd += " s/<BROMNAME>/" +  modName + "_B_rom" + "/g;";
   myCmd += " s/^M$//g;";
   myCmd += "' > " + outModFile;
   system(myCmd.c_str());
 */

    os << "module " << modName << "(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);" << endl;
    os << "   parameter M = " << to_string(M) << " ; " << endl;
    os << "   parameter N = " << to_string(N) << " ; " << endl;
    os << "   parameter T = " << to_string(bits) << " ; " << endl;
    os << "   parameter logW = $clog2(M*N+1), logN = $clog2(N+1), logM = $clog2(M+1); " << endl;
    os << "   input clk, reset; " << endl;
    os << " " << endl;
    os << "   input s_valid; " << endl;
    os << "   input [T-1:0] data_in; " << endl;
    os << "   output logic s_ready; " << endl;
    os << "    " << endl;
    os << "   input 	m_ready; " << endl;
    os << "   output logic m_valid; " << endl;
    os << "   output signed [T-1:0] data_out; " << endl;
    os << "   " << endl;
    os << "   logic [logN-1:0]	addr_x; " << endl;
    os << "   logic [logM-1:0]     addr_b; " << endl;
    os << "   logic [logW-1:0] 	addr_w; " << endl;
    os << "   logic 		clear_acc, wr_en_x, wr_en_y; " << endl;
    os << "    " << endl;
    os << "   datapath #(M,N,T) d(clk, clear_acc, data_in, data_out, wr_en_x, wr_en_y, addr_x, addr_w, addr_b, m_valid, m_ready); " << endl;
    os << "   ctrlpath #(M,N,T) c(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, addr_x, addr_w, addr_b); " << endl;
    os << "    " << endl;
    os << "endmodule " << endl;
    os << " " << endl;
    os << "module memory(clk, data_in, data_out, addr, wr_en); " << endl;
    os << "   parameter WIDTH=16, SIZE=64, LOGSIZE=6; " << endl;
    os << "   input [WIDTH-1:0] data_in; " << endl;
    os << "   output logic [WIDTH-1:0] data_out; " << endl;
    os << "   input [LOGSIZE-1:0] 	    addr; " << endl;
    os << "   input 		    clk, wr_en; " << endl;
    os << "   logic [SIZE-1:0][WIDTH-1:0] mem; " << endl;
    os << "   always_ff @(posedge clk) begin " << endl;
    os << "      data_out <= mem[addr]; " << endl;
    os << "      if (wr_en) " << endl;
    os << "	mem[addr] <= data_in; " << endl;
    os << "   end " << endl;
    os << "endmodule " << endl;
    os << " " << endl;
    os << "module datapath(clk, clear_acc, data_in, data_out, wr_en_x, wr_en_y, addr_x, addr_w, addr_b, m_valid, m_ready); " << endl;
    os << " " << endl;
    os << "   parameter M = 3, N = 3, T = 16; " << endl;
    os << "   parameter logW = $clog2(M*N+1), logN = $clog2(N+1), logM = $clog2(M+1); " << endl;
    os << " " << endl;
    os << "   input clk, clear_acc, wr_en_x, wr_en_y, m_valid, m_ready; " << endl;
    os << "   input [T-1:0] data_in; " << endl;
    os << "   output logic signed [T-1:0] data_out; " << endl;
    os << "   logic signed [T-1:0]        data_out_x, data_out_w; " << endl;
    os << "   logic [T-1:0] 	      data_out_b; " << endl;
    os << "   logic signed [T-1:0]       f, mul_out, adder, mul_out_save; " << endl;
    os << "   input logic [logN-1:0]     addr_x; " << endl;
    os << "   input logic [logM-1:0]     addr_b; " << endl;
    os << "   input logic [logW-1:0]     addr_w; " << endl;
    os << "   logic 		      delay; " << endl;
    os << "   logic 		      clear_acc_delay; " << endl;
    os << "    " << endl;
    os << "   memory #(T,N, logN)  mem_x(clk, data_in, data_out_x, addr_x, wr_en_x); // memory Instantaion for colum matrix " << endl;
    os << "  //They will be ROMMMMMMMMM " << endl;
    os << "   " << modName << "_W_rom mem_w(clk, addr_w, data_out_w); // memory Instantation 4*4 matrix " << endl;
    os << "   " << modName << "_B_rom mem_b(clk, addr_b, data_out_b);  // bias memory " << endl;
    os << " " << endl;
    os << "   always_ff @(posedge clk) begin " << endl;
    os << "      if (clear_acc)	 " << endl;
    os << "	//f <= {8'b0,data_out_b}; " << endl;
    os << "        f <= data_out_b; " << endl;
    os << "      else if  " << endl;
    os << "	(m_valid && !m_ready || delay) f <= f; " << endl;
    os << "      else  " << endl;
    os << "	f <= adder; " << endl;
    os << "      clear_acc_delay <= clear_acc; " << endl;
    os << "   end " << endl;
    os << " " << endl;
    os << "   always_ff @(posedge clk) begin " << endl;
    os << "      delay <= (m_valid && !m_ready); " << endl;
    os << "   end " << endl;
    os << " " << endl;
    os << "   always_comb begin " << endl;
    os << "      if (delay)  " << endl;
    os << "	mul_out = mul_out_save; " << endl;
    os << "      else  " << endl;
    os << "	mul_out = data_out_x * data_out_w;	 " << endl;
    os << "      adder = mul_out + f; " << endl;
    os << "   end " << endl;
    os << " " << endl;
    os << "   always_ff @(posedge clk) begin " << endl;
    os << "      if (clear_acc_delay)  " << endl;
    os << "	mul_out_save <= mul_out; " << endl;
    os << "   end " << endl;
    os << "    " << endl;
    os << "   always_ff @(posedge clk) begin " << endl;
    os << "      if (wr_en_y) begin " << endl;
    os << "          if (f > 0) begin " << endl;
    os << "              data_out <= f; " << endl;
    os << "          end else begin " << endl;
    os << "              data_out <= 0; " << endl;
    os << "          end " << endl;
    os << "      end " << endl;
    os << "      else if (m_valid && !m_ready)	 " << endl;
    os << "	data_out <= data_out; " << endl;
    os << "      else data_out <= 0; " << endl;
    os << "   end " << endl;
    os << "    " << endl;
    os << "    " << endl;
    os << "endmodule " << endl;
    os << " " << endl;
    os << "module ctrlpath(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc, wr_en_x, wr_en_y, addr_x, addr_w, addr_b); " << endl;
    os << " " << endl;
    os << "   parameter M = 3, N = 3, T = 16; " << endl;
    os << "   parameter logW = $clog2(M*N+1), logN = $clog2(N+1), logM = $clog2(M+1); " << endl;
    os << "   input clk, reset; " << endl;
    os << "   input s_valid, m_ready; " << endl;
    os << "   output logic s_ready, m_valid; " << endl;
    os << "   output logic clear_acc, wr_en_x, wr_en_y; " << endl;
    os << "   logic [3:0] 	state, next_state; " << endl;
    os << "    " << endl;
    os << " " << endl;
    os << "   output logic [logN-1:0] addr_x; " << endl;
    os << "   output logic [logM-1:0] addr_b; " << endl;
    os << "   output logic [logW-1:0] addr_w; " << endl;
    os << "   logic [logW:0] 	   addr_w2; " << endl;
    os << "   logic 	      last_state2, clear_acc_delay, state2to3, state2to4; " << endl;
    os << "   logic [logM-1:0] 	      out_count;  " << endl;
    os << "    " << endl;
    os << "   assign addr_w = addr_w2[logW-1:0]; " << endl;
    os << "    " << endl;
    os << "   always_ff @ (posedge clk) begin " << endl;
    os << "      if (reset) begin " << endl;
    os << "	 state <=0;  " << endl;
    os << "      end		 " << endl;
    os << "      else  " << endl;
    os << "	state <= next_state; 	 " << endl;
    os << "   end " << endl;
    os << " " << endl;
    os << "   // Logic for addr_x " << endl;
    os << "   always_ff @ (posedge clk) begin " << endl;
    os << "      if (reset) addr_x <= 0; " << endl;
    os << "      else begin " << endl;
    os << "	 if (wr_en_x || (state==4 && !(m_valid && !m_ready)))  " << endl;
    os << "	   addr_x <= addr_x + 1; " << endl;
    os << "	 else if (state==7 || state2to4 || state2to3)  " << endl;
    os << "	   addr_x <= 0; " << endl;
    os << "      end " << endl;
    os << "   end " << endl;
    os << " " << endl;
    os << "   // Logic for out_count " << endl;
    os << "   always_ff @ (posedge clk) begin " << endl;
    os << "      if (reset)  " << endl;
    os << "	out_count <= 0; " << endl;
    os << "      else begin " << endl;
    os << "	 if (state == 5)  " << endl;
    os << "	   out_count <= out_count + 1; " << endl;
    os << "	 else if (state == 7)  " << endl;
    os << "	   out_count <= 0; " << endl;
    os << "      end " << endl;
    os << "   end " << endl;
    os << " " << endl;
    os << "   // Logic for addr_b " << endl;
    os << "   always_ff @ (posedge clk) begin " << endl;
    os << "      if (reset)  " << endl;
    os << "	addr_b <= 0; " << endl;
    os << "      else begin " << endl;
    os << "	 if ((clear_acc_delay && !(m_valid && !m_ready)) || (m_ready && m_valid && state != 7 && !clear_acc))  " << endl;
    os << "	   addr_b <= addr_b + 1; " << endl;
    os << "	 else if (state==3 || state == 7)  " << endl;
    os << "	   addr_b <= 0; " << endl;
    os << "      end " << endl;
    os << "   end " << endl;
    os << " " << endl;
    os << "   // Logic for addr_w " << endl;
    os << "   always_ff @ (posedge clk) begin " << endl;
    os << "      if (reset) addr_w2 <= 0; " << endl;
    os << "      else begin " << endl;
    os << "	 if ((state==4 && !(m_valid && !m_ready))) addr_w2 <= addr_w2 + 1; " << endl;
    os << "	 else if (last_state2 || state == 7) addr_w2 <= 0; " << endl;
    os << "	 else addr_w2 <= addr_w2; " << endl;
    os << "      end " << endl;
    os << "   end " << endl;
    os << "    " << endl;
    os << "   always_ff @ (posedge clk) begin " << endl;
    os << "      if (reset) clear_acc <= 1; " << endl;
    os << "      else if (state2to3 || state == 2) begin clear_acc <=1; end " << endl;
    os << "      else begin clear_acc <=0; end " << endl;
    os << "   end " << endl;
    os << "    " << endl;
    os << "   always_ff @ (posedge clk) begin " << endl;
    os << "      if (state == 5) begin wr_en_y <= 1; end " << endl;
    os << "      else begin wr_en_y <= 0; end " << endl;
    os << "   end " << endl;
    os << "    " << endl;
    os << "   always_ff @ (posedge clk) begin " << endl;
    os << "      clear_acc_delay<= (clear_acc && state == 4); " << endl;
    os << "   end " << endl;
    os << "    " << endl;
    os << "   always_ff @ (posedge clk) begin " << endl;
    os << "      if (reset) m_valid <= 0; " << endl;
    os << "      else begin " << endl;
    os << "	 if (m_valid && !m_ready)	m_valid <= m_valid; " << endl;
    os << "	 else  	m_valid <= wr_en_y; " << endl;
    os << "      end " << endl;
    os << "   end " << endl;
    os << "    " << endl;
    os << "    " << endl;
    os << "    " << endl;
    os << "   always_comb begin	state2to3 = 0; state2to4 = 0; " << endl;
    os << " " << endl;
    os << "      // wait for valid input " << endl;
    os << "      if (state==0) begin " << endl;
    os << "	 if (s_valid) begin " << endl;
    os << "	    next_state = 3; " << endl;
    os << "	 end " << endl;
    os << "	 else begin " << endl;
    os << "	    next_state = 0; " << endl;
    os << "	 end " << endl;
    os << "	  " << endl;
    os << "      end " << endl;
    os << "/* " << endl;
    os << "      // accepting W input; stay here until we get all of W matrix " << endl;
    os << "      else if (state == 1) begin " << endl;
    os << "	 if (addr_w2 < 9) begin	 " << endl;
    os << "	    next_state = 1; " << endl;
    os << "	 end " << endl;
    os << "	 else begin " << endl;
    os << "	    next_state = 2; " << endl;
    os << "	 end		 " << endl;
    os << "      end	 " << endl;
    os << " " << endl;
    os << "      // accepting b input; stay here until we get all of b vector " << endl;
    os << "      else if (state == 2) begin " << endl;
    os << "	 if (addr_b < 3)  " << endl;
    os << "	   next_state = 2; " << endl;
    os << "	 else begin " << endl;
    os << "	    next_state = 3;  " << endl;
    os << "	 end " << endl;
    os << "      end	 " << endl;
    os << "*/ " << endl;
    os << "      // accepting x input; stay here until we get all of x vector " << endl;
    os << "      else if (state == 3) begin " << endl;
    os << "	 if (addr_x < N)  " << endl;
    os << "	   next_state = 3; " << endl;
    os << "	 else begin " << endl;
    os << "	    next_state = 4;  " << endl;
    os << "	    state2to3 = 1; " << endl;
    os << "	 end " << endl;
    os << "      end			 " << endl;
    os << " " << endl;
    os << "      // computing one output; stay here until we get to the end of the matrix row " << endl;
    os << "      else if (state == 4) begin " << endl;
    os << "	 if (addr_x < N-1)  " << endl;
    os << "	   next_state = 4; " << endl;
    os << "	 else  " << endl;
    os << "	    next_state = 5; " << endl;
    os << "      end " << endl;
    os << "      // finish the row; check if we are done with the matrix yet; if not, go back to state 4 " << endl;
    os << "      else if (state == 5) begin " << endl;
    os << "	 if (out_count < M-1)  " << endl;
    os << "	   next_state = 2; " << endl;
    os << "	 else  " << endl;
    os << "	   next_state = 6; " << endl;
    os << "      end " << endl;
    os << " " << endl;
    os << "      else if (state == 2) begin " << endl;
    os << "          next_state = 4; " << endl;
    os << "          state2to4 = 1; " << endl;
    os << "      end " << endl;
    os << " " << endl;
    os << "      // wait one cycle " << endl;
    os << "      else if (state == 6) " << endl;
    os << "	next_state = 7; " << endl;
    os << " " << endl;
    os << "      // wait until we transfer the last output word " << endl;
    os << "      else if (state == 7) begin " << endl;
    os << "	 if (m_ready && m_valid)	 " << endl;
    os << "	   next_state = 0; " << endl;
    os << "	 else  " << endl;
    os << "	   next_state = 7; " << endl;
    os << "      end " << endl;
    os << "       " << endl;
    os << "      else next_state = 0; " << endl;
    os << "       " << endl;
    os << "       " << endl;
    os << "       " << endl;
    os << "   end " << endl;
    os << " " << endl;
    os << "   // write to W memory when we are in state 1 and get valid data " << endl;
    os << "  // assign wr_en_w  = (next_state == 1 && s_valid); " << endl;
    os << "    " << endl;
    os << "   // write to b memory when we are in state 2 and get valid data " << endl;
    os << "   //assign wr_en_b  = (next_state == 2 && s_valid); " << endl;
    os << " " << endl;
    os << "   // write to x memory when we are in state 3 and get valid data " << endl;
    os << "   assign wr_en_x = (next_state == 3 && s_valid); " << endl;
    os << " " << endl;
    os << "   // 1 cycle before 1st state 3 to set addr_b=0; " << endl;
    os << "   assign last_state2  = (state2to3 && next_state==4); " << endl;
    os << " " << endl;
    os << "   // assert s_ready when we are not reseting and our next state will be 0, 1, 2, or 3. " << endl;
    os << "   assign s_ready = ((next_state == 3 || state == 0) && !reset); " << endl;
    os << "    " << endl;
    os << "endmodule" << endl << endl;


   // At some point you will want to generate a ROM with values from the pre-stored constant values.
   // Here is code that demonstrates how to do this for the simple case where you want to put all of
   // the matrix values W in one ROM, and all of the bias values B into another ROM. (This is probably)
   // what you will need for P=1, but you will want to change this for P>1.


   // Check there are enough values in the constant file.
   if (M*N+M > constVector.size()) {
      cout << "ERROR: constVector does not contain enough data for the requested design" << endl;
      cout << "The design parameters requested require " << M*N+M << " numbers, but the provided data only have " << constVector.size() << " constants" << endl;
      assert(false);
   }

   string romModName; 
   vector<int> wVector, bVector;
   
   // Generate a ROM (for W) with constants 0 through M*N-1, with "bits" number of bits
   for(int i = 0; i < P; i++){
       romModName = modName + "_W_rom_" + to_string(i);
       wVector.assign(&constVector[i*N], &constVector[i*N + N]);
       for(int j = 1; j < M/P; j++){
           wVector.insert(wVector.end(), &constVector[i*N + P*N], &constVector[i*N + P*N + N]);
       }
       genROM(wVector, bits, romModName, os);
   }
   
   // Generate a ROM (for B) with constants M*N through M*N+M-1 wits "bits" number of bits 
   for(int i = 0; i < P; i++){
       romModName = modName + "_B_rom_" + to_string(i);
       bVector.assign(1, constVector[M*N+i]);
       for(int j = 1; j < M/P; j++){
           bVector.insert(bVector.end(), constVector[M*N+i+P*j]);
       }
       genROM(bVector, bits, romModName, os);
   }
}

// Part 3: Generate a hardware system with three layers interconnected.
// Layer 1: Input length: N, output length: M1
// Layer 2: Input length: M1, output length: M2
// Layer 3: Input length: M2, output length: M3
// mult_budget is the number of multipliers your overall design may use.
// Your goal is to build the fastest design that uses mult_budget or fewer multipliers
// constVector holds all the constants for your system (all three layers, in order)
void genAllLayers(int N, int M1, int M2, int M3, int mult_budget, int bits, vector<int>& constVector, string modName, ofstream &os) {

   // Here you will write code to figure out the best values to use for P1, P2, and P3, given
   // mult_budget. 
   int P1 = 1; // replace this with your optimized value
   int P2 = 1; // replace this with your optimized value
   int P3 = 1; // replace this with your optimized value

   // output top-level module
   // set your top-level name to "network_top"
   os << "module " << modName << "();" << endl;
   os << "   // this module should instantiate three subnetworks and wire them together" << endl;
   os << "endmodule" << endl;
   
   // -------------------------------------------------------------------------
   // Split up constVector for the three layers
   // layer 1's W matrix is M1 x N and its B vector has size M1
   int start = 0;
   int stop = M1*N+M1;
   vector<int> constVector1(&constVector[start], &constVector[stop]);

   // layer 2's W matrix is M2 x M1 and its B vector has size M2
   start = stop;
   stop = start+M2*M1+M2;
   vector<int> constVector2(&constVector[start], &constVector[stop]);

   // layer 3's W matrix is M3 x M2 and its B vector has size M3
   start = stop;
   stop = start+M3*M2+M3;
   vector<int> constVector3(&constVector[start], &constVector[stop]);

   if (stop > constVector.size()) {
      cout << "ERROR: constVector does not contain enough data for the requested design" << endl;
      cout << "The design parameters requested require " << stop << " numbers, but the provided data only have " << constVector.size() << " constants" << endl;
      assert(false);
   }
   // --------------------------------------------------------------------------


   // generate the three layer modules
   string subModName = "layer1_" + to_string(M1) + "_" + to_string(N) + "_" + to_string(P1) + "_" + to_string(bits);
   genLayer(M1, N, P1, bits, constVector1, subModName, os);

   subModName = "layer2_" + to_string(M2) + "_" + to_string(M1) + "_" + to_string(P2) + "_" + to_string(bits);
   genLayer(M2, M1, P2, bits, constVector2, subModName, os);

   subModName = "layer3_" + to_string(M3) + "_" + to_string(M2) + "_" + to_string(P3) + "_" + to_string(bits);
   genLayer(M3, M2, P3, bits, constVector3, subModName, os);

   // You will need to add code in the module at the top of this function to stitch together insantiations of these three modules

}


void printUsage() {
  cout << "Usage: ./gen MODE ARGS" << endl << endl;

  cout << "   Mode 1: Produce one neural network layer and testbench (Part 1 and Part 2)" << endl;
  cout << "      ./gen 1 M N P bits const_file" << endl;
  cout << "      Example: produce a neural network layer with a 4 by 5 matrix, with parallelism 1" << endl;
  cout << "               and 16 bit words, with constants stored in file const.txt" << endl;
  cout << "                   ./gen 1 4 5 1 16 const.txt" << endl << endl;

  cout << "   Mode 2: Produce a system with three interconnected layers with four testbenches (Part 3)" << endl;
  cout << "      Arguments: N, M1, M2, M3, mult_budget, bits, const_file" << endl;
  cout << "         Layer 1: M1 x N matrix" << endl;
  cout << "         Layer 2: M2 x M1 matrix" << endl;
  cout << "         Layer 3: M3 x M2 matrix" << endl;
  cout << "              e.g.: ./gen 2 4 5 6 7 15 16 const.txt" << endl << endl;
}
