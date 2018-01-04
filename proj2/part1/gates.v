
module memory_WIDTH8_SIZE9_LOGSIZE4 ( clk, data_in, data_out, addr, wr_en );
  input [7:0] data_in;
  output [7:0] data_out;
  input [3:0] addr;
  input clk, wr_en;
  wire   \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] , \mem[7][3] ,
         \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[3][7] , \mem[3][6] , \mem[3][5] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] ,
         \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] ,
         \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[1][7] , \mem[1][6] ,
         \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] ,
         \mem[1][0] , N40, N41, N42, N43, N44, N45, N46, N47, n1, n2, n3, n4,
         n5, n6, n7, n8, n65, n66, n67, n68, n69, n70, n71, n72, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93;

  DFF_X1 \mem_reg[8][7]  ( .D(n216), .CK(clk), .QN(n1) );
  DFF_X1 \mem_reg[8][6]  ( .D(n215), .CK(clk), .QN(n2) );
  DFF_X1 \mem_reg[8][5]  ( .D(n214), .CK(clk), .QN(n3) );
  DFF_X1 \mem_reg[8][4]  ( .D(n213), .CK(clk), .QN(n4) );
  DFF_X1 \mem_reg[8][3]  ( .D(n212), .CK(clk), .QN(n5) );
  DFF_X1 \mem_reg[8][2]  ( .D(n211), .CK(clk), .QN(n6) );
  DFF_X1 \mem_reg[8][1]  ( .D(n210), .CK(clk), .QN(n7) );
  DFF_X1 \mem_reg[8][0]  ( .D(n209), .CK(clk), .QN(n8) );
  DFF_X1 \mem_reg[7][7]  ( .D(n9), .CK(clk), .Q(\mem[7][7] ) );
  DFF_X1 \mem_reg[7][6]  ( .D(n10), .CK(clk), .Q(\mem[7][6] ) );
  DFF_X1 \mem_reg[7][5]  ( .D(n11), .CK(clk), .Q(\mem[7][5] ) );
  DFF_X1 \mem_reg[7][4]  ( .D(n12), .CK(clk), .Q(\mem[7][4] ) );
  DFF_X1 \mem_reg[7][3]  ( .D(n13), .CK(clk), .Q(\mem[7][3] ) );
  DFF_X1 \mem_reg[7][2]  ( .D(n14), .CK(clk), .Q(\mem[7][2] ) );
  DFF_X1 \mem_reg[7][1]  ( .D(n15), .CK(clk), .Q(\mem[7][1] ) );
  DFF_X1 \mem_reg[7][0]  ( .D(n16), .CK(clk), .Q(\mem[7][0] ) );
  DFF_X1 \mem_reg[6][7]  ( .D(n17), .CK(clk), .Q(\mem[6][7] ) );
  DFF_X1 \mem_reg[6][6]  ( .D(n18), .CK(clk), .Q(\mem[6][6] ) );
  DFF_X1 \mem_reg[6][5]  ( .D(n19), .CK(clk), .Q(\mem[6][5] ) );
  DFF_X1 \mem_reg[6][4]  ( .D(n20), .CK(clk), .Q(\mem[6][4] ) );
  DFF_X1 \mem_reg[6][3]  ( .D(n21), .CK(clk), .Q(\mem[6][3] ) );
  DFF_X1 \mem_reg[6][2]  ( .D(n22), .CK(clk), .Q(\mem[6][2] ) );
  DFF_X1 \mem_reg[6][1]  ( .D(n23), .CK(clk), .Q(\mem[6][1] ) );
  DFF_X1 \mem_reg[6][0]  ( .D(n24), .CK(clk), .Q(\mem[6][0] ) );
  DFF_X1 \mem_reg[5][7]  ( .D(n25), .CK(clk), .Q(\mem[5][7] ) );
  DFF_X1 \mem_reg[5][6]  ( .D(n26), .CK(clk), .Q(\mem[5][6] ) );
  DFF_X1 \mem_reg[5][5]  ( .D(n27), .CK(clk), .Q(\mem[5][5] ) );
  DFF_X1 \mem_reg[5][4]  ( .D(n28), .CK(clk), .Q(\mem[5][4] ) );
  DFF_X1 \mem_reg[5][3]  ( .D(n29), .CK(clk), .Q(\mem[5][3] ) );
  DFF_X1 \mem_reg[5][2]  ( .D(n30), .CK(clk), .Q(\mem[5][2] ) );
  DFF_X1 \mem_reg[5][1]  ( .D(n31), .CK(clk), .Q(\mem[5][1] ) );
  DFF_X1 \mem_reg[5][0]  ( .D(n32), .CK(clk), .Q(\mem[5][0] ) );
  DFF_X1 \mem_reg[4][7]  ( .D(n33), .CK(clk), .Q(\mem[4][7] ) );
  DFF_X1 \mem_reg[4][6]  ( .D(n34), .CK(clk), .Q(\mem[4][6] ) );
  DFF_X1 \mem_reg[4][5]  ( .D(n35), .CK(clk), .Q(\mem[4][5] ) );
  DFF_X1 \mem_reg[4][4]  ( .D(n36), .CK(clk), .Q(\mem[4][4] ) );
  DFF_X1 \mem_reg[4][3]  ( .D(n37), .CK(clk), .Q(\mem[4][3] ) );
  DFF_X1 \mem_reg[4][2]  ( .D(n38), .CK(clk), .Q(\mem[4][2] ) );
  DFF_X1 \mem_reg[4][1]  ( .D(n39), .CK(clk), .Q(\mem[4][1] ) );
  DFF_X1 \mem_reg[4][0]  ( .D(n40), .CK(clk), .Q(\mem[4][0] ) );
  DFF_X1 \mem_reg[3][7]  ( .D(n41), .CK(clk), .Q(\mem[3][7] ) );
  DFF_X1 \mem_reg[3][6]  ( .D(n42), .CK(clk), .Q(\mem[3][6] ) );
  DFF_X1 \mem_reg[3][5]  ( .D(n43), .CK(clk), .Q(\mem[3][5] ) );
  DFF_X1 \mem_reg[3][4]  ( .D(n44), .CK(clk), .Q(\mem[3][4] ) );
  DFF_X1 \mem_reg[3][3]  ( .D(n45), .CK(clk), .Q(\mem[3][3] ) );
  DFF_X1 \mem_reg[3][2]  ( .D(n46), .CK(clk), .Q(\mem[3][2] ) );
  DFF_X1 \mem_reg[3][1]  ( .D(n47), .CK(clk), .Q(\mem[3][1] ) );
  DFF_X1 \mem_reg[3][0]  ( .D(n48), .CK(clk), .Q(\mem[3][0] ) );
  DFF_X1 \mem_reg[2][7]  ( .D(n49), .CK(clk), .Q(\mem[2][7] ) );
  DFF_X1 \mem_reg[2][6]  ( .D(n50), .CK(clk), .Q(\mem[2][6] ) );
  DFF_X1 \mem_reg[2][5]  ( .D(n51), .CK(clk), .Q(\mem[2][5] ) );
  DFF_X1 \mem_reg[2][4]  ( .D(n52), .CK(clk), .Q(\mem[2][4] ) );
  DFF_X1 \mem_reg[2][3]  ( .D(n53), .CK(clk), .Q(\mem[2][3] ) );
  DFF_X1 \mem_reg[2][2]  ( .D(n54), .CK(clk), .Q(\mem[2][2] ) );
  DFF_X1 \mem_reg[2][1]  ( .D(n55), .CK(clk), .Q(\mem[2][1] ) );
  DFF_X1 \mem_reg[2][0]  ( .D(n56), .CK(clk), .Q(\mem[2][0] ) );
  DFF_X1 \mem_reg[1][7]  ( .D(n57), .CK(clk), .Q(\mem[1][7] ) );
  DFF_X1 \mem_reg[1][6]  ( .D(n58), .CK(clk), .Q(\mem[1][6] ) );
  DFF_X1 \mem_reg[1][5]  ( .D(n59), .CK(clk), .Q(\mem[1][5] ) );
  DFF_X1 \mem_reg[1][4]  ( .D(n60), .CK(clk), .Q(\mem[1][4] ) );
  DFF_X1 \mem_reg[1][3]  ( .D(n61), .CK(clk), .Q(\mem[1][3] ) );
  DFF_X1 \mem_reg[1][2]  ( .D(n62), .CK(clk), .Q(\mem[1][2] ) );
  DFF_X1 \mem_reg[1][1]  ( .D(n63), .CK(clk), .Q(\mem[1][1] ) );
  DFF_X1 \mem_reg[1][0]  ( .D(n64), .CK(clk), .Q(\mem[1][0] ) );
  DFF_X1 \mem_reg[0][7]  ( .D(n208), .CK(clk), .QN(n65) );
  DFF_X1 \data_out_reg[7]  ( .D(N40), .CK(clk), .Q(data_out[7]) );
  DFF_X1 \mem_reg[0][6]  ( .D(n207), .CK(clk), .QN(n66) );
  DFF_X1 \data_out_reg[6]  ( .D(N41), .CK(clk), .Q(data_out[6]) );
  DFF_X1 \mem_reg[0][5]  ( .D(n206), .CK(clk), .QN(n67) );
  DFF_X1 \data_out_reg[5]  ( .D(N42), .CK(clk), .Q(data_out[5]) );
  DFF_X1 \mem_reg[0][4]  ( .D(n205), .CK(clk), .QN(n68) );
  DFF_X1 \data_out_reg[4]  ( .D(N43), .CK(clk), .Q(data_out[4]) );
  DFF_X1 \mem_reg[0][3]  ( .D(n204), .CK(clk), .QN(n69) );
  DFF_X1 \data_out_reg[3]  ( .D(N44), .CK(clk), .Q(data_out[3]) );
  DFF_X1 \mem_reg[0][2]  ( .D(n203), .CK(clk), .QN(n70) );
  DFF_X1 \data_out_reg[2]  ( .D(N45), .CK(clk), .Q(data_out[2]) );
  DFF_X1 \mem_reg[0][1]  ( .D(n202), .CK(clk), .QN(n71) );
  DFF_X1 \data_out_reg[1]  ( .D(N46), .CK(clk), .Q(data_out[1]) );
  DFF_X1 \mem_reg[0][0]  ( .D(n201), .CK(clk), .QN(n72) );
  DFF_X1 \data_out_reg[0]  ( .D(N47), .CK(clk), .Q(data_out[0]) );
  NAND3_X1 U202 ( .A1(n169), .A2(n170), .A3(n171), .ZN(N47) );
  NAND3_X1 U203 ( .A1(n173), .A2(n174), .A3(n175), .ZN(N46) );
  NAND3_X1 U204 ( .A1(n177), .A2(n178), .A3(n179), .ZN(N45) );
  NAND3_X1 U205 ( .A1(n181), .A2(n182), .A3(n183), .ZN(N44) );
  NAND3_X1 U206 ( .A1(n185), .A2(n186), .A3(n187), .ZN(N43) );
  NAND3_X1 U207 ( .A1(n189), .A2(n190), .A3(n191), .ZN(N42) );
  NAND3_X1 U208 ( .A1(n193), .A2(n194), .A3(n195), .ZN(N41) );
  NAND3_X1 U209 ( .A1(n197), .A2(n198), .A3(n199), .ZN(N40) );
  NAND3_X1 U210 ( .A1(n91), .A2(n93), .A3(n168), .ZN(n96) );
  NOR2_X1 U3 ( .A1(n81), .A2(addr[3]), .ZN(n107) );
  NOR3_X2 U4 ( .A1(addr[0]), .A2(addr[2]), .A3(n92), .ZN(n117) );
  INV_X1 U5 ( .A(n95), .ZN(n73) );
  NOR2_X1 U6 ( .A1(n96), .A2(n81), .ZN(n95) );
  INV_X1 U7 ( .A(n109), .ZN(n79) );
  INV_X1 U8 ( .A(n98), .ZN(n80) );
  INV_X1 U9 ( .A(n159), .ZN(n74) );
  INV_X1 U10 ( .A(n139), .ZN(n76) );
  INV_X1 U11 ( .A(n119), .ZN(n78) );
  INV_X1 U12 ( .A(n129), .ZN(n77) );
  INV_X1 U13 ( .A(n149), .ZN(n75) );
  NAND2_X1 U14 ( .A1(n117), .A2(n107), .ZN(n109) );
  NAND2_X1 U15 ( .A1(n106), .A2(n107), .ZN(n98) );
  NAND2_X1 U16 ( .A1(n167), .A2(n107), .ZN(n159) );
  NAND2_X1 U17 ( .A1(n147), .A2(n107), .ZN(n139) );
  NAND2_X1 U18 ( .A1(n127), .A2(n107), .ZN(n119) );
  NAND2_X1 U19 ( .A1(n137), .A2(n107), .ZN(n129) );
  NAND2_X1 U20 ( .A1(n157), .A2(n107), .ZN(n149) );
  INV_X1 U21 ( .A(n94), .ZN(n82) );
  INV_X1 U22 ( .A(wr_en), .ZN(n81) );
  NOR3_X2 U23 ( .A1(n91), .A2(addr[2]), .A3(n92), .ZN(n127) );
  AND3_X1 U24 ( .A1(n91), .A2(n92), .A3(addr[2]), .ZN(n137) );
  AND3_X1 U25 ( .A1(addr[1]), .A2(n91), .A3(addr[2]), .ZN(n157) );
  AOI222_X1 U26 ( .A1(\mem[5][0] ), .A2(n147), .B1(\mem[7][0] ), .B2(n167), 
        .C1(\mem[6][0] ), .C2(n157), .ZN(n170) );
  AOI22_X1 U27 ( .A1(\mem[4][0] ), .A2(n137), .B1(\mem[3][0] ), .B2(n127), 
        .ZN(n169) );
  AOI221_X1 U28 ( .B1(\mem[2][0] ), .B2(n117), .C1(\mem[1][0] ), .C2(n106), 
        .A(n172), .ZN(n171) );
  AOI222_X1 U29 ( .A1(\mem[5][1] ), .A2(n147), .B1(\mem[7][1] ), .B2(n167), 
        .C1(\mem[6][1] ), .C2(n157), .ZN(n174) );
  AOI22_X1 U30 ( .A1(\mem[4][1] ), .A2(n137), .B1(\mem[3][1] ), .B2(n127), 
        .ZN(n173) );
  AOI221_X1 U31 ( .B1(\mem[2][1] ), .B2(n117), .C1(\mem[1][1] ), .C2(n106), 
        .A(n176), .ZN(n175) );
  AOI222_X1 U32 ( .A1(\mem[5][2] ), .A2(n147), .B1(\mem[7][2] ), .B2(n167), 
        .C1(\mem[6][2] ), .C2(n157), .ZN(n178) );
  AOI22_X1 U33 ( .A1(\mem[4][2] ), .A2(n137), .B1(\mem[3][2] ), .B2(n127), 
        .ZN(n177) );
  AOI221_X1 U34 ( .B1(\mem[2][2] ), .B2(n117), .C1(\mem[1][2] ), .C2(n106), 
        .A(n180), .ZN(n179) );
  AOI222_X1 U35 ( .A1(\mem[5][3] ), .A2(n147), .B1(\mem[7][3] ), .B2(n167), 
        .C1(\mem[6][3] ), .C2(n157), .ZN(n182) );
  AOI22_X1 U36 ( .A1(\mem[4][3] ), .A2(n137), .B1(\mem[3][3] ), .B2(n127), 
        .ZN(n181) );
  AOI221_X1 U37 ( .B1(\mem[2][3] ), .B2(n117), .C1(\mem[1][3] ), .C2(n106), 
        .A(n184), .ZN(n183) );
  AOI222_X1 U38 ( .A1(\mem[5][4] ), .A2(n147), .B1(\mem[7][4] ), .B2(n167), 
        .C1(\mem[6][4] ), .C2(n157), .ZN(n186) );
  AOI22_X1 U39 ( .A1(\mem[4][4] ), .A2(n137), .B1(\mem[3][4] ), .B2(n127), 
        .ZN(n185) );
  AOI221_X1 U40 ( .B1(\mem[2][4] ), .B2(n117), .C1(\mem[1][4] ), .C2(n106), 
        .A(n188), .ZN(n187) );
  AOI222_X1 U41 ( .A1(\mem[5][5] ), .A2(n147), .B1(\mem[7][5] ), .B2(n167), 
        .C1(\mem[6][5] ), .C2(n157), .ZN(n190) );
  AOI22_X1 U42 ( .A1(\mem[4][5] ), .A2(n137), .B1(\mem[3][5] ), .B2(n127), 
        .ZN(n189) );
  AOI221_X1 U43 ( .B1(\mem[2][5] ), .B2(n117), .C1(\mem[1][5] ), .C2(n106), 
        .A(n192), .ZN(n191) );
  AOI222_X1 U44 ( .A1(\mem[5][6] ), .A2(n147), .B1(\mem[7][6] ), .B2(n167), 
        .C1(\mem[6][6] ), .C2(n157), .ZN(n194) );
  AOI22_X1 U45 ( .A1(\mem[4][6] ), .A2(n137), .B1(\mem[3][6] ), .B2(n127), 
        .ZN(n193) );
  AOI221_X1 U46 ( .B1(\mem[2][6] ), .B2(n117), .C1(\mem[1][6] ), .C2(n106), 
        .A(n196), .ZN(n195) );
  AOI222_X1 U47 ( .A1(\mem[5][7] ), .A2(n147), .B1(\mem[7][7] ), .B2(n167), 
        .C1(\mem[6][7] ), .C2(n157), .ZN(n198) );
  AOI22_X1 U48 ( .A1(\mem[4][7] ), .A2(n137), .B1(\mem[3][7] ), .B2(n127), 
        .ZN(n197) );
  AOI221_X1 U49 ( .B1(\mem[2][7] ), .B2(n117), .C1(\mem[1][7] ), .C2(n106), 
        .A(n200), .ZN(n199) );
  OAI22_X1 U50 ( .A1(n93), .A2(n8), .B1(n96), .B2(n72), .ZN(n172) );
  OAI22_X1 U51 ( .A1(n93), .A2(n7), .B1(n96), .B2(n71), .ZN(n176) );
  OAI22_X1 U52 ( .A1(n93), .A2(n6), .B1(n96), .B2(n70), .ZN(n180) );
  OAI22_X1 U53 ( .A1(n93), .A2(n5), .B1(n96), .B2(n69), .ZN(n184) );
  OAI22_X1 U54 ( .A1(n93), .A2(n4), .B1(n96), .B2(n68), .ZN(n188) );
  OAI22_X1 U55 ( .A1(n93), .A2(n3), .B1(n96), .B2(n67), .ZN(n192) );
  OAI22_X1 U56 ( .A1(n93), .A2(n2), .B1(n96), .B2(n66), .ZN(n196) );
  OAI22_X1 U57 ( .A1(n93), .A2(n1), .B1(n96), .B2(n65), .ZN(n200) );
  INV_X1 U58 ( .A(addr[3]), .ZN(n93) );
  NAND4_X1 U59 ( .A1(wr_en), .A2(addr[3]), .A3(n168), .A4(n91), .ZN(n94) );
  NOR2_X1 U60 ( .A1(addr[1]), .A2(addr[2]), .ZN(n168) );
  OAI22_X1 U61 ( .A1(n73), .A2(n90), .B1(n95), .B2(n72), .ZN(n201) );
  OAI22_X1 U62 ( .A1(n73), .A2(n89), .B1(n95), .B2(n71), .ZN(n202) );
  OAI22_X1 U63 ( .A1(n73), .A2(n88), .B1(n95), .B2(n70), .ZN(n203) );
  OAI22_X1 U64 ( .A1(n73), .A2(n87), .B1(n95), .B2(n69), .ZN(n204) );
  OAI22_X1 U65 ( .A1(n73), .A2(n86), .B1(n95), .B2(n68), .ZN(n205) );
  OAI22_X1 U66 ( .A1(n73), .A2(n85), .B1(n95), .B2(n67), .ZN(n206) );
  OAI22_X1 U67 ( .A1(n73), .A2(n84), .B1(n95), .B2(n66), .ZN(n207) );
  OAI22_X1 U68 ( .A1(n83), .A2(n73), .B1(n95), .B2(n65), .ZN(n208) );
  OAI22_X1 U69 ( .A1(n94), .A2(n90), .B1(n82), .B2(n8), .ZN(n209) );
  OAI22_X1 U70 ( .A1(n94), .A2(n89), .B1(n82), .B2(n7), .ZN(n210) );
  OAI22_X1 U71 ( .A1(n94), .A2(n88), .B1(n82), .B2(n6), .ZN(n211) );
  OAI22_X1 U72 ( .A1(n94), .A2(n87), .B1(n82), .B2(n5), .ZN(n212) );
  OAI22_X1 U73 ( .A1(n94), .A2(n86), .B1(n82), .B2(n4), .ZN(n213) );
  OAI22_X1 U74 ( .A1(n94), .A2(n85), .B1(n82), .B2(n3), .ZN(n214) );
  OAI22_X1 U75 ( .A1(n94), .A2(n84), .B1(n82), .B2(n2), .ZN(n215) );
  OAI22_X1 U76 ( .A1(n94), .A2(n83), .B1(n82), .B2(n1), .ZN(n216) );
  INV_X1 U77 ( .A(addr[1]), .ZN(n92) );
  INV_X1 U78 ( .A(data_in[0]), .ZN(n90) );
  INV_X1 U79 ( .A(data_in[1]), .ZN(n89) );
  INV_X1 U80 ( .A(data_in[2]), .ZN(n88) );
  INV_X1 U81 ( .A(data_in[3]), .ZN(n87) );
  INV_X1 U82 ( .A(data_in[4]), .ZN(n86) );
  INV_X1 U83 ( .A(data_in[5]), .ZN(n85) );
  INV_X1 U84 ( .A(data_in[6]), .ZN(n84) );
  INV_X1 U85 ( .A(data_in[7]), .ZN(n83) );
  INV_X1 U86 ( .A(n97), .ZN(n64) );
  AOI22_X1 U87 ( .A1(data_in[0]), .A2(n80), .B1(n98), .B2(\mem[1][0] ), .ZN(
        n97) );
  INV_X1 U88 ( .A(n99), .ZN(n63) );
  AOI22_X1 U89 ( .A1(data_in[1]), .A2(n80), .B1(n98), .B2(\mem[1][1] ), .ZN(
        n99) );
  INV_X1 U90 ( .A(n100), .ZN(n62) );
  AOI22_X1 U91 ( .A1(data_in[2]), .A2(n80), .B1(n98), .B2(\mem[1][2] ), .ZN(
        n100) );
  INV_X1 U92 ( .A(n101), .ZN(n61) );
  AOI22_X1 U93 ( .A1(data_in[3]), .A2(n80), .B1(n98), .B2(\mem[1][3] ), .ZN(
        n101) );
  INV_X1 U94 ( .A(n102), .ZN(n60) );
  AOI22_X1 U95 ( .A1(data_in[4]), .A2(n80), .B1(n98), .B2(\mem[1][4] ), .ZN(
        n102) );
  INV_X1 U96 ( .A(n103), .ZN(n59) );
  AOI22_X1 U97 ( .A1(data_in[5]), .A2(n80), .B1(n98), .B2(\mem[1][5] ), .ZN(
        n103) );
  INV_X1 U98 ( .A(n104), .ZN(n58) );
  AOI22_X1 U99 ( .A1(data_in[6]), .A2(n80), .B1(n98), .B2(\mem[1][6] ), .ZN(
        n104) );
  INV_X1 U100 ( .A(n105), .ZN(n57) );
  AOI22_X1 U101 ( .A1(data_in[7]), .A2(n80), .B1(n98), .B2(\mem[1][7] ), .ZN(
        n105) );
  INV_X1 U102 ( .A(n108), .ZN(n56) );
  AOI22_X1 U103 ( .A1(data_in[0]), .A2(n79), .B1(n109), .B2(\mem[2][0] ), .ZN(
        n108) );
  INV_X1 U104 ( .A(n110), .ZN(n55) );
  AOI22_X1 U105 ( .A1(data_in[1]), .A2(n79), .B1(n109), .B2(\mem[2][1] ), .ZN(
        n110) );
  INV_X1 U106 ( .A(n111), .ZN(n54) );
  AOI22_X1 U107 ( .A1(data_in[2]), .A2(n79), .B1(n109), .B2(\mem[2][2] ), .ZN(
        n111) );
  INV_X1 U108 ( .A(n112), .ZN(n53) );
  AOI22_X1 U109 ( .A1(data_in[3]), .A2(n79), .B1(n109), .B2(\mem[2][3] ), .ZN(
        n112) );
  INV_X1 U110 ( .A(n113), .ZN(n52) );
  AOI22_X1 U111 ( .A1(data_in[4]), .A2(n79), .B1(n109), .B2(\mem[2][4] ), .ZN(
        n113) );
  INV_X1 U112 ( .A(n114), .ZN(n51) );
  AOI22_X1 U113 ( .A1(data_in[5]), .A2(n79), .B1(n109), .B2(\mem[2][5] ), .ZN(
        n114) );
  INV_X1 U114 ( .A(n115), .ZN(n50) );
  AOI22_X1 U115 ( .A1(data_in[6]), .A2(n79), .B1(n109), .B2(\mem[2][6] ), .ZN(
        n115) );
  INV_X1 U116 ( .A(n116), .ZN(n49) );
  AOI22_X1 U117 ( .A1(data_in[7]), .A2(n79), .B1(n109), .B2(\mem[2][7] ), .ZN(
        n116) );
  INV_X1 U118 ( .A(n118), .ZN(n48) );
  AOI22_X1 U119 ( .A1(data_in[0]), .A2(n78), .B1(n119), .B2(\mem[3][0] ), .ZN(
        n118) );
  INV_X1 U120 ( .A(n120), .ZN(n47) );
  AOI22_X1 U121 ( .A1(data_in[1]), .A2(n78), .B1(n119), .B2(\mem[3][1] ), .ZN(
        n120) );
  INV_X1 U122 ( .A(n121), .ZN(n46) );
  AOI22_X1 U123 ( .A1(data_in[2]), .A2(n78), .B1(n119), .B2(\mem[3][2] ), .ZN(
        n121) );
  INV_X1 U124 ( .A(n122), .ZN(n45) );
  AOI22_X1 U125 ( .A1(data_in[3]), .A2(n78), .B1(n119), .B2(\mem[3][3] ), .ZN(
        n122) );
  INV_X1 U126 ( .A(n123), .ZN(n44) );
  AOI22_X1 U127 ( .A1(data_in[4]), .A2(n78), .B1(n119), .B2(\mem[3][4] ), .ZN(
        n123) );
  INV_X1 U128 ( .A(n124), .ZN(n43) );
  AOI22_X1 U129 ( .A1(data_in[5]), .A2(n78), .B1(n119), .B2(\mem[3][5] ), .ZN(
        n124) );
  INV_X1 U130 ( .A(n125), .ZN(n42) );
  AOI22_X1 U131 ( .A1(data_in[6]), .A2(n78), .B1(n119), .B2(\mem[3][6] ), .ZN(
        n125) );
  INV_X1 U132 ( .A(n126), .ZN(n41) );
  AOI22_X1 U133 ( .A1(data_in[7]), .A2(n78), .B1(n119), .B2(\mem[3][7] ), .ZN(
        n126) );
  INV_X1 U134 ( .A(n128), .ZN(n40) );
  AOI22_X1 U135 ( .A1(data_in[0]), .A2(n77), .B1(n129), .B2(\mem[4][0] ), .ZN(
        n128) );
  INV_X1 U136 ( .A(n130), .ZN(n39) );
  AOI22_X1 U137 ( .A1(data_in[1]), .A2(n77), .B1(n129), .B2(\mem[4][1] ), .ZN(
        n130) );
  INV_X1 U138 ( .A(n131), .ZN(n38) );
  AOI22_X1 U139 ( .A1(data_in[2]), .A2(n77), .B1(n129), .B2(\mem[4][2] ), .ZN(
        n131) );
  INV_X1 U140 ( .A(n132), .ZN(n37) );
  AOI22_X1 U141 ( .A1(data_in[3]), .A2(n77), .B1(n129), .B2(\mem[4][3] ), .ZN(
        n132) );
  INV_X1 U142 ( .A(n133), .ZN(n36) );
  AOI22_X1 U143 ( .A1(data_in[4]), .A2(n77), .B1(n129), .B2(\mem[4][4] ), .ZN(
        n133) );
  INV_X1 U144 ( .A(n134), .ZN(n35) );
  AOI22_X1 U145 ( .A1(data_in[5]), .A2(n77), .B1(n129), .B2(\mem[4][5] ), .ZN(
        n134) );
  INV_X1 U146 ( .A(n135), .ZN(n34) );
  AOI22_X1 U147 ( .A1(data_in[6]), .A2(n77), .B1(n129), .B2(\mem[4][6] ), .ZN(
        n135) );
  INV_X1 U148 ( .A(n136), .ZN(n33) );
  AOI22_X1 U149 ( .A1(data_in[7]), .A2(n77), .B1(n129), .B2(\mem[4][7] ), .ZN(
        n136) );
  INV_X1 U150 ( .A(n138), .ZN(n32) );
  AOI22_X1 U151 ( .A1(data_in[0]), .A2(n76), .B1(n139), .B2(\mem[5][0] ), .ZN(
        n138) );
  INV_X1 U152 ( .A(n140), .ZN(n31) );
  AOI22_X1 U153 ( .A1(data_in[1]), .A2(n76), .B1(n139), .B2(\mem[5][1] ), .ZN(
        n140) );
  INV_X1 U154 ( .A(n141), .ZN(n30) );
  AOI22_X1 U155 ( .A1(data_in[2]), .A2(n76), .B1(n139), .B2(\mem[5][2] ), .ZN(
        n141) );
  INV_X1 U156 ( .A(n142), .ZN(n29) );
  AOI22_X1 U157 ( .A1(data_in[3]), .A2(n76), .B1(n139), .B2(\mem[5][3] ), .ZN(
        n142) );
  INV_X1 U158 ( .A(n143), .ZN(n28) );
  AOI22_X1 U159 ( .A1(data_in[4]), .A2(n76), .B1(n139), .B2(\mem[5][4] ), .ZN(
        n143) );
  INV_X1 U160 ( .A(n144), .ZN(n27) );
  AOI22_X1 U161 ( .A1(data_in[5]), .A2(n76), .B1(n139), .B2(\mem[5][5] ), .ZN(
        n144) );
  INV_X1 U162 ( .A(n145), .ZN(n26) );
  AOI22_X1 U163 ( .A1(data_in[6]), .A2(n76), .B1(n139), .B2(\mem[5][6] ), .ZN(
        n145) );
  INV_X1 U164 ( .A(n146), .ZN(n25) );
  AOI22_X1 U165 ( .A1(data_in[7]), .A2(n76), .B1(n139), .B2(\mem[5][7] ), .ZN(
        n146) );
  INV_X1 U166 ( .A(n148), .ZN(n24) );
  AOI22_X1 U167 ( .A1(data_in[0]), .A2(n75), .B1(n149), .B2(\mem[6][0] ), .ZN(
        n148) );
  INV_X1 U168 ( .A(n150), .ZN(n23) );
  AOI22_X1 U169 ( .A1(data_in[1]), .A2(n75), .B1(n149), .B2(\mem[6][1] ), .ZN(
        n150) );
  INV_X1 U170 ( .A(n151), .ZN(n22) );
  AOI22_X1 U171 ( .A1(data_in[2]), .A2(n75), .B1(n149), .B2(\mem[6][2] ), .ZN(
        n151) );
  INV_X1 U172 ( .A(n152), .ZN(n21) );
  AOI22_X1 U173 ( .A1(data_in[3]), .A2(n75), .B1(n149), .B2(\mem[6][3] ), .ZN(
        n152) );
  INV_X1 U174 ( .A(n153), .ZN(n20) );
  AOI22_X1 U175 ( .A1(data_in[4]), .A2(n75), .B1(n149), .B2(\mem[6][4] ), .ZN(
        n153) );
  INV_X1 U176 ( .A(n154), .ZN(n19) );
  AOI22_X1 U177 ( .A1(data_in[5]), .A2(n75), .B1(n149), .B2(\mem[6][5] ), .ZN(
        n154) );
  INV_X1 U178 ( .A(n155), .ZN(n18) );
  AOI22_X1 U179 ( .A1(data_in[6]), .A2(n75), .B1(n149), .B2(\mem[6][6] ), .ZN(
        n155) );
  INV_X1 U180 ( .A(n156), .ZN(n17) );
  AOI22_X1 U181 ( .A1(data_in[7]), .A2(n75), .B1(n149), .B2(\mem[6][7] ), .ZN(
        n156) );
  INV_X1 U182 ( .A(n158), .ZN(n16) );
  AOI22_X1 U183 ( .A1(data_in[0]), .A2(n74), .B1(n159), .B2(\mem[7][0] ), .ZN(
        n158) );
  INV_X1 U184 ( .A(n160), .ZN(n15) );
  AOI22_X1 U185 ( .A1(data_in[1]), .A2(n74), .B1(n159), .B2(\mem[7][1] ), .ZN(
        n160) );
  INV_X1 U186 ( .A(n161), .ZN(n14) );
  AOI22_X1 U187 ( .A1(data_in[2]), .A2(n74), .B1(n159), .B2(\mem[7][2] ), .ZN(
        n161) );
  INV_X1 U188 ( .A(n162), .ZN(n13) );
  AOI22_X1 U189 ( .A1(data_in[3]), .A2(n74), .B1(n159), .B2(\mem[7][3] ), .ZN(
        n162) );
  INV_X1 U190 ( .A(n163), .ZN(n12) );
  AOI22_X1 U191 ( .A1(data_in[4]), .A2(n74), .B1(n159), .B2(\mem[7][4] ), .ZN(
        n163) );
  INV_X1 U192 ( .A(n164), .ZN(n11) );
  AOI22_X1 U193 ( .A1(data_in[5]), .A2(n74), .B1(n159), .B2(\mem[7][5] ), .ZN(
        n164) );
  INV_X1 U194 ( .A(n165), .ZN(n10) );
  AOI22_X1 U195 ( .A1(data_in[6]), .A2(n74), .B1(n159), .B2(\mem[7][6] ), .ZN(
        n165) );
  INV_X1 U196 ( .A(n166), .ZN(n9) );
  AOI22_X1 U197 ( .A1(data_in[7]), .A2(n74), .B1(n159), .B2(\mem[7][7] ), .ZN(
        n166) );
  AND2_X1 U198 ( .A1(addr[0]), .A2(n168), .ZN(n106) );
  AND3_X1 U199 ( .A1(addr[0]), .A2(n92), .A3(addr[2]), .ZN(n147) );
  AND3_X1 U200 ( .A1(addr[1]), .A2(addr[0]), .A3(addr[2]), .ZN(n167) );
  INV_X1 U201 ( .A(addr[0]), .ZN(n91) );
