`include "memory.sv"
`include "part2_mac.sv"

module mvm3_part1(clk, reset, s_valid, m_ready, data_in, m_valid, 
    s_ready, data_out);
    input clk, reset, s_valid, m_ready;
    input signed [7:0] data_in;
    output logic signed [15:0] data_out;
    output logic m_valid, s_ready;

    //maybe FSM will be a good idea?
    //lets try to initialize some states 
    parameter SIZE = 4;
    parameter OUT = 0, R_READY = 1, CLEAR = 2, CAL = 3;

    logic [1:0] state, next_state;

    //a counter in the for the input logic
    logic [3:0] in_ptr;

    //also need a done signal in the compute logic
    logic out_valid;

    //we also need an output counter to control the flow of output 
    logic [1:0] out_ptr;

    //this is based on the accumulator buffer
    logic signed [2:0][15:0] acc_buff;
    logic clear_acc;

    //some counter to collect output during the cal process
    logic [1:0] m_ptr;
    logic [3:0] out_ctr;
    logic [7:0] in_m;
    logic [7:0] in_x;
    logic valid_in;
    logic valid_out;
    logic [15:0] f;

    //CLEAR the acc
    logic store_complete, clear_mac; 
    //here is some input memory and the necessary signals
    logic [3:0] addr_m;
    logic [1:0] addr_x;
    logic wr_en_x, wr_en_m;

    memory #(8,9,4) memM(clk, data_in, in_m, addr_m, wr_en_m);
    memory #(8,3,2) memx(clk, data_in, in_x, addr_x, wr_en_x);

    //let's build a control module

    //state transistion
    always_ff @(posedge clk) begin
        if(reset) begin
            state <= R_READY;
        end else begin
            state <= next_state;
        end
    end

    //next state assignment
    always_comb begin
        next_state = state;
        case (state)
            OUT: begin
                if(!out_valid) begin
                    next_state = R_READY;
                end
            end
            R_READY: begin
                 if (in_ptr == 12) begin
                    next_state = CLEAR;
                end
            end
         /*   RECEIVE: begin
                if(s_valid) begin
                    next_state = RECEIVE;
                end else begin 
                    next_state = R_READY;
                end
            end*/ 
            CAL: begin
                if(out_ctr == 9) begin
                    next_state = OUT;
                end else if (store_complete) begin
                    next_state = CLEAR;
                end
            end

            CLEAR: begin
                next_state = CAL;
            end
        endcase
    end

    //memory control module
    always_comb  begin
        wr_en_m = 0;
        wr_en_x = 0;
        if(s_valid && s_ready) begin
            if(in_ptr < 9) begin
                wr_en_m = 1;
                wr_en_x = 0;
            end else if(in_ptr < 12) begin
                wr_en_m = 0;
                wr_en_x = 1;
            end
        end
    end

    //what about control signal output?? it should be a mealy machine
    always_ff @(posedge clk) begin
        if(reset) begin
            m_valid <= 0;
            s_ready <= 0;
            out_valid <= 0;
            out_ptr <= 0;
            clear_acc <= 0;
            in_ptr <= 0;
            m_ptr <= 0;
            out_ctr <= 0;
            valid_in <= 0;
            addr_m <= 0;
            addr_x <= 0;
            clear_mac <= 1; 
            acc_buff <= 0;
            store_complete <= 0;
        end else begin
            case(state)
                OUT: begin
                    s_ready <= 0;
                    in_ptr <= 0;
                    m_valid <= 0;
                    m_ptr <= 0;
                    clear_acc <= 0;
                    in_ptr <= 0;
                    out_ctr <= 0;
                    valid_in <= 0;
                    addr_m <= 0;
                    addr_x <= 0;
                    clear_mac <= 0;
                    store_complete <= 0;
                    if(out_ptr < 2 || out_ptr == 2 && (m_valid && !m_ready)) begin
                        m_valid <= 1;
                    end else begin
                        m_valid <= 0;
                    end

                    if(m_ready && m_valid) begin
                        if(out_ptr < 2) begin
                            out_ptr <= out_ptr + 1;
                            out_valid <= 1;
                        end else begin
                            out_valid <= 0;
                        end
                    end          
                end
                R_READY: begin
                    s_ready <= 1;
                    m_valid <= 0;
                    out_valid <= 0;
                    m_ptr <= 0;
                    valid_in <= 0;
                    clear_acc <= 1;
                    acc_buff <= 0;
                    out_ctr <= 0;
                    clear_mac <= 0;
                    store_complete <= 0;
                    if(s_valid && s_ready && in_ptr < 12) begin
                        in_ptr <= in_ptr + 1;
                        if(in_ptr <  9) begin
                            addr_m <= addr_m + 1;
                        end else if(in_ptr < 12) begin
                            addr_x <= addr_x + 1;
                        end 
                        if(in_ptr == 11) begin
                            s_ready <= 0;
                        end
                    end 

                    if(in_ptr+1 > 12) begin
                        s_ready <= 0;
                        addr_m <= 0;
                        addr_x <= 0;
                    end

                end
               CLEAR: begin
                    s_ready <= 0;
                    m_valid <= 0;
                    in_ptr <= 0;
                    out_ptr <= 0;
                    valid_in <= 0;
                    clear_acc <= 0;
                    out_valid <= 0;
                    clear_mac <= 1;
                    store_complete <= 0;
                    m_ptr <= 0;
               end
               
               CAL: begin
                   s_ready <= 0;
                    m_valid <= 0;
                    in_ptr <= 0;
                    out_ptr <= 0;
                    valid_in <= 0;
                    clear_acc <= 0;
                    out_valid <= 0;
                    clear_mac <= 0;
                    store_complete <= 0;
                    if(m_ptr < 3) begin
                        addr_m <= addr_m + 1;
                        addr_x <= (addr_m + 1) % 3;
                        m_ptr <= m_ptr + 1;
                        valid_in <= 1;
                    end 

                    if(valid_out) begin
                        if(out_ctr < 9) begin
                            acc_buff[out_ctr/3] <= f;
                            out_ctr <= out_ctr + 1;
                            if((out_ctr + 1) % 3 == 0) begin
                                store_complete <= 1;
                            end
                        end 
                    end

                    if(out_ctr == 9) begin
                        out_valid <= 1;
                        out_ctr <= 0;
                    end
                end
            endcase
        end
    end
    //let's think of the data path
    //instantiate my calculation module
    
    part2_mac mac(clk, clear_mac, in_m, in_x, valid_in, f, valid_out);
   

    //output 
    always @(*) begin
        if(out_valid) begin
            data_out <= acc_buff[out_ptr];
        end else begin
            data_out <= 'x;
        end
    end
endmodule
