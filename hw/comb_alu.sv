module alu(in0, in1, op, out);
   input signed [7:0] in0, in1;
   input [2:0] op;
   output logic signed [7:0] out;

   always_comb begin
      case(op)
	3'b000: out   = in0 + in1;
	3'b001: out   = in0 - in1;
	3'b010: out   = in0 & in1;
	3'b011: out   = in0 | in1;
	3'b100: out   = in0 ^ in1;
	default: out  = 8'd0;
      endcase     
   end   
endmodule

module test();

   // For ALU's input signals. The testbench will put values on
   // these signals.
   logic signed [7:0] testInput0, testInput1;
   logic [2:0] 	      opInput;

   // For ALU's output signal. The testbench will observe values
   // on this signal.
   logic signed [7:0] testOutput;

   // Instantiate the device under test.
   alu alu_inst(.in0(testInput0), .in1(testInput1), .out(testOutput), .op(opInput));

   // Now, use an initial block to tell testbench what to do.
   initial begin

      // Tell simulator to print a message everytime a signal changes values.
      // Note for the input and output we are printing the value as a decimal
      // and then in hex form e.g. 12 (0a)
      
      $monitor($time,,"in0 = %d (%x), in1 = %d (%x), op = %b, out = %d (%x)", testInput0, testInput0, testInput1, testInput1, opInput, testOutput, testOutput);

      
      testInput0  = 0; 
      testInput1  = 0; 
      opInput   = 0;

      #1;
      testInput0  = 12;
      testInput1  = -4;
      opInput   = 0;

      #1;
      testInput0  = 12;
      testInput1  = 4;
      opInput   = 0;

      #1;
      testInput0  = 12;
      testInput1  = -4;
      opInput   = 1;

      #1;
      testInput0  = 8'b01010101;
      testInput1  = 8'b11110000;
      opInput   = 2;

      #1;
      opInput   = 3;

      #1;
      opInput   = 4;

      #1;
      opInput   = 5;

      #1;
      $finish; // End simulation
   end

endmodule
   

   