endmodule


module memory_WIDTH8_SIZE3_LOGSIZE2 ( clk, data_in, data_out, addr, wr_en );
  input [7:0] data_in;
  output [7:0] data_out;
  input [1:0] addr;
  input clk, wr_en;
  wire   N10, N11, N12, N13, N14, N15, N16, N17, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38;

  DFF_X1 \mem_reg[2][7]  ( .D(n66), .CK(clk), .QN(n1) );
  DFF_X1 \mem_reg[2][6]  ( .D(n65), .CK(clk), .QN(n2) );
  DFF_X1 \mem_reg[2][5]  ( .D(n64), .CK(clk), .QN(n3) );
  DFF_X1 \mem_reg[2][4]  ( .D(n63), .CK(clk), .QN(n4) );
  DFF_X1 \mem_reg[2][3]  ( .D(n62), .CK(clk), .QN(n5) );
  DFF_X1 \mem_reg[2][2]  ( .D(n61), .CK(clk), .QN(n6) );
  DFF_X1 \mem_reg[2][1]  ( .D(n60), .CK(clk), .QN(n7) );
  DFF_X1 \mem_reg[2][0]  ( .D(n59), .CK(clk), .QN(n8) );
  DFF_X1 \mem_reg[1][7]  ( .D(n58), .CK(clk), .QN(n9) );
  DFF_X1 \mem_reg[1][6]  ( .D(n57), .CK(clk), .QN(n10) );
  DFF_X1 \mem_reg[1][5]  ( .D(n56), .CK(clk), .QN(n11) );
  DFF_X1 \mem_reg[1][4]  ( .D(n55), .CK(clk), .QN(n12) );
  DFF_X1 \mem_reg[1][3]  ( .D(n54), .CK(clk), .QN(n13) );
  DFF_X1 \mem_reg[1][2]  ( .D(n53), .CK(clk), .QN(n14) );
  DFF_X1 \mem_reg[1][1]  ( .D(n52), .CK(clk), .QN(n15) );
  DFF_X1 \mem_reg[1][0]  ( .D(n51), .CK(clk), .QN(n16) );
  DFF_X1 \mem_reg[0][7]  ( .D(n50), .CK(clk), .QN(n17) );
  DFF_X1 \data_out_reg[7]  ( .D(N10), .CK(clk), .Q(data_out[7]) );
  DFF_X1 \mem_reg[0][6]  ( .D(n49), .CK(clk), .QN(n18) );
  DFF_X1 \data_out_reg[6]  ( .D(N11), .CK(clk), .Q(data_out[6]) );
  DFF_X1 \mem_reg[0][5]  ( .D(n48), .CK(clk), .QN(n19) );
  DFF_X1 \data_out_reg[5]  ( .D(N12), .CK(clk), .Q(data_out[5]) );
  DFF_X1 \mem_reg[0][4]  ( .D(n47), .CK(clk), .QN(n20) );
  DFF_X1 \data_out_reg[4]  ( .D(N13), .CK(clk), .Q(data_out[4]) );
  DFF_X1 \mem_reg[0][3]  ( .D(n46), .CK(clk), .QN(n21) );
  DFF_X1 \data_out_reg[3]  ( .D(N14), .CK(clk), .Q(data_out[3]) );
  DFF_X1 \mem_reg[0][2]  ( .D(n45), .CK(clk), .QN(n22) );
  DFF_X1 \data_out_reg[2]  ( .D(N15), .CK(clk), .Q(data_out[2]) );
  DFF_X1 \mem_reg[0][1]  ( .D(n44), .CK(clk), .QN(n23) );
  DFF_X1 \data_out_reg[1]  ( .D(N16), .CK(clk), .Q(data_out[1]) );
  DFF_X1 \mem_reg[0][0]  ( .D(n43), .CK(clk), .QN(n24) );
  DFF_X1 \data_out_reg[0]  ( .D(N17), .CK(clk), .Q(data_out[0]) );
  NOR3_X2 U20 ( .A1(n28), .A2(addr[1]), .A3(n37), .ZN(n41) );
  NOR3_X2 U29 ( .A1(n28), .A2(addr[0]), .A3(n38), .ZN(n42) );
  INV_X1 U3 ( .A(n39), .ZN(n25) );
  NOR2_X1 U4 ( .A1(n28), .A2(n40), .ZN(n39) );
  INV_X1 U5 ( .A(wr_en), .ZN(n28) );
  NAND2_X1 U6 ( .A1(n37), .A2(n38), .ZN(n40) );
  INV_X1 U7 ( .A(n41), .ZN(n26) );
  INV_X1 U8 ( .A(n42), .ZN(n27) );
  INV_X1 U9 ( .A(addr[1]), .ZN(n38) );
  INV_X1 U10 ( .A(addr[0]), .ZN(n37) );
  OAI222_X1 U11 ( .A1(n37), .A2(n16), .B1(n40), .B2(n24), .C1(n38), .C2(n8), 
        .ZN(N17) );
  OAI222_X1 U12 ( .A1(n37), .A2(n15), .B1(n40), .B2(n23), .C1(n38), .C2(n7), 
        .ZN(N16) );
  OAI222_X1 U13 ( .A1(n37), .A2(n14), .B1(n40), .B2(n22), .C1(n38), .C2(n6), 
        .ZN(N15) );
  OAI222_X1 U14 ( .A1(n37), .A2(n13), .B1(n40), .B2(n21), .C1(n38), .C2(n5), 
        .ZN(N14) );
  OAI222_X1 U15 ( .A1(n37), .A2(n12), .B1(n40), .B2(n20), .C1(n38), .C2(n4), 
        .ZN(N13) );
  OAI222_X1 U16 ( .A1(n37), .A2(n11), .B1(n40), .B2(n19), .C1(n38), .C2(n3), 
        .ZN(N12) );
  OAI222_X1 U17 ( .A1(n37), .A2(n10), .B1(n40), .B2(n18), .C1(n38), .C2(n2), 
        .ZN(N11) );
  OAI222_X1 U18 ( .A1(n37), .A2(n9), .B1(n40), .B2(n17), .C1(n38), .C2(n1), 
        .ZN(N10) );
  OAI22_X1 U19 ( .A1(n36), .A2(n27), .B1(n42), .B2(n8), .ZN(n59) );
  OAI22_X1 U21 ( .A1(n35), .A2(n27), .B1(n42), .B2(n7), .ZN(n60) );
  OAI22_X1 U22 ( .A1(n34), .A2(n27), .B1(n42), .B2(n6), .ZN(n61) );
  OAI22_X1 U23 ( .A1(n33), .A2(n27), .B1(n42), .B2(n5), .ZN(n62) );
  OAI22_X1 U24 ( .A1(n32), .A2(n27), .B1(n42), .B2(n4), .ZN(n63) );
  OAI22_X1 U25 ( .A1(n31), .A2(n27), .B1(n42), .B2(n3), .ZN(n64) );
  OAI22_X1 U26 ( .A1(n30), .A2(n27), .B1(n42), .B2(n2), .ZN(n65) );
  OAI22_X1 U27 ( .A1(n29), .A2(n27), .B1(n42), .B2(n1), .ZN(n66) );
  OAI22_X1 U28 ( .A1(n36), .A2(n26), .B1(n41), .B2(n16), .ZN(n51) );
  OAI22_X1 U30 ( .A1(n35), .A2(n26), .B1(n41), .B2(n15), .ZN(n52) );
  OAI22_X1 U31 ( .A1(n34), .A2(n26), .B1(n41), .B2(n14), .ZN(n53) );
  OAI22_X1 U32 ( .A1(n33), .A2(n26), .B1(n41), .B2(n13), .ZN(n54) );
  OAI22_X1 U33 ( .A1(n32), .A2(n26), .B1(n41), .B2(n12), .ZN(n55) );
  OAI22_X1 U34 ( .A1(n31), .A2(n26), .B1(n41), .B2(n11), .ZN(n56) );
  OAI22_X1 U35 ( .A1(n30), .A2(n26), .B1(n41), .B2(n10), .ZN(n57) );
  OAI22_X1 U36 ( .A1(n29), .A2(n26), .B1(n41), .B2(n9), .ZN(n58) );
  OAI22_X1 U37 ( .A1(n25), .A2(n36), .B1(n39), .B2(n24), .ZN(n43) );
  OAI22_X1 U38 ( .A1(n25), .A2(n35), .B1(n39), .B2(n23), .ZN(n44) );
  OAI22_X1 U39 ( .A1(n25), .A2(n34), .B1(n39), .B2(n22), .ZN(n45) );
  OAI22_X1 U40 ( .A1(n25), .A2(n33), .B1(n39), .B2(n21), .ZN(n46) );
  OAI22_X1 U41 ( .A1(n25), .A2(n32), .B1(n39), .B2(n20), .ZN(n47) );
  OAI22_X1 U42 ( .A1(n25), .A2(n31), .B1(n39), .B2(n19), .ZN(n48) );
  OAI22_X1 U43 ( .A1(n25), .A2(n30), .B1(n39), .B2(n18), .ZN(n49) );
  OAI22_X1 U44 ( .A1(n25), .A2(n29), .B1(n39), .B2(n17), .ZN(n50) );
  INV_X1 U45 ( .A(data_in[0]), .ZN(n36) );
  INV_X1 U46 ( .A(data_in[1]), .ZN(n35) );
  INV_X1 U47 ( .A(data_in[2]), .ZN(n34) );
  INV_X1 U48 ( .A(data_in[3]), .ZN(n33) );
  INV_X1 U49 ( .A(data_in[4]), .ZN(n32) );
  INV_X1 U50 ( .A(data_in[5]), .ZN(n31) );
  INV_X1 U51 ( .A(data_in[6]), .ZN(n30) );
  INV_X1 U52 ( .A(data_in[7]), .ZN(n29) );
