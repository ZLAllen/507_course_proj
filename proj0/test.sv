
/*module myAdder(clk, a, b, z);
   input clk;
   input signed [3:0] a, b;
   output logic signed [4:0] z;

   // An example of an internal signal.  To observe this signal's behavior in ModelSim,
   // you need to run vlog with the +acc command flag (otherwise only signals on the ports will be visible.)
   logic [4:0] z_delay; 

   always_ff @(posedge clk) begin
       z <= a + b;
       z_delay <= z;  // The z signal delayed by one clock cycle.
   end
endmodule
*/

module tbench();

   wire signed [4:0] z;
   logic signed [3:0] a, b;
   reg clk;
 
   myAdder dut(clk, a, b, z);
   
   // Initialize the clock to zero.
   initial
      clk = 0;

   // Make the clock oscillate: every 5 time units, it changes its value.
   always
      #5 clk = ~clk;


   integer i;

   initial begin
      $monitor($time,,"a = %d, b = %d, z = %d", a, b, z);
   
      a = 4'b0000;
      b = 4'b0111;

      // Just after every positive clock edge, update the values of a and b.      
      for (i=0; i<64; i=i+1) begin
         @(posedge clk); #1;
         a = a+1;
         b = b+1;
      end

      @(posedge clk);
      $finish; // Stop simulation
   end
endmodule

