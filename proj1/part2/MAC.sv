module part2_mac(clk, reset, a, b, valid_in,f,valid_out);
    input clk, reset, valid_in;
    input signed [7:0] a,b;
    output logic signed [15:0] f;
    output logic valid_out;

    logic signed [7:0] a_reg, b_reg;
    logic signed [15:0] f_reg;
    logic enable_ab, enable_f;

    //control
    always_ff @(posedge clk) begin
        if(reset) begin
            enable_ab <= 0;
            enable_f <= 0;
        end
        else begin
            if(valid_in) begin
                enable_ab <= 1;
                enable_f <= 1;
            end
            else begin
                enable_ab <= 0;
                enable_f <= 0;
            end
        end

        if(enable_f) begin
            valid_out <= 1;
        end 
        else begin
            valid_out <= 0;
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

    //compute
    always_comb begin
        f_reg = f + a_reg * b_reg;
    end

    //output
    always_ff @(posedge clk) begin
        if(reset) begin
            f <= 0;
        end
        else if (enable_f) begin
            f <= f_reg;
        end
    end 
endmodule