endmodule


module part2_mac_DW_mult_tc_2 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n8, n11, n12, n13, n14, n16, n18, n20, n21, n22,
         n23, n24, n25, n27, n29, n30, n31, n32, n33, n34, n35, n36, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n68, n69, n70,
         n72, n74, n75, n76, n77, n78, n79, n80, n81, n82, n84, n86, n87, n89,
         n91, n92, n94, n95, n96, n97, n100, n101, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n237,
         n238, n239, n240, n246, n247, n248, n252, n253, n255, n256, n258,
         n259, n260, n261, n262, n263, n264, n265, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333;
  assign product[15] = n16;

  FA_X1 U120 ( .A(n163), .B(n110), .CI(n168), .CO(n106), .S(n107) );
  FA_X1 U121 ( .A(n111), .B(n169), .CI(n114), .CO(n108), .S(n109) );
  FA_X1 U123 ( .A(n118), .B(n177), .CI(n115), .CO(n112), .S(n113) );
  FA_X1 U124 ( .A(n164), .B(n170), .CI(n316), .CO(n114), .S(n115) );
  FA_X1 U125 ( .A(n124), .B(n126), .CI(n119), .CO(n116), .S(n117) );
  FA_X1 U126 ( .A(n171), .B(n178), .CI(n121), .CO(n118), .S(n119) );
  FA_X1 U128 ( .A(n130), .B(n127), .CI(n125), .CO(n122), .S(n123) );
  FA_X1 U129 ( .A(n186), .B(n172), .CI(n132), .CO(n124), .S(n125) );
  FA_X1 U132 ( .A(n136), .B(n133), .CI(n131), .CO(n128), .S(n129) );
  FA_X1 U133 ( .A(n173), .B(n180), .CI(n187), .CO(n130), .S(n131) );
  HA_X1 U134 ( .A(n158), .B(n166), .CO(n132), .S(n133) );
  FA_X1 U135 ( .A(n140), .B(n188), .CI(n137), .CO(n134), .S(n135) );
  FA_X1 U136 ( .A(n181), .B(n167), .CI(n174), .CO(n136), .S(n137) );
  FA_X1 U137 ( .A(n189), .B(n159), .CI(n141), .CO(n138), .S(n139) );
  HA_X1 U138 ( .A(n182), .B(n175), .CO(n140), .S(n141) );
  FA_X1 U139 ( .A(n183), .B(n176), .CI(n190), .CO(n142), .S(n143) );
  HA_X1 U140 ( .A(n184), .B(n160), .CO(n144), .S(n145) );
  CLKBUF_X3 U260 ( .A(n263), .Z(n247) );
  AND2_X1 U261 ( .A1(n331), .A2(n89), .ZN(product[1]) );
  CLKBUF_X1 U262 ( .A(a[7]), .Z(n302) );
  BUF_X1 U263 ( .A(n262), .Z(n297) );
  XNOR2_X1 U264 ( .A(n296), .B(n305), .ZN(product[6]) );
  AND2_X1 U265 ( .A1(n299), .A2(n69), .ZN(n296) );
  XNOR2_X1 U266 ( .A(b[3]), .B(n302), .ZN(n198) );
  XNOR2_X1 U267 ( .A(n318), .B(n298), .ZN(product[7]) );
  NAND2_X1 U268 ( .A1(n97), .A2(n65), .ZN(n298) );
  OR2_X1 U269 ( .A1(n135), .A2(n138), .ZN(n299) );
  CLKBUF_X2 U270 ( .A(a[3]), .Z(n313) );
  XNOR2_X1 U271 ( .A(a[4]), .B(a[3]), .ZN(n300) );
  CLKBUF_X1 U272 ( .A(n332), .Z(n301) );
  CLKBUF_X1 U273 ( .A(b[0]), .Z(n237) );
  BUF_X1 U274 ( .A(a[7]), .Z(n303) );
  CLKBUF_X3 U275 ( .A(a[5]), .Z(n255) );
  NAND2_X1 U276 ( .A1(n264), .A2(n240), .ZN(n304) );
  NAND2_X1 U277 ( .A1(n264), .A2(n240), .ZN(n260) );
  BUF_X1 U278 ( .A(n70), .Z(n305) );
  XOR2_X1 U279 ( .A(n253), .B(b[7]), .Z(n221) );
  BUF_X1 U280 ( .A(n246), .Z(n306) );
  BUF_X1 U281 ( .A(n262), .Z(n246) );
  NOR2_X1 U282 ( .A1(n113), .A2(n116), .ZN(n307) );
  NOR2_X1 U283 ( .A1(n113), .A2(n116), .ZN(n53) );
  CLKBUF_X1 U284 ( .A(n259), .Z(n308) );
  CLKBUF_X1 U285 ( .A(n61), .Z(n309) );
  INV_X1 U286 ( .A(n95), .ZN(n310) );
  OR2_X2 U287 ( .A1(n311), .A2(a[0]), .ZN(n261) );
  XNOR2_X1 U288 ( .A(a[1]), .B(a[0]), .ZN(n311) );
  CLKBUF_X1 U289 ( .A(n21), .Z(n312) );
  OAI21_X1 U290 ( .B1(n307), .B2(n57), .A(n54), .ZN(n314) );
  OR2_X1 U291 ( .A1(n56), .A2(n307), .ZN(n315) );
  OAI22_X1 U292 ( .A1(n332), .A2(n199), .B1(n198), .B2(n306), .ZN(n316) );
  NOR2_X1 U293 ( .A1(n123), .A2(n128), .ZN(n317) );
  NOR2_X1 U294 ( .A1(n123), .A2(n128), .ZN(n61) );
  OAI21_X1 U295 ( .B1(n68), .B2(n319), .A(n69), .ZN(n318) );
  BUF_X2 U296 ( .A(n264), .Z(n248) );
  AOI21_X1 U297 ( .B1(n330), .B2(n75), .A(n72), .ZN(n319) );
  OAI21_X2 U298 ( .B1(n76), .B2(n78), .A(n77), .ZN(n75) );
  OAI21_X1 U299 ( .B1(n70), .B2(n68), .A(n69), .ZN(n320) );
  CLKBUF_X1 U300 ( .A(n306), .Z(n321) );
  XNOR2_X1 U301 ( .A(n325), .B(n322), .ZN(product[9]) );
  AND2_X1 U302 ( .A1(n95), .A2(n57), .ZN(n322) );
  OAI21_X1 U303 ( .B1(n317), .B2(n65), .A(n62), .ZN(n323) );
  BUF_X2 U304 ( .A(n303), .Z(n324) );
  AOI21_X1 U305 ( .B1(n320), .B2(n59), .A(n323), .ZN(n325) );
  AOI21_X1 U306 ( .B1(n59), .B2(n320), .A(n323), .ZN(n326) );
  AOI21_X1 U307 ( .B1(n318), .B2(n59), .A(n60), .ZN(n58) );
  OR2_X1 U308 ( .A1(n39), .A2(n30), .ZN(n327) );
  OR2_X1 U309 ( .A1(n162), .A2(n104), .ZN(n328) );
  OR2_X1 U310 ( .A1(n192), .A2(n185), .ZN(n329) );
  OR2_X1 U311 ( .A1(n139), .A2(n142), .ZN(n330) );
  NAND2_X1 U312 ( .A1(n129), .A2(n134), .ZN(n65) );
  BUF_X1 U313 ( .A(n258), .Z(n332) );
  OR2_X1 U314 ( .A1(n193), .A2(n161), .ZN(n331) );
  NAND2_X1 U315 ( .A1(n328), .A2(n20), .ZN(n2) );
  INV_X1 U316 ( .A(n20), .ZN(n18) );
  NAND2_X1 U317 ( .A1(n91), .A2(n31), .ZN(n3) );
  NAND2_X1 U318 ( .A1(n106), .A2(n105), .ZN(n31) );
  INV_X1 U319 ( .A(n149), .ZN(n168) );
  NOR2_X1 U320 ( .A1(n109), .A2(n112), .ZN(n46) );
  NAND2_X1 U321 ( .A1(n92), .A2(n40), .ZN(n4) );
  OAI21_X1 U322 ( .B1(n53), .B2(n57), .A(n54), .ZN(n52) );
  NOR2_X1 U323 ( .A1(n46), .A2(n39), .ZN(n35) );
  NAND2_X1 U324 ( .A1(n44), .A2(n47), .ZN(n5) );
  INV_X1 U325 ( .A(n47), .ZN(n45) );
  NAND2_X1 U326 ( .A1(n109), .A2(n112), .ZN(n47) );
  NOR2_X1 U327 ( .A1(n56), .A2(n53), .ZN(n51) );
  OAI21_X1 U328 ( .B1(n47), .B2(n39), .A(n40), .ZN(n36) );
  NOR2_X1 U329 ( .A1(n46), .A2(n327), .ZN(n24) );
  OAI21_X1 U330 ( .B1(n327), .B2(n47), .A(n27), .ZN(n25) );
  NAND2_X1 U331 ( .A1(n108), .A2(n107), .ZN(n40) );
  AND2_X1 U332 ( .A1(n237), .A2(n150), .ZN(n176) );
  OR2_X1 U333 ( .A1(b[0]), .A2(n151), .ZN(n211) );
  OR2_X1 U334 ( .A1(b[0]), .A2(n253), .ZN(n229) );
  OR2_X1 U335 ( .A1(b[0]), .A2(n154), .ZN(n220) );
  BUF_X2 U336 ( .A(a[3]), .Z(n256) );
  INV_X1 U337 ( .A(n255), .ZN(n151) );
  XNOR2_X1 U338 ( .A(n255), .B(b[5]), .ZN(n205) );
  XNOR2_X1 U339 ( .A(n255), .B(b[6]), .ZN(n204) );
  XNOR2_X1 U340 ( .A(n255), .B(b[0]), .ZN(n210) );
  XNOR2_X1 U341 ( .A(n255), .B(b[2]), .ZN(n208) );
  XNOR2_X1 U342 ( .A(n255), .B(b[7]), .ZN(n203) );
  XNOR2_X1 U343 ( .A(n255), .B(b[4]), .ZN(n206) );
  INV_X1 U344 ( .A(n30), .ZN(n91) );
  NOR2_X1 U345 ( .A1(n106), .A2(n105), .ZN(n30) );
  XNOR2_X1 U346 ( .A(n255), .B(b[3]), .ZN(n207) );
  NAND2_X1 U347 ( .A1(n300), .A2(n239), .ZN(n259) );
  NAND2_X1 U348 ( .A1(n135), .A2(n138), .ZN(n69) );
  INV_X1 U349 ( .A(n247), .ZN(n150) );
  XNOR2_X1 U350 ( .A(b[1]), .B(n255), .ZN(n209) );
  NAND2_X1 U351 ( .A1(n262), .A2(n238), .ZN(n258) );
  XNOR2_X1 U352 ( .A(n333), .B(b[6]), .ZN(n222) );
  XNOR2_X1 U353 ( .A(n333), .B(b[0]), .ZN(n228) );
  XNOR2_X1 U354 ( .A(n333), .B(b[5]), .ZN(n223) );
  XNOR2_X1 U355 ( .A(n333), .B(b[1]), .ZN(n227) );
  OAI22_X1 U356 ( .A1(n308), .A2(n204), .B1(n247), .B2(n203), .ZN(n169) );
  OAI22_X1 U357 ( .A1(n259), .A2(n205), .B1(n247), .B2(n204), .ZN(n170) );
  OAI22_X1 U358 ( .A1(n259), .A2(n207), .B1(n247), .B2(n206), .ZN(n172) );
  OAI22_X1 U359 ( .A1(n259), .A2(n209), .B1(n247), .B2(n208), .ZN(n174) );
  AOI21_X1 U360 ( .B1(n308), .B2(n247), .A(n203), .ZN(n149) );
  OAI22_X1 U361 ( .A1(n259), .A2(n208), .B1(n247), .B2(n207), .ZN(n173) );
  OAI22_X1 U362 ( .A1(n259), .A2(n210), .B1(n209), .B2(n247), .ZN(n175) );
  NAND2_X1 U363 ( .A1(n96), .A2(n62), .ZN(n8) );
  NAND2_X1 U364 ( .A1(n51), .A2(n44), .ZN(n42) );
  NAND2_X1 U365 ( .A1(n51), .A2(n35), .ZN(n33) );
  NAND2_X1 U366 ( .A1(n51), .A2(n24), .ZN(n22) );
  INV_X1 U367 ( .A(n314), .ZN(n50) );
  AOI21_X1 U368 ( .B1(n314), .B2(n35), .A(n36), .ZN(n34) );
  AOI21_X1 U369 ( .B1(n52), .B2(n24), .A(n25), .ZN(n23) );
  NAND2_X1 U370 ( .A1(n94), .A2(n54), .ZN(n6) );
  OAI22_X1 U371 ( .A1(n261), .A2(n223), .B1(n222), .B2(n265), .ZN(n188) );
  OAI22_X1 U372 ( .A1(n261), .A2(n226), .B1(n225), .B2(n265), .ZN(n191) );
  OAI22_X1 U373 ( .A1(n261), .A2(n224), .B1(n223), .B2(n265), .ZN(n189) );
  OAI22_X1 U374 ( .A1(n261), .A2(n225), .B1(n224), .B2(n265), .ZN(n190) );
  OAI22_X1 U375 ( .A1(n261), .A2(n227), .B1(n226), .B2(n265), .ZN(n192) );
  OAI22_X1 U376 ( .A1(n261), .A2(n222), .B1(n221), .B2(n265), .ZN(n187) );
  OAI22_X1 U377 ( .A1(n261), .A2(n253), .B1(n229), .B2(n265), .ZN(n161) );
  AOI21_X1 U378 ( .B1(n261), .B2(n265), .A(n221), .ZN(n155) );
  INV_X1 U379 ( .A(n56), .ZN(n95) );
  NAND2_X1 U380 ( .A1(n145), .A2(n191), .ZN(n81) );
  NOR2_X1 U381 ( .A1(n145), .A2(n191), .ZN(n80) );
  NAND2_X1 U382 ( .A1(n192), .A2(n185), .ZN(n86) );
  AOI21_X1 U383 ( .B1(n52), .B2(n44), .A(n45), .ZN(n43) );
  NAND2_X1 U384 ( .A1(n193), .A2(n161), .ZN(n89) );
  OAI22_X1 U385 ( .A1(n261), .A2(n228), .B1(n227), .B2(n265), .ZN(n193) );
  NAND2_X1 U386 ( .A1(n143), .A2(n144), .ZN(n77) );
  NOR2_X1 U387 ( .A1(n143), .A2(n144), .ZN(n76) );
  INV_X1 U388 ( .A(n74), .ZN(n72) );
  INV_X1 U389 ( .A(n29), .ZN(n27) );
  OAI21_X1 U390 ( .B1(n40), .B2(n30), .A(n31), .ZN(n29) );
  BUF_X2 U391 ( .A(a[1]), .Z(n333) );
  INV_X1 U392 ( .A(n86), .ZN(n84) );
  AOI21_X1 U393 ( .B1(n329), .B2(n87), .A(n84), .ZN(n82) );
  INV_X1 U394 ( .A(n248), .ZN(n153) );
  OAI22_X1 U395 ( .A1(n260), .A2(n219), .B1(n248), .B2(n218), .ZN(n184) );
  OAI22_X1 U396 ( .A1(n304), .A2(n218), .B1(n248), .B2(n217), .ZN(n183) );
  OAI22_X1 U397 ( .A1(n260), .A2(n217), .B1(n248), .B2(n216), .ZN(n182) );
  OAI22_X1 U398 ( .A1(n260), .A2(n216), .B1(n248), .B2(n215), .ZN(n181) );
  OAI22_X1 U399 ( .A1(n304), .A2(n215), .B1(n248), .B2(n214), .ZN(n180) );
  OAI22_X1 U400 ( .A1(n304), .A2(n214), .B1(n248), .B2(n213), .ZN(n179) );
  OAI22_X1 U401 ( .A1(n304), .A2(n213), .B1(n248), .B2(n212), .ZN(n178) );
  AOI21_X1 U402 ( .B1(n304), .B2(n248), .A(n212), .ZN(n152) );
  OAI22_X1 U403 ( .A1(n260), .A2(n252), .B1(n220), .B2(n248), .ZN(n160) );
  AND2_X1 U404 ( .A1(n237), .A2(n153), .ZN(n185) );
  INV_X1 U405 ( .A(n152), .ZN(n177) );
  INV_X1 U406 ( .A(n39), .ZN(n92) );
  NOR2_X1 U407 ( .A1(n108), .A2(n107), .ZN(n39) );
  NAND2_X1 U408 ( .A1(n139), .A2(n142), .ZN(n74) );
  INV_X1 U409 ( .A(n307), .ZN(n94) );
  NAND2_X1 U410 ( .A1(n113), .A2(n116), .ZN(n54) );
  INV_X1 U411 ( .A(n80), .ZN(n101) );
  INV_X1 U412 ( .A(n46), .ZN(n44) );
  NOR2_X1 U413 ( .A1(n117), .A2(n122), .ZN(n56) );
  OAI22_X1 U414 ( .A1(n259), .A2(n206), .B1(n247), .B2(n205), .ZN(n171) );
  OR2_X1 U415 ( .A1(b[0]), .A2(n148), .ZN(n202) );
  XOR2_X1 U416 ( .A(a[5]), .B(a[4]), .Z(n239) );
  OAI22_X1 U417 ( .A1(n301), .A2(n195), .B1(n321), .B2(n194), .ZN(n104) );
  INV_X1 U418 ( .A(n79), .ZN(n78) );
  INV_X1 U419 ( .A(n76), .ZN(n100) );
  NAND2_X1 U420 ( .A1(n117), .A2(n122), .ZN(n57) );
  XNOR2_X1 U421 ( .A(a[1]), .B(a[2]), .ZN(n264) );
  XNOR2_X1 U422 ( .A(n333), .B(b[3]), .ZN(n225) );
  XNOR2_X1 U423 ( .A(n333), .B(b[2]), .ZN(n226) );
  XNOR2_X1 U424 ( .A(n333), .B(b[4]), .ZN(n224) );
  INV_X1 U425 ( .A(n309), .ZN(n96) );
  OAI21_X1 U426 ( .B1(n317), .B2(n65), .A(n62), .ZN(n60) );
  XOR2_X1 U427 ( .A(a[3]), .B(a[2]), .Z(n240) );
  NAND2_X1 U428 ( .A1(n123), .A2(n128), .ZN(n62) );
  INV_X1 U429 ( .A(a[1]), .ZN(n253) );
  INV_X1 U430 ( .A(n297), .ZN(n147) );
  OAI22_X1 U431 ( .A1(n258), .A2(n201), .B1(n200), .B2(n246), .ZN(n166) );
  OAI22_X1 U432 ( .A1(n332), .A2(n200), .B1(n306), .B2(n199), .ZN(n165) );
  OAI22_X1 U433 ( .A1(n332), .A2(n198), .B1(n306), .B2(n197), .ZN(n164) );
  OAI22_X1 U434 ( .A1(n301), .A2(n197), .B1(n321), .B2(n196), .ZN(n110) );
  OAI22_X1 U435 ( .A1(n301), .A2(n196), .B1(n321), .B2(n195), .ZN(n163) );
  AOI21_X1 U436 ( .B1(n301), .B2(n321), .A(n194), .ZN(n146) );
  OAI22_X1 U437 ( .A1(n258), .A2(n148), .B1(n202), .B2(n297), .ZN(n158) );
  AND2_X1 U438 ( .A1(b[0]), .A2(n147), .ZN(n167) );
  OR2_X1 U439 ( .A1(n179), .A2(n165), .ZN(n126) );
  XNOR2_X1 U440 ( .A(n179), .B(n165), .ZN(n127) );
  NAND2_X1 U441 ( .A1(n162), .A2(n104), .ZN(n20) );
  INV_X1 U442 ( .A(n104), .ZN(n105) );
  INV_X1 U443 ( .A(n146), .ZN(n162) );
  XNOR2_X1 U444 ( .A(a[4]), .B(a[3]), .ZN(n263) );
  INV_X1 U445 ( .A(n64), .ZN(n97) );
  NOR2_X1 U446 ( .A1(n61), .A2(n64), .ZN(n59) );
  NOR2_X1 U447 ( .A1(n129), .A2(n134), .ZN(n64) );
  XOR2_X1 U448 ( .A(a[7]), .B(a[6]), .Z(n238) );
  NOR2_X1 U449 ( .A1(n135), .A2(n138), .ZN(n68) );
  INV_X1 U450 ( .A(n155), .ZN(n186) );
  INV_X1 U451 ( .A(n89), .ZN(n87) );
  OAI22_X1 U452 ( .A1(n308), .A2(n151), .B1(n211), .B2(n247), .ZN(n159) );
  INV_X1 U453 ( .A(n313), .ZN(n252) );
  XNOR2_X1 U454 ( .A(n313), .B(b[0]), .ZN(n219) );
  INV_X1 U455 ( .A(n256), .ZN(n154) );
  XNOR2_X1 U456 ( .A(b[1]), .B(n256), .ZN(n218) );
  XNOR2_X1 U457 ( .A(n313), .B(b[6]), .ZN(n213) );
  XNOR2_X1 U458 ( .A(n313), .B(b[7]), .ZN(n212) );
  XNOR2_X1 U459 ( .A(n313), .B(b[2]), .ZN(n217) );
  XNOR2_X1 U460 ( .A(n313), .B(b[5]), .ZN(n214) );
  XNOR2_X1 U461 ( .A(n256), .B(b[4]), .ZN(n215) );
  XNOR2_X1 U462 ( .A(n256), .B(b[3]), .ZN(n216) );
  INV_X1 U463 ( .A(n110), .ZN(n111) );
  OAI21_X1 U464 ( .B1(n80), .B2(n82), .A(n81), .ZN(n79) );
  AOI21_X1 U465 ( .B1(n330), .B2(n75), .A(n72), .ZN(n70) );
  XNOR2_X1 U466 ( .A(b[2]), .B(n324), .ZN(n199) );
  XNOR2_X1 U467 ( .A(b[6]), .B(n324), .ZN(n195) );
  XNOR2_X1 U468 ( .A(n302), .B(b[0]), .ZN(n201) );
  XNOR2_X1 U469 ( .A(b[7]), .B(n324), .ZN(n194) );
  XNOR2_X1 U470 ( .A(n303), .B(b[1]), .ZN(n200) );
  INV_X1 U471 ( .A(a[7]), .ZN(n148) );
  XNOR2_X1 U472 ( .A(b[4]), .B(n324), .ZN(n197) );
  XNOR2_X1 U473 ( .A(b[5]), .B(n324), .ZN(n196) );
  INV_X1 U474 ( .A(a[0]), .ZN(n265) );
  INV_X1 U475 ( .A(n316), .ZN(n121) );
  XNOR2_X1 U476 ( .A(a[5]), .B(a[6]), .ZN(n262) );
  AND2_X1 U477 ( .A1(n237), .A2(n156), .ZN(product[0]) );
  INV_X1 U478 ( .A(n265), .ZN(n156) );
  XNOR2_X1 U479 ( .A(n14), .B(n87), .ZN(product[2]) );
  NAND2_X1 U480 ( .A1(n329), .A2(n86), .ZN(n14) );
  XOR2_X1 U481 ( .A(n13), .B(n82), .Z(product[3]) );
  NAND2_X1 U482 ( .A1(n101), .A2(n81), .ZN(n13) );
  XOR2_X1 U483 ( .A(n12), .B(n78), .Z(product[4]) );
  NAND2_X1 U484 ( .A1(n100), .A2(n77), .ZN(n12) );
  XNOR2_X1 U485 ( .A(n11), .B(n75), .ZN(product[5]) );
  NAND2_X1 U486 ( .A1(n330), .A2(n74), .ZN(n11) );
  INV_X1 U487 ( .A(n318), .ZN(n66) );
  AOI21_X1 U488 ( .B1(n312), .B2(n328), .A(n18), .ZN(n16) );
  XNOR2_X1 U489 ( .A(n63), .B(n8), .ZN(product[8]) );
  OAI21_X1 U490 ( .B1(n66), .B2(n64), .A(n65), .ZN(n63) );
  XNOR2_X1 U491 ( .A(n32), .B(n3), .ZN(product[13]) );
  OAI21_X1 U492 ( .B1(n325), .B2(n33), .A(n34), .ZN(n32) );
  XNOR2_X1 U493 ( .A(n21), .B(n2), .ZN(product[14]) );
  OAI21_X1 U494 ( .B1(n326), .B2(n22), .A(n23), .ZN(n21) );
  XNOR2_X1 U495 ( .A(n41), .B(n4), .ZN(product[12]) );
  OAI21_X1 U496 ( .B1(n326), .B2(n42), .A(n43), .ZN(n41) );
  XNOR2_X1 U497 ( .A(n48), .B(n5), .ZN(product[11]) );
  OAI21_X1 U498 ( .B1(n325), .B2(n315), .A(n50), .ZN(n48) );
  XNOR2_X1 U499 ( .A(n55), .B(n6), .ZN(product[10]) );
  OAI21_X1 U500 ( .B1(n58), .B2(n310), .A(n57), .ZN(n55) );
