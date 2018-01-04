
module mod1 ( sel, g0, g1, g2, g3, a );
  input [1:0] sel;
  input a;
  output g0, g1, g2, g3;
  wire   a;
  assign g3 = a;
  assign g2 = a;
  assign g1 = a;
  assign g0 = a;

endmodule

