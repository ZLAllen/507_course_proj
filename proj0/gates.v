
module myAdder ( clk, a, b, z );
  input [3:0] a;
  input [3:0] b;
  output [4:0] z;
  input clk;
  wire   N0, N1, N2, N3, N4, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27;

  DFF_X1 \z_reg[4]  ( .D(N4), .CK(clk), .Q(z[4]) );
  DFF_X1 \z_reg[3]  ( .D(N3), .CK(clk), .Q(z[3]) );
  DFF_X1 \z_reg[2]  ( .D(N2), .CK(clk), .Q(z[2]) );
  DFF_X1 \z_reg[1]  ( .D(N1), .CK(clk), .Q(z[1]) );
  DFF_X1 \z_reg[0]  ( .D(N0), .CK(clk), .Q(z[0]) );
  NAND2_X1 U4 ( .A1(n18), .A2(n5), .ZN(n2) );
  AND2_X1 U5 ( .A1(n2), .A2(n3), .ZN(n24) );
  OR2_X1 U6 ( .A1(n4), .A2(n16), .ZN(n3) );
  INV_X1 U7 ( .A(n9), .ZN(n4) );
  AND2_X1 U8 ( .A1(n6), .A2(n9), .ZN(n5) );
  OR2_X1 U9 ( .A1(b[2]), .A2(a[2]), .ZN(n6) );
  NAND2_X1 U10 ( .A1(n6), .A2(n18), .ZN(n19) );
  CLKBUF_X1 U11 ( .A(n18), .Z(n7) );
  OR2_X1 U12 ( .A1(n26), .A2(n25), .ZN(n8) );
  NAND2_X1 U13 ( .A1(n8), .A2(n24), .ZN(n27) );
  OR2_X1 U14 ( .A1(b[3]), .A2(a[3]), .ZN(n9) );
  XNOR2_X1 U15 ( .A(n23), .B(n22), .ZN(N3) );
  XOR2_X1 U16 ( .A(n10), .B(n11), .Z(N1) );
  NAND2_X1 U17 ( .A1(b[0]), .A2(n13), .ZN(n10) );
  XNOR2_X1 U18 ( .A(b[1]), .B(a[1]), .ZN(n11) );
  XOR2_X1 U19 ( .A(n12), .B(n7), .Z(N2) );
  XNOR2_X1 U20 ( .A(n21), .B(b[2]), .ZN(n12) );
  BUF_X1 U21 ( .A(a[0]), .Z(n13) );
  NAND2_X1 U22 ( .A1(a[1]), .A2(b[1]), .ZN(n15) );
  AND2_X1 U23 ( .A1(b[0]), .A2(a[0]), .ZN(n14) );
  XNOR2_X1 U24 ( .A(n27), .B(n22), .ZN(N4) );
  NAND2_X1 U25 ( .A1(n17), .A2(n15), .ZN(n18) );
  OR2_X1 U26 ( .A1(n21), .A2(n20), .ZN(n16) );
  NAND2_X1 U27 ( .A1(n19), .A2(n16), .ZN(n23) );
  INV_X1 U28 ( .A(a[2]), .ZN(n21) );
  OAI21_X1 U29 ( .B1(b[1]), .B2(a[1]), .A(n14), .ZN(n17) );
  INV_X1 U30 ( .A(b[2]), .ZN(n20) );
  INV_X1 U31 ( .A(a[3]), .ZN(n26) );
  XOR2_X1 U32 ( .A(n26), .B(b[3]), .Z(n22) );
  INV_X1 U33 ( .A(b[3]), .ZN(n25) );
  XOR2_X1 U34 ( .A(b[0]), .B(n13), .Z(N0) );
endmodule

