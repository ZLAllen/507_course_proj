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
#include <algorithm>
#include <map>
using namespace std;

void printUsage();
void genLayer(int M, int N, int P, int bits, vector<int>& constvector, string modName, ofstream &os);
void genAllLayers(int N, int M1, int M2, int M3, int mult_budget, int bits, vector<int>& constVector, string modName, ofstream &os);
void readConstants(ifstream &constStream, vector<int>& constvector);
void genROM(vector<int>& constVector, int bits, string modName, ofstream &os);
void genMemory(ofstream &os);
vector<int> getFactors(int num, int constraint);


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
      genMemory(os);
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
      genMemory(os);
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
      int addrBits = ceil((double)log2(numWords+1));

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
   //
    os << "module " << modName << "(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);" << endl;
    os << "   parameter M = " << to_string(M) << "; " << endl;
    os << "   parameter N = " << to_string(N) << "; " << endl;
    os << "   parameter T = " << to_string(bits) << "; " << endl;
    os << "   parameter P = " << to_string(P) << "; " << endl;
    os << "   parameter logW = $clog2(M*N/P+1), logN = $clog2(N+1), logM = $clog2(M/P+1), logP = $clog2(P+1); " << endl;
    os << "   input clk, reset; " << endl;
    os << " " << endl;
    os << "   input s_valid; " << endl;
    os << "   input [T-1:0] data_in; " << endl;
    os << "   output logic s_ready; " << endl;
    os << "    " << endl;
    os << "   input 	m_ready; " << endl;
    os << "   output logic m_valid; " << endl;
    os << "   output logic signed [T-1:0] data_out; " << endl;
    os << "   " << endl;
    os << "   logic [logN-1:0]	addr_x; " << endl;
    os << "   logic [T-1:0]	data_out_x; " << endl;
    os << endl;
    for(int i = 0; i < P; i++){
        os << "   logic [logM-1:0]     addr_b_" << to_string(i) <<"; " << endl;
        os << "   logic [logW-1:0]     addr_w_" << to_string(i) <<"; " << endl;
        os << "   logic [T-1:0]        data_out_b_" << to_string(i) <<"; " << endl;
        os << "   logic [T-1:0]        data_out_w_" << to_string(i) <<"; " << endl;
        os << "   logic [T-1:0]        data_out_" << to_string(i) <<"; " << endl;
        os << endl;
    }
    os << "   logic 		clear_acc, wr_en_x, wr_en_y; " << endl;
    os << "   logic unsigned [logP-1:0] sel; " << endl;
    os << "    " << endl << endl;
    os << "   memory #(T,N, logN)  mem_x(clk, data_in, data_out_x, addr_x, wr_en_x); " << endl;

    for(int i = 0; i < P; i++){
        os << "   " << modName << "_W_rom_" << to_string(i) << " mem_w_" << to_string(i) << "(clk, addr_w_" << to_string(i) << ", data_out_w_" << to_string(i) << ");" << endl; 
        os << "   " << modName << "_B_rom_" << to_string(i) << " mem_b_" << to_string(i) << "(clk, addr_b_" << to_string(i) << ", data_out_b_" << to_string(i) << ");" << endl;
        os << endl;
    }
    os << endl << endl;
    for(int i = 0; i < P; i++){
        os << "   " << modName << "_datapath #(M,N,T,P) d_" << to_string(i) << "(clk, clear_acc, data_out_x, data_out_" << to_string(i) << ", data_out_w_" << to_string(i) << ", data_out_b_" << to_string(i) << ", wr_en_y, m_valid, m_ready, sel); " << endl;
    }
    os << "   " << modName << "_ctrlpath #(M,N,T,P) c(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, sel, addr_x";
    for(int i = 0; i < P; i++){
        os << ", addr_w_" << to_string(i) << ", addr_b_" << to_string(i);
    }
    os << ");" << endl;
    os << "    " << endl;
    os << "  always_comb begin" << endl;
    os << "     case (sel) " << endl;
    for(int i = 0; i < P; i++) {
    os << "         " << to_string(i) << ": data_out <= data_out_" << to_string(i) << ";" << endl;
    }
    os << "         default : data_out <= data_out_" << to_string(P-1) << ";" << endl;
    os << "     endcase" << endl;
    os << " end     " << endl;
    os << " " << endl;
    os << "endmodule " << endl;
    os << " " << endl;

    os << "module " << modName << "_datapath(clk, clear_acc, data_out_x, data_out, data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel); " << endl;
    os << " " << endl;
    os << "   parameter M = 3, N = 3, T = 16, P = 2; " << endl;
    os << "   parameter logW = $clog2(M*N/P+1), logN = $clog2(N+1), logM = $clog2(M/P+1), logP = $clog2(P+1); " << endl;
    os << " " << endl;
    os << "   input clk, clear_acc, wr_en_y, m_valid, m_ready; " << endl;
    os << "   input signed [T-1:0]  data_out_x;" << endl;
    os << "   input signed [T-1:0]  data_out_w; " << endl;
    os << "   input signed [T-1:0]  data_out_b; " << endl;
    os << "   input unsigned [logP-1:0] sel;" << endl;
    os << "   output logic signed [T-1:0] data_out; " << endl;
    os << "   logic signed [T-1:0]       f, mul_out, adder, mul_out_save; " << endl;
    os << "   logic 		      delay; " << endl;
    os << "   logic 		      clear_acc_delay;" << endl;
    os << "    " << endl;
    os << " " << endl;
    os << "   always_ff @(posedge clk) begin " << endl;
    os << "      if (clear_acc)	 " << endl;
    os << "        f <= data_out_b; " << endl;
    os << "      else if  " << endl;
    os << "	(m_valid && !m_ready || delay) f <= f; " << endl;
    os << "      else  " << endl;
    os << "	f <= adder; " << endl;
    os << "      clear_acc_delay <= clear_acc; " << endl;
    os << "   end " << endl;
    os << " " << endl;
    os << "   always_ff @(posedge clk) begin " << endl;
    os << "      delay <= (m_valid && !m_ready || sel < P-1); " << endl;
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
    os << "      else if (m_valid && !m_ready || sel < P-1 )	 " << endl;
    os << "	data_out <= data_out; " << endl;
    os << "      else data_out <= 0; " << endl;
    os << "   end " << endl;
    os << "    " << endl;
    os << "    " << endl;
    os << "endmodule " << endl;
    os << " " << endl;
    os << "module " << modName << "_ctrlpath(clk, reset, s_valid, s_ready, m_valid, m_ready, clear_acc,wr_en_x, wr_en_y, sel, addr_x";
    for(int i = 0; i < P; i++){
        os << ", addr_w_" << to_string(i) << ", addr_b_" << to_string(i);
    }
    os << ");" << endl;
    os << "    " << endl;
    os << "   parameter M = 3, N = 3, T = 16, P = 2; " << endl;
    os << "   parameter logW = $clog2(M*N/P+1), logN = $clog2(N+1), logM = $clog2(M/P+1), logP = $clog2(P+1), logOUT = $clog2(M+1);" << endl;
    os << "   input clk, reset; " << endl;
    os << "   input s_valid, m_ready;" << endl;
    os << "   output logic unsigned [logP-1:0] sel;" << endl;
    os << "   output logic s_ready, m_valid; " << endl;
    os << "   output logic clear_acc, wr_en_x, wr_en_y; " << endl;
    os << "   logic [3:0] 	state, next_state; " << endl;
    os << "    " << endl;
    os << " " << endl;
    for(int i = 0; i < P; i++){
        os << "   output logic [logM-1:0]     addr_b_" << to_string(i) <<"; " << endl;
        os << "   output logic [logW-1:0]     addr_w_" << to_string(i) <<"; " << endl;
        os << "   logic [logW:0]              addr_w2_" << to_string(i) <<"; " << endl;
    }
    os << "   output logic [logN-1:0] addr_x; " << endl;
    os << "   logic 	      last_state2, clear_acc_delay, state2to3, state2to4; " << endl;
    os << "   logic [logOUT-1:0] 	      out_count;  " << endl;
    os << "   logic unsigned [logP-1:0]    sel_count;" << endl;
    os << "    " << endl;
    for(int i = 0; i < P; i++){
        os << "   assign addr_w_" << to_string(i) << " = addr_w2_" << to_string(i) << "[logW-1:0]; " << endl;
    }
    os << "   assign sel = sel_count;" << endl;
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
    os << "	 if (wr_en_x || (state==4 && !((m_valid && !m_ready) || sel_count < P-1)))  " << endl;
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
    os << "	   out_count <= out_count + P; " << endl;
    os << "	 else if (state == 7)  " << endl;
    os << "	   out_count <= 0; " << endl;
    os << "      end " << endl;
    os << "   end " << endl;
    os << " " << endl;
    os << "   // Logic for addr_b " << endl;
    for (int i = 0; i < P; i++){
        os << "   always_ff @ (posedge clk) begin " << endl;
        os << "      if (reset)  " << endl;
        os << "	        addr_b_" << to_string(i) << " <= 0; " << endl;
        os << "      else begin " << endl;
        os << "         if (clear_acc_delay)  " << endl; 
        os << "	          addr_b_" << to_string(i) << " <= addr_b_" << to_string(i) << " + 1; " << endl;
        os << "	        else if (state==3 || state == 7)  " << endl;
        os << "	          addr_b_" << to_string(i) << " <= 0; " << endl;
        os << "      end " << endl;
        os << "   end " << endl;
        os << " " << endl;
    }
    os << "   // Logic for addr_w " << endl;
    for(int i = 0; i < P; i++){ 
        os << "   always_ff @ (posedge clk) begin " << endl;
        os << "      if (reset) addr_w2_" << to_string(i) << " <= 0; " << endl;
        os << "      else begin " << endl;
        os << "	 if (state==4 && !((m_valid && !m_ready)||(sel_count < P-1))) addr_w2_" << to_string(i) << "  <= addr_w2_" << to_string(i) << "  + 1; " << endl;
        os << "	 else if (last_state2 || state == 7) addr_w2_" << to_string(i) << "  <= 0; " << endl;
        os << "      end " << endl;
        os << "   end " << endl;
        os << "    " << endl;
    }
    os <<"   always_ff @ (posedge clk) begin" << endl; 
    os <<"      if (reset) clear_acc <= 1;" << endl; 
    os <<"      else if  (state2to3 || state == 2) begin clear_acc <=1; end" << endl;  
    os <<"      else begin clear_acc <=0; end" << endl;  
    os <<"   end" << endl;  
    os <<" " << endl;  
    os <<"   always_ff @ (posedge clk) begin" << endl;  
    os <<"      if (state == 5) begin wr_en_y <= 1; end" << endl;  
    os <<"      else begin wr_en_y <= 0; end" << endl;  
    os <<"   end" << endl;  
    os <<" " << endl;  
    os <<"   always_ff @ (posedge clk) begin" << endl;  
    os <<"      clear_acc_delay<= (clear_acc && state == 4);" << endl;  
    os <<"   end" << endl;  
    os <<" " << endl; 
    os <<"   always_ff @ (posedge clk) begin" << endl;  
    os <<"      if (reset) m_valid <= 0;" << endl;  
    os <<"      else begin" << endl;  
    os <<"	 if (m_valid && !m_ready || sel_count < P-1) m_valid <= m_valid;" << endl;  
    os <<"	 else  	m_valid <= wr_en_y;" << endl;  
    os <<"      end" << endl;  
    os <<"   end" << endl;  
    os <<" " << endl; 
    os <<"   always_ff @ (posedge clk) begin" << endl; 
    os <<"       if(reset) sel_count <= P;" << endl; 
    os <<"       else begin" << endl; 
    os <<"           if(state2to4 || state == 6) sel_count <= 0;" << endl; 
    os <<"           else if(m_valid && m_ready) begin" << endl; 
    os <<"               sel_count <= sel_count + 1;" << endl; 
    os <<"           end" << endl;  
    os <<"       end" << endl; 
    os <<"   end" << endl; 
    os <<" " << endl;     
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
    os << "	  " << endl;
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
    os << "	 if (out_count < M-P)  " << endl;
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
    os << "	     if (m_ready && m_valid && sel_count == P-1)	 " << endl;
    os << "	         next_state = 0; " << endl;
    os << "	     else  " << endl;
    os << "	         next_state = 7; " << endl;
    os << "          end " << endl;
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
           wVector.insert(wVector.end(), &constVector[i*N + j*P*N], &constVector[i*N + j*P*N + N]);
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
   /*
    * first of all, calculate the latency in each layer, this is done by counting cycles in the waveform. Assume that all inputs are received without delay, 
    * the latency is given by N + (N + 2) * M cycles. The first N is input cycles, followed by 1 cycle of state transition to reset address counter for 
    * calculation. Then N cycles of calculation for each row and 1 cycle of forwarding data to output. For example, a 3 by 2 matrix will takes 2 + 4 * 3 = 14 
    * cycles to produce all three outputs. Increasing parallelism can reduce increase throughput in each layer. Therefore, the final cycles counter should 
    * be given by [(2N+2)*M/P] (M/P should be valid integer). Notice that parallelism does not have effect on the input cycles, therefore, we won't take the first
    * N into consideration.
    * */
    
    // initially, all parallelism are 1, minimum multiplier cost is 3.
   vector<long> f;
   f.push_back((N + 2) * M1);
   f.push_back((M1 + 2) * M2);
   f.push_back((M2 + 2) * M3);
   int cost = 3;

   assert(mult_budget >= 3);

   vector< vector<int> > a;
   a.push_back(getFactors(M1,mult_budget));
   a.push_back(getFactors(M2,mult_budget));
   a.push_back(getFactors(M3,mult_budget));
