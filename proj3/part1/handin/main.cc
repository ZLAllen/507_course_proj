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

      os.open(out_file, std::ios_base::app);
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
      int addrBits = ceil(log2(numWords));

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
  /* os << "module " << modName << "();" << endl;
   os << "   // your stuff here!" << endl;
   os << "endmodule" << endl << endl;
   */


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

   // Generate a ROM (for W) with constants 0 through M*N-1, with "bits" number of bits
   string romModName = modName + "_W_rom";
   vector<int> wVector(&constVector[0], &constVector[M*N]);
   genROM(wVector, bits, romModName, os);

   // Generate a ROM (for B) with constants M*N through M*N+M-1 wits "bits" number of bits 
   romModName = modName + "_B_rom";
   vector<int> bVector(&constVector[M*N], &constVector[M*N+M]);

   genROM(bVector, bits, romModName, os);

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