endmodule


module part2_mac_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n58, n60, n61, n62, n63,
         n64, n66, n68, n69, n70, n71, n72, n74, n76, n77, n78, n80, n82, n83,
         n84, n86, n88, n89, n91, n95, n96, n98, n99, n101, n103, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n186,
         n187;

  NOR2_X1 U127 ( .A1(B[14]), .A2(A[14]), .ZN(n162) );
  CLKBUF_X1 U128 ( .A(n64), .Z(n163) );
  INV_X1 U129 ( .A(n96), .ZN(n164) );
  AND2_X1 U130 ( .A1(n178), .A2(n179), .ZN(n165) );
  AND2_X1 U131 ( .A1(n178), .A2(n179), .ZN(n166) );
  AND2_X1 U132 ( .A1(n178), .A2(n179), .ZN(n44) );
  CLKBUF_X1 U133 ( .A(B[14]), .Z(n167) );
  NOR2_X1 U134 ( .A1(B[12]), .A2(A[12]), .ZN(n168) );
  NOR2_X1 U135 ( .A1(B[12]), .A2(A[12]), .ZN(n39) );
  CLKBUF_X1 U136 ( .A(n53), .Z(n169) );
  OR2_X1 U137 ( .A1(n168), .A2(n42), .ZN(n170) );
  INV_X1 U138 ( .A(n98), .ZN(n171) );
  OAI21_X1 U139 ( .B1(n39), .B2(n43), .A(n40), .ZN(n172) );
  OR2_X1 U140 ( .A1(n167), .A2(A[14]), .ZN(n173) );
  AOI21_X1 U141 ( .B1(n181), .B2(n77), .A(n74), .ZN(n174) );
  CLKBUF_X1 U142 ( .A(n61), .Z(n175) );
  OR2_X1 U143 ( .A1(B[10]), .A2(A[10]), .ZN(n176) );
  AOI21_X1 U144 ( .B1(n180), .B2(n175), .A(n58), .ZN(n177) );
  OAI21_X1 U145 ( .B1(n56), .B2(n54), .A(n55), .ZN(n53) );
  NAND2_X1 U146 ( .A1(n53), .A2(n45), .ZN(n178) );
  INV_X1 U147 ( .A(n46), .ZN(n179) );
  NOR2_X1 U148 ( .A1(B[14]), .A2(A[14]), .ZN(n25) );
  NOR2_X1 U149 ( .A1(B[10]), .A2(A[10]), .ZN(n47) );
  OR2_X1 U150 ( .A1(B[7]), .A2(A[7]), .ZN(n180) );
  OR2_X1 U151 ( .A1(B[3]), .A2(A[3]), .ZN(n181) );
  OR2_X1 U152 ( .A1(B[5]), .A2(A[5]), .ZN(n182) );
  OR2_X1 U153 ( .A1(B[1]), .A2(A[1]), .ZN(n183) );
  OR2_X1 U154 ( .A1(B[2]), .A2(A[2]), .ZN(n184) );
  AND2_X1 U155 ( .A1(n187), .A2(n91), .ZN(SUM[0]) );
  OR2_X1 U156 ( .A1(B[15]), .A2(A[15]), .ZN(n186) );
  OR2_X1 U157 ( .A1(B[0]), .A2(A[0]), .ZN(n187) );
  INV_X1 U158 ( .A(n91), .ZN(n89) );
  NAND2_X1 U159 ( .A1(B[0]), .A2(A[0]), .ZN(n91) );
  NAND2_X1 U160 ( .A1(B[15]), .A2(A[15]), .ZN(n19) );
  NAND2_X1 U161 ( .A1(n186), .A2(n19), .ZN(n2) );
  NOR2_X1 U162 ( .A1(B[13]), .A2(A[13]), .ZN(n32) );
  NAND2_X1 U163 ( .A1(n99), .A2(n55), .ZN(n9) );
  NAND2_X1 U164 ( .A1(B[8]), .A2(A[8]), .ZN(n55) );
  NAND2_X1 U165 ( .A1(n98), .A2(n51), .ZN(n8) );
  NAND2_X1 U166 ( .A1(B[4]), .A2(A[4]), .ZN(n71) );
  NAND2_X1 U167 ( .A1(B[6]), .A2(A[6]), .ZN(n63) );
  NAND2_X1 U168 ( .A1(n95), .A2(n40), .ZN(n5) );
  NAND2_X1 U169 ( .A1(n30), .A2(n33), .ZN(n4) );
  NAND2_X1 U170 ( .A1(B[2]), .A2(A[2]), .ZN(n82) );
  NAND2_X1 U171 ( .A1(n173), .A2(n26), .ZN(n3) );
  NOR2_X1 U172 ( .A1(n168), .A2(n42), .ZN(n37) );
  NAND2_X1 U173 ( .A1(B[13]), .A2(A[13]), .ZN(n33) );
  NAND2_X1 U174 ( .A1(B[14]), .A2(A[14]), .ZN(n26) );
  NAND2_X1 U175 ( .A1(n176), .A2(n48), .ZN(n7) );
  NAND2_X1 U176 ( .A1(B[12]), .A2(A[12]), .ZN(n40) );
  NAND2_X1 U177 ( .A1(B[1]), .A2(A[1]), .ZN(n88) );
  INV_X1 U178 ( .A(n33), .ZN(n31) );
  NAND2_X1 U179 ( .A1(n37), .A2(n30), .ZN(n28) );
  INV_X1 U180 ( .A(n70), .ZN(n103) );
  NOR2_X1 U181 ( .A1(B[4]), .A2(A[4]), .ZN(n70) );
  INV_X1 U182 ( .A(n172), .ZN(n36) );
  NAND2_X1 U183 ( .A1(B[10]), .A2(A[10]), .ZN(n48) );
  NAND2_X1 U184 ( .A1(B[9]), .A2(A[9]), .ZN(n51) );
  INV_X1 U185 ( .A(n62), .ZN(n101) );
  NOR2_X1 U186 ( .A1(B[6]), .A2(A[6]), .ZN(n62) );
  OAI21_X1 U187 ( .B1(n39), .B2(n43), .A(n40), .ZN(n38) );
  AOI21_X1 U188 ( .B1(n172), .B2(n30), .A(n31), .ZN(n29) );
  INV_X1 U189 ( .A(n76), .ZN(n74) );
  NAND2_X1 U190 ( .A1(B[3]), .A2(A[3]), .ZN(n76) );
  INV_X1 U191 ( .A(n88), .ZN(n86) );
  INV_X1 U192 ( .A(n82), .ZN(n80) );
  INV_X1 U193 ( .A(n68), .ZN(n66) );
  NAND2_X1 U194 ( .A1(B[5]), .A2(A[5]), .ZN(n68) );
  NAND2_X1 U195 ( .A1(n23), .A2(n37), .ZN(n21) );
  INV_X1 U196 ( .A(n60), .ZN(n58) );
  NAND2_X1 U197 ( .A1(B[7]), .A2(A[7]), .ZN(n60) );
  OAI21_X1 U198 ( .B1(n25), .B2(n33), .A(n26), .ZN(n24) );
  NOR2_X1 U199 ( .A1(n162), .A2(n32), .ZN(n23) );
  NAND2_X1 U200 ( .A1(n96), .A2(n43), .ZN(n6) );
  NAND2_X1 U201 ( .A1(B[11]), .A2(A[11]), .ZN(n43) );
  AOI21_X1 U202 ( .B1(n183), .B2(n89), .A(n86), .ZN(n84) );
  AOI21_X1 U203 ( .B1(n23), .B2(n38), .A(n24), .ZN(n22) );
  INV_X1 U204 ( .A(n54), .ZN(n99) );
  NOR2_X1 U205 ( .A1(B[8]), .A2(A[8]), .ZN(n54) );
  INV_X1 U206 ( .A(n84), .ZN(n83) );
  AOI21_X1 U207 ( .B1(n184), .B2(n83), .A(n80), .ZN(n78) );
  AOI21_X1 U208 ( .B1(n181), .B2(n77), .A(n74), .ZN(n72) );
  INV_X1 U209 ( .A(n78), .ZN(n77) );
  INV_X1 U210 ( .A(n50), .ZN(n98) );
  NOR2_X1 U211 ( .A1(A[9]), .A2(B[9]), .ZN(n50) );
  INV_X1 U212 ( .A(n168), .ZN(n95) );
  OAI21_X1 U213 ( .B1(n47), .B2(n51), .A(n48), .ZN(n46) );
  NOR2_X1 U214 ( .A1(n47), .A2(n50), .ZN(n45) );
  INV_X1 U215 ( .A(n32), .ZN(n30) );
  INV_X1 U216 ( .A(n42), .ZN(n96) );
  NOR2_X1 U217 ( .A1(B[11]), .A2(A[11]), .ZN(n42) );
  AOI21_X1 U218 ( .B1(n180), .B2(n61), .A(n58), .ZN(n56) );
  XNOR2_X1 U219 ( .A(n16), .B(n89), .ZN(SUM[1]) );
  NAND2_X1 U220 ( .A1(n183), .A2(n88), .ZN(n16) );
  XNOR2_X1 U221 ( .A(n15), .B(n83), .ZN(SUM[2]) );
  NAND2_X1 U222 ( .A1(n184), .A2(n82), .ZN(n15) );
  XNOR2_X1 U223 ( .A(n14), .B(n77), .ZN(SUM[3]) );
  NAND2_X1 U224 ( .A1(n181), .A2(n76), .ZN(n14) );
  OAI21_X1 U225 ( .B1(n70), .B2(n72), .A(n71), .ZN(n69) );
  XOR2_X1 U226 ( .A(n13), .B(n174), .Z(SUM[4]) );
  NAND2_X1 U227 ( .A1(n103), .A2(n71), .ZN(n13) );
  XNOR2_X1 U228 ( .A(n12), .B(n69), .ZN(SUM[5]) );
  NAND2_X1 U229 ( .A1(n182), .A2(n68), .ZN(n12) );
  XOR2_X1 U230 ( .A(n11), .B(n163), .Z(SUM[6]) );
  AOI21_X1 U231 ( .B1(n182), .B2(n69), .A(n66), .ZN(n64) );
  NAND2_X1 U232 ( .A1(n101), .A2(n63), .ZN(n11) );
  NAND2_X1 U233 ( .A1(n180), .A2(n60), .ZN(n10) );
  XNOR2_X1 U234 ( .A(n10), .B(n175), .ZN(SUM[7]) );
  OAI21_X1 U235 ( .B1(n62), .B2(n64), .A(n63), .ZN(n61) );
  XOR2_X1 U236 ( .A(n9), .B(n177), .Z(SUM[8]) );
  XOR2_X1 U237 ( .A(n8), .B(n52), .Z(SUM[9]) );
  INV_X1 U238 ( .A(n169), .ZN(n52) );
  XNOR2_X1 U239 ( .A(n49), .B(n7), .ZN(SUM[10]) );
  OAI21_X1 U240 ( .B1(n52), .B2(n171), .A(n51), .ZN(n49) );
  XOR2_X1 U241 ( .A(n165), .B(n6), .Z(SUM[11]) );
  XNOR2_X1 U242 ( .A(n34), .B(n4), .ZN(SUM[13]) );
  OAI21_X1 U243 ( .B1(n166), .B2(n170), .A(n36), .ZN(n34) );
  XNOR2_X1 U244 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  OAI21_X1 U245 ( .B1(n166), .B2(n28), .A(n29), .ZN(n27) );
  XNOR2_X1 U246 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  OAI21_X1 U247 ( .B1(n44), .B2(n21), .A(n22), .ZN(n20) );
  XNOR2_X1 U248 ( .A(n41), .B(n5), .ZN(SUM[12]) );
  OAI21_X1 U249 ( .B1(n44), .B2(n164), .A(n43), .ZN(n41) );
