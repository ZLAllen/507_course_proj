`include "MAC_part3.sv"
module test();
parameter cycle = 20;

    logic signed [7:0] a, b;
    logic valid_in, valid_out, clk, reset;
    logic signed [15:0] f;
    logic signed [7:0] a_data[cycle-1:0];
    logic signed [7:0] b_data[cycle-1:0];
    logic vin_data[cycle-1:0], vout_data[cycle-1:0];
    logic signed [15:0] r_data[cycle-1:0];

    integer i, j;

    part3_mac top(.clk(clk), .reset(reset), .a(a), .b(b), .valid_in(valid_in), .valid_out(valid_out), .f(f));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $readmemh("a.txt", a_data);
        $readmemh("b.txt", b_data);
        $readmemb("valid_out.txt",vout_data);
        $readmemb("valid_in.txt", vin_data);
        $readmemh("result.txt", r_data);
    end

    initial begin
       // $monitor($time,,"a = %d, b = %d, valid_in = %d, valid_out = %d, f = %d", a,b,valid_in,valid_out,f);
        reset = 1;
        {a, b} = {8'b0,8'b0};
        valid_in = 0;
 
        for(i = 0; i < cycle; i++) begin
            @(posedge clk);
            #1;
            reset = 0;
            a = a_data[i];
            b = b_data[i];
            valid_in = vin_data[i];
        end 

    end

    initial begin
        //reset
            @(posedge clk);
            #1;
            $display("valid_out = %b. Expected value is 0.",valid_out);
            $display("f = %d. Expected value is 0.",f);
       //an additional cycle of zero output because now it takes three cyles to show result.
            @(posedge clk);
            #1;
            $display("valid_out = %b. Expected value is 0.",valid_out);
            $display("f = %d. Expected value is 0.",f);
       // see randomGenerator.c comment for additional information on result output format.
        for(j = 0; j < cycle; j++) begin
            @(posedge clk);
            #1;
            $display("valid_out = %b. Expected value is %d.",valid_out, vout_data[j]);
            $display("f = %d. Expected value is %d.",f, r_data[j]);
        end
         #20;
        $finish;

    end
        
    endmodule
