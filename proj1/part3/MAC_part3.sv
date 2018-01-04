module part3_mac(clk, reset, a, b, valid_in,f,valid_out);
    input clk, reset, valid_in;
    input signed [7:0] a,b;
    output logic signed [15:0] f;
    output logic valid_out;

    logic signed [7:0] a_reg, b_reg;
    logic signed [15:0] f_reg;
    logic signed [15:0] multa, mul_w;
    logic enable_f, enable_multa;

    //control
    always_ff @(posedge clk)  begin
        if(reset) begin
            enable_f <= 0;
            enable_multa <= 0;
            valid_out <= 0;
        end
        else begin
            if(valid_in) begin
                enable_multa <= 1;
            end
            else begin
                enable_multa <= 0;
            end

            if(enable_multa) begin
                enable_f <= 1;
            end
            else begin
                enable_f <= 0;
            end

            if(enable_f) begin
                valid_out <= 1;
            end 
            else begin
                valid_out <= 0;
            end 
        end
    end

    //input
    always_ff @(posedge clk) begin
        if(reset) begin
            a_reg <= 0;
            b_reg <= 0;
        end 
        else if (valid_in) begin
            a_reg <= a;
            b_reg <= b;
        end
    end

    //DW02_mult_6_stage #(8,8) multinstance (a_reg, b_reg, 1'b1, clk, mul_w);

    assign mul_w = a_reg*b_reg;
    always_ff @(posedge clk) begin
        if(reset) begin
            multa <= 0;
            f_reg <= 0;
        end
        else begin
            if(enable_multa) begin
               multa <= mul_w;
            end

            if(enable_f) begin
                f_reg <= f + multa;
            end
        end
    end



    //output
    assign f = f_reg;

endmodule