endmodule


module part2_mac ( clk, reset, a, b, valid_in, f, valid_out );
  input [7:0] a;
  input [7:0] b;
  output [15:0] f;
  input clk, reset, valid_in;
  output valid_out;
  wire   en_f, N53, N54, n34, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43,
         N42, N41, N40, N39, N38, N37, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83;
  wire   [7:0] ffAOut;
  wire   [7:0] ffBOut;
  wire   [15:0] adderOut;

  DFF_X1 \ffAOut_reg[7]  ( .D(n68), .CK(clk), .Q(ffAOut[7]), .QN(n7) );
  DFF_X1 \ffAOut_reg[6]  ( .D(n69), .CK(clk), .Q(ffAOut[6]), .QN(n3) );
  DFF_X1 \ffAOut_reg[5]  ( .D(n70), .CK(clk), .Q(ffAOut[5]), .QN(n11) );
  DFF_X1 \ffAOut_reg[4]  ( .D(n71), .CK(clk), .Q(ffAOut[4]) );
  DFF_X1 \ffAOut_reg[3]  ( .D(n72), .CK(clk), .Q(ffAOut[3]), .QN(n9) );
  DFF_X1 \ffAOut_reg[2]  ( .D(n73), .CK(clk), .Q(ffAOut[2]) );
  DFF_X1 \ffAOut_reg[1]  ( .D(n74), .CK(clk), .Q(ffAOut[1]), .QN(n1) );
  DFF_X1 \ffAOut_reg[0]  ( .D(n75), .CK(clk), .Q(ffAOut[0]) );
  DFF_X1 \ffBOut_reg[7]  ( .D(n76), .CK(clk), .Q(ffBOut[7]) );
  DFF_X1 \ffBOut_reg[6]  ( .D(n77), .CK(clk), .Q(ffBOut[6]) );
  DFF_X1 \ffBOut_reg[5]  ( .D(n78), .CK(clk), .Q(ffBOut[5]) );
  DFF_X1 \ffBOut_reg[4]  ( .D(n79), .CK(clk), .Q(ffBOut[4]) );
  DFF_X1 \ffBOut_reg[3]  ( .D(n80), .CK(clk), .Q(ffBOut[3]) );
  DFF_X1 \ffBOut_reg[2]  ( .D(n81), .CK(clk), .Q(ffBOut[2]) );
  DFF_X1 \ffBOut_reg[1]  ( .D(n82), .CK(clk), .Q(ffBOut[1]) );
  DFF_X1 \ffBOut_reg[0]  ( .D(n83), .CK(clk), .Q(ffBOut[0]) );
  DFF_X1 en_f_reg ( .D(N53), .CK(clk), .Q(en_f), .QN(n34) );
  DFF_X1 valid_out_reg ( .D(N54), .CK(clk), .Q(valid_out) );
  DFF_X1 \f_reg[15]  ( .D(n52), .CK(clk), .Q(f[15]) );
  DFF_X1 \f_reg[13]  ( .D(n54), .CK(clk), .Q(f[13]) );
  DFF_X1 \f_reg[12]  ( .D(n55), .CK(clk), .Q(f[12]) );
  DFF_X1 \f_reg[10]  ( .D(n57), .CK(clk), .Q(f[10]) );
  DFF_X1 \f_reg[9]  ( .D(n58), .CK(clk), .Q(f[9]) );
  DFF_X1 \f_reg[8]  ( .D(n59), .CK(clk), .Q(f[8]) );
  DFF_X1 \f_reg[7]  ( .D(n60), .CK(clk), .Q(f[7]) );
  DFF_X1 \f_reg[6]  ( .D(n61), .CK(clk), .Q(f[6]) );
  DFF_X1 \f_reg[5]  ( .D(n62), .CK(clk), .Q(f[5]) );
  DFF_X1 \f_reg[4]  ( .D(n63), .CK(clk), .Q(f[4]) );
  DFF_X1 \f_reg[3]  ( .D(n64), .CK(clk), .Q(f[3]) );
  DFF_X1 \f_reg[2]  ( .D(n65), .CK(clk), .Q(f[2]) );
  DFF_X1 \f_reg[1]  ( .D(n66), .CK(clk), .Q(f[1]) );
  DFF_X1 \f_reg[0]  ( .D(n67), .CK(clk), .Q(f[0]) );
  part2_mac_DW_mult_tc_2 mult_35 ( .a(ffAOut), .b(ffBOut), .product({N52, N51, 
        N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37})
         );
  part2_mac_DW01_add_2 add_35 ( .A(f), .B({N52, N51, N50, N49, N48, N47, N46, 
        N45, N44, N43, N42, N41, N40, N39, N38, N37}), .CI(1'b0), .SUM(
        adderOut) );
  DFF_X1 \f_reg[11]  ( .D(n56), .CK(clk), .Q(f[11]) );
  DFF_X1 \f_reg[14]  ( .D(n53), .CK(clk), .Q(f[14]) );
  INV_X1 U3 ( .A(n1), .ZN(n2) );
  INV_X1 U4 ( .A(n3), .ZN(n4) );
  INV_X1 U5 ( .A(n13), .ZN(n50) );
  INV_X1 U6 ( .A(n31), .ZN(n48) );
  AND2_X1 U7 ( .A1(n13), .A2(n30), .ZN(n5) );
  AND2_X1 U8 ( .A1(n31), .A2(n30), .ZN(n6) );
  NOR2_X1 U9 ( .A1(reset), .A2(n34), .ZN(N54) );
  NOR2_X1 U10 ( .A1(reset), .A2(n29), .ZN(N53) );
  INV_X1 U11 ( .A(n7), .ZN(n8) );
  INV_X1 U12 ( .A(n9), .ZN(n10) );
  INV_X1 U13 ( .A(n11), .ZN(n12) );
  OR2_X1 U14 ( .A1(en_f), .A2(reset), .ZN(n13) );
  INV_X1 U15 ( .A(reset), .ZN(n30) );
  AOI22_X1 U16 ( .A1(f[15]), .A2(n50), .B1(adderOut[15]), .B2(n5), .ZN(n14) );
  INV_X1 U17 ( .A(n14), .ZN(n52) );
  AOI22_X1 U18 ( .A1(f[14]), .A2(n50), .B1(adderOut[14]), .B2(n5), .ZN(n15) );
  INV_X1 U19 ( .A(n15), .ZN(n53) );
  AOI22_X1 U20 ( .A1(f[13]), .A2(n50), .B1(adderOut[13]), .B2(n5), .ZN(n16) );
  INV_X1 U21 ( .A(n16), .ZN(n54) );
  AOI22_X1 U22 ( .A1(f[12]), .A2(n50), .B1(adderOut[12]), .B2(n5), .ZN(n17) );
  INV_X1 U23 ( .A(n17), .ZN(n55) );
  AOI22_X1 U24 ( .A1(f[11]), .A2(n50), .B1(adderOut[11]), .B2(n5), .ZN(n18) );
  INV_X1 U25 ( .A(n18), .ZN(n56) );
  AOI22_X1 U26 ( .A1(f[10]), .A2(n50), .B1(adderOut[10]), .B2(n5), .ZN(n19) );
  INV_X1 U27 ( .A(n19), .ZN(n57) );
  AOI22_X1 U28 ( .A1(f[9]), .A2(n50), .B1(adderOut[9]), .B2(n5), .ZN(n20) );
  INV_X1 U29 ( .A(n20), .ZN(n58) );
  AOI22_X1 U30 ( .A1(f[8]), .A2(n50), .B1(adderOut[8]), .B2(n5), .ZN(n21) );
  INV_X1 U31 ( .A(n21), .ZN(n59) );
  AOI22_X1 U32 ( .A1(f[7]), .A2(n50), .B1(adderOut[7]), .B2(n5), .ZN(n22) );
  INV_X1 U33 ( .A(n22), .ZN(n60) );
  AOI22_X1 U34 ( .A1(f[6]), .A2(n50), .B1(adderOut[6]), .B2(n5), .ZN(n23) );
  INV_X1 U35 ( .A(n23), .ZN(n61) );
  AOI22_X1 U36 ( .A1(f[5]), .A2(n50), .B1(adderOut[5]), .B2(n5), .ZN(n24) );
  INV_X1 U37 ( .A(n24), .ZN(n62) );
  AOI22_X1 U38 ( .A1(f[4]), .A2(n50), .B1(adderOut[4]), .B2(n5), .ZN(n25) );
  INV_X1 U39 ( .A(n25), .ZN(n63) );
  AOI22_X1 U40 ( .A1(f[3]), .A2(n50), .B1(adderOut[3]), .B2(n5), .ZN(n26) );
  INV_X1 U41 ( .A(n26), .ZN(n64) );
  AOI22_X1 U42 ( .A1(f[2]), .A2(n50), .B1(adderOut[2]), .B2(n5), .ZN(n27) );
  INV_X1 U43 ( .A(n27), .ZN(n65) );
  AOI22_X1 U44 ( .A1(f[1]), .A2(n50), .B1(adderOut[1]), .B2(n5), .ZN(n28) );
  INV_X1 U45 ( .A(n28), .ZN(n66) );
  INV_X1 U46 ( .A(valid_in), .ZN(n29) );
  NAND2_X1 U47 ( .A1(n30), .A2(n29), .ZN(n31) );
  AOI22_X1 U48 ( .A1(n8), .A2(n48), .B1(a[7]), .B2(n6), .ZN(n32) );
  INV_X1 U49 ( .A(n32), .ZN(n68) );
  AOI22_X1 U50 ( .A1(n4), .A2(n48), .B1(a[6]), .B2(n6), .ZN(n33) );
  INV_X1 U51 ( .A(n33), .ZN(n69) );
  AOI22_X1 U52 ( .A1(n12), .A2(n48), .B1(a[5]), .B2(n6), .ZN(n35) );
  INV_X1 U53 ( .A(n35), .ZN(n70) );
  AOI22_X1 U54 ( .A1(ffAOut[4]), .A2(n48), .B1(a[4]), .B2(n6), .ZN(n36) );
  INV_X1 U55 ( .A(n36), .ZN(n71) );
  AOI22_X1 U56 ( .A1(n10), .A2(n48), .B1(a[3]), .B2(n6), .ZN(n37) );
  INV_X1 U57 ( .A(n37), .ZN(n72) );
  AOI22_X1 U58 ( .A1(ffAOut[2]), .A2(n48), .B1(a[2]), .B2(n6), .ZN(n38) );
  INV_X1 U59 ( .A(n38), .ZN(n73) );
  AOI22_X1 U60 ( .A1(n2), .A2(n48), .B1(a[1]), .B2(n6), .ZN(n39) );
  INV_X1 U61 ( .A(n39), .ZN(n74) );
  AOI22_X1 U62 ( .A1(ffAOut[0]), .A2(n48), .B1(a[0]), .B2(n6), .ZN(n40) );
  INV_X1 U63 ( .A(n40), .ZN(n75) );
  AOI22_X1 U64 ( .A1(ffBOut[7]), .A2(n48), .B1(b[7]), .B2(n6), .ZN(n41) );
  INV_X1 U65 ( .A(n41), .ZN(n76) );
  AOI22_X1 U66 ( .A1(ffBOut[6]), .A2(n48), .B1(b[6]), .B2(n6), .ZN(n42) );
  INV_X1 U67 ( .A(n42), .ZN(n77) );
  AOI22_X1 U68 ( .A1(ffBOut[5]), .A2(n48), .B1(b[5]), .B2(n6), .ZN(n43) );
  INV_X1 U69 ( .A(n43), .ZN(n78) );
  AOI22_X1 U70 ( .A1(ffBOut[4]), .A2(n48), .B1(b[4]), .B2(n6), .ZN(n44) );
  INV_X1 U71 ( .A(n44), .ZN(n79) );
  AOI22_X1 U72 ( .A1(ffBOut[3]), .A2(n48), .B1(b[3]), .B2(n6), .ZN(n45) );
  INV_X1 U73 ( .A(n45), .ZN(n80) );
  AOI22_X1 U74 ( .A1(ffBOut[2]), .A2(n48), .B1(b[2]), .B2(n6), .ZN(n46) );
  INV_X1 U75 ( .A(n46), .ZN(n81) );
  AOI22_X1 U76 ( .A1(ffBOut[1]), .A2(n48), .B1(b[1]), .B2(n6), .ZN(n47) );
  INV_X1 U77 ( .A(n47), .ZN(n82) );
  AOI22_X1 U78 ( .A1(ffBOut[0]), .A2(n48), .B1(b[0]), .B2(n6), .ZN(n49) );
  INV_X1 U79 ( .A(n49), .ZN(n83) );
  AOI22_X1 U80 ( .A1(f[0]), .A2(n50), .B1(adderOut[0]), .B2(n5), .ZN(n51) );
  INV_X1 U81 ( .A(n51), .ZN(n67) );
