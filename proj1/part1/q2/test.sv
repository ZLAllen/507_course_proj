module mod1(sel, g0, g1, g2, g3, a);
input [1:0] sel;
input a;
output logic g0, g1, g2, g3;
always_comb begin
    {g0, g1, g2, g3} = 4'bx;
    case(sel)
        2'b00: g0 = a;
        2'b01: g1 = a;
        2'b10: g2 = a;
        2'b11: g3 = a;
    endcase
end
endmodule