/*
   map<long,int> cycle;
   for(int i=0; i<3; i++){
       cycle[f[i]] = i;
   }
   */
   vector< pair<long, int> > cycle;
   for(int i=0; i<3; i++){
        pair<long, int> pickle(f[i], i);
        cycle.push_back(pickle);
   }

   sort(cycle.begin(), cycle.end());


   vector<int> P(3,0);
   char done = 0;
   while(!done){
       for(auto it = cycle.rbegin(); it != cycle.rend(); it++){
           //cout << "value: " << it->first <<  " index: " << it->second << endl;
           long key = it->first;
           int index = it->second;
           int p_index = P[index];
           if(p_index == a[index].size()-1){
               auto endIt = cycle.rend();
               --endIt;
               if(it == endIt)
                   done = 1;
               continue;
           }
           int factor = a[index][p_index + 1];
           int panini = factor - a[index][p_index];
        // cout << "index = " << index << " p_index = " << p_index << " factor = " << factor << endl;
           if(cost + panini <= mult_budget){
               P[index]++;
               it->first = f[index]/factor + factor-1;
               //cycle[f[index]/factor + factor] = index;
              // cout << "special first= " << f[index]/factor + factor-1 << " second= " << index << endl;
               cost += panini;
               sort(cycle.begin(), cycle.end());
               break;
           }else{
               auto endIt = cycle.rend();
               --endIt;
               if(it == endIt)
                   done = 1;
               continue;
           }
       } 
       if(cost >= mult_budget) 
           done = 1;
      // cout << "cost = " << cost << endl;
   }

   // now find the available parallelism for each layer
   int P1 = a[0][P[0]];
   int P2 = a[1][P[1]];
   int P3 = a[2][P[2]];
   cout << "cost = " << cost << " multipliers" << endl;
   cout << "P1 = " << P1 << endl << "P2 = " << P2 << endl << "P3 = " << P3 << endl;
   // output top-level module
   // set your top-level name to "network_top"
   os << "module " << modName << "(clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, data_out);" << endl;
   os << "   // this module should instantiate three subnetworks and wire them together" << endl;
   
   os << "    parameter T = " << to_string(bits) << ";" << endl;
   os << "    input clk, reset, s_valid, m_ready;" << endl;
   os << "    input signed [T-1:0] data_in;" << endl;
   os << "    output signed [T-1:0] data_out;" << endl;
   os << "    output m_valid, s_ready;" << endl;
   os << "" << endl;
   os << "    logic signed [T-1:0] data_1;" << endl;
   os << "    logic signed [T-1:0] data_2;" << endl;
   os << "" << endl;
   os << "    logic valid_1;" << endl;
   os << "    logic valid_2;" << endl;
   os << "" << endl;
   os << "    logic ready_1;" << endl;
   os << "    logic ready_2;" << endl;
   os << endl << endl;
   
   string instance = "layer1_" + to_string(M1) + "_" + to_string(N) + "_" + to_string(P1) + "_" + to_string(bits);
   os << instance << " layer1(clk, reset, s_valid, ready_1, data_in, valid_1, s_ready, data_1);" << endl;
   instance = "layer2_" + to_string(M2) + "_" + to_string(M1) + "_" + to_string(P2) + "_" + to_string(bits);
   os << instance << " layer2(clk, reset, valid_1, ready_2, data_1, valid_2, ready_1, data_2);" << endl;
   instance = "layer3_" + to_string(M3) + "_" + to_string(M2) + "_" + to_string(P3) + "_" + to_string(bits);
   os << instance << " layer3(clk, reset, valid_2, m_ready, data_2, m_valid, ready_2, data_out);" << endl;
   os << endl << endl;
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
vector<int> getFactors(int num, int constraint){
    vector<int> factor;
    constraint = min(num, constraint);
    for(int i=1; i<=constraint; i++){
        if(num%i == 0) 
            factor.push_back(i);
    }
    return factor;
}

void genMemory(ofstream &os){
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