endmodule


module mvm3_part1 ( clk, reset, s_valid, m_ready, data_in, m_valid, s_ready, 
        data_out );
  input [7:0] data_in;
  output [15:0] data_out;
  input clk, reset, s_valid, m_ready;
  output m_valid, s_ready;
  wire   wr_en_m, wr_en_x, out_valid, store_complete, \out_ptr[0] , \m_ptr[0] ,
         valid_in, clear_mac, N85, N86, N87, N88, N94, N95, N96, N109, N110,
         N131, N0, N1, valid_out, N138, N139, N140, N145, N146, N147, N148,
         N153, N2, N3, N250, N251, N270, N331, n60, n61, n63, n64, n65, n67,
         n73, n74, n76, n77, n79, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n147, n148, n149, n150, n151, n152,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         \div_220/u_div/PartRem[2][2] , \div_220/u_div/PartRem[2][1] ,
         \div_220/u_div/PartRem[1][2] , \div_220/u_div/PartRem[1][1] ,
         \div_220/u_div/SumTmp[2][1] , \div_220/u_div/SumTmp[1][1] ,
         \rem_222/u_div/PartRem[3][2] , \rem_222/u_div/PartRem[3][1] ,
         \rem_222/u_div/PartRem[2][2] , \rem_222/u_div/PartRem[2][1] ,
         \rem_222/u_div/PartRem[1][2] , \rem_222/u_div/PartRem[1][1] ,
         \rem_222/u_div/SumTmp[3][1] , \rem_222/u_div/SumTmp[2][1] ,
         \rem_222/u_div/SumTmp[1][1] , \rem_222/u_div/SumTmp[0][1] ,
         \rem_222/quotient[3] , \rem_213/u_div/PartRem[3][2] ,
         \rem_213/u_div/PartRem[3][1] , \rem_213/u_div/PartRem[2][2] ,
         \rem_213/u_div/PartRem[2][1] , \rem_213/u_div/PartRem[1][2] ,
         \rem_213/u_div/PartRem[1][1] , \rem_213/u_div/SumTmp[3][1] ,
         \rem_213/u_div/SumTmp[2][1] , \rem_213/u_div/SumTmp[1][1] ,
         \rem_213/u_div/SumTmp[0][1] , \rem_213/quotient[3] , n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346;
  wire   [7:0] in_m;
  wire   [3:0] addr_m;
  wire   [7:0] in_x;
  wire   [1:0] addr_x;
  wire   [1:0] state;
  wire   [3:0] in_ptr;
  wire   [3:0] out_ctr;
  wire   [15:0] f;
  wire   [4:2] \r427/carry ;
  wire   [4:2] \r419/carry ;
  wire   [4:2] \r417/carry ;

  DFF_X1 \m_ptr_reg[1]  ( .D(n270), .CK(clk), .QN(n76) );
  DFF_X1 \out_ptr_reg[1]  ( .D(n273), .CK(clk), .QN(n64) );
  DFF_X1 \acc_buff_reg[2][15]  ( .D(n262), .CK(clk), .QN(n83) );
  DFF_X1 \acc_buff_reg[2][14]  ( .D(n261), .CK(clk), .QN(n84) );
  DFF_X1 \acc_buff_reg[2][13]  ( .D(n260), .CK(clk), .QN(n85) );
  DFF_X1 \acc_buff_reg[2][12]  ( .D(n259), .CK(clk), .QN(n86) );
  DFF_X1 \acc_buff_reg[2][11]  ( .D(n258), .CK(clk), .QN(n87) );
  DFF_X1 \acc_buff_reg[2][10]  ( .D(n257), .CK(clk), .QN(n88) );
  DFF_X1 \acc_buff_reg[2][9]  ( .D(n256), .CK(clk), .QN(n89) );
  DFF_X1 \acc_buff_reg[2][8]  ( .D(n255), .CK(clk), .QN(n90) );
  DFF_X1 \acc_buff_reg[2][7]  ( .D(n254), .CK(clk), .QN(n91) );
  DFF_X1 \acc_buff_reg[2][6]  ( .D(n253), .CK(clk), .QN(n92) );
  DFF_X1 \acc_buff_reg[2][5]  ( .D(n252), .CK(clk), .QN(n93) );
  DFF_X1 \acc_buff_reg[2][4]  ( .D(n251), .CK(clk), .QN(n94) );
  DFF_X1 \acc_buff_reg[2][3]  ( .D(n250), .CK(clk), .QN(n95) );
  DFF_X1 \acc_buff_reg[2][2]  ( .D(n249), .CK(clk), .QN(n96) );
  DFF_X1 \acc_buff_reg[2][1]  ( .D(n248), .CK(clk), .QN(n97) );
  DFF_X1 \acc_buff_reg[2][0]  ( .D(n247), .CK(clk), .QN(n98) );
  DFF_X1 \acc_buff_reg[1][15]  ( .D(n246), .CK(clk), .QN(n99) );
  DFF_X1 \acc_buff_reg[1][14]  ( .D(n245), .CK(clk), .QN(n100) );
  DFF_X1 \acc_buff_reg[1][13]  ( .D(n244), .CK(clk), .QN(n101) );
  DFF_X1 \acc_buff_reg[1][12]  ( .D(n243), .CK(clk), .QN(n102) );
  DFF_X1 \acc_buff_reg[1][11]  ( .D(n242), .CK(clk), .QN(n103) );
  DFF_X1 \acc_buff_reg[1][10]  ( .D(n241), .CK(clk), .QN(n104) );
  DFF_X1 \acc_buff_reg[1][9]  ( .D(n240), .CK(clk), .QN(n105) );
  DFF_X1 \acc_buff_reg[1][8]  ( .D(n239), .CK(clk), .QN(n106) );
  DFF_X1 \acc_buff_reg[1][7]  ( .D(n238), .CK(clk), .QN(n107) );
  DFF_X1 \acc_buff_reg[1][6]  ( .D(n237), .CK(clk), .QN(n108) );
  DFF_X1 \acc_buff_reg[1][5]  ( .D(n236), .CK(clk), .QN(n109) );
  DFF_X1 \acc_buff_reg[1][4]  ( .D(n235), .CK(clk), .QN(n110) );
  DFF_X1 \acc_buff_reg[1][3]  ( .D(n234), .CK(clk), .QN(n111) );
  DFF_X1 \acc_buff_reg[1][2]  ( .D(n233), .CK(clk), .QN(n112) );
  DFF_X1 \acc_buff_reg[1][1]  ( .D(n232), .CK(clk), .QN(n113) );
  DFF_X1 \acc_buff_reg[1][0]  ( .D(n231), .CK(clk), .QN(n114) );
  DFF_X1 \acc_buff_reg[0][15]  ( .D(n230), .CK(clk), .QN(n115) );
  DFF_X1 \acc_buff_reg[0][14]  ( .D(n229), .CK(clk), .QN(n116) );
  DFF_X1 \acc_buff_reg[0][13]  ( .D(n228), .CK(clk), .QN(n117) );
  DFF_X1 \acc_buff_reg[0][12]  ( .D(n227), .CK(clk), .QN(n118) );
  DFF_X1 \acc_buff_reg[0][11]  ( .D(n226), .CK(clk), .QN(n119) );
  DFF_X1 \acc_buff_reg[0][10]  ( .D(n225), .CK(clk), .QN(n120) );
  DFF_X1 \acc_buff_reg[0][9]  ( .D(n224), .CK(clk), .QN(n121) );
  DFF_X1 \acc_buff_reg[0][8]  ( .D(n223), .CK(clk), .QN(n122) );
  DFF_X1 \acc_buff_reg[0][7]  ( .D(n222), .CK(clk), .QN(n123) );
  DFF_X1 \acc_buff_reg[0][6]  ( .D(n221), .CK(clk), .QN(n124) );
  DFF_X1 \acc_buff_reg[0][5]  ( .D(n220), .CK(clk), .QN(n125) );
  DFF_X1 \acc_buff_reg[0][4]  ( .D(n219), .CK(clk), .QN(n126) );
  DFF_X1 \acc_buff_reg[0][3]  ( .D(n218), .CK(clk), .QN(n127) );
  DFF_X1 \acc_buff_reg[0][2]  ( .D(n217), .CK(clk), .QN(n128) );
  DFF_X1 \acc_buff_reg[0][1]  ( .D(n216), .CK(clk), .QN(n129) );
  DFF_X1 \acc_buff_reg[0][0]  ( .D(n215), .CK(clk), .QN(n130) );
  NAND2_X2 U23 ( .A1(n150), .A2(n148), .ZN(n149) );
  NAND2_X2 U43 ( .A1(n150), .A2(n154), .ZN(n155) );
  NAND2_X2 U61 ( .A1(n150), .A2(n157), .ZN(n158) );
  NAND3_X1 U200 ( .A1(n297), .A2(n296), .A3(n275), .ZN(n152) );
  NAND3_X1 U201 ( .A1(n275), .A2(n296), .A3(N138), .ZN(n156) );
  NAND3_X1 U202 ( .A1(n275), .A2(n297), .A3(N139), .ZN(n159) );
  NAND3_X1 U203 ( .A1(n162), .A2(n65), .A3(n164), .ZN(n163) );
  NAND3_X1 U204 ( .A1(n147), .A2(n335), .A3(n338), .ZN(n181) );
  NAND3_X1 U205 ( .A1(n164), .A2(n162), .A3(\out_ptr[0] ), .ZN(n205) );
  NAND3_X1 U206 ( .A1(n160), .A2(n189), .A3(n206), .ZN(n162) );
  NAND3_X1 U207 ( .A1(s_ready), .A2(n340), .A3(s_valid), .ZN(n174) );
  memory_WIDTH8_SIZE9_LOGSIZE4 memM ( .clk(clk), .data_in(data_in), .data_out(
        in_m), .addr(addr_m), .wr_en(wr_en_m) );
  memory_WIDTH8_SIZE3_LOGSIZE2 memx ( .clk(clk), .data_in(data_in), .data_out(
        in_x), .addr(addr_x), .wr_en(wr_en_x) );
  part2_mac mac ( .clk(clk), .reset(clear_mac), .a(in_m), .b(in_x), .valid_in(
        valid_in), .f(f), .valid_out(valid_out) );
  MUX2_X1 \div_220/u_div/u_mx_PartRem_0_1_0  ( .A(out_ctr[1]), .B(n299), .S(
        N139), .Z(\div_220/u_div/PartRem[1][1] ) );
  MUX2_X1 \div_220/u_div/u_mx_PartRem_0_1_1  ( .A(
        \div_220/u_div/PartRem[2][1] ), .B(\div_220/u_div/SumTmp[1][1] ), .S(
        N139), .Z(\div_220/u_div/PartRem[1][2] ) );
  MUX2_X1 \div_220/u_div/u_mx_PartRem_0_2_0  ( .A(out_ctr[2]), .B(n298), .S(
        N140), .Z(\div_220/u_div/PartRem[2][1] ) );
  MUX2_X1 \div_220/u_div/u_mx_PartRem_0_2_1  ( .A(out_ctr[3]), .B(
        \div_220/u_div/SumTmp[2][1] ), .S(N140), .Z(
        \div_220/u_div/PartRem[2][2] ) );
  MUX2_X1 \rem_222/u_div/u_mx_PartRem_0_0_0  ( .A(N145), .B(out_ctr[0]), .S(
        n295), .Z(N2) );
  MUX2_X1 \rem_222/u_div/u_mx_PartRem_0_0_1  ( .A(
        \rem_222/u_div/PartRem[1][1] ), .B(\rem_222/u_div/SumTmp[0][1] ), .S(
        n295), .Z(N3) );
  MUX2_X1 \rem_222/u_div/u_mx_PartRem_0_1_0  ( .A(N146), .B(n290), .S(n294), 
        .Z(\rem_222/u_div/PartRem[1][1] ) );
  MUX2_X1 \rem_222/u_div/u_mx_PartRem_0_1_1  ( .A(
        \rem_222/u_div/PartRem[2][1] ), .B(\rem_222/u_div/SumTmp[1][1] ), .S(
        n294), .Z(\rem_222/u_div/PartRem[1][2] ) );
  MUX2_X1 \rem_222/u_div/u_mx_PartRem_0_2_0  ( .A(N147), .B(n291), .S(n293), 
        .Z(\rem_222/u_div/PartRem[2][1] ) );
  MUX2_X1 \rem_222/u_div/u_mx_PartRem_0_2_1  ( .A(
        \rem_222/u_div/PartRem[3][1] ), .B(\rem_222/u_div/SumTmp[2][1] ), .S(
        n293), .Z(\rem_222/u_div/PartRem[2][2] ) );
  MUX2_X1 \rem_222/u_div/u_mx_PartRem_0_3_0  ( .A(N148), .B(n292), .S(
        \rem_222/quotient[3] ), .Z(\rem_222/u_div/PartRem[3][1] ) );
  MUX2_X1 \rem_222/u_div/u_mx_PartRem_0_3_1  ( .A(N153), .B(
        \rem_222/u_div/SumTmp[3][1] ), .S(\rem_222/quotient[3] ), .Z(
        \rem_222/u_div/PartRem[3][2] ) );
  MUX2_X1 \rem_213/u_div/u_mx_PartRem_0_0_0  ( .A(n276), .B(addr_m[0]), .S(
        n286), .Z(N0) );
  MUX2_X1 \rem_213/u_div/u_mx_PartRem_0_0_1  ( .A(
        \rem_213/u_div/PartRem[1][1] ), .B(\rem_213/u_div/SumTmp[0][1] ), .S(
        n286), .Z(N1) );
  MUX2_X1 \rem_213/u_div/u_mx_PartRem_0_1_0  ( .A(N94), .B(n281), .S(n285), 
        .Z(\rem_213/u_div/PartRem[1][1] ) );
  MUX2_X1 \rem_213/u_div/u_mx_PartRem_0_1_1  ( .A(
        \rem_213/u_div/PartRem[2][1] ), .B(\rem_213/u_div/SumTmp[1][1] ), .S(
        n285), .Z(\rem_213/u_div/PartRem[1][2] ) );
  MUX2_X1 \rem_213/u_div/u_mx_PartRem_0_2_0  ( .A(N95), .B(n282), .S(n284), 
        .Z(\rem_213/u_div/PartRem[2][1] ) );
  MUX2_X1 \rem_213/u_div/u_mx_PartRem_0_2_1  ( .A(
        \rem_213/u_div/PartRem[3][1] ), .B(\rem_213/u_div/SumTmp[2][1] ), .S(
        n284), .Z(\rem_213/u_div/PartRem[2][2] ) );
  MUX2_X1 \rem_213/u_div/u_mx_PartRem_0_3_0  ( .A(n277), .B(n283), .S(
        \rem_213/quotient[3] ), .Z(\rem_213/u_div/PartRem[3][1] ) );
  MUX2_X1 \rem_213/u_div/u_mx_PartRem_0_3_1  ( .A(N131), .B(
        \rem_213/u_div/SumTmp[3][1] ), .S(\rem_213/quotient[3] ), .Z(
        \rem_213/u_div/PartRem[3][2] ) );
  HA_X1 \r427/U1_1_1  ( .A(out_ctr[1]), .B(out_ctr[0]), .CO(\r427/carry [2]), 
        .S(N146) );
  HA_X1 \r427/U1_1_2  ( .A(out_ctr[2]), .B(\r427/carry [2]), .CO(
        \r427/carry [3]), .S(N147) );
  HA_X1 \r427/U1_1_3  ( .A(out_ctr[3]), .B(\r427/carry [3]), .CO(N153), .S(
        N148) );
  HA_X1 \r419/U1_1_1  ( .A(addr_m[1]), .B(addr_m[0]), .CO(\r419/carry [2]), 
        .S(N94) );
  HA_X1 \r419/U1_1_2  ( .A(addr_m[2]), .B(\r419/carry [2]), .CO(
        \r419/carry [3]), .S(N95) );
  HA_X1 \r419/U1_1_3  ( .A(addr_m[3]), .B(\r419/carry [3]), .CO(N131), .S(N96)
         );
  HA_X1 \r417/U1_1_1  ( .A(in_ptr[1]), .B(in_ptr[0]), .CO(\r417/carry [2]), 
        .S(N86) );
  HA_X1 \r417/U1_1_2  ( .A(in_ptr[2]), .B(\r417/carry [2]), .CO(
        \r417/carry [3]), .S(N87) );
  HA_X1 \r417/U1_1_3  ( .A(in_ptr[3]), .B(\r417/carry [3]), .CO(N109), .S(N88)
         );
  DFF_X1 \state_reg[1]  ( .D(n274), .CK(clk), .Q(state[1]), .QN(n60) );
  DFF_X1 \out_ptr_reg[0]  ( .D(n263), .CK(clk), .Q(\out_ptr[0] ), .QN(n65) );
  DFF_X1 \m_ptr_reg[0]  ( .D(n269), .CK(clk), .Q(\m_ptr[0] ), .QN(n77) );
  DFF_X1 out_valid_reg ( .D(n272), .CK(clk), .Q(out_valid), .QN(n63) );
  DFF_X1 \state_reg[0]  ( .D(n271), .CK(clk), .Q(state[0]), .QN(n61) );
  DFF_X1 \in_ptr_reg[1]  ( .D(n266), .CK(clk), .Q(in_ptr[1]), .QN(n74) );
  DFF_X1 \in_ptr_reg[0]  ( .D(n267), .CK(clk), .Q(in_ptr[0]), .QN(N85) );
  DFF_X1 \in_ptr_reg[3]  ( .D(n268), .CK(clk), .Q(in_ptr[3]), .QN(n67) );
  DFF_X1 \in_ptr_reg[2]  ( .D(n265), .CK(clk), .Q(in_ptr[2]), .QN(n73) );
  DFF_X1 \out_ctr_reg[3]  ( .D(n305), .CK(clk), .Q(out_ctr[3]), .QN(n79) );
  DFF_X1 \out_ctr_reg[0]  ( .D(n306), .CK(clk), .Q(out_ctr[0]), .QN(N145) );
  DFF_X1 \addr_m_reg[0]  ( .D(n325), .CK(clk), .Q(addr_m[0]), .QN(n276) );
  DFF_X1 \addr_x_reg[1]  ( .D(n264), .CK(clk), .Q(addr_x[1]), .QN(n82) );
  DFF_X1 clear_mac_reg ( .D(n330), .CK(clk), .Q(clear_mac) );
  DFF_X1 m_valid_reg ( .D(N250), .CK(clk), .Q(m_valid) );
  DFF_X1 valid_in_reg ( .D(N270), .CK(clk), .Q(valid_in) );
  DFF_X1 s_ready_reg ( .D(N251), .CK(clk), .Q(s_ready) );
  DFF_X1 \out_ctr_reg[2]  ( .D(n308), .CK(clk), .Q(out_ctr[2]), .QN(n298) );
  DFF_X1 \out_ctr_reg[1]  ( .D(n307), .CK(clk), .Q(out_ctr[1]), .QN(n299) );
  DFF_X1 \addr_m_reg[3]  ( .D(n328), .CK(clk), .Q(addr_m[3]) );
  DFF_X1 \addr_m_reg[2]  ( .D(n327), .CK(clk), .Q(addr_m[2]) );
  DFF_X1 \addr_m_reg[1]  ( .D(n326), .CK(clk), .Q(addr_m[1]) );
  DFF_X1 store_complete_reg ( .D(N331), .CK(clk), .Q(store_complete) );
  DFF_X1 \addr_x_reg[0]  ( .D(n302), .CK(clk), .Q(addr_x[0]) );
  NOR4_X1 U208 ( .A1(N145), .A2(n79), .A3(out_ctr[1]), .A4(out_ctr[2]), .ZN(
        n201) );
  AND3_X1 U209 ( .A1(n304), .A2(n339), .A3(n346), .ZN(n275) );
  AOI21_X1 U210 ( .B1(n169), .B2(n329), .A(n177), .ZN(n176) );
  INV_X1 U211 ( .A(n277), .ZN(n283) );
  NOR3_X1 U212 ( .A1(n211), .A2(n337), .A3(n333), .ZN(n194) );
  INV_X1 U213 ( .A(n151), .ZN(n333) );
  AOI21_X1 U214 ( .B1(n161), .B2(n345), .A(n160), .ZN(n211) );
  NAND2_X1 U215 ( .A1(n151), .A2(n152), .ZN(n148) );
  NAND2_X1 U216 ( .A1(n151), .A2(n156), .ZN(n154) );
  NAND2_X1 U217 ( .A1(n151), .A2(n159), .ZN(n157) );
  NOR3_X1 U218 ( .A1(n194), .A2(n201), .A3(n329), .ZN(n193) );
  AOI21_X1 U219 ( .B1(n338), .B2(wr_en_x), .A(n334), .ZN(n166) );
  INV_X1 U220 ( .A(n173), .ZN(n334) );
  NAND4_X1 U221 ( .A1(n174), .A2(n160), .A3(n188), .A4(n189), .ZN(n185) );
  INV_X1 U222 ( .A(n150), .ZN(n329) );
  NOR4_X1 U223 ( .A1(N3), .A2(N2), .A3(n161), .A4(n329), .ZN(N331) );
  OAI21_X1 U224 ( .B1(n191), .B2(n160), .A(n188), .ZN(n184) );
  NOR2_X1 U225 ( .A1(n174), .A2(n147), .ZN(wr_en_x) );
  NAND2_X1 U226 ( .A1(n187), .A2(n185), .ZN(n186) );
  AND2_X1 U227 ( .A1(n173), .A2(n181), .ZN(n177) );
  INV_X1 U228 ( .A(n174), .ZN(n335) );
  NAND2_X1 U229 ( .A1(n187), .A2(n341), .ZN(n169) );
  INV_X1 U230 ( .A(N110), .ZN(n341) );
  INV_X1 U231 ( .A(n204), .ZN(n338) );
  INV_X1 U232 ( .A(n201), .ZN(n345) );
  INV_X1 U233 ( .A(N95), .ZN(n282) );
  INV_X1 U234 ( .A(N94), .ZN(n281) );
  INV_X1 U235 ( .A(N147), .ZN(n291) );
  INV_X1 U236 ( .A(N146), .ZN(n290) );
  INV_X1 U237 ( .A(N148), .ZN(n292) );
  NAND2_X1 U238 ( .A1(n204), .A2(n189), .ZN(n190) );
  NOR2_X1 U239 ( .A1(n191), .A2(n329), .ZN(N270) );
  INV_X1 U240 ( .A(n188), .ZN(n337) );
  INV_X1 U241 ( .A(n183), .ZN(n340) );
  INV_X1 U242 ( .A(n160), .ZN(n339) );
  INV_X1 U243 ( .A(n279), .ZN(n285) );
  INV_X1 U244 ( .A(n278), .ZN(n284) );
  INV_X1 U245 ( .A(n287), .ZN(n293) );
  INV_X1 U246 ( .A(n288), .ZN(n294) );
  INV_X1 U247 ( .A(N140), .ZN(n346) );
  INV_X1 U248 ( .A(n161), .ZN(n304) );
  INV_X1 U249 ( .A(n280), .ZN(n286) );
  INV_X1 U250 ( .A(n289), .ZN(n295) );
  OR2_X1 U251 ( .A1(n340), .A2(n182), .ZN(n199) );
  INV_X1 U252 ( .A(n189), .ZN(n330) );
  NAND2_X1 U253 ( .A1(n65), .A2(n64), .ZN(n212) );
  NOR2_X1 U254 ( .A1(n160), .A2(reset), .ZN(n150) );
  AOI211_X1 U255 ( .C1(n338), .C2(N110), .A(reset), .B(n184), .ZN(n173) );
  NOR3_X1 U256 ( .A1(n166), .A2(addr_x[0]), .A3(n169), .ZN(n170) );
  NOR2_X1 U257 ( .A1(reset), .A2(n338), .ZN(n151) );
  OAI222_X1 U258 ( .A1(n114), .A2(n65), .B1(n130), .B2(n212), .C1(n98), .C2(
        n64), .ZN(data_out[0]) );
  OAI222_X1 U259 ( .A1(n113), .A2(n65), .B1(n129), .B2(n212), .C1(n97), .C2(
        n64), .ZN(data_out[1]) );
  OAI222_X1 U260 ( .A1(n112), .A2(n65), .B1(n128), .B2(n212), .C1(n96), .C2(
        n64), .ZN(data_out[2]) );
  OAI222_X1 U261 ( .A1(n111), .A2(n65), .B1(n127), .B2(n212), .C1(n95), .C2(
        n64), .ZN(data_out[3]) );
  OAI222_X1 U262 ( .A1(n110), .A2(n65), .B1(n126), .B2(n212), .C1(n94), .C2(
        n64), .ZN(data_out[4]) );
  OAI222_X1 U263 ( .A1(n109), .A2(n65), .B1(n125), .B2(n212), .C1(n93), .C2(
        n64), .ZN(data_out[5]) );
  OAI222_X1 U264 ( .A1(n108), .A2(n65), .B1(n124), .B2(n212), .C1(n92), .C2(
        n64), .ZN(data_out[6]) );
  OAI222_X1 U265 ( .A1(n107), .A2(n65), .B1(n123), .B2(n212), .C1(n91), .C2(
        n64), .ZN(data_out[7]) );
  OAI222_X1 U266 ( .A1(n106), .A2(n65), .B1(n122), .B2(n212), .C1(n90), .C2(
        n64), .ZN(data_out[8]) );
  OAI222_X1 U267 ( .A1(n105), .A2(n65), .B1(n121), .B2(n212), .C1(n89), .C2(
        n64), .ZN(data_out[9]) );
  OAI222_X1 U268 ( .A1(n104), .A2(n65), .B1(n120), .B2(n212), .C1(n88), .C2(
        n64), .ZN(data_out[10]) );
  OAI222_X1 U269 ( .A1(n103), .A2(n65), .B1(n119), .B2(n212), .C1(n87), .C2(
        n64), .ZN(data_out[11]) );
  OAI222_X1 U270 ( .A1(n102), .A2(n65), .B1(n118), .B2(n212), .C1(n86), .C2(
        n64), .ZN(data_out[12]) );
  OAI222_X1 U271 ( .A1(n100), .A2(n65), .B1(n116), .B2(n212), .C1(n84), .C2(
        n64), .ZN(data_out[14]) );
  OAI222_X1 U272 ( .A1(n99), .A2(n65), .B1(n115), .B2(n212), .C1(n83), .C2(n64), .ZN(data_out[15]) );
  OAI222_X1 U273 ( .A1(n101), .A2(n65), .B1(n117), .B2(n212), .C1(n85), .C2(
        n64), .ZN(data_out[13]) );
  NOR2_X1 U274 ( .A1(reset), .A2(n208), .ZN(n189) );
  OAI21_X1 U275 ( .B1(n213), .B2(n79), .A(valid_out), .ZN(n161) );
  NOR3_X1 U276 ( .A1(out_ctr[0]), .A2(out_ctr[2]), .A3(out_ctr[1]), .ZN(n213)
         );
  NAND4_X1 U277 ( .A1(m_valid), .A2(m_ready), .A3(n337), .A4(n64), .ZN(n206)
         );
  AOI21_X1 U278 ( .B1(n182), .B2(in_ptr[3]), .A(n183), .ZN(n147) );
  INV_X1 U279 ( .A(n296), .ZN(N139) );
  NOR2_X1 U280 ( .A1(n188), .A2(reset), .ZN(n164) );
  OAI22_X1 U281 ( .A1(n148), .A2(n130), .B1(n149), .B2(n324), .ZN(n215) );
  OAI22_X1 U282 ( .A1(n148), .A2(n129), .B1(n149), .B2(n323), .ZN(n216) );
  OAI22_X1 U283 ( .A1(n148), .A2(n128), .B1(n149), .B2(n322), .ZN(n217) );
  OAI22_X1 U284 ( .A1(n148), .A2(n127), .B1(n149), .B2(n321), .ZN(n218) );
  OAI22_X1 U285 ( .A1(n148), .A2(n126), .B1(n149), .B2(n320), .ZN(n219) );
  OAI22_X1 U286 ( .A1(n148), .A2(n125), .B1(n149), .B2(n319), .ZN(n220) );
  OAI22_X1 U287 ( .A1(n148), .A2(n124), .B1(n149), .B2(n318), .ZN(n221) );
  OAI22_X1 U288 ( .A1(n148), .A2(n123), .B1(n149), .B2(n317), .ZN(n222) );
  OAI22_X1 U289 ( .A1(n148), .A2(n122), .B1(n149), .B2(n316), .ZN(n223) );
  OAI22_X1 U290 ( .A1(n148), .A2(n121), .B1(n149), .B2(n315), .ZN(n224) );
  OAI22_X1 U291 ( .A1(n148), .A2(n120), .B1(n149), .B2(n314), .ZN(n225) );
  OAI22_X1 U292 ( .A1(n148), .A2(n119), .B1(n149), .B2(n313), .ZN(n226) );
  OAI22_X1 U293 ( .A1(n148), .A2(n118), .B1(n149), .B2(n312), .ZN(n227) );
  OAI22_X1 U294 ( .A1(n148), .A2(n116), .B1(n149), .B2(n310), .ZN(n229) );
  OAI22_X1 U295 ( .A1(n148), .A2(n115), .B1(n149), .B2(n309), .ZN(n230) );
  OAI22_X1 U296 ( .A1(n154), .A2(n114), .B1(n324), .B2(n155), .ZN(n231) );
  OAI22_X1 U297 ( .A1(n154), .A2(n113), .B1(n323), .B2(n155), .ZN(n232) );
  OAI22_X1 U298 ( .A1(n154), .A2(n112), .B1(n322), .B2(n155), .ZN(n233) );
  OAI22_X1 U299 ( .A1(n154), .A2(n111), .B1(n321), .B2(n155), .ZN(n234) );
  OAI22_X1 U300 ( .A1(n154), .A2(n110), .B1(n320), .B2(n155), .ZN(n235) );
  OAI22_X1 U301 ( .A1(n154), .A2(n109), .B1(n319), .B2(n155), .ZN(n236) );
  OAI22_X1 U302 ( .A1(n154), .A2(n108), .B1(n318), .B2(n155), .ZN(n237) );
  OAI22_X1 U303 ( .A1(n154), .A2(n107), .B1(n317), .B2(n155), .ZN(n238) );
  OAI22_X1 U304 ( .A1(n154), .A2(n106), .B1(n316), .B2(n155), .ZN(n239) );
  OAI22_X1 U305 ( .A1(n154), .A2(n105), .B1(n315), .B2(n155), .ZN(n240) );
  OAI22_X1 U306 ( .A1(n154), .A2(n104), .B1(n314), .B2(n155), .ZN(n241) );
  OAI22_X1 U307 ( .A1(n154), .A2(n103), .B1(n313), .B2(n155), .ZN(n242) );
  OAI22_X1 U308 ( .A1(n154), .A2(n102), .B1(n312), .B2(n155), .ZN(n243) );
  OAI22_X1 U309 ( .A1(n154), .A2(n100), .B1(n310), .B2(n155), .ZN(n245) );
  OAI22_X1 U310 ( .A1(n154), .A2(n99), .B1(n309), .B2(n155), .ZN(n246) );
  OAI22_X1 U311 ( .A1(n157), .A2(n98), .B1(n324), .B2(n158), .ZN(n247) );
  OAI22_X1 U312 ( .A1(n157), .A2(n97), .B1(n323), .B2(n158), .ZN(n248) );
  OAI22_X1 U313 ( .A1(n157), .A2(n96), .B1(n322), .B2(n158), .ZN(n249) );
  OAI22_X1 U314 ( .A1(n157), .A2(n95), .B1(n321), .B2(n158), .ZN(n250) );
  OAI22_X1 U315 ( .A1(n157), .A2(n94), .B1(n320), .B2(n158), .ZN(n251) );
  OAI22_X1 U316 ( .A1(n157), .A2(n93), .B1(n319), .B2(n158), .ZN(n252) );
  OAI22_X1 U317 ( .A1(n157), .A2(n92), .B1(n318), .B2(n158), .ZN(n253) );
  OAI22_X1 U318 ( .A1(n157), .A2(n91), .B1(n317), .B2(n158), .ZN(n254) );
  OAI22_X1 U319 ( .A1(n157), .A2(n90), .B1(n316), .B2(n158), .ZN(n255) );
  OAI22_X1 U320 ( .A1(n157), .A2(n89), .B1(n315), .B2(n158), .ZN(n256) );
  OAI22_X1 U321 ( .A1(n157), .A2(n88), .B1(n314), .B2(n158), .ZN(n257) );
  OAI22_X1 U322 ( .A1(n157), .A2(n87), .B1(n313), .B2(n158), .ZN(n258) );
  OAI22_X1 U323 ( .A1(n157), .A2(n86), .B1(n312), .B2(n158), .ZN(n259) );
  OAI22_X1 U324 ( .A1(n157), .A2(n84), .B1(n310), .B2(n158), .ZN(n261) );
  OAI22_X1 U325 ( .A1(n157), .A2(n83), .B1(n309), .B2(n158), .ZN(n262) );
  NAND2_X1 U326 ( .A1(state[1]), .A2(state[0]), .ZN(n160) );
  OAI22_X1 U327 ( .A1(n329), .A2(n76), .B1(n329), .B2(n77), .ZN(n270) );
  OAI22_X1 U328 ( .A1(n331), .A2(n63), .B1(n202), .B2(n203), .ZN(n272) );
  AOI22_X1 U329 ( .A1(n164), .A2(n64), .B1(n201), .B2(n150), .ZN(n203) );
  INV_X1 U330 ( .A(n202), .ZN(n331) );
  AOI211_X1 U331 ( .C1(m_ready), .C2(m_valid), .A(n339), .B(n190), .ZN(n202)
         );
  OAI22_X1 U332 ( .A1(n185), .A2(n74), .B1(n186), .B2(n344), .ZN(n266) );
  INV_X1 U333 ( .A(N86), .ZN(n344) );
  OAI22_X1 U334 ( .A1(n185), .A2(N85), .B1(n186), .B2(in_ptr[0]), .ZN(n267) );
  OAI22_X1 U335 ( .A1(n165), .A2(n82), .B1(n166), .B2(n167), .ZN(n264) );
  NOR2_X1 U336 ( .A1(n170), .A2(n166), .ZN(n165) );
  AOI22_X1 U337 ( .A1(n168), .A2(addr_x[0]), .B1(N1), .B2(n150), .ZN(n167) );
  NOR2_X1 U338 ( .A1(addr_x[1]), .A2(n169), .ZN(n168) );
  NOR2_X1 U339 ( .A1(n60), .A2(state[0]), .ZN(n208) );
  OAI22_X1 U340 ( .A1(n73), .A2(n185), .B1(n186), .B2(n343), .ZN(n265) );
  INV_X1 U341 ( .A(N87), .ZN(n343) );
  OAI22_X1 U342 ( .A1(n67), .A2(n185), .B1(n186), .B2(n342), .ZN(n268) );
  INV_X1 U343 ( .A(N88), .ZN(n342) );
  OAI22_X1 U344 ( .A1(\m_ptr[0] ), .A2(n329), .B1(n184), .B2(n190), .ZN(n269)
         );
  OAI22_X1 U345 ( .A1(n61), .A2(n332), .B1(n197), .B2(n198), .ZN(n271) );
  AOI211_X1 U346 ( .C1(n338), .C2(n199), .A(n61), .B(reset), .ZN(n198) );
  INV_X1 U347 ( .A(n197), .ZN(n332) );
  AOI211_X1 U348 ( .C1(n60), .C2(n63), .A(n336), .B(n190), .ZN(n197) );
  NOR2_X1 U349 ( .A1(n67), .A2(n73), .ZN(n183) );
  NOR2_X1 U350 ( .A1(n76), .A2(n77), .ZN(n191) );
  NOR2_X1 U351 ( .A1(n204), .A2(reset), .ZN(n187) );
  NAND2_X1 U352 ( .A1(n61), .A2(n60), .ZN(n188) );
  NAND2_X1 U353 ( .A1(state[0]), .A2(n60), .ZN(n204) );
  INV_X1 U354 ( .A(N109), .ZN(n301) );
  OAI21_X1 U355 ( .B1(n162), .B2(n65), .A(n163), .ZN(n263) );
  OAI21_X1 U356 ( .B1(n162), .B2(n64), .A(n205), .ZN(n273) );
  NAND2_X1 U357 ( .A1(n74), .A2(N85), .ZN(n182) );
  AND3_X1 U358 ( .A1(n147), .A2(s_ready), .A3(s_valid), .ZN(wr_en_m) );
  INV_X1 U359 ( .A(f[10]), .ZN(n314) );
  INV_X1 U360 ( .A(f[12]), .ZN(n312) );
  INV_X1 U361 ( .A(f[14]), .ZN(n310) );
  INV_X1 U362 ( .A(f[0]), .ZN(n324) );
  INV_X1 U363 ( .A(f[1]), .ZN(n323) );
  INV_X1 U364 ( .A(f[2]), .ZN(n322) );
  INV_X1 U365 ( .A(f[3]), .ZN(n321) );
  INV_X1 U366 ( .A(f[4]), .ZN(n320) );
  INV_X1 U367 ( .A(f[5]), .ZN(n319) );
  INV_X1 U368 ( .A(f[6]), .ZN(n318) );
  INV_X1 U369 ( .A(f[7]), .ZN(n317) );
  INV_X1 U370 ( .A(f[8]), .ZN(n316) );
  INV_X1 U371 ( .A(f[9]), .ZN(n315) );
  INV_X1 U372 ( .A(f[15]), .ZN(n309) );
  INV_X1 U373 ( .A(f[11]), .ZN(n313) );
  NOR2_X1 U374 ( .A1(n214), .A2(n169), .ZN(N251) );
  NOR4_X1 U375 ( .A1(n67), .A2(n174), .A3(n74), .A4(N85), .ZN(n214) );
  NOR2_X1 U376 ( .A1(reset), .A2(n207), .ZN(n274) );
  AOI211_X1 U377 ( .C1(state[1]), .C2(n345), .A(n208), .B(n209), .ZN(n207) );
  NOR3_X1 U378 ( .A1(n340), .A2(n204), .A3(n182), .ZN(n209) );
  INV_X1 U379 ( .A(n297), .ZN(N138) );
  INV_X1 U380 ( .A(n200), .ZN(n336) );
  OAI21_X1 U381 ( .B1(n201), .B2(store_complete), .A(state[1]), .ZN(n200) );
  INV_X1 U382 ( .A(n196), .ZN(n306) );
  AOI22_X1 U383 ( .A1(N145), .A2(n193), .B1(n194), .B2(out_ctr[0]), .ZN(n196)
         );
  INV_X1 U384 ( .A(n210), .ZN(n305) );
  AOI22_X1 U385 ( .A1(N148), .A2(n193), .B1(n194), .B2(out_ctr[3]), .ZN(n210)
         );
  INV_X1 U386 ( .A(n178), .ZN(n327) );
  AOI22_X1 U387 ( .A1(N95), .A2(n176), .B1(addr_m[2]), .B2(n177), .ZN(n178) );
  INV_X1 U388 ( .A(n179), .ZN(n326) );
  AOI22_X1 U389 ( .A1(N94), .A2(n176), .B1(addr_m[1]), .B2(n177), .ZN(n179) );
  INV_X1 U390 ( .A(n192), .ZN(n308) );
  AOI22_X1 U391 ( .A1(N147), .A2(n193), .B1(out_ctr[2]), .B2(n194), .ZN(n192)
         );
  INV_X1 U392 ( .A(n195), .ZN(n307) );
  AOI22_X1 U393 ( .A1(N146), .A2(n193), .B1(out_ctr[1]), .B2(n194), .ZN(n195)
         );
  INV_X1 U394 ( .A(n171), .ZN(n302) );
  AOI211_X1 U395 ( .C1(addr_x[0]), .C2(n166), .A(n172), .B(n170), .ZN(n171) );
  NOR3_X1 U396 ( .A1(n329), .A2(n166), .A3(n303), .ZN(n172) );
  INV_X1 U397 ( .A(N0), .ZN(n303) );
  INV_X1 U398 ( .A(n180), .ZN(n325) );
  INV_X1 U399 ( .A(n175), .ZN(n328) );
  AOI22_X1 U400 ( .A1(n277), .A2(n176), .B1(addr_m[3]), .B2(n177), .ZN(n175)
         );
  AND2_X1 U401 ( .A1(n164), .A2(out_valid), .ZN(N250) );
  AOI22_X1 U402 ( .A1(n276), .A2(n176), .B1(addr_m[0]), .B2(n177), .ZN(n180)
         );
  BUF_X2 U403 ( .A(N96), .Z(n277) );
  INV_X1 U404 ( .A(f[13]), .ZN(n311) );
  OAI22_X1 U405 ( .A1(n148), .A2(n117), .B1(n149), .B2(n311), .ZN(n228) );
  OAI22_X1 U406 ( .A1(n154), .A2(n101), .B1(n311), .B2(n155), .ZN(n244) );
  OAI22_X1 U407 ( .A1(n157), .A2(n85), .B1(n311), .B2(n158), .ZN(n260) );
  XOR2_X1 U408 ( .A(n277), .B(N131), .Z(\rem_213/u_div/SumTmp[3][1] ) );
  AND2_X1 U409 ( .A1(n277), .A2(N131), .ZN(\rem_213/quotient[3] ) );
  XOR2_X1 U410 ( .A(N95), .B(\rem_213/u_div/PartRem[3][1] ), .Z(
        \rem_213/u_div/SumTmp[2][1] ) );
  AOI21_X1 U411 ( .B1(N95), .B2(\rem_213/u_div/PartRem[3][1] ), .A(
        \rem_213/u_div/PartRem[3][2] ), .ZN(n278) );
  XOR2_X1 U412 ( .A(N94), .B(\rem_213/u_div/PartRem[2][1] ), .Z(
        \rem_213/u_div/SumTmp[1][1] ) );
  AOI21_X1 U413 ( .B1(N94), .B2(\rem_213/u_div/PartRem[2][1] ), .A(
        \rem_213/u_div/PartRem[2][2] ), .ZN(n279) );
  XOR2_X1 U414 ( .A(n276), .B(\rem_213/u_div/PartRem[1][1] ), .Z(
        \rem_213/u_div/SumTmp[0][1] ) );
  AOI21_X1 U415 ( .B1(n276), .B2(\rem_213/u_div/PartRem[1][1] ), .A(
        \rem_213/u_div/PartRem[1][2] ), .ZN(n280) );
  XOR2_X1 U416 ( .A(N148), .B(N153), .Z(\rem_222/u_div/SumTmp[3][1] ) );
  AND2_X1 U417 ( .A1(N148), .A2(N153), .ZN(\rem_222/quotient[3] ) );
  XOR2_X1 U418 ( .A(N147), .B(\rem_222/u_div/PartRem[3][1] ), .Z(
        \rem_222/u_div/SumTmp[2][1] ) );
  AOI21_X1 U419 ( .B1(N147), .B2(\rem_222/u_div/PartRem[3][1] ), .A(
        \rem_222/u_div/PartRem[3][2] ), .ZN(n287) );
  XOR2_X1 U420 ( .A(N146), .B(\rem_222/u_div/PartRem[2][1] ), .Z(
        \rem_222/u_div/SumTmp[1][1] ) );
  AOI21_X1 U421 ( .B1(N146), .B2(\rem_222/u_div/PartRem[2][1] ), .A(
        \rem_222/u_div/PartRem[2][2] ), .ZN(n288) );
  XOR2_X1 U422 ( .A(N145), .B(\rem_222/u_div/PartRem[1][1] ), .Z(
        \rem_222/u_div/SumTmp[0][1] ) );
  AOI21_X1 U423 ( .B1(N145), .B2(\rem_222/u_div/PartRem[1][1] ), .A(
        \rem_222/u_div/PartRem[1][2] ), .ZN(n289) );
  XOR2_X1 U424 ( .A(out_ctr[2]), .B(out_ctr[3]), .Z(
        \div_220/u_div/SumTmp[2][1] ) );
  AND2_X1 U425 ( .A1(out_ctr[2]), .A2(out_ctr[3]), .ZN(N140) );
  XOR2_X1 U426 ( .A(out_ctr[1]), .B(\div_220/u_div/PartRem[2][1] ), .Z(
        \div_220/u_div/SumTmp[1][1] ) );
  AOI21_X1 U427 ( .B1(out_ctr[1]), .B2(\div_220/u_div/PartRem[2][1] ), .A(
        \div_220/u_div/PartRem[2][2] ), .ZN(n296) );
  AOI21_X1 U428 ( .B1(out_ctr[0]), .B2(\div_220/u_div/PartRem[1][1] ), .A(
        \div_220/u_div/PartRem[1][2] ), .ZN(n297) );
  OAI211_X1 U429 ( .C1(N86), .C2(N85), .A(N87), .B(N88), .ZN(n300) );
  NAND2_X1 U430 ( .A1(n301), .A2(n300), .ZN(N110) );
endmodule

