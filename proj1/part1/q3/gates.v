
module mod2 ( a, b, c, d, e );
  input a, c;
  output b, d, e;
  wire   n3, n4;

  NOR2_X1 U7 ( .A1(n3), .A2(n4), .ZN(e) );
  NAND2_X1 U8 ( .A1(n4), .A2(n3), .ZN(d) );
  INV_X1 U9 ( .A(c), .ZN(n4) );
  NOR2_X1 U10 ( .A1(c), .A2(n3), .ZN(b) );
  INV_X1 U11 ( .A(a), .ZN(n3) );
endmodule

