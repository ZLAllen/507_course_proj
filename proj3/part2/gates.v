
module memory_WIDTH16_SIZE8_LOGSIZE4 ( clk, data_in, data_out, addr, wr_en );
  input [15:0] data_in;
  output [15:0] data_out;
  input [3:0] addr;
  input clk, wr_en;
  wire   N10, N11, N12, \mem[7][15] , \mem[7][14] , \mem[7][13] , \mem[7][12] ,
         \mem[7][11] , \mem[7][10] , \mem[7][9] , \mem[7][8] , \mem[7][7] ,
         \mem[7][6] , \mem[7][5] , \mem[7][4] , \mem[7][3] , \mem[7][2] ,
         \mem[7][1] , \mem[7][0] , \mem[6][15] , \mem[6][14] , \mem[6][13] ,
         \mem[6][12] , \mem[6][11] , \mem[6][10] , \mem[6][9] , \mem[6][8] ,
         \mem[6][7] , \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] ,
         \mem[6][2] , \mem[6][1] , \mem[6][0] , \mem[5][15] , \mem[5][14] ,
         \mem[5][13] , \mem[5][12] , \mem[5][11] , \mem[5][10] , \mem[5][9] ,
         \mem[5][8] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[4][15] ,
         \mem[4][14] , \mem[4][13] , \mem[4][12] , \mem[4][11] , \mem[4][10] ,
         \mem[4][9] , \mem[4][8] , \mem[4][7] , \mem[4][6] , \mem[4][5] ,
         \mem[4][4] , \mem[4][3] , \mem[4][2] , \mem[4][1] , \mem[4][0] ,
         \mem[3][15] , \mem[3][14] , \mem[3][13] , \mem[3][12] , \mem[3][11] ,
         \mem[3][10] , \mem[3][9] , \mem[3][8] , \mem[3][7] , \mem[3][6] ,
         \mem[3][5] , \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] ,
         \mem[3][0] , \mem[2][15] , \mem[2][14] , \mem[2][13] , \mem[2][12] ,
         \mem[2][11] , \mem[2][10] , \mem[2][9] , \mem[2][8] , \mem[2][7] ,
         \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] , \mem[2][2] ,
         \mem[2][1] , \mem[2][0] , \mem[1][15] , \mem[1][14] , \mem[1][13] ,
         \mem[1][12] , \mem[1][11] , \mem[1][10] , \mem[1][9] , \mem[1][8] ,
         \mem[1][7] , \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] ,
         \mem[1][2] , \mem[1][1] , \mem[1][0] , \mem[0][15] , \mem[0][14] ,
         \mem[0][13] , \mem[0][12] , \mem[0][11] , \mem[0][10] , \mem[0][9] ,
         \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404;
  assign N10 = addr[0];
  assign N11 = addr[1];
  assign N12 = addr[2];

  DFF_X1 \mem_reg[7][15]  ( .D(n287), .CK(clk), .Q(\mem[7][15] ) );
  DFF_X1 \mem_reg[7][14]  ( .D(n286), .CK(clk), .Q(\mem[7][14] ) );
  DFF_X1 \mem_reg[7][13]  ( .D(n285), .CK(clk), .Q(\mem[7][13] ) );
  DFF_X1 \mem_reg[7][12]  ( .D(n284), .CK(clk), .Q(\mem[7][12] ) );
  DFF_X1 \mem_reg[7][11]  ( .D(n283), .CK(clk), .Q(\mem[7][11] ) );
  DFF_X1 \mem_reg[7][10]  ( .D(n282), .CK(clk), .Q(\mem[7][10] ) );
  DFF_X1 \mem_reg[7][9]  ( .D(n281), .CK(clk), .Q(\mem[7][9] ) );
  DFF_X1 \mem_reg[7][8]  ( .D(n280), .CK(clk), .Q(\mem[7][8] ) );
  DFF_X1 \mem_reg[7][7]  ( .D(n279), .CK(clk), .Q(\mem[7][7] ) );
  DFF_X1 \mem_reg[7][6]  ( .D(n278), .CK(clk), .Q(\mem[7][6] ) );
  DFF_X1 \mem_reg[7][5]  ( .D(n277), .CK(clk), .Q(\mem[7][5] ) );
  DFF_X1 \mem_reg[7][4]  ( .D(n276), .CK(clk), .Q(\mem[7][4] ) );
  DFF_X1 \mem_reg[7][3]  ( .D(n275), .CK(clk), .Q(\mem[7][3] ) );
  DFF_X1 \mem_reg[7][2]  ( .D(n274), .CK(clk), .Q(\mem[7][2] ) );
  DFF_X1 \mem_reg[7][1]  ( .D(n273), .CK(clk), .Q(\mem[7][1] ) );
  DFF_X1 \mem_reg[7][0]  ( .D(n272), .CK(clk), .Q(\mem[7][0] ) );
  DFF_X1 \mem_reg[6][15]  ( .D(n271), .CK(clk), .Q(\mem[6][15] ) );
  DFF_X1 \mem_reg[6][14]  ( .D(n270), .CK(clk), .Q(\mem[6][14] ) );
  DFF_X1 \mem_reg[6][13]  ( .D(n269), .CK(clk), .Q(\mem[6][13] ) );
  DFF_X1 \mem_reg[6][12]  ( .D(n268), .CK(clk), .Q(\mem[6][12] ) );
  DFF_X1 \mem_reg[6][11]  ( .D(n267), .CK(clk), .Q(\mem[6][11] ) );
  DFF_X1 \mem_reg[6][10]  ( .D(n266), .CK(clk), .Q(\mem[6][10] ) );
  DFF_X1 \mem_reg[6][9]  ( .D(n265), .CK(clk), .Q(\mem[6][9] ) );
  DFF_X1 \mem_reg[6][8]  ( .D(n264), .CK(clk), .Q(\mem[6][8] ) );
  DFF_X1 \mem_reg[6][7]  ( .D(n263), .CK(clk), .Q(\mem[6][7] ) );
  DFF_X1 \mem_reg[6][6]  ( .D(n262), .CK(clk), .Q(\mem[6][6] ) );
  DFF_X1 \mem_reg[6][5]  ( .D(n261), .CK(clk), .Q(\mem[6][5] ) );
  DFF_X1 \mem_reg[6][4]  ( .D(n260), .CK(clk), .Q(\mem[6][4] ) );
  DFF_X1 \mem_reg[6][3]  ( .D(n259), .CK(clk), .Q(\mem[6][3] ) );
  DFF_X1 \mem_reg[6][2]  ( .D(n258), .CK(clk), .Q(\mem[6][2] ) );
  DFF_X1 \mem_reg[6][1]  ( .D(n257), .CK(clk), .Q(\mem[6][1] ) );
  DFF_X1 \mem_reg[6][0]  ( .D(n256), .CK(clk), .Q(\mem[6][0] ) );
  DFF_X1 \mem_reg[5][15]  ( .D(n255), .CK(clk), .Q(\mem[5][15] ) );
  DFF_X1 \mem_reg[5][14]  ( .D(n254), .CK(clk), .Q(\mem[5][14] ) );
  DFF_X1 \mem_reg[5][13]  ( .D(n253), .CK(clk), .Q(\mem[5][13] ) );
  DFF_X1 \mem_reg[5][12]  ( .D(n252), .CK(clk), .Q(\mem[5][12] ) );
  DFF_X1 \mem_reg[5][11]  ( .D(n251), .CK(clk), .Q(\mem[5][11] ) );
  DFF_X1 \mem_reg[5][10]  ( .D(n250), .CK(clk), .Q(\mem[5][10] ) );
  DFF_X1 \mem_reg[5][9]  ( .D(n249), .CK(clk), .Q(\mem[5][9] ) );
  DFF_X1 \mem_reg[5][8]  ( .D(n248), .CK(clk), .Q(\mem[5][8] ) );
  DFF_X1 \mem_reg[5][7]  ( .D(n247), .CK(clk), .Q(\mem[5][7] ) );
  DFF_X1 \mem_reg[5][6]  ( .D(n246), .CK(clk), .Q(\mem[5][6] ) );
  DFF_X1 \mem_reg[5][5]  ( .D(n245), .CK(clk), .Q(\mem[5][5] ) );
  DFF_X1 \mem_reg[5][4]  ( .D(n244), .CK(clk), .Q(\mem[5][4] ) );
  DFF_X1 \mem_reg[5][3]  ( .D(n243), .CK(clk), .Q(\mem[5][3] ) );
  DFF_X1 \mem_reg[5][2]  ( .D(n242), .CK(clk), .Q(\mem[5][2] ) );
  DFF_X1 \mem_reg[5][1]  ( .D(n241), .CK(clk), .Q(\mem[5][1] ) );
  DFF_X1 \mem_reg[5][0]  ( .D(n240), .CK(clk), .Q(\mem[5][0] ) );
  DFF_X1 \mem_reg[4][15]  ( .D(n239), .CK(clk), .Q(\mem[4][15] ) );
  DFF_X1 \mem_reg[4][14]  ( .D(n238), .CK(clk), .Q(\mem[4][14] ) );
  DFF_X1 \mem_reg[4][13]  ( .D(n237), .CK(clk), .Q(\mem[4][13] ) );
  DFF_X1 \mem_reg[4][12]  ( .D(n236), .CK(clk), .Q(\mem[4][12] ) );
  DFF_X1 \mem_reg[4][11]  ( .D(n235), .CK(clk), .Q(\mem[4][11] ) );
  DFF_X1 \mem_reg[4][10]  ( .D(n234), .CK(clk), .Q(\mem[4][10] ) );
  DFF_X1 \mem_reg[4][9]  ( .D(n233), .CK(clk), .Q(\mem[4][9] ) );
  DFF_X1 \mem_reg[4][8]  ( .D(n232), .CK(clk), .Q(\mem[4][8] ) );
  DFF_X1 \mem_reg[4][7]  ( .D(n231), .CK(clk), .Q(\mem[4][7] ) );
  DFF_X1 \mem_reg[4][6]  ( .D(n230), .CK(clk), .Q(\mem[4][6] ) );
  DFF_X1 \mem_reg[4][5]  ( .D(n229), .CK(clk), .Q(\mem[4][5] ) );
  DFF_X1 \mem_reg[4][4]  ( .D(n228), .CK(clk), .Q(\mem[4][4] ) );
  DFF_X1 \mem_reg[4][3]  ( .D(n227), .CK(clk), .Q(\mem[4][3] ) );
  DFF_X1 \mem_reg[4][2]  ( .D(n226), .CK(clk), .Q(\mem[4][2] ) );
  DFF_X1 \mem_reg[4][1]  ( .D(n225), .CK(clk), .Q(\mem[4][1] ) );
  DFF_X1 \mem_reg[4][0]  ( .D(n224), .CK(clk), .Q(\mem[4][0] ) );
  DFF_X1 \mem_reg[3][5]  ( .D(n213), .CK(clk), .Q(\mem[3][5] ) );
  DFF_X1 \mem_reg[3][4]  ( .D(n212), .CK(clk), .Q(\mem[3][4] ) );
  NAND3_X1 U282 ( .A1(n385), .A2(n386), .A3(n38), .ZN(n21) );
  NAND3_X1 U283 ( .A1(n38), .A2(n386), .A3(N10), .ZN(n39) );
  NAND3_X1 U284 ( .A1(n38), .A2(n385), .A3(N11), .ZN(n56) );
  NAND3_X1 U285 ( .A1(N10), .A2(n38), .A3(N11), .ZN(n73) );
  NAND3_X1 U286 ( .A1(n385), .A2(n386), .A3(n108), .ZN(n91) );
  NAND3_X1 U287 ( .A1(N10), .A2(n386), .A3(n108), .ZN(n109) );
  NAND3_X1 U288 ( .A1(N11), .A2(n385), .A3(n108), .ZN(n126) );
  NAND3_X1 U289 ( .A1(N11), .A2(N10), .A3(n108), .ZN(n143) );
  SDFF_X1 \data_out_reg[1]  ( .D(n9), .SI(n12), .SE(n387), .CK(clk), .Q(
        data_out[1]) );
  SDFF_X1 \data_out_reg[2]  ( .D(n15), .SI(n18), .SE(n387), .CK(clk), .Q(
        data_out[2]) );
  SDFF_X1 \data_out_reg[5]  ( .D(n300), .SI(n303), .SE(n387), .CK(clk), .Q(
        data_out[5]) );
  SDFF_X1 \data_out_reg[7]  ( .D(n312), .SI(n315), .SE(n387), .CK(clk), .Q(
        data_out[7]) );
  SDFF_X1 \data_out_reg[3]  ( .D(n288), .SI(n291), .SE(n387), .CK(clk), .Q(
        data_out[3]) );
  SDFF_X1 \data_out_reg[6]  ( .D(n306), .SI(n309), .SE(n387), .CK(clk), .Q(
        data_out[6]) );
  SDFF_X1 \data_out_reg[8]  ( .D(n318), .SI(n321), .SE(n387), .CK(clk), .Q(
        data_out[8]) );
  SDFF_X1 \data_out_reg[12]  ( .D(n342), .SI(n345), .SE(n387), .CK(clk), .Q(
        data_out[12]) );
  SDFF_X1 \data_out_reg[9]  ( .D(n324), .SI(n327), .SE(n387), .CK(clk), .Q(
        data_out[9]) );
  SDFF_X1 \data_out_reg[13]  ( .D(n348), .SI(n351), .SE(n387), .CK(clk), .Q(
        data_out[13]) );
  SDFF_X1 \data_out_reg[10]  ( .D(n330), .SI(n333), .SE(n387), .CK(clk), .Q(
        data_out[10]) );
  SDFF_X1 \data_out_reg[0]  ( .D(n3), .SI(n6), .SE(n387), .CK(clk), .Q(
        data_out[0]) );
  SDFF_X1 \data_out_reg[11]  ( .D(n336), .SI(n339), .SE(n387), .CK(clk), .Q(
        data_out[11]) );
  DFF_X1 \mem_reg[0][14]  ( .D(n174), .CK(clk), .Q(\mem[0][14] ) );
  DFF_X1 \mem_reg[0][13]  ( .D(n173), .CK(clk), .Q(\mem[0][13] ) );
  DFF_X1 \mem_reg[0][12]  ( .D(n172), .CK(clk), .Q(\mem[0][12] ) );
  DFF_X1 \mem_reg[0][11]  ( .D(n171), .CK(clk), .Q(\mem[0][11] ) );
  DFF_X1 \mem_reg[0][10]  ( .D(n170), .CK(clk), .Q(\mem[0][10] ) );
  DFF_X1 \mem_reg[0][9]  ( .D(n169), .CK(clk), .Q(\mem[0][9] ) );
  DFF_X1 \mem_reg[0][8]  ( .D(n168), .CK(clk), .Q(\mem[0][8] ) );
  DFF_X1 \mem_reg[0][15]  ( .D(n175), .CK(clk), .Q(\mem[0][15] ) );
  DFF_X1 \mem_reg[0][3]  ( .D(n163), .CK(clk), .Q(\mem[0][3] ) );
  DFF_X1 \mem_reg[0][2]  ( .D(n162), .CK(clk), .Q(\mem[0][2] ) );
  DFF_X1 \mem_reg[0][1]  ( .D(n161), .CK(clk), .Q(\mem[0][1] ) );
  DFF_X1 \mem_reg[0][0]  ( .D(n160), .CK(clk), .Q(\mem[0][0] ) );
  DFF_X1 \mem_reg[2][14]  ( .D(n206), .CK(clk), .Q(\mem[2][14] ) );
  DFF_X1 \mem_reg[2][13]  ( .D(n205), .CK(clk), .Q(\mem[2][13] ) );
  DFF_X1 \mem_reg[2][12]  ( .D(n204), .CK(clk), .Q(\mem[2][12] ) );
  DFF_X1 \mem_reg[2][11]  ( .D(n203), .CK(clk), .Q(\mem[2][11] ) );
  DFF_X1 \mem_reg[2][10]  ( .D(n202), .CK(clk), .Q(\mem[2][10] ) );
  DFF_X1 \mem_reg[2][9]  ( .D(n201), .CK(clk), .Q(\mem[2][9] ) );
  DFF_X1 \mem_reg[2][8]  ( .D(n200), .CK(clk), .Q(\mem[2][8] ) );
  DFF_X1 \mem_reg[1][14]  ( .D(n190), .CK(clk), .Q(\mem[1][14] ) );
  DFF_X1 \mem_reg[1][13]  ( .D(n189), .CK(clk), .Q(\mem[1][13] ) );
  DFF_X1 \mem_reg[1][12]  ( .D(n188), .CK(clk), .Q(\mem[1][12] ) );
  DFF_X1 \mem_reg[1][11]  ( .D(n187), .CK(clk), .Q(\mem[1][11] ) );
  DFF_X1 \mem_reg[1][10]  ( .D(n186), .CK(clk), .Q(\mem[1][10] ) );
  DFF_X1 \mem_reg[1][9]  ( .D(n185), .CK(clk), .Q(\mem[1][9] ) );
  DFF_X1 \mem_reg[1][8]  ( .D(n184), .CK(clk), .Q(\mem[1][8] ) );
  DFF_X1 \mem_reg[2][7]  ( .D(n199), .CK(clk), .Q(\mem[2][7] ) );
  DFF_X1 \mem_reg[1][7]  ( .D(n183), .CK(clk), .Q(\mem[1][7] ) );
  DFF_X1 \mem_reg[3][14]  ( .D(n222), .CK(clk), .Q(\mem[3][14] ) );
  DFF_X1 \mem_reg[3][13]  ( .D(n221), .CK(clk), .Q(\mem[3][13] ) );
  DFF_X1 \mem_reg[3][12]  ( .D(n220), .CK(clk), .Q(\mem[3][12] ) );
  DFF_X1 \mem_reg[3][11]  ( .D(n219), .CK(clk), .Q(\mem[3][11] ) );
  DFF_X1 \mem_reg[3][10]  ( .D(n218), .CK(clk), .Q(\mem[3][10] ) );
  DFF_X1 \mem_reg[3][9]  ( .D(n217), .CK(clk), .Q(\mem[3][9] ) );
  DFF_X1 \mem_reg[3][8]  ( .D(n216), .CK(clk), .Q(\mem[3][8] ) );
  DFF_X1 \mem_reg[2][15]  ( .D(n207), .CK(clk), .Q(\mem[2][15] ) );
  DFF_X1 \mem_reg[2][3]  ( .D(n195), .CK(clk), .Q(\mem[2][3] ) );
  DFF_X1 \mem_reg[2][2]  ( .D(n194), .CK(clk), .Q(\mem[2][2] ) );
  DFF_X1 \mem_reg[2][1]  ( .D(n193), .CK(clk), .Q(\mem[2][1] ) );
  DFF_X1 \mem_reg[2][0]  ( .D(n192), .CK(clk), .Q(\mem[2][0] ) );
  DFF_X1 \mem_reg[1][15]  ( .D(n191), .CK(clk), .Q(\mem[1][15] ) );
  DFF_X1 \mem_reg[1][3]  ( .D(n179), .CK(clk), .Q(\mem[1][3] ) );
  DFF_X1 \mem_reg[1][2]  ( .D(n178), .CK(clk), .Q(\mem[1][2] ) );
  DFF_X1 \mem_reg[1][1]  ( .D(n177), .CK(clk), .Q(\mem[1][1] ) );
  DFF_X1 \mem_reg[1][0]  ( .D(n176), .CK(clk), .Q(\mem[1][0] ) );
  DFF_X1 \mem_reg[3][7]  ( .D(n215), .CK(clk), .Q(\mem[3][7] ) );
  DFF_X1 \mem_reg[2][6]  ( .D(n198), .CK(clk), .Q(\mem[2][6] ) );
  DFF_X1 \mem_reg[2][5]  ( .D(n197), .CK(clk), .Q(\mem[2][5] ) );
  DFF_X1 \mem_reg[2][4]  ( .D(n196), .CK(clk), .Q(\mem[2][4] ) );
  DFF_X1 \mem_reg[1][6]  ( .D(n182), .CK(clk), .Q(\mem[1][6] ) );
  DFF_X1 \mem_reg[1][5]  ( .D(n181), .CK(clk), .Q(\mem[1][5] ) );
  DFF_X1 \mem_reg[1][4]  ( .D(n180), .CK(clk), .Q(\mem[1][4] ) );
  DFF_X1 \mem_reg[3][15]  ( .D(n223), .CK(clk), .Q(\mem[3][15] ) );
  DFF_X1 \mem_reg[3][3]  ( .D(n211), .CK(clk), .Q(\mem[3][3] ) );
  DFF_X1 \mem_reg[3][2]  ( .D(n210), .CK(clk), .Q(\mem[3][2] ) );
  DFF_X1 \mem_reg[3][1]  ( .D(n209), .CK(clk), .Q(\mem[3][1] ) );
  DFF_X1 \mem_reg[3][0]  ( .D(n208), .CK(clk), .Q(\mem[3][0] ) );
  DFF_X1 \mem_reg[0][7]  ( .D(n167), .CK(clk), .Q(\mem[0][7] ) );
  DFF_X1 \mem_reg[0][6]  ( .D(n166), .CK(clk), .Q(\mem[0][6] ) );
  DFF_X1 \mem_reg[0][5]  ( .D(n165), .CK(clk), .Q(\mem[0][5] ) );
  DFF_X1 \mem_reg[0][4]  ( .D(n164), .CK(clk), .Q(\mem[0][4] ) );
  DFF_X1 \mem_reg[3][6]  ( .D(n214), .CK(clk), .Q(\mem[3][6] ) );
  SDFF_X1 \data_out_reg[15]  ( .D(n363), .SI(n360), .SE(N12), .CK(clk), .Q(
        data_out[15]) );
  SDFF_X1 \data_out_reg[14]  ( .D(n357), .SI(n354), .SE(N12), .CK(clk), .Q(
        data_out[14]) );
  SDFF_X1 \data_out_reg[4]  ( .D(n297), .SI(n294), .SE(N12), .CK(clk), .Q(
        data_out[4]) );
  CLKBUF_X1 U3 ( .A(N10), .Z(n366) );
  CLKBUF_X1 U4 ( .A(N10), .Z(n367) );
  CLKBUF_X1 U5 ( .A(N10), .Z(n365) );
  BUF_X1 U6 ( .A(n21), .Z(n383) );
  BUF_X1 U7 ( .A(n21), .Z(n382) );
  BUF_X1 U8 ( .A(n39), .Z(n380) );
  BUF_X1 U9 ( .A(n56), .Z(n378) );
  BUF_X1 U10 ( .A(n73), .Z(n376) );
  BUF_X1 U11 ( .A(n91), .Z(n374) );
  BUF_X1 U12 ( .A(n126), .Z(n370) );
  BUF_X1 U13 ( .A(n143), .Z(n368) );
  BUF_X1 U14 ( .A(n39), .Z(n381) );
  BUF_X1 U15 ( .A(n56), .Z(n379) );
  BUF_X1 U16 ( .A(n73), .Z(n377) );
  BUF_X1 U17 ( .A(n91), .Z(n375) );
  BUF_X1 U18 ( .A(n109), .Z(n372) );
  BUF_X1 U19 ( .A(n143), .Z(n369) );
  BUF_X1 U20 ( .A(n109), .Z(n373) );
  BUF_X1 U21 ( .A(n126), .Z(n371) );
  BUF_X1 U22 ( .A(N11), .Z(n364) );
  BUF_X1 U23 ( .A(n21), .Z(n384) );
  INV_X1 U24 ( .A(data_in[0]), .ZN(n404) );
  INV_X1 U25 ( .A(data_in[1]), .ZN(n403) );
  INV_X1 U26 ( .A(data_in[2]), .ZN(n402) );
  INV_X1 U27 ( .A(data_in[3]), .ZN(n401) );
  INV_X1 U28 ( .A(data_in[4]), .ZN(n400) );
  INV_X1 U29 ( .A(data_in[5]), .ZN(n399) );
  INV_X1 U30 ( .A(data_in[6]), .ZN(n398) );
  INV_X1 U31 ( .A(data_in[7]), .ZN(n397) );
  INV_X1 U32 ( .A(data_in[8]), .ZN(n396) );
  INV_X1 U33 ( .A(data_in[9]), .ZN(n395) );
  INV_X1 U34 ( .A(data_in[10]), .ZN(n394) );
  INV_X1 U35 ( .A(data_in[11]), .ZN(n393) );
  INV_X1 U36 ( .A(data_in[12]), .ZN(n392) );
  INV_X1 U37 ( .A(data_in[13]), .ZN(n391) );
  INV_X1 U38 ( .A(data_in[14]), .ZN(n390) );
  INV_X1 U39 ( .A(data_in[15]), .ZN(n389) );
  NOR2_X1 U40 ( .A1(n90), .A2(N12), .ZN(n38) );
  NOR2_X1 U41 ( .A1(n387), .A2(n90), .ZN(n108) );
  INV_X1 U42 ( .A(N12), .ZN(n387) );
  NAND2_X1 U43 ( .A1(wr_en), .A2(n388), .ZN(n90) );
  INV_X1 U44 ( .A(addr[3]), .ZN(n388) );
  OAI21_X1 U45 ( .B1(n397), .B2(n377), .A(n81), .ZN(n215) );
  NAND2_X1 U46 ( .A1(\mem[3][7] ), .A2(n377), .ZN(n81) );
  OAI21_X1 U47 ( .B1(n396), .B2(n376), .A(n82), .ZN(n216) );
  NAND2_X1 U48 ( .A1(\mem[3][8] ), .A2(n376), .ZN(n82) );
  OAI21_X1 U49 ( .B1(n395), .B2(n377), .A(n83), .ZN(n217) );
  NAND2_X1 U50 ( .A1(\mem[3][9] ), .A2(n376), .ZN(n83) );
  OAI21_X1 U51 ( .B1(n394), .B2(n73), .A(n84), .ZN(n218) );
  NAND2_X1 U52 ( .A1(\mem[3][10] ), .A2(n376), .ZN(n84) );
  OAI21_X1 U53 ( .B1(n393), .B2(n73), .A(n85), .ZN(n219) );
  NAND2_X1 U54 ( .A1(\mem[3][11] ), .A2(n376), .ZN(n85) );
  OAI21_X1 U55 ( .B1(n392), .B2(n73), .A(n86), .ZN(n220) );
  NAND2_X1 U56 ( .A1(\mem[3][12] ), .A2(n376), .ZN(n86) );
  OAI21_X1 U57 ( .B1(n391), .B2(n73), .A(n87), .ZN(n221) );
  NAND2_X1 U58 ( .A1(\mem[3][13] ), .A2(n376), .ZN(n87) );
  OAI21_X1 U59 ( .B1(n390), .B2(n73), .A(n88), .ZN(n222) );
  NAND2_X1 U60 ( .A1(\mem[3][14] ), .A2(n376), .ZN(n88) );
  OAI21_X1 U61 ( .B1(n397), .B2(n373), .A(n117), .ZN(n247) );
  NAND2_X1 U62 ( .A1(\mem[5][7] ), .A2(n372), .ZN(n117) );
  OAI21_X1 U63 ( .B1(n396), .B2(n373), .A(n118), .ZN(n248) );
  NAND2_X1 U64 ( .A1(\mem[5][8] ), .A2(n373), .ZN(n118) );
  OAI21_X1 U65 ( .B1(n395), .B2(n373), .A(n119), .ZN(n249) );
  NAND2_X1 U66 ( .A1(\mem[5][9] ), .A2(n109), .ZN(n119) );
  OAI21_X1 U67 ( .B1(n394), .B2(n373), .A(n120), .ZN(n250) );
  NAND2_X1 U68 ( .A1(\mem[5][10] ), .A2(n109), .ZN(n120) );
  OAI21_X1 U69 ( .B1(n393), .B2(n373), .A(n121), .ZN(n251) );
  NAND2_X1 U70 ( .A1(\mem[5][11] ), .A2(n109), .ZN(n121) );
  OAI21_X1 U71 ( .B1(n392), .B2(n373), .A(n122), .ZN(n252) );
  NAND2_X1 U72 ( .A1(\mem[5][12] ), .A2(n109), .ZN(n122) );
  OAI21_X1 U73 ( .B1(n391), .B2(n373), .A(n123), .ZN(n253) );
  NAND2_X1 U74 ( .A1(\mem[5][13] ), .A2(n109), .ZN(n123) );
  OAI21_X1 U75 ( .B1(n390), .B2(n373), .A(n124), .ZN(n254) );
  NAND2_X1 U76 ( .A1(\mem[5][14] ), .A2(n109), .ZN(n124) );
  OAI21_X1 U77 ( .B1(n397), .B2(n369), .A(n151), .ZN(n279) );
  NAND2_X1 U78 ( .A1(\mem[7][7] ), .A2(n369), .ZN(n151) );
  OAI21_X1 U79 ( .B1(n396), .B2(n368), .A(n152), .ZN(n280) );
  NAND2_X1 U80 ( .A1(\mem[7][8] ), .A2(n368), .ZN(n152) );
  OAI21_X1 U81 ( .B1(n395), .B2(n143), .A(n153), .ZN(n281) );
  NAND2_X1 U82 ( .A1(\mem[7][9] ), .A2(n368), .ZN(n153) );
  OAI21_X1 U83 ( .B1(n394), .B2(n143), .A(n154), .ZN(n282) );
  NAND2_X1 U84 ( .A1(\mem[7][10] ), .A2(n368), .ZN(n154) );
  OAI21_X1 U85 ( .B1(n393), .B2(n143), .A(n155), .ZN(n283) );
  NAND2_X1 U86 ( .A1(\mem[7][11] ), .A2(n368), .ZN(n155) );
  OAI21_X1 U87 ( .B1(n392), .B2(n143), .A(n156), .ZN(n284) );
  NAND2_X1 U88 ( .A1(\mem[7][12] ), .A2(n368), .ZN(n156) );
  OAI21_X1 U89 ( .B1(n391), .B2(n143), .A(n157), .ZN(n285) );
  NAND2_X1 U90 ( .A1(\mem[7][13] ), .A2(n368), .ZN(n157) );
  OAI21_X1 U91 ( .B1(n390), .B2(n143), .A(n158), .ZN(n286) );
  NAND2_X1 U92 ( .A1(\mem[7][14] ), .A2(n368), .ZN(n158) );
  OAI21_X1 U93 ( .B1(n397), .B2(n381), .A(n47), .ZN(n183) );
  NAND2_X1 U94 ( .A1(\mem[1][7] ), .A2(n381), .ZN(n47) );
  OAI21_X1 U95 ( .B1(n396), .B2(n380), .A(n48), .ZN(n184) );
  NAND2_X1 U96 ( .A1(\mem[1][8] ), .A2(n380), .ZN(n48) );
  OAI21_X1 U97 ( .B1(n395), .B2(n381), .A(n49), .ZN(n185) );
  NAND2_X1 U98 ( .A1(\mem[1][9] ), .A2(n380), .ZN(n49) );
  OAI21_X1 U99 ( .B1(n394), .B2(n39), .A(n50), .ZN(n186) );
  NAND2_X1 U100 ( .A1(\mem[1][10] ), .A2(n380), .ZN(n50) );
  OAI21_X1 U101 ( .B1(n393), .B2(n39), .A(n51), .ZN(n187) );
  NAND2_X1 U102 ( .A1(\mem[1][11] ), .A2(n380), .ZN(n51) );
  OAI21_X1 U103 ( .B1(n392), .B2(n39), .A(n52), .ZN(n188) );
  NAND2_X1 U104 ( .A1(\mem[1][12] ), .A2(n380), .ZN(n52) );
  OAI21_X1 U105 ( .B1(n391), .B2(n39), .A(n53), .ZN(n189) );
  NAND2_X1 U106 ( .A1(\mem[1][13] ), .A2(n380), .ZN(n53) );
  OAI21_X1 U107 ( .B1(n390), .B2(n39), .A(n54), .ZN(n190) );
  NAND2_X1 U108 ( .A1(\mem[1][14] ), .A2(n380), .ZN(n54) );
  OAI21_X1 U109 ( .B1(n397), .B2(n371), .A(n134), .ZN(n263) );
  NAND2_X1 U110 ( .A1(\mem[6][7] ), .A2(n371), .ZN(n134) );
  OAI21_X1 U111 ( .B1(n396), .B2(n371), .A(n135), .ZN(n264) );
  NAND2_X1 U112 ( .A1(\mem[6][8] ), .A2(n370), .ZN(n135) );
  OAI21_X1 U113 ( .B1(n395), .B2(n371), .A(n136), .ZN(n265) );
  NAND2_X1 U114 ( .A1(\mem[6][9] ), .A2(n370), .ZN(n136) );
  OAI21_X1 U115 ( .B1(n394), .B2(n371), .A(n137), .ZN(n266) );
  NAND2_X1 U116 ( .A1(\mem[6][10] ), .A2(n370), .ZN(n137) );
  OAI21_X1 U117 ( .B1(n393), .B2(n371), .A(n138), .ZN(n267) );
  NAND2_X1 U118 ( .A1(\mem[6][11] ), .A2(n370), .ZN(n138) );
  OAI21_X1 U119 ( .B1(n392), .B2(n371), .A(n139), .ZN(n268) );
  NAND2_X1 U120 ( .A1(\mem[6][12] ), .A2(n370), .ZN(n139) );
  OAI21_X1 U121 ( .B1(n391), .B2(n371), .A(n140), .ZN(n269) );
  NAND2_X1 U122 ( .A1(\mem[6][13] ), .A2(n370), .ZN(n140) );
  OAI21_X1 U123 ( .B1(n390), .B2(n371), .A(n141), .ZN(n270) );
  NAND2_X1 U124 ( .A1(\mem[6][14] ), .A2(n370), .ZN(n141) );
  OAI21_X1 U125 ( .B1(n397), .B2(n379), .A(n64), .ZN(n199) );
  NAND2_X1 U126 ( .A1(\mem[2][7] ), .A2(n379), .ZN(n64) );
  OAI21_X1 U127 ( .B1(n396), .B2(n378), .A(n65), .ZN(n200) );
  NAND2_X1 U128 ( .A1(\mem[2][8] ), .A2(n378), .ZN(n65) );
  OAI21_X1 U129 ( .B1(n395), .B2(n379), .A(n66), .ZN(n201) );
  NAND2_X1 U130 ( .A1(\mem[2][9] ), .A2(n378), .ZN(n66) );
  OAI21_X1 U131 ( .B1(n394), .B2(n56), .A(n67), .ZN(n202) );
  NAND2_X1 U132 ( .A1(\mem[2][10] ), .A2(n378), .ZN(n67) );
  OAI21_X1 U133 ( .B1(n393), .B2(n56), .A(n68), .ZN(n203) );
  NAND2_X1 U134 ( .A1(\mem[2][11] ), .A2(n378), .ZN(n68) );
  OAI21_X1 U135 ( .B1(n392), .B2(n56), .A(n69), .ZN(n204) );
  NAND2_X1 U136 ( .A1(\mem[2][12] ), .A2(n378), .ZN(n69) );
  OAI21_X1 U137 ( .B1(n391), .B2(n56), .A(n70), .ZN(n205) );
  NAND2_X1 U138 ( .A1(\mem[2][13] ), .A2(n378), .ZN(n70) );
  OAI21_X1 U139 ( .B1(n390), .B2(n56), .A(n71), .ZN(n206) );
  NAND2_X1 U140 ( .A1(\mem[2][14] ), .A2(n378), .ZN(n71) );
  OAI21_X1 U141 ( .B1(n397), .B2(n375), .A(n99), .ZN(n231) );
  NAND2_X1 U142 ( .A1(\mem[4][7] ), .A2(n375), .ZN(n99) );
  OAI21_X1 U143 ( .B1(n396), .B2(n374), .A(n100), .ZN(n232) );
  NAND2_X1 U144 ( .A1(\mem[4][8] ), .A2(n374), .ZN(n100) );
  OAI21_X1 U145 ( .B1(n395), .B2(n91), .A(n101), .ZN(n233) );
  NAND2_X1 U146 ( .A1(\mem[4][9] ), .A2(n374), .ZN(n101) );
  OAI21_X1 U147 ( .B1(n394), .B2(n91), .A(n102), .ZN(n234) );
  NAND2_X1 U148 ( .A1(\mem[4][10] ), .A2(n374), .ZN(n102) );
  OAI21_X1 U149 ( .B1(n393), .B2(n91), .A(n103), .ZN(n235) );
  NAND2_X1 U150 ( .A1(\mem[4][11] ), .A2(n374), .ZN(n103) );
  OAI21_X1 U151 ( .B1(n392), .B2(n91), .A(n104), .ZN(n236) );
  NAND2_X1 U152 ( .A1(\mem[4][12] ), .A2(n374), .ZN(n104) );
  OAI21_X1 U153 ( .B1(n391), .B2(n91), .A(n105), .ZN(n237) );
  NAND2_X1 U154 ( .A1(\mem[4][13] ), .A2(n374), .ZN(n105) );
  OAI21_X1 U155 ( .B1(n390), .B2(n91), .A(n106), .ZN(n238) );
  NAND2_X1 U156 ( .A1(\mem[4][14] ), .A2(n374), .ZN(n106) );
  INV_X1 U157 ( .A(N11), .ZN(n386) );
  OAI21_X1 U158 ( .B1(n384), .B2(n396), .A(n30), .ZN(n168) );
  NAND2_X1 U159 ( .A1(\mem[0][8] ), .A2(n382), .ZN(n30) );
  OAI21_X1 U160 ( .B1(n384), .B2(n395), .A(n31), .ZN(n169) );
  NAND2_X1 U161 ( .A1(\mem[0][9] ), .A2(n382), .ZN(n31) );
  OAI21_X1 U162 ( .B1(n384), .B2(n394), .A(n32), .ZN(n170) );
  NAND2_X1 U163 ( .A1(\mem[0][10] ), .A2(n382), .ZN(n32) );
  OAI21_X1 U164 ( .B1(n384), .B2(n393), .A(n33), .ZN(n171) );
  NAND2_X1 U165 ( .A1(\mem[0][11] ), .A2(n382), .ZN(n33) );
  OAI21_X1 U166 ( .B1(n384), .B2(n392), .A(n34), .ZN(n172) );
  NAND2_X1 U167 ( .A1(\mem[0][12] ), .A2(n382), .ZN(n34) );
  OAI21_X1 U168 ( .B1(n384), .B2(n391), .A(n35), .ZN(n173) );
  NAND2_X1 U169 ( .A1(\mem[0][13] ), .A2(n382), .ZN(n35) );
  OAI21_X1 U170 ( .B1(n384), .B2(n390), .A(n36), .ZN(n174) );
  NAND2_X1 U171 ( .A1(\mem[0][14] ), .A2(n382), .ZN(n36) );
  INV_X1 U172 ( .A(N10), .ZN(n385) );
  OAI21_X1 U173 ( .B1(n404), .B2(n381), .A(n40), .ZN(n176) );
  NAND2_X1 U174 ( .A1(\mem[1][0] ), .A2(n380), .ZN(n40) );
  OAI21_X1 U175 ( .B1(n403), .B2(n381), .A(n41), .ZN(n177) );
  NAND2_X1 U176 ( .A1(\mem[1][1] ), .A2(n380), .ZN(n41) );
  OAI21_X1 U177 ( .B1(n402), .B2(n381), .A(n42), .ZN(n178) );
  NAND2_X1 U178 ( .A1(\mem[1][2] ), .A2(n380), .ZN(n42) );
  OAI21_X1 U179 ( .B1(n401), .B2(n381), .A(n43), .ZN(n179) );
  NAND2_X1 U180 ( .A1(\mem[1][3] ), .A2(n380), .ZN(n43) );
  OAI21_X1 U181 ( .B1(n400), .B2(n381), .A(n44), .ZN(n180) );
  NAND2_X1 U182 ( .A1(\mem[1][4] ), .A2(n381), .ZN(n44) );
  OAI21_X1 U183 ( .B1(n399), .B2(n381), .A(n45), .ZN(n181) );
  NAND2_X1 U184 ( .A1(\mem[1][5] ), .A2(n381), .ZN(n45) );
  OAI21_X1 U185 ( .B1(n398), .B2(n381), .A(n46), .ZN(n182) );
  NAND2_X1 U186 ( .A1(\mem[1][6] ), .A2(n381), .ZN(n46) );
  OAI21_X1 U187 ( .B1(n389), .B2(n381), .A(n55), .ZN(n191) );
  NAND2_X1 U188 ( .A1(\mem[1][15] ), .A2(n380), .ZN(n55) );
  OAI21_X1 U189 ( .B1(n404), .B2(n379), .A(n57), .ZN(n192) );
  NAND2_X1 U190 ( .A1(\mem[2][0] ), .A2(n378), .ZN(n57) );
  OAI21_X1 U191 ( .B1(n403), .B2(n379), .A(n58), .ZN(n193) );
  NAND2_X1 U192 ( .A1(\mem[2][1] ), .A2(n378), .ZN(n58) );
  OAI21_X1 U193 ( .B1(n402), .B2(n379), .A(n59), .ZN(n194) );
  NAND2_X1 U194 ( .A1(\mem[2][2] ), .A2(n378), .ZN(n59) );
  OAI21_X1 U195 ( .B1(n401), .B2(n379), .A(n60), .ZN(n195) );
  NAND2_X1 U196 ( .A1(\mem[2][3] ), .A2(n378), .ZN(n60) );
  OAI21_X1 U197 ( .B1(n400), .B2(n379), .A(n61), .ZN(n196) );
  NAND2_X1 U198 ( .A1(\mem[2][4] ), .A2(n379), .ZN(n61) );
  OAI21_X1 U199 ( .B1(n399), .B2(n379), .A(n62), .ZN(n197) );
  NAND2_X1 U200 ( .A1(\mem[2][5] ), .A2(n379), .ZN(n62) );
  OAI21_X1 U201 ( .B1(n398), .B2(n379), .A(n63), .ZN(n198) );
  NAND2_X1 U202 ( .A1(\mem[2][6] ), .A2(n379), .ZN(n63) );
  OAI21_X1 U203 ( .B1(n389), .B2(n379), .A(n72), .ZN(n207) );
  NAND2_X1 U204 ( .A1(\mem[2][15] ), .A2(n378), .ZN(n72) );
  OAI21_X1 U205 ( .B1(n404), .B2(n377), .A(n74), .ZN(n208) );
  NAND2_X1 U206 ( .A1(\mem[3][0] ), .A2(n376), .ZN(n74) );
  OAI21_X1 U207 ( .B1(n403), .B2(n377), .A(n75), .ZN(n209) );
  NAND2_X1 U208 ( .A1(\mem[3][1] ), .A2(n376), .ZN(n75) );
  OAI21_X1 U209 ( .B1(n402), .B2(n377), .A(n76), .ZN(n210) );
  NAND2_X1 U210 ( .A1(\mem[3][2] ), .A2(n376), .ZN(n76) );
  OAI21_X1 U211 ( .B1(n401), .B2(n377), .A(n77), .ZN(n211) );
  NAND2_X1 U212 ( .A1(\mem[3][3] ), .A2(n376), .ZN(n77) );
  OAI21_X1 U213 ( .B1(n400), .B2(n377), .A(n78), .ZN(n212) );
  NAND2_X1 U214 ( .A1(\mem[3][4] ), .A2(n377), .ZN(n78) );
  OAI21_X1 U215 ( .B1(n399), .B2(n377), .A(n79), .ZN(n213) );
  NAND2_X1 U216 ( .A1(\mem[3][5] ), .A2(n377), .ZN(n79) );
  OAI21_X1 U217 ( .B1(n398), .B2(n377), .A(n80), .ZN(n214) );
  NAND2_X1 U218 ( .A1(\mem[3][6] ), .A2(n377), .ZN(n80) );
  OAI21_X1 U219 ( .B1(n389), .B2(n377), .A(n89), .ZN(n223) );
  NAND2_X1 U220 ( .A1(\mem[3][15] ), .A2(n376), .ZN(n89) );
  OAI21_X1 U221 ( .B1(n404), .B2(n375), .A(n92), .ZN(n224) );
  NAND2_X1 U222 ( .A1(\mem[4][0] ), .A2(n374), .ZN(n92) );
  OAI21_X1 U223 ( .B1(n403), .B2(n375), .A(n93), .ZN(n225) );
  NAND2_X1 U224 ( .A1(\mem[4][1] ), .A2(n374), .ZN(n93) );
  OAI21_X1 U225 ( .B1(n402), .B2(n375), .A(n94), .ZN(n226) );
  NAND2_X1 U226 ( .A1(\mem[4][2] ), .A2(n374), .ZN(n94) );
  OAI21_X1 U227 ( .B1(n401), .B2(n375), .A(n95), .ZN(n227) );
  NAND2_X1 U228 ( .A1(\mem[4][3] ), .A2(n374), .ZN(n95) );
  OAI21_X1 U229 ( .B1(n400), .B2(n375), .A(n96), .ZN(n228) );
  NAND2_X1 U230 ( .A1(\mem[4][4] ), .A2(n375), .ZN(n96) );
  OAI21_X1 U231 ( .B1(n399), .B2(n375), .A(n97), .ZN(n229) );
  NAND2_X1 U232 ( .A1(\mem[4][5] ), .A2(n375), .ZN(n97) );
  OAI21_X1 U233 ( .B1(n398), .B2(n375), .A(n98), .ZN(n230) );
  NAND2_X1 U234 ( .A1(\mem[4][6] ), .A2(n375), .ZN(n98) );
  OAI21_X1 U235 ( .B1(n389), .B2(n375), .A(n107), .ZN(n239) );
  NAND2_X1 U236 ( .A1(\mem[4][15] ), .A2(n374), .ZN(n107) );
  OAI21_X1 U237 ( .B1(n404), .B2(n372), .A(n110), .ZN(n240) );
  NAND2_X1 U238 ( .A1(\mem[5][0] ), .A2(n373), .ZN(n110) );
  OAI21_X1 U239 ( .B1(n403), .B2(n372), .A(n111), .ZN(n241) );
  NAND2_X1 U240 ( .A1(\mem[5][1] ), .A2(n373), .ZN(n111) );
  OAI21_X1 U241 ( .B1(n402), .B2(n372), .A(n112), .ZN(n242) );
  NAND2_X1 U242 ( .A1(\mem[5][2] ), .A2(n373), .ZN(n112) );
  OAI21_X1 U243 ( .B1(n401), .B2(n372), .A(n113), .ZN(n243) );
  NAND2_X1 U244 ( .A1(\mem[5][3] ), .A2(n373), .ZN(n113) );
  OAI21_X1 U245 ( .B1(n400), .B2(n372), .A(n114), .ZN(n244) );
  NAND2_X1 U246 ( .A1(\mem[5][4] ), .A2(n372), .ZN(n114) );
  OAI21_X1 U247 ( .B1(n399), .B2(n372), .A(n115), .ZN(n245) );
  NAND2_X1 U248 ( .A1(\mem[5][5] ), .A2(n372), .ZN(n115) );
  OAI21_X1 U249 ( .B1(n398), .B2(n372), .A(n116), .ZN(n246) );
  NAND2_X1 U250 ( .A1(\mem[5][6] ), .A2(n372), .ZN(n116) );
  OAI21_X1 U251 ( .B1(n389), .B2(n372), .A(n125), .ZN(n255) );
  NAND2_X1 U252 ( .A1(\mem[5][15] ), .A2(n372), .ZN(n125) );
  OAI21_X1 U253 ( .B1(n404), .B2(n371), .A(n127), .ZN(n256) );
  NAND2_X1 U254 ( .A1(\mem[6][0] ), .A2(n370), .ZN(n127) );
  OAI21_X1 U255 ( .B1(n403), .B2(n370), .A(n128), .ZN(n257) );
  NAND2_X1 U256 ( .A1(\mem[6][1] ), .A2(n370), .ZN(n128) );
  OAI21_X1 U257 ( .B1(n402), .B2(n126), .A(n129), .ZN(n258) );
  NAND2_X1 U258 ( .A1(\mem[6][2] ), .A2(n370), .ZN(n129) );
  OAI21_X1 U259 ( .B1(n401), .B2(n126), .A(n130), .ZN(n259) );
  NAND2_X1 U260 ( .A1(\mem[6][3] ), .A2(n370), .ZN(n130) );
  OAI21_X1 U261 ( .B1(n400), .B2(n126), .A(n131), .ZN(n260) );
  NAND2_X1 U262 ( .A1(\mem[6][4] ), .A2(n371), .ZN(n131) );
  OAI21_X1 U263 ( .B1(n399), .B2(n126), .A(n132), .ZN(n261) );
  NAND2_X1 U264 ( .A1(\mem[6][5] ), .A2(n371), .ZN(n132) );
  OAI21_X1 U265 ( .B1(n398), .B2(n126), .A(n133), .ZN(n262) );
  NAND2_X1 U266 ( .A1(\mem[6][6] ), .A2(n371), .ZN(n133) );
  OAI21_X1 U267 ( .B1(n389), .B2(n126), .A(n142), .ZN(n271) );
  NAND2_X1 U268 ( .A1(\mem[6][15] ), .A2(n370), .ZN(n142) );
  OAI21_X1 U269 ( .B1(n404), .B2(n369), .A(n144), .ZN(n272) );
  NAND2_X1 U270 ( .A1(\mem[7][0] ), .A2(n368), .ZN(n144) );
  OAI21_X1 U271 ( .B1(n403), .B2(n369), .A(n145), .ZN(n273) );
  NAND2_X1 U272 ( .A1(\mem[7][1] ), .A2(n368), .ZN(n145) );
  OAI21_X1 U273 ( .B1(n402), .B2(n369), .A(n146), .ZN(n274) );
  NAND2_X1 U274 ( .A1(\mem[7][2] ), .A2(n368), .ZN(n146) );
  OAI21_X1 U275 ( .B1(n401), .B2(n369), .A(n147), .ZN(n275) );
  NAND2_X1 U276 ( .A1(\mem[7][3] ), .A2(n368), .ZN(n147) );
  OAI21_X1 U277 ( .B1(n400), .B2(n369), .A(n148), .ZN(n276) );
  NAND2_X1 U278 ( .A1(\mem[7][4] ), .A2(n369), .ZN(n148) );
  OAI21_X1 U279 ( .B1(n399), .B2(n369), .A(n149), .ZN(n277) );
  NAND2_X1 U280 ( .A1(\mem[7][5] ), .A2(n369), .ZN(n149) );
  OAI21_X1 U281 ( .B1(n398), .B2(n369), .A(n150), .ZN(n278) );
  NAND2_X1 U290 ( .A1(\mem[7][6] ), .A2(n369), .ZN(n150) );
  OAI21_X1 U291 ( .B1(n389), .B2(n369), .A(n159), .ZN(n287) );
  NAND2_X1 U292 ( .A1(\mem[7][15] ), .A2(n368), .ZN(n159) );
  OAI21_X1 U293 ( .B1(n383), .B2(n404), .A(n22), .ZN(n160) );
  NAND2_X1 U294 ( .A1(\mem[0][0] ), .A2(n382), .ZN(n22) );
  OAI21_X1 U295 ( .B1(n383), .B2(n403), .A(n23), .ZN(n161) );
  NAND2_X1 U296 ( .A1(\mem[0][1] ), .A2(n382), .ZN(n23) );
  OAI21_X1 U297 ( .B1(n383), .B2(n402), .A(n24), .ZN(n162) );
  NAND2_X1 U298 ( .A1(\mem[0][2] ), .A2(n382), .ZN(n24) );
  OAI21_X1 U299 ( .B1(n383), .B2(n401), .A(n25), .ZN(n163) );
  NAND2_X1 U300 ( .A1(\mem[0][3] ), .A2(n382), .ZN(n25) );
  OAI21_X1 U301 ( .B1(n383), .B2(n400), .A(n26), .ZN(n164) );
  NAND2_X1 U302 ( .A1(\mem[0][4] ), .A2(n383), .ZN(n26) );
  OAI21_X1 U303 ( .B1(n383), .B2(n399), .A(n27), .ZN(n165) );
  NAND2_X1 U304 ( .A1(\mem[0][5] ), .A2(n383), .ZN(n27) );
  OAI21_X1 U305 ( .B1(n383), .B2(n398), .A(n28), .ZN(n166) );
  NAND2_X1 U306 ( .A1(\mem[0][6] ), .A2(n383), .ZN(n28) );
  OAI21_X1 U307 ( .B1(n383), .B2(n397), .A(n29), .ZN(n167) );
  NAND2_X1 U308 ( .A1(\mem[0][7] ), .A2(n383), .ZN(n29) );
  OAI21_X1 U309 ( .B1(n383), .B2(n389), .A(n37), .ZN(n175) );
  NAND2_X1 U310 ( .A1(\mem[0][15] ), .A2(n382), .ZN(n37) );
  MUX2_X1 U311 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N10), .Z(n1) );
  MUX2_X1 U312 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N10), .Z(n2) );
  MUX2_X1 U313 ( .A(n2), .B(n1), .S(n364), .Z(n3) );
  MUX2_X1 U314 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N10), .Z(n4) );
  MUX2_X1 U315 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N10), .Z(n5) );
  MUX2_X1 U316 ( .A(n5), .B(n4), .S(n364), .Z(n6) );
  MUX2_X1 U317 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(n365), .Z(n7) );
  MUX2_X1 U318 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(n365), .Z(n8) );
  MUX2_X1 U319 ( .A(n8), .B(n7), .S(N11), .Z(n9) );
  MUX2_X1 U320 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(n365), .Z(n10) );
  MUX2_X1 U321 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(n365), .Z(n11) );
  MUX2_X1 U322 ( .A(n11), .B(n10), .S(N11), .Z(n12) );
  MUX2_X1 U323 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(n365), .Z(n13) );
  MUX2_X1 U324 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(n365), .Z(n14) );
  MUX2_X1 U325 ( .A(n14), .B(n13), .S(n364), .Z(n15) );
  MUX2_X1 U326 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(n365), .Z(n16) );
  MUX2_X1 U327 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(n365), .Z(n17) );
  MUX2_X1 U328 ( .A(n17), .B(n16), .S(n364), .Z(n18) );
  MUX2_X1 U329 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n365), .Z(n19) );
  MUX2_X1 U330 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n365), .Z(n20) );
  MUX2_X1 U331 ( .A(n20), .B(n19), .S(N11), .Z(n288) );
  MUX2_X1 U332 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n365), .Z(n289) );
  MUX2_X1 U333 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n365), .Z(n290) );
  MUX2_X1 U334 ( .A(n290), .B(n289), .S(N11), .Z(n291) );
  MUX2_X1 U335 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(N10), .Z(n292) );
  MUX2_X1 U336 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n365), .Z(n293) );
  MUX2_X1 U337 ( .A(n293), .B(n292), .S(n364), .Z(n294) );
  MUX2_X1 U338 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n365), .Z(n295) );
  MUX2_X1 U339 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n365), .Z(n296) );
  MUX2_X1 U340 ( .A(n296), .B(n295), .S(n364), .Z(n297) );
  MUX2_X1 U341 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n366), .Z(n298) );
  MUX2_X1 U342 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n366), .Z(n299) );
  MUX2_X1 U343 ( .A(n299), .B(n298), .S(n364), .Z(n300) );
  MUX2_X1 U344 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n366), .Z(n301) );
  MUX2_X1 U345 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n366), .Z(n302) );
  MUX2_X1 U346 ( .A(n302), .B(n301), .S(n364), .Z(n303) );
  MUX2_X1 U347 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n367), .Z(n304) );
  MUX2_X1 U348 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n367), .Z(n305) );
  MUX2_X1 U349 ( .A(n305), .B(n304), .S(n364), .Z(n306) );
  MUX2_X1 U350 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n367), .Z(n307) );
  MUX2_X1 U351 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n367), .Z(n308) );
  MUX2_X1 U352 ( .A(n308), .B(n307), .S(n364), .Z(n309) );
  MUX2_X1 U353 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(N10), .Z(n310) );
  MUX2_X1 U354 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n366), .Z(n311) );
  MUX2_X1 U355 ( .A(n311), .B(n310), .S(n364), .Z(n312) );
  MUX2_X1 U356 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(N10), .Z(n313) );
  MUX2_X1 U357 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(N10), .Z(n314) );
  MUX2_X1 U358 ( .A(n314), .B(n313), .S(n364), .Z(n315) );
  MUX2_X1 U359 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(N10), .Z(n316) );
  MUX2_X1 U360 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n367), .Z(n317) );
  MUX2_X1 U361 ( .A(n317), .B(n316), .S(n364), .Z(n318) );
  MUX2_X1 U362 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(N10), .Z(n319) );
  MUX2_X1 U363 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(N10), .Z(n320) );
  MUX2_X1 U364 ( .A(n320), .B(n319), .S(n364), .Z(n321) );
  MUX2_X1 U365 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(N10), .Z(n322) );
  MUX2_X1 U366 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n365), .Z(n323) );
  MUX2_X1 U367 ( .A(n323), .B(n322), .S(n364), .Z(n324) );
  MUX2_X1 U368 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(N10), .Z(n325) );
  MUX2_X1 U369 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(N10), .Z(n326) );
  MUX2_X1 U370 ( .A(n326), .B(n325), .S(n364), .Z(n327) );
  MUX2_X1 U371 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n366), .Z(n328) );
  MUX2_X1 U372 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n366), .Z(n329) );
  MUX2_X1 U373 ( .A(n329), .B(n328), .S(N11), .Z(n330) );
  MUX2_X1 U374 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n366), .Z(n331) );
  MUX2_X1 U375 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n366), .Z(n332) );
  MUX2_X1 U376 ( .A(n332), .B(n331), .S(n364), .Z(n333) );
  MUX2_X1 U377 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n366), .Z(n334) );
  MUX2_X1 U378 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n366), .Z(n335) );
  MUX2_X1 U379 ( .A(n335), .B(n334), .S(N11), .Z(n336) );
  MUX2_X1 U380 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n366), .Z(n337) );
  MUX2_X1 U381 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n366), .Z(n338) );
  MUX2_X1 U382 ( .A(n338), .B(n337), .S(n364), .Z(n339) );
  MUX2_X1 U383 ( .A(\mem[6][12] ), .B(\mem[7][12] ), .S(n366), .Z(n340) );
  MUX2_X1 U384 ( .A(\mem[4][12] ), .B(\mem[5][12] ), .S(n366), .Z(n341) );
  MUX2_X1 U385 ( .A(n341), .B(n340), .S(N11), .Z(n342) );
  MUX2_X1 U386 ( .A(\mem[2][12] ), .B(\mem[3][12] ), .S(n366), .Z(n343) );
  MUX2_X1 U387 ( .A(\mem[0][12] ), .B(\mem[1][12] ), .S(n366), .Z(n344) );
  MUX2_X1 U388 ( .A(n344), .B(n343), .S(n364), .Z(n345) );
  MUX2_X1 U389 ( .A(\mem[6][13] ), .B(\mem[7][13] ), .S(n367), .Z(n346) );
  MUX2_X1 U390 ( .A(\mem[4][13] ), .B(\mem[5][13] ), .S(n367), .Z(n347) );
  MUX2_X1 U391 ( .A(n347), .B(n346), .S(N11), .Z(n348) );
  MUX2_X1 U392 ( .A(\mem[2][13] ), .B(\mem[3][13] ), .S(n367), .Z(n349) );
  MUX2_X1 U393 ( .A(\mem[0][13] ), .B(\mem[1][13] ), .S(n367), .Z(n350) );
  MUX2_X1 U394 ( .A(n350), .B(n349), .S(N11), .Z(n351) );
  MUX2_X1 U395 ( .A(\mem[6][14] ), .B(\mem[7][14] ), .S(n367), .Z(n352) );
  MUX2_X1 U396 ( .A(\mem[4][14] ), .B(\mem[5][14] ), .S(n367), .Z(n353) );
  MUX2_X1 U397 ( .A(n353), .B(n352), .S(n364), .Z(n354) );
  MUX2_X1 U398 ( .A(\mem[2][14] ), .B(\mem[3][14] ), .S(n367), .Z(n355) );
  MUX2_X1 U399 ( .A(\mem[0][14] ), .B(\mem[1][14] ), .S(n367), .Z(n356) );
  MUX2_X1 U400 ( .A(n356), .B(n355), .S(N11), .Z(n357) );
  MUX2_X1 U401 ( .A(\mem[6][15] ), .B(\mem[7][15] ), .S(n367), .Z(n358) );
  MUX2_X1 U402 ( .A(\mem[4][15] ), .B(\mem[5][15] ), .S(n367), .Z(n359) );
  MUX2_X1 U403 ( .A(n359), .B(n358), .S(N11), .Z(n360) );
  MUX2_X1 U404 ( .A(\mem[2][15] ), .B(\mem[3][15] ), .S(n367), .Z(n361) );
  MUX2_X1 U405 ( .A(\mem[0][15] ), .B(\mem[1][15] ), .S(n367), .Z(n362) );
  MUX2_X1 U406 ( .A(n362), .B(n361), .S(N11), .Z(n363) );
endmodule


module layer_16_8_16_16_W_rom_0 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n8, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n1, n2, n3, n4, n5, n6, n7, n9, n10,
         n11, n45, n46, n47, n48, n49;

  DFF_X1 \z_reg[15]  ( .D(n44), .CK(clk), .Q(z[15]), .QN(n13) );
  DFF_X1 \z_reg[14]  ( .D(n43), .CK(clk), .Q(z[14]), .QN(n14) );
  DFF_X1 \z_reg[13]  ( .D(n42), .CK(clk), .Q(z[13]), .QN(n15) );
  DFF_X1 \z_reg[12]  ( .D(n41), .CK(clk), .Q(z[12]), .QN(n16) );
  DFF_X1 \z_reg[11]  ( .D(n40), .CK(clk), .Q(z[11]), .QN(n17) );
  DFF_X1 \z_reg[10]  ( .D(n39), .CK(clk), .Q(z[10]), .QN(n18) );
  DFF_X1 \z_reg[9]  ( .D(n38), .CK(clk), .Q(z[9]), .QN(n19) );
  DFF_X1 \z_reg[8]  ( .D(n37), .CK(clk), .Q(z[8]), .QN(n20) );
  DFF_X1 \z_reg[7]  ( .D(n36), .CK(clk), .Q(z[7]), .QN(n21) );
  DFF_X1 \z_reg[6]  ( .D(n35), .CK(clk), .Q(z[6]), .QN(n22) );
  DFF_X1 \z_reg[5]  ( .D(n34), .CK(clk), .Q(z[5]), .QN(n23) );
  DFF_X1 \z_reg[4]  ( .D(n33), .CK(clk), .Q(z[4]), .QN(n24) );
  DFF_X1 \z_reg[3]  ( .D(n32), .CK(clk), .Q(z[3]), .QN(n25) );
  DFF_X1 \z_reg[2]  ( .D(n31), .CK(clk), .Q(z[2]), .QN(n26) );
  DFF_X1 \z_reg[1]  ( .D(n30), .CK(clk), .Q(z[1]), .QN(n27) );
  DFF_X1 \z_reg[0]  ( .D(n29), .CK(clk), .Q(z[0]), .QN(n28) );
  INV_X1 U3 ( .A(addr[3]), .ZN(n49) );
  OAI21_X1 U4 ( .B1(n49), .B2(n16), .A(n12), .ZN(n41) );
  OAI21_X1 U5 ( .B1(n49), .B2(n15), .A(n12), .ZN(n42) );
  OAI21_X1 U6 ( .B1(n49), .B2(n14), .A(n12), .ZN(n43) );
  OAI21_X1 U7 ( .B1(n49), .B2(n13), .A(n12), .ZN(n44) );
  AND2_X1 U8 ( .A1(addr[2]), .A2(n49), .ZN(n8) );
  INV_X1 U9 ( .A(addr[0]), .ZN(n48) );
  INV_X1 U10 ( .A(addr[1]), .ZN(n5) );
  OAI211_X1 U11 ( .C1(addr[2]), .C2(n48), .A(n49), .B(n5), .ZN(n12) );
  INV_X1 U12 ( .A(addr[2]), .ZN(n1) );
  NAND2_X1 U13 ( .A1(n49), .A2(n1), .ZN(n9) );
  INV_X1 U14 ( .A(n9), .ZN(n3) );
  NAND2_X1 U15 ( .A1(addr[1]), .A2(n3), .ZN(n6) );
  OAI21_X1 U16 ( .B1(n28), .B2(n49), .A(n6), .ZN(n29) );
  MUX2_X1 U17 ( .A(n5), .B(n27), .S(addr[3]), .Z(n2) );
  NAND2_X1 U18 ( .A1(n9), .A2(n2), .ZN(n30) );
  NAND3_X1 U19 ( .A1(addr[1]), .A2(n8), .A3(n48), .ZN(n4) );
  NAND2_X1 U20 ( .A1(n3), .A2(n5), .ZN(n45) );
  OAI211_X1 U21 ( .C1(n26), .C2(n49), .A(n4), .B(n45), .ZN(n31) );
  NAND3_X1 U22 ( .A1(n8), .A2(n5), .A3(n48), .ZN(n7) );
  OAI211_X1 U23 ( .C1(n25), .C2(n49), .A(n7), .B(n6), .ZN(n32) );
  INV_X1 U24 ( .A(n8), .ZN(n47) );
  MUX2_X1 U25 ( .A(n9), .B(n47), .S(addr[0]), .Z(n10) );
  OAI21_X1 U26 ( .B1(n24), .B2(n49), .A(n10), .ZN(n33) );
  MUX2_X1 U27 ( .A(n48), .B(n23), .S(addr[3]), .Z(n11) );
  NAND2_X1 U28 ( .A1(n45), .A2(n11), .ZN(n34) );
  MUX2_X1 U29 ( .A(addr[1]), .B(n22), .S(addr[3]), .Z(n46) );
  OAI21_X1 U30 ( .B1(n48), .B2(n47), .A(n46), .ZN(n35) );
  OAI21_X1 U31 ( .B1(n21), .B2(n49), .A(n12), .ZN(n36) );
  OAI21_X1 U32 ( .B1(n20), .B2(n49), .A(n12), .ZN(n37) );
  OAI21_X1 U33 ( .B1(n19), .B2(n49), .A(n12), .ZN(n38) );
  OAI21_X1 U34 ( .B1(n18), .B2(n49), .A(n12), .ZN(n39) );
  OAI21_X1 U35 ( .B1(n17), .B2(n49), .A(n12), .ZN(n40) );
endmodule


module layer_16_8_16_16_B_rom_0 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b1;
  assign z[14] = 1'b1;
  assign z[13] = 1'b1;
  assign z[12] = 1'b1;
  assign z[11] = 1'b1;
  assign z[10] = 1'b1;
  assign z[9] = 1'b1;
  assign z[8] = 1'b1;
  assign z[7] = 1'b1;
  assign z[6] = 1'b0;
  assign z[5] = 1'b0;
  assign z[4] = 1'b1;
  assign z[3] = 1'b0;
  assign z[2] = 1'b0;
  assign z[1] = 1'b1;
  assign z[0] = 1'b1;

endmodule


module layer_16_8_16_16_W_rom_1 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n45, n46, n47, n48, n49;

  DFF_X1 \z_reg[15]  ( .D(n44), .CK(clk), .Q(z[15]), .QN(n13) );
  DFF_X1 \z_reg[14]  ( .D(n43), .CK(clk), .Q(z[14]), .QN(n14) );
  DFF_X1 \z_reg[13]  ( .D(n42), .CK(clk), .Q(z[13]), .QN(n15) );
  DFF_X1 \z_reg[12]  ( .D(n41), .CK(clk), .Q(z[12]), .QN(n16) );
  DFF_X1 \z_reg[11]  ( .D(n40), .CK(clk), .Q(z[11]), .QN(n17) );
  DFF_X1 \z_reg[10]  ( .D(n39), .CK(clk), .Q(z[10]), .QN(n18) );
  DFF_X1 \z_reg[9]  ( .D(n38), .CK(clk), .Q(z[9]), .QN(n19) );
  DFF_X1 \z_reg[8]  ( .D(n37), .CK(clk), .Q(z[8]), .QN(n20) );
  DFF_X1 \z_reg[7]  ( .D(n36), .CK(clk), .Q(z[7]), .QN(n21) );
  DFF_X1 \z_reg[6]  ( .D(n35), .CK(clk), .Q(z[6]), .QN(n22) );
  DFF_X1 \z_reg[5]  ( .D(n34), .CK(clk), .Q(z[5]), .QN(n23) );
  DFF_X1 \z_reg[4]  ( .D(n33), .CK(clk), .Q(z[4]), .QN(n24) );
  DFF_X1 \z_reg[3]  ( .D(n32), .CK(clk), .Q(z[3]), .QN(n25) );
  DFF_X1 \z_reg[2]  ( .D(n31), .CK(clk), .Q(z[2]), .QN(n26) );
  DFF_X1 \z_reg[1]  ( .D(n30), .CK(clk), .Q(z[1]), .QN(n27) );
  DFF_X1 \z_reg[0]  ( .D(n29), .CK(clk), .Q(z[0]), .QN(n28) );
  XOR2_X1 U28 ( .A(addr[0]), .B(n49), .Z(n12) );
  AND2_X1 U3 ( .A1(addr[2]), .A2(n3), .ZN(n1) );
  INV_X1 U4 ( .A(addr[3]), .ZN(n48) );
  OAI21_X1 U5 ( .B1(n48), .B2(n16), .A(n11), .ZN(n41) );
  OAI21_X1 U6 ( .B1(n48), .B2(n15), .A(n11), .ZN(n42) );
  OAI21_X1 U7 ( .B1(n48), .B2(n14), .A(n11), .ZN(n43) );
  OAI21_X1 U8 ( .B1(n48), .B2(n13), .A(n11), .ZN(n44) );
  INV_X1 U9 ( .A(addr[1]), .ZN(n3) );
  OAI21_X1 U10 ( .B1(n12), .B2(n3), .A(n48), .ZN(n11) );
  INV_X1 U11 ( .A(addr[2]), .ZN(n49) );
  NAND2_X1 U12 ( .A1(n48), .A2(n3), .ZN(n7) );
  INV_X1 U13 ( .A(n7), .ZN(n9) );
  OAI21_X1 U14 ( .B1(addr[0]), .B2(n49), .A(n9), .ZN(n2) );
  OAI21_X1 U15 ( .B1(n28), .B2(n48), .A(n2), .ZN(n29) );
  MUX2_X1 U16 ( .A(n1), .B(n27), .S(addr[3]), .Z(n4) );
  INV_X1 U17 ( .A(n4), .ZN(n30) );
  MUX2_X1 U18 ( .A(n1), .B(n26), .S(addr[3]), .Z(n5) );
  INV_X1 U19 ( .A(n5), .ZN(n31) );
  MUX2_X1 U20 ( .A(addr[2]), .B(n25), .S(addr[3]), .Z(n6) );
  NAND2_X1 U21 ( .A1(n7), .A2(n6), .ZN(n32) );
  NAND3_X1 U22 ( .A1(addr[0]), .A2(addr[1]), .A3(n48), .ZN(n10) );
  OAI21_X1 U23 ( .B1(n24), .B2(n48), .A(n10), .ZN(n33) );
  INV_X1 U24 ( .A(addr[0]), .ZN(n8) );
  NAND3_X1 U25 ( .A1(n9), .A2(n49), .A3(n8), .ZN(n45) );
  OAI211_X1 U26 ( .C1(n23), .C2(n48), .A(n45), .B(n10), .ZN(n34) );
  NOR2_X1 U27 ( .A1(addr[0]), .A2(addr[1]), .ZN(n46) );
  MUX2_X1 U29 ( .A(n46), .B(n22), .S(addr[3]), .Z(n47) );
  INV_X1 U30 ( .A(n47), .ZN(n35) );
  OAI21_X1 U31 ( .B1(n21), .B2(n48), .A(n11), .ZN(n36) );
  OAI21_X1 U32 ( .B1(n20), .B2(n48), .A(n11), .ZN(n37) );
  OAI21_X1 U33 ( .B1(n19), .B2(n48), .A(n11), .ZN(n38) );
  OAI21_X1 U34 ( .B1(n18), .B2(n48), .A(n11), .ZN(n39) );
  OAI21_X1 U35 ( .B1(n17), .B2(n48), .A(n11), .ZN(n40) );
endmodule


module layer_16_8_16_16_B_rom_1 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b0;
  assign z[14] = 1'b0;
  assign z[13] = 1'b0;
  assign z[12] = 1'b0;
  assign z[11] = 1'b0;
  assign z[10] = 1'b0;
  assign z[9] = 1'b0;
  assign z[8] = 1'b0;
  assign z[7] = 1'b0;
  assign z[6] = 1'b1;
  assign z[5] = 1'b0;
  assign z[4] = 1'b1;
  assign z[3] = 1'b1;
  assign z[2] = 1'b0;
  assign z[1] = 1'b1;
  assign z[0] = 1'b1;

endmodule


module layer_16_8_16_16_W_rom_2 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n46, n47, n48, n49, n50, n51;

  DFF_X1 \z_reg[15]  ( .D(n45), .CK(clk), .Q(z[15]), .QN(n14) );
  DFF_X1 \z_reg[14]  ( .D(n44), .CK(clk), .Q(z[14]), .QN(n15) );
  DFF_X1 \z_reg[13]  ( .D(n43), .CK(clk), .Q(z[13]), .QN(n16) );
  DFF_X1 \z_reg[12]  ( .D(n42), .CK(clk), .Q(z[12]), .QN(n17) );
  DFF_X1 \z_reg[11]  ( .D(n41), .CK(clk), .Q(z[11]), .QN(n18) );
  DFF_X1 \z_reg[10]  ( .D(n40), .CK(clk), .Q(z[10]), .QN(n19) );
  DFF_X1 \z_reg[9]  ( .D(n39), .CK(clk), .Q(z[9]), .QN(n20) );
  DFF_X1 \z_reg[8]  ( .D(n38), .CK(clk), .Q(z[8]), .QN(n21) );
  DFF_X1 \z_reg[7]  ( .D(n37), .CK(clk), .Q(z[7]), .QN(n22) );
  DFF_X1 \z_reg[6]  ( .D(n36), .CK(clk), .Q(z[6]), .QN(n23) );
  DFF_X1 \z_reg[5]  ( .D(n35), .CK(clk), .Q(z[5]), .QN(n24) );
  DFF_X1 \z_reg[4]  ( .D(n34), .CK(clk), .Q(z[4]), .QN(n25) );
  DFF_X1 \z_reg[3]  ( .D(n33), .CK(clk), .Q(z[3]), .QN(n26) );
  DFF_X1 \z_reg[2]  ( .D(n32), .CK(clk), .Q(z[2]), .QN(n27) );
  DFF_X1 \z_reg[1]  ( .D(n31), .CK(clk), .Q(z[1]), .QN(n28) );
  DFF_X1 \z_reg[0]  ( .D(n30), .CK(clk), .Q(z[0]), .QN(n29) );
  NAND3_X1 U28 ( .A1(addr[0]), .A2(n51), .A3(addr[1]), .ZN(n13) );
  INV_X1 U3 ( .A(addr[3]), .ZN(n51) );
  OAI21_X1 U4 ( .B1(n51), .B2(n17), .A(n1), .ZN(n42) );
  OAI21_X1 U5 ( .B1(n51), .B2(n16), .A(n1), .ZN(n43) );
  OAI21_X1 U6 ( .B1(n51), .B2(n15), .A(n1), .ZN(n44) );
  OAI21_X1 U7 ( .B1(n51), .B2(n14), .A(n1), .ZN(n45) );
  AND2_X1 U8 ( .A1(n13), .A2(n47), .ZN(n1) );
  INV_X1 U9 ( .A(addr[0]), .ZN(n2) );
  NAND2_X1 U10 ( .A1(n51), .A2(n2), .ZN(n9) );
  INV_X1 U11 ( .A(n9), .ZN(n10) );
  INV_X1 U12 ( .A(addr[2]), .ZN(n5) );
  NAND2_X1 U13 ( .A1(n10), .A2(n5), .ZN(n47) );
  INV_X1 U14 ( .A(addr[1]), .ZN(n8) );
  MUX2_X1 U15 ( .A(addr[0]), .B(n8), .S(addr[2]), .Z(n3) );
  INV_X1 U16 ( .A(n3), .ZN(n11) );
  MUX2_X1 U17 ( .A(n11), .B(n29), .S(addr[3]), .Z(n4) );
  INV_X1 U18 ( .A(n4), .ZN(n30) );
  OAI211_X1 U19 ( .C1(addr[0]), .C2(n8), .A(addr[2]), .B(n51), .ZN(n46) );
  NAND2_X1 U20 ( .A1(addr[1]), .A2(n5), .ZN(n6) );
  MUX2_X1 U21 ( .A(n6), .B(n28), .S(addr[3]), .Z(n7) );
  NAND2_X1 U22 ( .A1(n46), .A2(n7), .ZN(n31) );
  OAI221_X1 U23 ( .B1(n8), .B2(n47), .C1(n27), .C2(n51), .A(n46), .ZN(n32) );
  OAI22_X1 U24 ( .A1(n9), .A2(n8), .B1(n26), .B2(n51), .ZN(n33) );
  NAND2_X1 U25 ( .A1(addr[2]), .A2(n10), .ZN(n48) );
  MUX2_X1 U26 ( .A(n11), .B(n25), .S(addr[3]), .Z(n12) );
  NAND2_X1 U27 ( .A1(n48), .A2(n12), .ZN(n34) );
  OAI211_X1 U29 ( .C1(n24), .C2(n51), .A(n47), .B(n46), .ZN(n35) );
  NAND2_X1 U30 ( .A1(addr[0]), .A2(n51), .ZN(n49) );
  MUX2_X1 U31 ( .A(n49), .B(n48), .S(addr[1]), .Z(n50) );
  OAI21_X1 U32 ( .B1(n23), .B2(n51), .A(n50), .ZN(n36) );
  OAI21_X1 U33 ( .B1(n22), .B2(n51), .A(n1), .ZN(n37) );
  OAI21_X1 U34 ( .B1(n21), .B2(n51), .A(n1), .ZN(n38) );
  OAI21_X1 U35 ( .B1(n20), .B2(n51), .A(n1), .ZN(n39) );
  OAI21_X1 U36 ( .B1(n19), .B2(n51), .A(n1), .ZN(n40) );
  OAI21_X1 U37 ( .B1(n18), .B2(n51), .A(n1), .ZN(n41) );
endmodule


module layer_16_8_16_16_B_rom_2 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b1;
  assign z[14] = 1'b1;
  assign z[13] = 1'b1;
  assign z[12] = 1'b1;
  assign z[11] = 1'b1;
  assign z[10] = 1'b1;
  assign z[9] = 1'b1;
  assign z[8] = 1'b1;
  assign z[7] = 1'b1;
  assign z[6] = 1'b1;
  assign z[5] = 1'b0;
  assign z[4] = 1'b1;
  assign z[3] = 1'b0;
  assign z[2] = 1'b1;
  assign z[1] = 1'b0;
  assign z[0] = 1'b1;

endmodule


module layer_16_8_16_16_W_rom_3 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n7, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n1, n2, n3, n4, n5, n6, n8, n9, n10,
         n11, n12, n13, n47, n48, n49, n50, n51, n52, n53, n54;

  DFF_X1 \z_reg[15]  ( .D(n46), .CK(clk), .Q(z[15]), .QN(n15) );
  DFF_X1 \z_reg[14]  ( .D(n45), .CK(clk), .Q(z[14]), .QN(n16) );
  DFF_X1 \z_reg[13]  ( .D(n44), .CK(clk), .Q(z[13]), .QN(n17) );
  DFF_X1 \z_reg[12]  ( .D(n43), .CK(clk), .Q(z[12]), .QN(n18) );
  DFF_X1 \z_reg[11]  ( .D(n42), .CK(clk), .Q(z[11]), .QN(n19) );
  DFF_X1 \z_reg[10]  ( .D(n41), .CK(clk), .Q(z[10]), .QN(n20) );
  DFF_X1 \z_reg[9]  ( .D(n40), .CK(clk), .Q(z[9]), .QN(n21) );
  DFF_X1 \z_reg[8]  ( .D(n39), .CK(clk), .Q(z[8]), .QN(n22) );
  DFF_X1 \z_reg[7]  ( .D(n38), .CK(clk), .Q(z[7]), .QN(n23) );
  DFF_X1 \z_reg[6]  ( .D(n37), .CK(clk), .Q(z[6]), .QN(n24) );
  DFF_X1 \z_reg[5]  ( .D(n36), .CK(clk), .Q(z[5]), .QN(n25) );
  DFF_X1 \z_reg[4]  ( .D(n35), .CK(clk), .Q(z[4]), .QN(n26) );
  DFF_X1 \z_reg[3]  ( .D(n34), .CK(clk), .Q(z[3]), .QN(n27) );
  DFF_X1 \z_reg[2]  ( .D(n33), .CK(clk), .Q(z[2]), .QN(n28) );
  DFF_X1 \z_reg[1]  ( .D(n32), .CK(clk), .Q(z[1]), .QN(n29) );
  DFF_X1 \z_reg[0]  ( .D(n31), .CK(clk), .Q(z[0]), .QN(n30) );
  AND2_X1 U3 ( .A1(addr[2]), .A2(n48), .ZN(n1) );
  INV_X1 U4 ( .A(addr[3]), .ZN(n54) );
  OAI21_X1 U5 ( .B1(n54), .B2(n18), .A(n14), .ZN(n43) );
  OAI21_X1 U6 ( .B1(n54), .B2(n17), .A(n14), .ZN(n44) );
  OAI21_X1 U7 ( .B1(n54), .B2(n16), .A(n14), .ZN(n45) );
  OAI21_X1 U8 ( .B1(n54), .B2(n15), .A(n14), .ZN(n46) );
  XNOR2_X1 U9 ( .A(addr[2]), .B(addr[0]), .ZN(n7) );
  OAI21_X1 U10 ( .B1(addr[1]), .B2(addr[0]), .A(addr[2]), .ZN(n2) );
  INV_X1 U11 ( .A(n2), .ZN(n13) );
  NAND2_X1 U12 ( .A1(n13), .A2(n54), .ZN(n14) );
  INV_X1 U13 ( .A(addr[1]), .ZN(n3) );
  NAND2_X1 U14 ( .A1(n54), .A2(n3), .ZN(n50) );
  INV_X1 U15 ( .A(addr[2]), .ZN(n51) );
  NAND2_X1 U16 ( .A1(addr[0]), .A2(n51), .ZN(n4) );
  MUX2_X1 U17 ( .A(n4), .B(n30), .S(addr[3]), .Z(n5) );
  NAND2_X1 U18 ( .A1(n50), .A2(n5), .ZN(n31) );
  INV_X1 U19 ( .A(addr[0]), .ZN(n48) );
  MUX2_X1 U20 ( .A(n1), .B(n29), .S(addr[3]), .Z(n6) );
  NAND2_X1 U21 ( .A1(n50), .A2(n6), .ZN(n32) );
  NAND2_X1 U22 ( .A1(addr[1]), .A2(n54), .ZN(n11) );
  INV_X1 U23 ( .A(n11), .ZN(n49) );
  INV_X1 U24 ( .A(n50), .ZN(n8) );
  AOI22_X1 U25 ( .A1(n7), .A2(n49), .B1(n1), .B2(n8), .ZN(n9) );
  OAI21_X1 U26 ( .B1(n28), .B2(n54), .A(n9), .ZN(n33) );
  NAND2_X1 U27 ( .A1(addr[0]), .A2(n54), .ZN(n10) );
  MUX2_X1 U28 ( .A(n11), .B(n10), .S(addr[2]), .Z(n12) );
  OAI21_X1 U29 ( .B1(n27), .B2(n54), .A(n12), .ZN(n34) );
  MUX2_X1 U30 ( .A(n13), .B(n26), .S(addr[3]), .Z(n47) );
  INV_X1 U31 ( .A(n47), .ZN(n35) );
  NAND2_X1 U32 ( .A1(n49), .A2(n48), .ZN(n53) );
  OAI221_X1 U33 ( .B1(n1), .B2(n50), .C1(n25), .C2(n54), .A(n53), .ZN(n36) );
  MUX2_X1 U34 ( .A(n51), .B(n24), .S(addr[3]), .Z(n52) );
  NAND2_X1 U35 ( .A1(n53), .A2(n52), .ZN(n37) );
  OAI21_X1 U36 ( .B1(n23), .B2(n54), .A(n14), .ZN(n38) );
  OAI21_X1 U37 ( .B1(n22), .B2(n54), .A(n14), .ZN(n39) );
  OAI21_X1 U38 ( .B1(n21), .B2(n54), .A(n14), .ZN(n40) );
  OAI21_X1 U39 ( .B1(n20), .B2(n54), .A(n14), .ZN(n41) );
  OAI21_X1 U40 ( .B1(n19), .B2(n54), .A(n14), .ZN(n42) );
endmodule


module layer_16_8_16_16_B_rom_3 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b0;
  assign z[14] = 1'b0;
  assign z[13] = 1'b0;
  assign z[12] = 1'b0;
  assign z[11] = 1'b0;
  assign z[10] = 1'b0;
  assign z[9] = 1'b0;
  assign z[8] = 1'b0;
  assign z[7] = 1'b0;
  assign z[6] = 1'b1;
  assign z[5] = 1'b1;
  assign z[4] = 1'b0;
  assign z[3] = 1'b0;
  assign z[2] = 1'b0;
  assign z[1] = 1'b1;
  assign z[0] = 1'b1;

endmodule


module layer_16_8_16_16_W_rom_4 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n46, n47, n48, n49, n50, n51, n52;

  DFF_X1 \z_reg[15]  ( .D(n45), .CK(clk), .Q(z[15]), .QN(n14) );
  DFF_X1 \z_reg[14]  ( .D(n44), .CK(clk), .Q(z[14]), .QN(n15) );
  DFF_X1 \z_reg[13]  ( .D(n43), .CK(clk), .Q(z[13]), .QN(n16) );
  DFF_X1 \z_reg[12]  ( .D(n42), .CK(clk), .Q(z[12]), .QN(n17) );
  DFF_X1 \z_reg[11]  ( .D(n41), .CK(clk), .Q(z[11]), .QN(n18) );
  DFF_X1 \z_reg[10]  ( .D(n40), .CK(clk), .Q(z[10]), .QN(n19) );
  DFF_X1 \z_reg[9]  ( .D(n39), .CK(clk), .Q(z[9]), .QN(n20) );
  DFF_X1 \z_reg[8]  ( .D(n38), .CK(clk), .Q(z[8]), .QN(n21) );
  DFF_X1 \z_reg[7]  ( .D(n37), .CK(clk), .Q(z[7]), .QN(n22) );
  DFF_X1 \z_reg[6]  ( .D(n36), .CK(clk), .Q(z[6]), .QN(n23) );
  DFF_X1 \z_reg[5]  ( .D(n35), .CK(clk), .Q(z[5]), .QN(n24) );
  DFF_X1 \z_reg[4]  ( .D(n34), .CK(clk), .Q(z[4]), .QN(n25) );
  DFF_X1 \z_reg[3]  ( .D(n33), .CK(clk), .Q(z[3]), .QN(n26) );
  DFF_X1 \z_reg[2]  ( .D(n32), .CK(clk), .Q(z[2]), .QN(n27) );
  DFF_X1 \z_reg[1]  ( .D(n31), .CK(clk), .Q(z[1]), .QN(n28) );
  DFF_X1 \z_reg[0]  ( .D(n30), .CK(clk), .Q(z[0]), .QN(n29) );
  OAI21_X1 U3 ( .B1(addr[2]), .B2(n7), .A(n2), .ZN(n13) );
  INV_X1 U4 ( .A(addr[3]), .ZN(n52) );
  OAI21_X1 U5 ( .B1(n52), .B2(n17), .A(n13), .ZN(n42) );
  OAI21_X1 U6 ( .B1(n52), .B2(n16), .A(n13), .ZN(n43) );
  OAI21_X1 U7 ( .B1(n52), .B2(n15), .A(n13), .ZN(n44) );
  OAI21_X1 U8 ( .B1(n52), .B2(n14), .A(n13), .ZN(n45) );
  INV_X1 U9 ( .A(addr[0]), .ZN(n7) );
  INV_X1 U10 ( .A(addr[1]), .ZN(n1) );
  NAND2_X1 U11 ( .A1(n52), .A2(n1), .ZN(n51) );
  INV_X1 U12 ( .A(n51), .ZN(n2) );
  NAND2_X1 U13 ( .A1(addr[2]), .A2(addr[0]), .ZN(n6) );
  INV_X1 U14 ( .A(n6), .ZN(n3) );
  MUX2_X1 U15 ( .A(n3), .B(n29), .S(addr[3]), .Z(n4) );
  NAND2_X1 U16 ( .A1(n51), .A2(n4), .ZN(n30) );
  INV_X1 U17 ( .A(addr[2]), .ZN(n10) );
  MUX2_X1 U18 ( .A(n10), .B(n28), .S(addr[3]), .Z(n5) );
  OAI21_X1 U19 ( .B1(n7), .B2(n51), .A(n5), .ZN(n31) );
  OAI22_X1 U20 ( .A1(n51), .A2(n6), .B1(n27), .B2(n52), .ZN(n32) );
  NAND2_X1 U21 ( .A1(n10), .A2(n7), .ZN(n49) );
  NOR2_X1 U22 ( .A1(addr[1]), .A2(n49), .ZN(n8) );
  MUX2_X1 U23 ( .A(n8), .B(n26), .S(addr[3]), .Z(n9) );
  INV_X1 U24 ( .A(n9), .ZN(n33) );
  NOR2_X1 U25 ( .A1(addr[0]), .A2(n10), .ZN(n11) );
  MUX2_X1 U26 ( .A(n11), .B(n25), .S(addr[3]), .Z(n12) );
  INV_X1 U27 ( .A(n12), .ZN(n34) );
  NAND2_X1 U28 ( .A1(addr[1]), .A2(n52), .ZN(n47) );
  INV_X1 U29 ( .A(n49), .ZN(n46) );
  MUX2_X1 U30 ( .A(n51), .B(n47), .S(n46), .Z(n48) );
  OAI21_X1 U31 ( .B1(n24), .B2(n52), .A(n48), .ZN(n35) );
  MUX2_X1 U32 ( .A(n49), .B(n23), .S(addr[3]), .Z(n50) );
  NAND2_X1 U33 ( .A1(n51), .A2(n50), .ZN(n36) );
  OAI21_X1 U34 ( .B1(n22), .B2(n52), .A(n13), .ZN(n37) );
  OAI21_X1 U35 ( .B1(n21), .B2(n52), .A(n13), .ZN(n38) );
  OAI21_X1 U36 ( .B1(n20), .B2(n52), .A(n13), .ZN(n39) );
  OAI21_X1 U37 ( .B1(n19), .B2(n52), .A(n13), .ZN(n40) );
  OAI21_X1 U38 ( .B1(n18), .B2(n52), .A(n13), .ZN(n41) );
endmodule


module layer_16_8_16_16_B_rom_4 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b1;
  assign z[14] = 1'b1;
  assign z[13] = 1'b1;
  assign z[12] = 1'b1;
  assign z[11] = 1'b1;
  assign z[10] = 1'b1;
  assign z[9] = 1'b1;
  assign z[8] = 1'b1;
  assign z[7] = 1'b1;
  assign z[6] = 1'b0;
  assign z[5] = 1'b0;
  assign z[4] = 1'b0;
  assign z[3] = 1'b1;
  assign z[2] = 1'b0;
  assign z[1] = 1'b0;
  assign z[0] = 1'b0;

endmodule


module layer_16_8_16_16_W_rom_5 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n2, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;

  DFF_X1 \z_reg[14]  ( .D(n42), .CK(clk), .Q(z[14]), .QN(n14) );
  DFF_X1 \z_reg[13]  ( .D(n41), .CK(clk), .Q(z[13]), .QN(n15) );
  DFF_X1 \z_reg[12]  ( .D(n40), .CK(clk), .Q(z[12]), .QN(n16) );
  DFF_X1 \z_reg[11]  ( .D(n39), .CK(clk), .Q(z[11]), .QN(n17) );
  DFF_X1 \z_reg[10]  ( .D(n38), .CK(clk), .Q(z[10]), .QN(n18) );
  DFF_X1 \z_reg[9]  ( .D(n37), .CK(clk), .Q(z[9]), .QN(n19) );
  DFF_X1 \z_reg[8]  ( .D(n36), .CK(clk), .Q(z[8]), .QN(n20) );
  DFF_X1 \z_reg[7]  ( .D(n35), .CK(clk), .Q(z[7]), .QN(n21) );
  DFF_X1 \z_reg[5]  ( .D(n33), .CK(clk), .Q(z[5]), .QN(n22) );
  DFF_X1 \z_reg[4]  ( .D(n32), .CK(clk), .Q(z[4]), .QN(n23) );
  DFF_X1 \z_reg[3]  ( .D(n31), .CK(clk), .Q(z[3]), .QN(n24) );
  DFF_X1 \z_reg[2]  ( .D(n30), .CK(clk), .Q(z[2]), .QN(n25) );
  DFF_X1 \z_reg[1]  ( .D(n29), .CK(clk), .Q(z[1]), .QN(n26) );
  DFF_X1 \z_reg[0]  ( .D(n28), .CK(clk), .Q(z[0]), .QN(n27) );
  DFF_X1 \z_reg[15]  ( .D(n43), .CK(clk), .Q(z[15]), .QN(n13) );
  DFF_X1 \z_reg[6]  ( .D(n34), .CK(clk), .Q(z[6]), .QN(n48) );
  OAI21_X1 U3 ( .B1(n53), .B2(n16), .A(n2), .ZN(n40) );
  OAI21_X1 U4 ( .B1(n53), .B2(n15), .A(n2), .ZN(n41) );
  OAI21_X1 U5 ( .B1(n53), .B2(n14), .A(n2), .ZN(n42) );
  OAI21_X1 U6 ( .B1(n53), .B2(n13), .A(n2), .ZN(n43) );
  INV_X1 U7 ( .A(addr[3]), .ZN(n53) );
  NAND2_X1 U8 ( .A1(addr[2]), .A2(n53), .ZN(n2) );
  INV_X1 U9 ( .A(n2), .ZN(n46) );
  NAND2_X1 U10 ( .A1(addr[1]), .A2(n46), .ZN(n51) );
  INV_X1 U11 ( .A(addr[1]), .ZN(n45) );
  XOR2_X1 U12 ( .A(n45), .B(addr[0]), .Z(n8) );
  INV_X1 U13 ( .A(n8), .ZN(n4) );
  MUX2_X1 U14 ( .A(n4), .B(n27), .S(addr[3]), .Z(n1) );
  NAND2_X1 U15 ( .A1(n51), .A2(n1), .ZN(n28) );
  NAND2_X1 U16 ( .A1(n53), .A2(n45), .ZN(n44) );
  INV_X1 U17 ( .A(addr[0]), .ZN(n49) );
  MUX2_X1 U18 ( .A(n49), .B(n26), .S(addr[3]), .Z(n3) );
  NAND2_X1 U19 ( .A1(n44), .A2(n3), .ZN(n29) );
  XOR2_X1 U20 ( .A(addr[2]), .B(n4), .Z(n5) );
  MUX2_X1 U21 ( .A(n5), .B(n25), .S(addr[3]), .Z(n6) );
  INV_X1 U22 ( .A(n6), .ZN(n30) );
  INV_X1 U23 ( .A(n44), .ZN(n7) );
  INV_X1 U24 ( .A(addr[2]), .ZN(n10) );
  NAND2_X1 U25 ( .A1(n7), .A2(n10), .ZN(n52) );
  MUX2_X1 U26 ( .A(n8), .B(n24), .S(addr[3]), .Z(n9) );
  NAND2_X1 U27 ( .A1(n52), .A2(n9), .ZN(n31) );
  NAND2_X1 U28 ( .A1(addr[1]), .A2(n10), .ZN(n11) );
  MUX2_X1 U29 ( .A(n11), .B(n23), .S(addr[3]), .Z(n12) );
  OAI21_X1 U30 ( .B1(n44), .B2(n49), .A(n12), .ZN(n32) );
  NAND3_X1 U31 ( .A1(n46), .A2(n45), .A3(n49), .ZN(n47) );
  OAI21_X1 U32 ( .B1(n22), .B2(n53), .A(n47), .ZN(n33) );
  MUX2_X1 U33 ( .A(n49), .B(n48), .S(addr[3]), .Z(n50) );
  NAND3_X1 U34 ( .A1(n52), .A2(n51), .A3(n50), .ZN(n34) );
  OAI21_X1 U35 ( .B1(n21), .B2(n53), .A(n2), .ZN(n35) );
  OAI21_X1 U36 ( .B1(n20), .B2(n53), .A(n2), .ZN(n36) );
  OAI21_X1 U37 ( .B1(n19), .B2(n53), .A(n2), .ZN(n37) );
  OAI21_X1 U38 ( .B1(n18), .B2(n53), .A(n2), .ZN(n38) );
  OAI21_X1 U39 ( .B1(n17), .B2(n53), .A(n2), .ZN(n39) );
endmodule


module layer_16_8_16_16_B_rom_5 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b1;
  assign z[14] = 1'b1;
  assign z[13] = 1'b1;
  assign z[12] = 1'b1;
  assign z[11] = 1'b1;
  assign z[10] = 1'b1;
  assign z[9] = 1'b1;
  assign z[8] = 1'b1;
  assign z[7] = 1'b1;
  assign z[6] = 1'b1;
  assign z[5] = 1'b1;
  assign z[4] = 1'b1;
  assign z[3] = 1'b1;
  assign z[2] = 1'b1;
  assign z[1] = 1'b1;
  assign z[0] = 1'b1;

endmodule


module layer_16_8_16_16_W_rom_6 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n8, n11, n14, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n1, n2, n3, n4, n5, n6, n7, n9,
         n10, n12, n13, n15, n16, n17, n18, n51, n52, n53, n54, n55, n56, n57,
         n58, n59;

  DFF_X1 \z_reg[15]  ( .D(n50), .CK(clk), .Q(z[15]), .QN(n19) );
  DFF_X1 \z_reg[14]  ( .D(n49), .CK(clk), .Q(z[14]), .QN(n20) );
  DFF_X1 \z_reg[13]  ( .D(n48), .CK(clk), .Q(z[13]), .QN(n21) );
  DFF_X1 \z_reg[12]  ( .D(n47), .CK(clk), .Q(z[12]), .QN(n22) );
  DFF_X1 \z_reg[11]  ( .D(n46), .CK(clk), .Q(z[11]), .QN(n23) );
  DFF_X1 \z_reg[10]  ( .D(n45), .CK(clk), .Q(z[10]), .QN(n24) );
  DFF_X1 \z_reg[9]  ( .D(n44), .CK(clk), .Q(z[9]), .QN(n25) );
  DFF_X1 \z_reg[8]  ( .D(n43), .CK(clk), .Q(z[8]), .QN(n26) );
  DFF_X1 \z_reg[7]  ( .D(n42), .CK(clk), .Q(z[7]), .QN(n27) );
  DFF_X1 \z_reg[6]  ( .D(n41), .CK(clk), .Q(z[6]), .QN(n28) );
  DFF_X1 \z_reg[5]  ( .D(n40), .CK(clk), .Q(z[5]), .QN(n29) );
  DFF_X1 \z_reg[4]  ( .D(n39), .CK(clk), .Q(z[4]), .QN(n30) );
  DFF_X1 \z_reg[3]  ( .D(n38), .CK(clk), .Q(z[3]), .QN(n31) );
  DFF_X1 \z_reg[2]  ( .D(n37), .CK(clk), .Q(z[2]), .QN(n32) );
  DFF_X1 \z_reg[1]  ( .D(n36), .CK(clk), .Q(z[1]), .QN(n33) );
  DFF_X1 \z_reg[0]  ( .D(n35), .CK(clk), .Q(z[0]), .QN(n34) );
  XOR2_X1 U8 ( .A(n59), .B(addr[2]), .Z(n8) );
  NOR2_X1 U3 ( .A1(n59), .A2(n58), .ZN(n14) );
  INV_X1 U4 ( .A(n1), .ZN(n56) );
  OAI21_X1 U5 ( .B1(n57), .B2(n22), .A(n56), .ZN(n47) );
  OAI21_X1 U6 ( .B1(n57), .B2(n21), .A(n56), .ZN(n48) );
  OAI21_X1 U7 ( .B1(n57), .B2(n20), .A(n56), .ZN(n49) );
  OAI21_X1 U9 ( .B1(n57), .B2(n19), .A(n56), .ZN(n50) );
  NAND2_X1 U10 ( .A1(addr[2]), .A2(n59), .ZN(n11) );
  INV_X1 U11 ( .A(addr[0]), .ZN(n59) );
  INV_X1 U12 ( .A(addr[1]), .ZN(n58) );
  INV_X1 U13 ( .A(addr[3]), .ZN(n57) );
  NAND2_X1 U14 ( .A1(addr[2]), .A2(n57), .ZN(n51) );
  OAI21_X1 U15 ( .B1(n14), .B2(addr[3]), .A(n51), .ZN(n1) );
  OAI21_X1 U16 ( .B1(addr[2]), .B2(addr[1]), .A(n59), .ZN(n2) );
  INV_X1 U17 ( .A(n2), .ZN(n17) );
  MUX2_X1 U18 ( .A(n17), .B(n34), .S(addr[3]), .Z(n3) );
  OAI21_X1 U19 ( .B1(n58), .B2(n51), .A(n3), .ZN(n35) );
  INV_X1 U20 ( .A(addr[2]), .ZN(n4) );
  NOR2_X1 U21 ( .A1(n58), .A2(n4), .ZN(n5) );
  MUX2_X1 U22 ( .A(n5), .B(n33), .S(addr[3]), .Z(n6) );
  INV_X1 U23 ( .A(n6), .ZN(n36) );
  NOR2_X1 U24 ( .A1(n8), .A2(addr[1]), .ZN(n7) );
  MUX2_X1 U25 ( .A(n7), .B(n32), .S(addr[3]), .Z(n9) );
  INV_X1 U26 ( .A(n9), .ZN(n37) );
  XOR2_X1 U27 ( .A(n58), .B(n11), .Z(n10) );
  MUX2_X1 U28 ( .A(n10), .B(n31), .S(addr[3]), .Z(n12) );
  INV_X1 U29 ( .A(n12), .ZN(n38) );
  NAND2_X1 U30 ( .A1(n59), .A2(n58), .ZN(n52) );
  XOR2_X1 U31 ( .A(n52), .B(addr[2]), .Z(n53) );
  INV_X1 U32 ( .A(n14), .ZN(n13) );
  NAND2_X1 U33 ( .A1(n53), .A2(n13), .ZN(n15) );
  MUX2_X1 U34 ( .A(n15), .B(n30), .S(addr[3]), .Z(n16) );
  INV_X1 U35 ( .A(n16), .ZN(n39) );
  MUX2_X1 U36 ( .A(n17), .B(n29), .S(addr[3]), .Z(n18) );
  OAI21_X1 U37 ( .B1(n52), .B2(n51), .A(n18), .ZN(n40) );
  INV_X1 U38 ( .A(n53), .ZN(n54) );
  MUX2_X1 U39 ( .A(n54), .B(n28), .S(addr[3]), .Z(n55) );
  INV_X1 U40 ( .A(n55), .ZN(n41) );
  OAI21_X1 U41 ( .B1(n27), .B2(n57), .A(n56), .ZN(n42) );
  OAI21_X1 U42 ( .B1(n26), .B2(n57), .A(n56), .ZN(n43) );
  OAI21_X1 U43 ( .B1(n25), .B2(n57), .A(n56), .ZN(n44) );
  OAI21_X1 U44 ( .B1(n24), .B2(n57), .A(n56), .ZN(n45) );
  OAI21_X1 U45 ( .B1(n23), .B2(n57), .A(n56), .ZN(n46) );
endmodule


module layer_16_8_16_16_B_rom_6 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b1;
  assign z[14] = 1'b1;
  assign z[13] = 1'b1;
  assign z[12] = 1'b1;
  assign z[11] = 1'b1;
  assign z[10] = 1'b1;
  assign z[9] = 1'b1;
  assign z[8] = 1'b1;
  assign z[7] = 1'b1;
  assign z[6] = 1'b1;
  assign z[5] = 1'b1;
  assign z[4] = 1'b1;
  assign z[3] = 1'b1;
  assign z[2] = 1'b0;
  assign z[1] = 1'b1;
  assign z[0] = 1'b0;

endmodule


module layer_16_8_16_16_W_rom_7 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n3, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n51, n52, n53, n54, n55;

  DFF_X1 \z_reg[15]  ( .D(n50), .CK(clk), .Q(z[15]), .QN(n21) );
  DFF_X1 \z_reg[13]  ( .D(n48), .CK(clk), .Q(z[13]), .QN(n23) );
  DFF_X1 \z_reg[12]  ( .D(n47), .CK(clk), .Q(z[12]), .QN(n24) );
  DFF_X1 \z_reg[11]  ( .D(n46), .CK(clk), .Q(z[11]), .QN(n25) );
  DFF_X1 \z_reg[10]  ( .D(n45), .CK(clk), .Q(z[10]), .QN(n26) );
  DFF_X1 \z_reg[9]  ( .D(n44), .CK(clk), .Q(z[9]), .QN(n27) );
  DFF_X1 \z_reg[8]  ( .D(n43), .CK(clk), .Q(z[8]), .QN(n28) );
  DFF_X1 \z_reg[7]  ( .D(n42), .CK(clk), .Q(z[7]), .QN(n29) );
  DFF_X1 \z_reg[6]  ( .D(n41), .CK(clk), .Q(z[6]) );
  DFF_X1 \z_reg[5]  ( .D(n40), .CK(clk), .Q(z[5]) );
  DFF_X1 \z_reg[4]  ( .D(n39), .CK(clk), .Q(z[4]), .QN(n30) );
  DFF_X1 \z_reg[3]  ( .D(n38), .CK(clk), .Q(z[3]), .QN(n31) );
  DFF_X1 \z_reg[2]  ( .D(n37), .CK(clk), .Q(z[2]), .QN(n32) );
  DFF_X1 \z_reg[1]  ( .D(n36), .CK(clk), .Q(z[1]), .QN(n33) );
  DFF_X1 \z_reg[0]  ( .D(n35), .CK(clk), .Q(z[0]), .QN(n34) );
  DFF_X1 \z_reg[14]  ( .D(n49), .CK(clk), .Q(z[14]), .QN(n22) );
  NOR3_X1 U3 ( .A1(addr[1]), .A2(addr[3]), .A3(n55), .ZN(n20) );
  AND2_X1 U4 ( .A1(addr[2]), .A2(n53), .ZN(n1) );
  AND2_X1 U5 ( .A1(n1), .A2(n55), .ZN(n2) );
  INV_X1 U6 ( .A(addr[3]), .ZN(n53) );
  NOR2_X1 U7 ( .A1(n20), .A2(n2), .ZN(n4) );
  OAI21_X1 U8 ( .B1(n53), .B2(n24), .A(n4), .ZN(n47) );
  OAI21_X1 U9 ( .B1(n53), .B2(n23), .A(n4), .ZN(n48) );
  OAI21_X1 U10 ( .B1(n53), .B2(n22), .A(n4), .ZN(n49) );
  OAI21_X1 U11 ( .B1(n53), .B2(n21), .A(n4), .ZN(n50) );
  NAND2_X1 U12 ( .A1(addr[1]), .A2(n54), .ZN(n3) );
  INV_X1 U13 ( .A(addr[0]), .ZN(n55) );
  INV_X1 U14 ( .A(addr[2]), .ZN(n54) );
  XOR2_X1 U15 ( .A(n3), .B(addr[0]), .Z(n5) );
  MUX2_X1 U16 ( .A(n5), .B(n34), .S(addr[3]), .Z(n6) );
  INV_X1 U17 ( .A(n6), .ZN(n35) );
  NAND2_X1 U18 ( .A1(n53), .A2(n54), .ZN(n52) );
  INV_X1 U19 ( .A(addr[1]), .ZN(n14) );
  NAND3_X1 U20 ( .A1(n55), .A2(n53), .A3(n14), .ZN(n17) );
  NAND2_X1 U21 ( .A1(addr[1]), .A2(addr[0]), .ZN(n8) );
  MUX2_X1 U22 ( .A(n8), .B(n33), .S(addr[3]), .Z(n7) );
  OAI211_X1 U23 ( .C1(addr[1]), .C2(n52), .A(n17), .B(n7), .ZN(n36) );
  NAND2_X1 U24 ( .A1(n2), .A2(n14), .ZN(n13) );
  INV_X1 U25 ( .A(n8), .ZN(n11) );
  NAND2_X1 U26 ( .A1(n11), .A2(n1), .ZN(n51) );
  OAI211_X1 U27 ( .C1(n32), .C2(n53), .A(n13), .B(n51), .ZN(n37) );
  NAND2_X1 U28 ( .A1(addr[1]), .A2(n1), .ZN(n9) );
  MUX2_X1 U29 ( .A(n9), .B(n52), .S(addr[0]), .Z(n10) );
  OAI21_X1 U30 ( .B1(n31), .B2(n53), .A(n10), .ZN(n38) );
  INV_X1 U31 ( .A(n52), .ZN(n12) );
  NAND2_X1 U32 ( .A1(n12), .A2(n11), .ZN(n16) );
  OAI211_X1 U33 ( .C1(n30), .C2(n53), .A(n16), .B(n13), .ZN(n39) );
  AOI22_X1 U34 ( .A1(n1), .A2(n14), .B1(z[5]), .B2(addr[3]), .ZN(n15) );
  NAND3_X1 U35 ( .A1(n16), .A2(n17), .A3(n15), .ZN(n40) );
  INV_X1 U36 ( .A(n17), .ZN(n18) );
  AOI21_X1 U37 ( .B1(z[6]), .B2(addr[3]), .A(n18), .ZN(n19) );
  OAI211_X1 U38 ( .C1(addr[0]), .C2(n52), .A(n51), .B(n19), .ZN(n41) );
  OAI21_X1 U39 ( .B1(n29), .B2(n53), .A(n4), .ZN(n42) );
  OAI21_X1 U40 ( .B1(n28), .B2(n53), .A(n4), .ZN(n43) );
  OAI21_X1 U41 ( .B1(n27), .B2(n53), .A(n4), .ZN(n44) );
  OAI21_X1 U42 ( .B1(n26), .B2(n53), .A(n4), .ZN(n45) );
  OAI21_X1 U43 ( .B1(n25), .B2(n53), .A(n4), .ZN(n46) );
endmodule


module layer_16_8_16_16_B_rom_7 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b0;
  assign z[14] = 1'b0;
  assign z[13] = 1'b0;
  assign z[12] = 1'b0;
  assign z[11] = 1'b0;
  assign z[10] = 1'b0;
  assign z[9] = 1'b0;
  assign z[8] = 1'b0;
  assign z[7] = 1'b0;
  assign z[6] = 1'b1;
  assign z[5] = 1'b1;
  assign z[4] = 1'b0;
  assign z[3] = 1'b1;
  assign z[2] = 1'b1;
  assign z[1] = 1'b0;
  assign z[0] = 1'b1;

endmodule


module layer_16_8_16_16_W_rom_8 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n48, n49, n50, n51;

  DFF_X1 \z_reg[15]  ( .D(n47), .CK(clk), .Q(z[15]), .QN(n16) );
  DFF_X1 \z_reg[14]  ( .D(n46), .CK(clk), .Q(z[14]), .QN(n17) );
  DFF_X1 \z_reg[13]  ( .D(n45), .CK(clk), .Q(z[13]), .QN(n18) );
  DFF_X1 \z_reg[12]  ( .D(n44), .CK(clk), .Q(z[12]), .QN(n19) );
  DFF_X1 \z_reg[11]  ( .D(n43), .CK(clk), .Q(z[11]), .QN(n20) );
  DFF_X1 \z_reg[10]  ( .D(n42), .CK(clk), .Q(z[10]), .QN(n21) );
  DFF_X1 \z_reg[9]  ( .D(n41), .CK(clk), .Q(z[9]), .QN(n22) );
  DFF_X1 \z_reg[8]  ( .D(n40), .CK(clk), .Q(z[8]), .QN(n23) );
  DFF_X1 \z_reg[7]  ( .D(n39), .CK(clk), .Q(z[7]), .QN(n24) );
  DFF_X1 \z_reg[6]  ( .D(n38), .CK(clk), .Q(z[6]), .QN(n25) );
  DFF_X1 \z_reg[5]  ( .D(n37), .CK(clk), .Q(z[5]), .QN(n26) );
  DFF_X1 \z_reg[4]  ( .D(n36), .CK(clk), .Q(z[4]), .QN(n27) );
  DFF_X1 \z_reg[3]  ( .D(n35), .CK(clk), .Q(z[3]), .QN(n28) );
  DFF_X1 \z_reg[2]  ( .D(n34), .CK(clk), .Q(z[2]), .QN(n29) );
  DFF_X1 \z_reg[1]  ( .D(n33), .CK(clk), .Q(z[1]), .QN(n30) );
  DFF_X1 \z_reg[0]  ( .D(n32), .CK(clk), .Q(z[0]), .QN(n31) );
  XNOR2_X1 U3 ( .A(addr[1]), .B(addr[2]), .ZN(n15) );
  INV_X1 U4 ( .A(addr[3]), .ZN(n51) );
  OAI21_X1 U5 ( .B1(n51), .B2(n19), .A(n14), .ZN(n44) );
  OAI21_X1 U6 ( .B1(n51), .B2(n18), .A(n14), .ZN(n45) );
  OAI21_X1 U7 ( .B1(n51), .B2(n17), .A(n14), .ZN(n46) );
  OAI21_X1 U8 ( .B1(n51), .B2(n16), .A(n14), .ZN(n47) );
  INV_X1 U9 ( .A(addr[0]), .ZN(n1) );
  INV_X1 U10 ( .A(addr[2]), .ZN(n3) );
  NAND2_X1 U11 ( .A1(n1), .A2(n3), .ZN(n49) );
  INV_X1 U12 ( .A(n49), .ZN(n9) );
  OAI21_X1 U13 ( .B1(n15), .B2(n9), .A(n51), .ZN(n14) );
  NAND2_X1 U14 ( .A1(addr[1]), .A2(n51), .ZN(n50) );
  NAND2_X1 U15 ( .A1(addr[2]), .A2(addr[0]), .ZN(n10) );
  NAND2_X1 U16 ( .A1(n10), .A2(n49), .ZN(n5) );
  MUX2_X1 U17 ( .A(n5), .B(n31), .S(addr[3]), .Z(n2) );
  OAI21_X1 U18 ( .B1(addr[2]), .B2(n50), .A(n2), .ZN(n32) );
  INV_X1 U19 ( .A(n50), .ZN(n4) );
  NAND3_X1 U20 ( .A1(n4), .A2(addr[0]), .A3(n3), .ZN(n7) );
  OAI21_X1 U21 ( .B1(n30), .B2(n51), .A(n7), .ZN(n33) );
  INV_X1 U22 ( .A(addr[1]), .ZN(n6) );
  NAND3_X1 U23 ( .A1(n51), .A2(n6), .A3(n5), .ZN(n8) );
  OAI211_X1 U24 ( .C1(n29), .C2(n51), .A(n8), .B(n7), .ZN(n34) );
  OAI21_X1 U25 ( .B1(n28), .B2(n51), .A(n8), .ZN(n35) );
  NAND2_X1 U26 ( .A1(n9), .A2(n51), .ZN(n12) );
  INV_X1 U27 ( .A(n10), .ZN(n11) );
  NAND2_X1 U28 ( .A1(n11), .A2(n51), .ZN(n48) );
  MUX2_X1 U29 ( .A(n12), .B(n48), .S(addr[1]), .Z(n13) );
  OAI21_X1 U30 ( .B1(n27), .B2(n51), .A(n13), .ZN(n36) );
  OAI222_X1 U31 ( .A1(addr[1]), .A2(n48), .B1(addr[0]), .B2(n50), .C1(n26), 
        .C2(n51), .ZN(n37) );
  OAI221_X1 U32 ( .B1(n50), .B2(n49), .C1(n25), .C2(n51), .A(n48), .ZN(n38) );
  OAI21_X1 U33 ( .B1(n24), .B2(n51), .A(n14), .ZN(n39) );
  OAI21_X1 U34 ( .B1(n23), .B2(n51), .A(n14), .ZN(n40) );
  OAI21_X1 U35 ( .B1(n22), .B2(n51), .A(n14), .ZN(n41) );
  OAI21_X1 U36 ( .B1(n21), .B2(n51), .A(n14), .ZN(n42) );
  OAI21_X1 U37 ( .B1(n20), .B2(n51), .A(n14), .ZN(n43) );
endmodule


module layer_16_8_16_16_B_rom_8 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b0;
  assign z[14] = 1'b0;
  assign z[13] = 1'b0;
  assign z[12] = 1'b0;
  assign z[11] = 1'b0;
  assign z[10] = 1'b0;
  assign z[9] = 1'b0;
  assign z[8] = 1'b0;
  assign z[7] = 1'b0;
  assign z[6] = 1'b1;
  assign z[5] = 1'b0;
  assign z[4] = 1'b1;
  assign z[3] = 1'b0;
  assign z[2] = 1'b0;
  assign z[1] = 1'b0;
  assign z[0] = 1'b0;

endmodule


module layer_16_8_16_16_W_rom_9 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55;

  DFF_X1 \z_reg[15]  ( .D(n45), .CK(clk), .Q(z[15]), .QN(n16) );
  DFF_X1 \z_reg[14]  ( .D(n44), .CK(clk), .Q(z[14]), .QN(n17) );
  DFF_X1 \z_reg[13]  ( .D(n43), .CK(clk), .Q(z[13]), .QN(n18) );
  DFF_X1 \z_reg[12]  ( .D(n42), .CK(clk), .Q(z[12]), .QN(n19) );
  DFF_X1 \z_reg[11]  ( .D(n41), .CK(clk), .Q(z[11]), .QN(n20) );
  DFF_X1 \z_reg[10]  ( .D(n40), .CK(clk), .Q(z[10]), .QN(n21) );
  DFF_X1 \z_reg[9]  ( .D(n39), .CK(clk), .Q(z[9]), .QN(n22) );
  DFF_X1 \z_reg[8]  ( .D(n38), .CK(clk), .Q(z[8]), .QN(n23) );
  DFF_X1 \z_reg[7]  ( .D(n37), .CK(clk), .Q(z[7]), .QN(n24) );
  DFF_X1 \z_reg[6]  ( .D(n36), .CK(clk), .Q(z[6]), .QN(n25) );
  DFF_X1 \z_reg[4]  ( .D(n34), .CK(clk), .Q(z[4]), .QN(n26) );
  DFF_X1 \z_reg[3]  ( .D(n33), .CK(clk), .Q(z[3]), .QN(n27) );
  DFF_X1 \z_reg[2]  ( .D(n32), .CK(clk), .Q(z[2]), .QN(n28) );
  DFF_X1 \z_reg[1]  ( .D(n31), .CK(clk), .Q(z[1]) );
  DFF_X1 \z_reg[5]  ( .D(n35), .CK(clk), .Q(z[5]) );
  DFF_X1 \z_reg[0]  ( .D(n30), .CK(clk), .Q(z[0]), .QN(n29) );
  INV_X1 U3 ( .A(addr[3]), .ZN(n55) );
  INV_X1 U4 ( .A(n2), .ZN(n54) );
  OAI21_X1 U5 ( .B1(n55), .B2(n19), .A(n54), .ZN(n42) );
  OAI21_X1 U6 ( .B1(n55), .B2(n18), .A(n54), .ZN(n43) );
  OAI21_X1 U7 ( .B1(n55), .B2(n17), .A(n54), .ZN(n44) );
  OAI21_X1 U8 ( .B1(n55), .B2(n16), .A(n54), .ZN(n45) );
  INV_X1 U9 ( .A(addr[2]), .ZN(n8) );
  INV_X1 U10 ( .A(addr[0]), .ZN(n1) );
  NAND2_X1 U11 ( .A1(n55), .A2(n1), .ZN(n10) );
  INV_X1 U12 ( .A(n10), .ZN(n5) );
  NAND2_X1 U13 ( .A1(addr[1]), .A2(n5), .ZN(n15) );
  OAI21_X1 U14 ( .B1(addr[3]), .B2(n8), .A(n15), .ZN(n2) );
  NAND2_X1 U15 ( .A1(addr[0]), .A2(n55), .ZN(n50) );
  INV_X1 U16 ( .A(n50), .ZN(n4) );
  INV_X1 U17 ( .A(addr[1]), .ZN(n12) );
  NAND2_X1 U18 ( .A1(n4), .A2(n12), .ZN(n48) );
  MUX2_X1 U19 ( .A(n48), .B(n10), .S(addr[2]), .Z(n3) );
  OAI211_X1 U20 ( .C1(n29), .C2(n55), .A(n15), .B(n3), .ZN(n30) );
  NAND3_X1 U21 ( .A1(addr[1]), .A2(n55), .A3(n8), .ZN(n49) );
  NAND2_X1 U22 ( .A1(n4), .A2(addr[1]), .ZN(n53) );
  NAND2_X1 U23 ( .A1(n5), .A2(n12), .ZN(n51) );
  INV_X1 U24 ( .A(n51), .ZN(n6) );
  AOI21_X1 U25 ( .B1(z[1]), .B2(addr[3]), .A(n6), .ZN(n7) );
  NAND3_X1 U26 ( .A1(n49), .A2(n53), .A3(n7), .ZN(n31) );
  MUX2_X1 U27 ( .A(n8), .B(n28), .S(addr[3]), .Z(n9) );
  NAND2_X1 U28 ( .A1(n10), .A2(n9), .ZN(n32) );
  MUX2_X1 U29 ( .A(n50), .B(n15), .S(addr[2]), .Z(n11) );
  OAI21_X1 U30 ( .B1(n27), .B2(n55), .A(n11), .ZN(n33) );
  NAND2_X1 U31 ( .A1(addr[2]), .A2(n12), .ZN(n13) );
  MUX2_X1 U32 ( .A(n13), .B(n26), .S(addr[3]), .Z(n14) );
  NAND2_X1 U33 ( .A1(n48), .A2(n14), .ZN(n34) );
  INV_X1 U34 ( .A(n15), .ZN(n46) );
  AOI21_X1 U35 ( .B1(z[5]), .B2(addr[3]), .A(n46), .ZN(n47) );
  NAND3_X1 U36 ( .A1(n49), .A2(n48), .A3(n47), .ZN(n35) );
  MUX2_X1 U37 ( .A(n51), .B(n50), .S(addr[2]), .Z(n52) );
  OAI211_X1 U38 ( .C1(n25), .C2(n55), .A(n53), .B(n52), .ZN(n36) );
  OAI21_X1 U39 ( .B1(n24), .B2(n55), .A(n54), .ZN(n37) );
  OAI21_X1 U40 ( .B1(n23), .B2(n55), .A(n54), .ZN(n38) );
  OAI21_X1 U41 ( .B1(n22), .B2(n55), .A(n54), .ZN(n39) );
  OAI21_X1 U42 ( .B1(n21), .B2(n55), .A(n54), .ZN(n40) );
  OAI21_X1 U43 ( .B1(n20), .B2(n55), .A(n54), .ZN(n41) );
endmodule


module layer_16_8_16_16_B_rom_9 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b0;
  assign z[14] = 1'b0;
  assign z[13] = 1'b0;
  assign z[12] = 1'b0;
  assign z[11] = 1'b0;
  assign z[10] = 1'b0;
  assign z[9] = 1'b0;
  assign z[8] = 1'b0;
  assign z[7] = 1'b0;
  assign z[6] = 1'b1;
  assign z[5] = 1'b1;
  assign z[4] = 1'b1;
  assign z[3] = 1'b1;
  assign z[2] = 1'b0;
  assign z[1] = 1'b1;
  assign z[0] = 1'b1;

endmodule


module layer_16_8_16_16_W_rom_10 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n49, n50, n51, n52, n53;

  DFF_X1 \z_reg[15]  ( .D(n48), .CK(clk), .Q(z[15]), .QN(n18) );
  DFF_X1 \z_reg[13]  ( .D(n46), .CK(clk), .Q(z[13]), .QN(n20) );
  DFF_X1 \z_reg[12]  ( .D(n45), .CK(clk), .Q(z[12]), .QN(n21) );
  DFF_X1 \z_reg[11]  ( .D(n44), .CK(clk), .Q(z[11]), .QN(n22) );
  DFF_X1 \z_reg[10]  ( .D(n43), .CK(clk), .Q(z[10]), .QN(n23) );
  DFF_X1 \z_reg[9]  ( .D(n42), .CK(clk), .Q(z[9]), .QN(n24) );
  DFF_X1 \z_reg[8]  ( .D(n41), .CK(clk), .Q(z[8]), .QN(n25) );
  DFF_X1 \z_reg[7]  ( .D(n40), .CK(clk), .Q(z[7]), .QN(n26) );
  DFF_X1 \z_reg[6]  ( .D(n39), .CK(clk), .Q(z[6]), .QN(n27) );
  DFF_X1 \z_reg[4]  ( .D(n37), .CK(clk), .Q(z[4]), .QN(n28) );
  DFF_X1 \z_reg[3]  ( .D(n36), .CK(clk), .Q(z[3]), .QN(n29) );
  DFF_X1 \z_reg[2]  ( .D(n35), .CK(clk), .Q(z[2]), .QN(n30) );
  DFF_X1 \z_reg[1]  ( .D(n34), .CK(clk), .Q(z[1]), .QN(n31) );
  DFF_X1 \z_reg[0]  ( .D(n33), .CK(clk), .Q(z[0]), .QN(n32) );
  DFF_X1 \z_reg[14]  ( .D(n47), .CK(clk), .Q(z[14]), .QN(n19) );
  DFF_X1 \z_reg[5]  ( .D(n38), .CK(clk), .Q(z[5]) );
  AND2_X1 U3 ( .A1(n7), .A2(n8), .ZN(n1) );
  AND2_X1 U4 ( .A1(n13), .A2(n50), .ZN(n2) );
  INV_X1 U5 ( .A(addr[3]), .ZN(n53) );
  OAI21_X1 U6 ( .B1(n53), .B2(n21), .A(n2), .ZN(n45) );
  OAI21_X1 U7 ( .B1(n53), .B2(n20), .A(n2), .ZN(n46) );
  OAI21_X1 U8 ( .B1(n53), .B2(n19), .A(n2), .ZN(n47) );
  OAI21_X1 U9 ( .B1(n53), .B2(n18), .A(n2), .ZN(n48) );
  NAND2_X1 U10 ( .A1(addr[2]), .A2(n53), .ZN(n15) );
  INV_X1 U11 ( .A(n15), .ZN(n3) );
  INV_X1 U12 ( .A(addr[1]), .ZN(n11) );
  NAND2_X1 U13 ( .A1(n3), .A2(n11), .ZN(n51) );
  INV_X1 U14 ( .A(n51), .ZN(n4) );
  NAND2_X1 U15 ( .A1(addr[0]), .A2(n4), .ZN(n13) );
  INV_X1 U16 ( .A(addr[2]), .ZN(n5) );
  NAND2_X1 U17 ( .A1(n53), .A2(n5), .ZN(n52) );
  INV_X1 U18 ( .A(n52), .ZN(n12) );
  NAND2_X1 U19 ( .A1(addr[1]), .A2(n12), .ZN(n50) );
  NAND2_X1 U20 ( .A1(addr[0]), .A2(addr[1]), .ZN(n7) );
  INV_X1 U21 ( .A(addr[0]), .ZN(n14) );
  NAND2_X1 U22 ( .A1(n11), .A2(n14), .ZN(n8) );
  MUX2_X1 U23 ( .A(n1), .B(n32), .S(addr[3]), .Z(n6) );
  NAND2_X1 U24 ( .A1(n50), .A2(n6), .ZN(n33) );
  INV_X1 U25 ( .A(n7), .ZN(n10) );
  MUX2_X1 U26 ( .A(n8), .B(n31), .S(addr[3]), .Z(n9) );
  OAI21_X1 U27 ( .B1(n10), .B2(n15), .A(n9), .ZN(n34) );
  OAI222_X1 U28 ( .A1(n11), .A2(n15), .B1(n10), .B2(n52), .C1(n30), .C2(n53), 
        .ZN(n35) );
  NAND2_X1 U29 ( .A1(n12), .A2(n14), .ZN(n16) );
  OAI211_X1 U30 ( .C1(n29), .C2(n53), .A(n16), .B(n13), .ZN(n36) );
  OAI221_X1 U31 ( .B1(n15), .B2(n14), .C1(n28), .C2(n53), .A(n51), .ZN(n37) );
  INV_X1 U32 ( .A(n16), .ZN(n17) );
  AOI21_X1 U33 ( .B1(z[5]), .B2(addr[3]), .A(n17), .ZN(n49) );
  NAND3_X1 U34 ( .A1(n51), .A2(n50), .A3(n49), .ZN(n38) );
  OAI22_X1 U35 ( .A1(n1), .A2(n52), .B1(n27), .B2(n53), .ZN(n39) );
  OAI21_X1 U36 ( .B1(n26), .B2(n53), .A(n2), .ZN(n40) );
  OAI21_X1 U37 ( .B1(n25), .B2(n53), .A(n2), .ZN(n41) );
  OAI21_X1 U38 ( .B1(n24), .B2(n53), .A(n2), .ZN(n42) );
  OAI21_X1 U39 ( .B1(n23), .B2(n53), .A(n2), .ZN(n43) );
  OAI21_X1 U40 ( .B1(n22), .B2(n53), .A(n2), .ZN(n44) );
endmodule


module layer_16_8_16_16_B_rom_10 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b0;
  assign z[14] = 1'b0;
  assign z[13] = 1'b0;
  assign z[12] = 1'b0;
  assign z[11] = 1'b0;
  assign z[10] = 1'b0;
  assign z[9] = 1'b0;
  assign z[8] = 1'b0;
  assign z[7] = 1'b0;
  assign z[6] = 1'b1;
  assign z[5] = 1'b1;
  assign z[4] = 1'b0;
  assign z[3] = 1'b1;
  assign z[2] = 1'b0;
  assign z[1] = 1'b1;
  assign z[0] = 1'b0;

endmodule


module layer_16_8_16_16_W_rom_11 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n7, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n1, n2, n3, n4, n5, n6, n8, n9, n10, n11,
         n12, n13, n14, n47, n48, n49, n50, n51, n52, n53;

  DFF_X1 \z_reg[15]  ( .D(n46), .CK(clk), .Q(z[15]), .QN(n15) );
  DFF_X1 \z_reg[14]  ( .D(n45), .CK(clk), .Q(z[14]), .QN(n16) );
  DFF_X1 \z_reg[13]  ( .D(n44), .CK(clk), .Q(z[13]), .QN(n17) );
  DFF_X1 \z_reg[12]  ( .D(n43), .CK(clk), .Q(z[12]), .QN(n18) );
  DFF_X1 \z_reg[11]  ( .D(n42), .CK(clk), .Q(z[11]), .QN(n19) );
  DFF_X1 \z_reg[10]  ( .D(n41), .CK(clk), .Q(z[10]), .QN(n20) );
  DFF_X1 \z_reg[9]  ( .D(n40), .CK(clk), .Q(z[9]), .QN(n21) );
  DFF_X1 \z_reg[8]  ( .D(n39), .CK(clk), .Q(z[8]), .QN(n22) );
  DFF_X1 \z_reg[7]  ( .D(n38), .CK(clk), .Q(z[7]), .QN(n23) );
  DFF_X1 \z_reg[6]  ( .D(n37), .CK(clk), .Q(z[6]), .QN(n24) );
  DFF_X1 \z_reg[5]  ( .D(n36), .CK(clk), .Q(z[5]), .QN(n25) );
  DFF_X1 \z_reg[4]  ( .D(n35), .CK(clk), .Q(z[4]), .QN(n26) );
  DFF_X1 \z_reg[3]  ( .D(n34), .CK(clk), .Q(z[3]), .QN(n27) );
  DFF_X1 \z_reg[2]  ( .D(n33), .CK(clk), .Q(z[2]), .QN(n28) );
  DFF_X1 \z_reg[1]  ( .D(n32), .CK(clk), .Q(z[1]), .QN(n29) );
  DFF_X1 \z_reg[0]  ( .D(n31), .CK(clk), .Q(z[0]), .QN(n30) );
  INV_X1 U3 ( .A(addr[3]), .ZN(n53) );
  INV_X1 U4 ( .A(n2), .ZN(n52) );
  OAI21_X1 U5 ( .B1(n53), .B2(n18), .A(n52), .ZN(n43) );
  OAI21_X1 U6 ( .B1(n53), .B2(n17), .A(n52), .ZN(n44) );
  OAI21_X1 U7 ( .B1(n53), .B2(n16), .A(n52), .ZN(n45) );
  OAI21_X1 U8 ( .B1(n53), .B2(n15), .A(n52), .ZN(n46) );
  NAND2_X1 U9 ( .A1(addr[0]), .A2(addr[1]), .ZN(n7) );
  INV_X1 U10 ( .A(addr[2]), .ZN(n1) );
  NAND2_X1 U11 ( .A1(n53), .A2(n1), .ZN(n5) );
  INV_X1 U12 ( .A(addr[1]), .ZN(n3) );
  NAND2_X1 U13 ( .A1(n53), .A2(n3), .ZN(n49) );
  OAI21_X1 U14 ( .B1(addr[0]), .B2(n5), .A(n49), .ZN(n2) );
  XOR2_X1 U15 ( .A(n3), .B(addr[0]), .Z(n6) );
  MUX2_X1 U16 ( .A(n6), .B(n30), .S(addr[3]), .Z(n4) );
  NAND2_X1 U17 ( .A1(n5), .A2(n4), .ZN(n31) );
  INV_X1 U18 ( .A(n5), .ZN(n9) );
  NAND2_X1 U19 ( .A1(addr[1]), .A2(n9), .ZN(n14) );
  MUX2_X1 U20 ( .A(n6), .B(n29), .S(addr[3]), .Z(n8) );
  NAND2_X1 U21 ( .A1(n14), .A2(n8), .ZN(n32) );
  NAND2_X1 U22 ( .A1(n7), .A2(n9), .ZN(n11) );
  NAND2_X1 U23 ( .A1(addr[0]), .A2(addr[2]), .ZN(n48) );
  MUX2_X1 U24 ( .A(n48), .B(n28), .S(addr[3]), .Z(n10) );
  NAND2_X1 U25 ( .A1(n11), .A2(n10), .ZN(n33) );
  INV_X1 U26 ( .A(n49), .ZN(n13) );
  INV_X1 U27 ( .A(addr[0]), .ZN(n12) );
  NAND3_X1 U28 ( .A1(addr[2]), .A2(n13), .A3(n12), .ZN(n50) );
  OAI211_X1 U29 ( .C1(n27), .C2(n53), .A(n14), .B(n50), .ZN(n34) );
  INV_X1 U30 ( .A(n14), .ZN(n47) );
  NAND2_X1 U31 ( .A1(addr[0]), .A2(n47), .ZN(n51) );
  OAI221_X1 U32 ( .B1(n49), .B2(n48), .C1(n26), .C2(n53), .A(n51), .ZN(n35) );
  OAI211_X1 U33 ( .C1(n25), .C2(n53), .A(n51), .B(n50), .ZN(n36) );
  OAI21_X1 U34 ( .B1(n24), .B2(n53), .A(n52), .ZN(n37) );
  OAI21_X1 U35 ( .B1(n23), .B2(n53), .A(n52), .ZN(n38) );
  OAI21_X1 U36 ( .B1(n22), .B2(n53), .A(n52), .ZN(n39) );
  OAI21_X1 U37 ( .B1(n21), .B2(n53), .A(n52), .ZN(n40) );
  OAI21_X1 U38 ( .B1(n20), .B2(n53), .A(n52), .ZN(n41) );
  OAI21_X1 U39 ( .B1(n19), .B2(n53), .A(n52), .ZN(n42) );
endmodule


module layer_16_8_16_16_B_rom_11 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b0;
  assign z[14] = 1'b0;
  assign z[13] = 1'b0;
  assign z[12] = 1'b0;
  assign z[11] = 1'b0;
  assign z[10] = 1'b0;
  assign z[9] = 1'b0;
  assign z[8] = 1'b0;
  assign z[7] = 1'b0;
  assign z[6] = 1'b0;
  assign z[5] = 1'b0;
  assign z[4] = 1'b1;
  assign z[3] = 1'b0;
  assign z[2] = 1'b1;
  assign z[1] = 1'b0;
  assign z[0] = 1'b1;

endmodule


module layer_16_8_16_16_W_rom_12 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n10, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n11, n12, n13, n48, n49, n50;

  DFF_X1 \z_reg[15]  ( .D(n47), .CK(clk), .Q(z[15]), .QN(n16) );
  DFF_X1 \z_reg[14]  ( .D(n46), .CK(clk), .Q(z[14]), .QN(n17) );
  DFF_X1 \z_reg[13]  ( .D(n45), .CK(clk), .Q(z[13]), .QN(n18) );
  DFF_X1 \z_reg[12]  ( .D(n44), .CK(clk), .Q(z[12]), .QN(n19) );
  DFF_X1 \z_reg[11]  ( .D(n43), .CK(clk), .Q(z[11]), .QN(n20) );
  DFF_X1 \z_reg[10]  ( .D(n42), .CK(clk), .Q(z[10]), .QN(n21) );
  DFF_X1 \z_reg[9]  ( .D(n41), .CK(clk), .Q(z[9]), .QN(n22) );
  DFF_X1 \z_reg[8]  ( .D(n40), .CK(clk), .Q(z[8]), .QN(n23) );
  DFF_X1 \z_reg[7]  ( .D(n39), .CK(clk), .Q(z[7]), .QN(n24) );
  DFF_X1 \z_reg[6]  ( .D(n38), .CK(clk), .Q(z[6]), .QN(n25) );
  DFF_X1 \z_reg[5]  ( .D(n37), .CK(clk), .Q(z[5]), .QN(n26) );
  DFF_X1 \z_reg[4]  ( .D(n36), .CK(clk), .Q(z[4]), .QN(n27) );
  DFF_X1 \z_reg[3]  ( .D(n35), .CK(clk), .Q(z[3]), .QN(n28) );
  DFF_X1 \z_reg[2]  ( .D(n34), .CK(clk), .Q(z[2]), .QN(n29) );
  DFF_X1 \z_reg[1]  ( .D(n33), .CK(clk), .Q(z[1]), .QN(n30) );
  DFF_X1 \z_reg[0]  ( .D(n32), .CK(clk), .Q(z[0]), .QN(n31) );
  XNOR2_X1 U3 ( .A(n15), .B(n50), .ZN(n14) );
  NAND2_X1 U4 ( .A1(addr[2]), .A2(n49), .ZN(n15) );
  INV_X1 U5 ( .A(addr[3]), .ZN(n48) );
  OAI21_X1 U6 ( .B1(n48), .B2(n19), .A(n10), .ZN(n44) );
  OAI21_X1 U7 ( .B1(n48), .B2(n18), .A(n10), .ZN(n45) );
  OAI21_X1 U8 ( .B1(n48), .B2(n17), .A(n10), .ZN(n46) );
  OAI21_X1 U9 ( .B1(n48), .B2(n16), .A(n10), .ZN(n47) );
  INV_X1 U10 ( .A(addr[1]), .ZN(n49) );
  INV_X1 U11 ( .A(addr[0]), .ZN(n50) );
  NAND2_X1 U12 ( .A1(n14), .A2(n48), .ZN(n10) );
  NAND2_X1 U13 ( .A1(n50), .A2(n48), .ZN(n5) );
  NAND2_X1 U14 ( .A1(addr[1]), .A2(n48), .ZN(n4) );
  INV_X1 U15 ( .A(n4), .ZN(n8) );
  NAND2_X1 U16 ( .A1(n8), .A2(addr[0]), .ZN(n7) );
  MUX2_X1 U17 ( .A(n5), .B(n7), .S(addr[2]), .Z(n1) );
  OAI21_X1 U18 ( .B1(n31), .B2(n48), .A(n1), .ZN(n32) );
  OAI21_X1 U19 ( .B1(n30), .B2(n48), .A(n4), .ZN(n33) );
  NAND2_X1 U20 ( .A1(addr[0]), .A2(n48), .ZN(n13) );
  INV_X1 U21 ( .A(addr[2]), .ZN(n3) );
  INV_X1 U22 ( .A(n13), .ZN(n2) );
  NAND2_X1 U23 ( .A1(n2), .A2(n49), .ZN(n9) );
  OAI221_X1 U24 ( .B1(n13), .B2(n3), .C1(n29), .C2(n48), .A(n9), .ZN(n34) );
  OAI221_X1 U25 ( .B1(addr[2]), .B2(n4), .C1(n28), .C2(n48), .A(n10), .ZN(n35)
         );
  INV_X1 U26 ( .A(n5), .ZN(n6) );
  NAND2_X1 U27 ( .A1(n6), .A2(n49), .ZN(n12) );
  OAI211_X1 U28 ( .C1(n27), .C2(n48), .A(n7), .B(n12), .ZN(n36) );
  NAND3_X1 U29 ( .A1(addr[2]), .A2(n50), .A3(n8), .ZN(n11) );
  OAI211_X1 U30 ( .C1(n26), .C2(n48), .A(n11), .B(n9), .ZN(n37) );
  OAI221_X1 U31 ( .B1(addr[2]), .B2(n13), .C1(n25), .C2(n48), .A(n12), .ZN(n38) );
  OAI21_X1 U32 ( .B1(n24), .B2(n48), .A(n10), .ZN(n39) );
  OAI21_X1 U33 ( .B1(n23), .B2(n48), .A(n10), .ZN(n40) );
  OAI21_X1 U34 ( .B1(n22), .B2(n48), .A(n10), .ZN(n41) );
  OAI21_X1 U35 ( .B1(n21), .B2(n48), .A(n10), .ZN(n42) );
  OAI21_X1 U36 ( .B1(n20), .B2(n48), .A(n10), .ZN(n43) );
endmodule


module layer_16_8_16_16_B_rom_12 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b0;
  assign z[14] = 1'b0;
  assign z[13] = 1'b0;
  assign z[12] = 1'b0;
  assign z[11] = 1'b0;
  assign z[10] = 1'b0;
  assign z[9] = 1'b0;
  assign z[8] = 1'b0;
  assign z[7] = 1'b0;
  assign z[6] = 1'b0;
  assign z[5] = 1'b1;
  assign z[4] = 1'b0;
  assign z[3] = 1'b1;
  assign z[2] = 1'b0;
  assign z[1] = 1'b1;
  assign z[0] = 1'b0;

endmodule


module layer_16_8_16_16_W_rom_13 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n47, n48, n49, n50, n51;

  DFF_X1 \z_reg[14]  ( .D(n45), .CK(clk), .Q(z[14]), .QN(n18) );
  DFF_X1 \z_reg[13]  ( .D(n44), .CK(clk), .Q(z[13]), .QN(n19) );
  DFF_X1 \z_reg[12]  ( .D(n43), .CK(clk), .Q(z[12]), .QN(n20) );
  DFF_X1 \z_reg[11]  ( .D(n42), .CK(clk), .Q(z[11]), .QN(n21) );
  DFF_X1 \z_reg[10]  ( .D(n41), .CK(clk), .Q(z[10]), .QN(n22) );
  DFF_X1 \z_reg[9]  ( .D(n40), .CK(clk), .Q(z[9]), .QN(n23) );
  DFF_X1 \z_reg[8]  ( .D(n39), .CK(clk), .Q(z[8]), .QN(n24) );
  DFF_X1 \z_reg[7]  ( .D(n38), .CK(clk), .Q(z[7]), .QN(n25) );
  DFF_X1 \z_reg[6]  ( .D(n37), .CK(clk), .Q(z[6]), .QN(n1) );
  DFF_X1 \z_reg[4]  ( .D(n35), .CK(clk), .Q(z[4]), .QN(n26) );
  DFF_X1 \z_reg[3]  ( .D(n34), .CK(clk), .Q(z[3]), .QN(n27) );
  DFF_X1 \z_reg[2]  ( .D(n33), .CK(clk), .Q(z[2]), .QN(n28) );
  DFF_X1 \z_reg[1]  ( .D(n32), .CK(clk), .Q(z[1]), .QN(n29) );
  DFF_X1 \z_reg[0]  ( .D(n31), .CK(clk), .Q(z[0]), .QN(n30) );
  DFF_X1 \z_reg[15]  ( .D(n46), .CK(clk), .Q(z[15]), .QN(n17) );
  DFF_X1 \z_reg[5]  ( .D(n36), .CK(clk), .Q(z[5]), .QN(n15) );
  INV_X1 U3 ( .A(n4), .ZN(n49) );
  INV_X1 U4 ( .A(addr[3]), .ZN(n50) );
  OAI21_X1 U5 ( .B1(n50), .B2(n20), .A(n49), .ZN(n43) );
  OAI21_X1 U6 ( .B1(n50), .B2(n19), .A(n49), .ZN(n44) );
  OAI21_X1 U7 ( .B1(n50), .B2(n18), .A(n49), .ZN(n45) );
  OAI21_X1 U8 ( .B1(n50), .B2(n17), .A(n49), .ZN(n46) );
  OR2_X1 U9 ( .A1(n51), .A2(addr[2]), .ZN(n2) );
  INV_X1 U10 ( .A(addr[0]), .ZN(n51) );
  INV_X1 U11 ( .A(addr[1]), .ZN(n8) );
  INV_X1 U12 ( .A(addr[2]), .ZN(n3) );
  NAND3_X1 U13 ( .A1(n50), .A2(n8), .A3(n3), .ZN(n47) );
  NAND2_X1 U14 ( .A1(addr[2]), .A2(n50), .ZN(n48) );
  INV_X1 U15 ( .A(n48), .ZN(n6) );
  NAND3_X1 U16 ( .A1(addr[1]), .A2(n51), .A3(n6), .ZN(n7) );
  OAI21_X1 U17 ( .B1(n51), .B2(n47), .A(n7), .ZN(n4) );
  MUX2_X1 U18 ( .A(addr[0]), .B(n30), .S(addr[3]), .Z(n5) );
  NAND2_X1 U19 ( .A1(n47), .A2(n5), .ZN(n31) );
  NAND3_X1 U20 ( .A1(n6), .A2(addr[0]), .A3(n8), .ZN(n11) );
  OAI211_X1 U21 ( .C1(n29), .C2(n50), .A(n11), .B(n7), .ZN(n32) );
  NAND3_X1 U22 ( .A1(addr[1]), .A2(addr[0]), .A3(n50), .ZN(n14) );
  NAND2_X1 U23 ( .A1(n8), .A2(n2), .ZN(n9) );
  MUX2_X1 U24 ( .A(n9), .B(n28), .S(addr[3]), .Z(n10) );
  NAND2_X1 U25 ( .A1(n14), .A2(n10), .ZN(n33) );
  OAI221_X1 U26 ( .B1(addr[2]), .B2(n14), .C1(n27), .C2(n50), .A(n11), .ZN(n34) );
  MUX2_X1 U27 ( .A(n2), .B(n26), .S(addr[3]), .Z(n12) );
  NAND2_X1 U28 ( .A1(n14), .A2(n12), .ZN(n35) );
  MUX2_X1 U29 ( .A(n47), .B(n48), .S(addr[0]), .Z(n13) );
  OAI211_X1 U30 ( .C1(n50), .C2(n15), .A(n14), .B(n13), .ZN(n36) );
  MUX2_X1 U31 ( .A(n2), .B(n1), .S(addr[3]), .Z(n16) );
  OAI211_X1 U32 ( .C1(addr[0]), .C2(n48), .A(n47), .B(n16), .ZN(n37) );
  OAI21_X1 U33 ( .B1(n25), .B2(n50), .A(n49), .ZN(n38) );
  OAI21_X1 U34 ( .B1(n24), .B2(n50), .A(n49), .ZN(n39) );
  OAI21_X1 U35 ( .B1(n23), .B2(n50), .A(n49), .ZN(n40) );
  OAI21_X1 U36 ( .B1(n22), .B2(n50), .A(n49), .ZN(n41) );
  OAI21_X1 U37 ( .B1(n21), .B2(n50), .A(n49), .ZN(n42) );
endmodule


module layer_16_8_16_16_B_rom_13 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b1;
  assign z[14] = 1'b1;
  assign z[13] = 1'b1;
  assign z[12] = 1'b1;
  assign z[11] = 1'b1;
  assign z[10] = 1'b1;
  assign z[9] = 1'b1;
  assign z[8] = 1'b1;
  assign z[7] = 1'b1;
  assign z[6] = 1'b0;
  assign z[5] = 1'b1;
  assign z[4] = 1'b0;
  assign z[3] = 1'b1;
  assign z[2] = 1'b1;
  assign z[1] = 1'b0;
  assign z[0] = 1'b1;

endmodule


module layer_16_8_16_16_W_rom_14 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n48, n49, n50, n51, n52;

  DFF_X1 \z_reg[15]  ( .D(n47), .CK(clk), .Q(z[15]), .QN(n17) );
  DFF_X1 \z_reg[13]  ( .D(n45), .CK(clk), .Q(z[13]), .QN(n19) );
  DFF_X1 \z_reg[12]  ( .D(n44), .CK(clk), .Q(z[12]), .QN(n20) );
  DFF_X1 \z_reg[11]  ( .D(n43), .CK(clk), .Q(z[11]), .QN(n21) );
  DFF_X1 \z_reg[10]  ( .D(n42), .CK(clk), .Q(z[10]), .QN(n22) );
  DFF_X1 \z_reg[9]  ( .D(n41), .CK(clk), .Q(z[9]), .QN(n23) );
  DFF_X1 \z_reg[8]  ( .D(n40), .CK(clk), .Q(z[8]), .QN(n24) );
  DFF_X1 \z_reg[7]  ( .D(n39), .CK(clk), .Q(z[7]), .QN(n25) );
  DFF_X1 \z_reg[6]  ( .D(n38), .CK(clk), .Q(z[6]), .QN(n26) );
  DFF_X1 \z_reg[5]  ( .D(n37), .CK(clk), .Q(z[5]), .QN(n27) );
  DFF_X1 \z_reg[4]  ( .D(n36), .CK(clk), .Q(z[4]), .QN(n1) );
  DFF_X1 \z_reg[3]  ( .D(n35), .CK(clk), .Q(z[3]), .QN(n28) );
  DFF_X1 \z_reg[2]  ( .D(n34), .CK(clk), .Q(z[2]), .QN(n29) );
  DFF_X1 \z_reg[1]  ( .D(n33), .CK(clk), .Q(z[1]), .QN(n30) );
  DFF_X1 \z_reg[0]  ( .D(n32), .CK(clk), .Q(z[0]), .QN(n31) );
  DFF_X1 \z_reg[14]  ( .D(n46), .CK(clk), .Q(z[14]), .QN(n18) );
  OR2_X1 U3 ( .A1(n51), .A2(n52), .ZN(n2) );
  INV_X1 U4 ( .A(addr[3]), .ZN(n50) );
  AND2_X1 U5 ( .A1(n4), .A2(n15), .ZN(n3) );
  OR3_X1 U6 ( .A1(addr[0]), .A2(addr[3]), .A3(n51), .ZN(n4) );
  OAI21_X1 U7 ( .B1(n50), .B2(n20), .A(n3), .ZN(n44) );
  OAI21_X1 U8 ( .B1(n50), .B2(n19), .A(n3), .ZN(n45) );
  OAI21_X1 U9 ( .B1(n50), .B2(n18), .A(n3), .ZN(n46) );
  OAI21_X1 U10 ( .B1(n50), .B2(n17), .A(n3), .ZN(n47) );
  INV_X1 U11 ( .A(addr[1]), .ZN(n51) );
  INV_X1 U12 ( .A(addr[2]), .ZN(n5) );
  NAND2_X1 U13 ( .A1(n50), .A2(n5), .ZN(n49) );
  INV_X1 U14 ( .A(n49), .ZN(n6) );
  NAND2_X1 U15 ( .A1(n6), .A2(n51), .ZN(n15) );
  INV_X1 U16 ( .A(addr[0]), .ZN(n52) );
  NAND2_X1 U17 ( .A1(n6), .A2(addr[1]), .ZN(n9) );
  NAND2_X1 U18 ( .A1(addr[2]), .A2(n50), .ZN(n16) );
  INV_X1 U19 ( .A(n16), .ZN(n11) );
  NAND2_X1 U20 ( .A1(n11), .A2(n2), .ZN(n10) );
  OAI211_X1 U21 ( .C1(n31), .C2(n50), .A(n9), .B(n10), .ZN(n32) );
  NAND2_X1 U22 ( .A1(n51), .A2(n52), .ZN(n7) );
  MUX2_X1 U23 ( .A(n7), .B(n30), .S(addr[3]), .Z(n8) );
  NAND2_X1 U24 ( .A1(n10), .A2(n8), .ZN(n33) );
  OAI21_X1 U25 ( .B1(n29), .B2(n50), .A(n9), .ZN(n34) );
  OAI21_X1 U26 ( .B1(n28), .B2(n50), .A(n10), .ZN(n35) );
  NAND2_X1 U27 ( .A1(n11), .A2(addr[1]), .ZN(n48) );
  NAND2_X1 U28 ( .A1(n51), .A2(n50), .ZN(n12) );
  MUX2_X1 U29 ( .A(n49), .B(n12), .S(addr[0]), .Z(n13) );
  OAI211_X1 U30 ( .C1(n50), .C2(n1), .A(n48), .B(n13), .ZN(n36) );
  MUX2_X1 U31 ( .A(n2), .B(n27), .S(addr[3]), .Z(n14) );
  OAI211_X1 U32 ( .C1(addr[0]), .C2(n16), .A(n15), .B(n14), .ZN(n37) );
  OAI221_X1 U33 ( .B1(n52), .B2(n49), .C1(n26), .C2(n50), .A(n48), .ZN(n38) );
  OAI21_X1 U34 ( .B1(n25), .B2(n50), .A(n3), .ZN(n39) );
  OAI21_X1 U35 ( .B1(n24), .B2(n50), .A(n3), .ZN(n40) );
  OAI21_X1 U36 ( .B1(n23), .B2(n50), .A(n3), .ZN(n41) );
  OAI21_X1 U37 ( .B1(n22), .B2(n50), .A(n3), .ZN(n42) );
  OAI21_X1 U38 ( .B1(n21), .B2(n50), .A(n3), .ZN(n43) );
endmodule


module layer_16_8_16_16_B_rom_14 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b1;
  assign z[14] = 1'b1;
  assign z[13] = 1'b1;
  assign z[12] = 1'b1;
  assign z[11] = 1'b1;
  assign z[10] = 1'b1;
  assign z[9] = 1'b1;
  assign z[8] = 1'b1;
  assign z[7] = 1'b1;
  assign z[6] = 1'b1;
  assign z[5] = 1'b0;
  assign z[4] = 1'b0;
  assign z[3] = 1'b1;
  assign z[2] = 1'b0;
  assign z[1] = 1'b0;
  assign z[0] = 1'b1;

endmodule


module layer_16_8_16_16_W_rom_15 ( clk, addr, z );
  input [3:0] addr;
  output [15:0] z;
  input clk;
  wire   n4, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n1, n2, n3, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n47, n48, n49, n50;

  DFF_X1 \z_reg[15]  ( .D(n46), .CK(clk), .Q(z[15]), .QN(n15) );
  DFF_X1 \z_reg[14]  ( .D(n45), .CK(clk), .Q(z[14]), .QN(n16) );
  DFF_X1 \z_reg[13]  ( .D(n44), .CK(clk), .Q(z[13]), .QN(n17) );
  DFF_X1 \z_reg[12]  ( .D(n43), .CK(clk), .Q(z[12]), .QN(n18) );
  DFF_X1 \z_reg[11]  ( .D(n42), .CK(clk), .Q(z[11]), .QN(n19) );
  DFF_X1 \z_reg[10]  ( .D(n41), .CK(clk), .Q(z[10]), .QN(n20) );
  DFF_X1 \z_reg[9]  ( .D(n40), .CK(clk), .Q(z[9]), .QN(n21) );
  DFF_X1 \z_reg[8]  ( .D(n39), .CK(clk), .Q(z[8]), .QN(n22) );
  DFF_X1 \z_reg[7]  ( .D(n38), .CK(clk), .Q(z[7]), .QN(n23) );
  DFF_X1 \z_reg[6]  ( .D(n37), .CK(clk), .Q(z[6]), .QN(n24) );
  DFF_X1 \z_reg[5]  ( .D(n36), .CK(clk), .Q(z[5]), .QN(n25) );
  DFF_X1 \z_reg[4]  ( .D(n35), .CK(clk), .Q(z[4]), .QN(n26) );
  DFF_X1 \z_reg[3]  ( .D(n34), .CK(clk), .Q(z[3]), .QN(n27) );
  DFF_X1 \z_reg[2]  ( .D(n33), .CK(clk), .Q(z[2]), .QN(n28) );
  DFF_X1 \z_reg[1]  ( .D(n32), .CK(clk), .Q(z[1]), .QN(n29) );
  DFF_X1 \z_reg[0]  ( .D(n31), .CK(clk), .Q(z[0]), .QN(n30) );
  INV_X1 U3 ( .A(addr[3]), .ZN(n48) );
  OAI21_X1 U4 ( .B1(n48), .B2(n18), .A(n1), .ZN(n43) );
  OAI21_X1 U5 ( .B1(n48), .B2(n17), .A(n1), .ZN(n44) );
  OAI21_X1 U6 ( .B1(n48), .B2(n16), .A(n1), .ZN(n45) );
  OAI21_X1 U7 ( .B1(n48), .B2(n15), .A(n1), .ZN(n46) );
  AND2_X1 U8 ( .A1(n2), .A2(n8), .ZN(n1) );
  OR3_X1 U9 ( .A1(n50), .A2(addr[3]), .A3(n49), .ZN(n2) );
  NOR2_X1 U10 ( .A1(addr[1]), .A2(addr[2]), .ZN(n4) );
  INV_X1 U11 ( .A(addr[0]), .ZN(n50) );
  INV_X1 U12 ( .A(addr[1]), .ZN(n49) );
  NAND3_X1 U13 ( .A1(addr[2]), .A2(n48), .A3(n49), .ZN(n8) );
  XOR2_X1 U14 ( .A(n50), .B(n4), .Z(n3) );
  MUX2_X1 U15 ( .A(n3), .B(n30), .S(addr[3]), .Z(n5) );
  INV_X1 U16 ( .A(n5), .ZN(n31) );
  NAND2_X1 U17 ( .A1(addr[1]), .A2(n50), .ZN(n10) );
  INV_X1 U18 ( .A(n10), .ZN(n47) );
  MUX2_X1 U19 ( .A(n47), .B(n29), .S(addr[3]), .Z(n6) );
  INV_X1 U20 ( .A(n6), .ZN(n32) );
  INV_X1 U21 ( .A(addr[2]), .ZN(n7) );
  NAND2_X1 U22 ( .A1(n48), .A2(n7), .ZN(n14) );
  OAI222_X1 U23 ( .A1(n50), .A2(n8), .B1(n14), .B2(n10), .C1(n28), .C2(n48), 
        .ZN(n33) );
  MUX2_X1 U24 ( .A(n50), .B(n27), .S(addr[3]), .Z(n9) );
  OAI21_X1 U25 ( .B1(n49), .B2(n14), .A(n9), .ZN(n34) );
  NAND3_X1 U26 ( .A1(addr[2]), .A2(addr[1]), .A3(n48), .ZN(n13) );
  OAI21_X1 U27 ( .B1(n26), .B2(n48), .A(n13), .ZN(n35) );
  NAND2_X1 U28 ( .A1(addr[2]), .A2(n10), .ZN(n11) );
  MUX2_X1 U29 ( .A(n11), .B(n25), .S(addr[3]), .Z(n12) );
  OAI21_X1 U30 ( .B1(addr[0]), .B2(n14), .A(n12), .ZN(n36) );
  OAI221_X1 U31 ( .B1(n47), .B2(n14), .C1(n24), .C2(n48), .A(n13), .ZN(n37) );
  OAI21_X1 U32 ( .B1(n23), .B2(n48), .A(n1), .ZN(n38) );
  OAI21_X1 U33 ( .B1(n22), .B2(n48), .A(n1), .ZN(n39) );
  OAI21_X1 U34 ( .B1(n21), .B2(n48), .A(n1), .ZN(n40) );
  OAI21_X1 U35 ( .B1(n20), .B2(n48), .A(n1), .ZN(n41) );
  OAI21_X1 U36 ( .B1(n19), .B2(n48), .A(n1), .ZN(n42) );
endmodule


module layer_16_8_16_16_B_rom_15 ( clk, addr, z );
  input [0:0] addr;
  output [15:0] z;
  input clk;

  assign z[15] = 1'b0;
  assign z[14] = 1'b0;
  assign z[13] = 1'b0;
  assign z[12] = 1'b0;
  assign z[11] = 1'b0;
  assign z[10] = 1'b0;
  assign z[9] = 1'b0;
  assign z[8] = 1'b0;
  assign z[7] = 1'b0;
  assign z[6] = 1'b1;
  assign z[5] = 1'b0;
  assign z[4] = 1'b1;
  assign z[3] = 1'b1;
  assign z[2] = 1'b1;
  assign z[1] = 1'b0;
  assign z[0] = 1'b0;

endmodule


module datapath_M16_N8_T16_P16_0_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n23, n25, n27, n29, n31, n32,
         n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n95, n96, n97, n98, n99,
         n103, n104, n105, n106, n107, n111, n112, n113, n114, n115, n117,
         n119, n120, n122, n125, n127, n128, n129, n131, n135, n139, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n245, n247, n249, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n418, n419, n420, n421, n422, n423, n424, n426,
         n427, n428, n433, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n580, n581, n582, n583, n584;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U148 ( .A(n265), .B(n144), .Z(n145) );
  XOR2_X1 U150 ( .A(n271), .B(n146), .Z(n147) );
  XOR2_X1 U152 ( .A(n301), .B(n148), .Z(n149) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U161 ( .A(n177), .B(n168), .CI(n166), .CO(n163), .S(n164) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n274), .CI(n292), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n283), .B(n253), .CI(n305), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n319), .B(n269), .CO(n193), .S(n194) );
  FA_X1 U177 ( .A(n205), .B(n200), .CI(n198), .CO(n195), .S(n196) );
  FA_X1 U178 ( .A(n207), .B(n209), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n284), .B(n276), .CI(n294), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n320), .B(n270), .CI(n306), .CO(n201), .S(n202) );
  FA_X1 U181 ( .A(n208), .B(n213), .CI(n206), .CO(n203), .S(n204) );
  FA_X1 U182 ( .A(n210), .B(n307), .CI(n215), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n254), .B(n295), .CI(n285), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n255), .B(n309), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n287), .B(n323), .CO(n221), .S(n222) );
  FA_X1 U192 ( .A(n310), .B(n288), .CI(n324), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n311), .B(n325), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n312), .B(n300), .CI(n326), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  BUF_X1 U414 ( .A(n106), .Z(n507) );
  OR2_X1 U415 ( .A1(n212), .A2(n217), .ZN(n490) );
  OR2_X2 U416 ( .A1(n491), .A2(n492), .ZN(n12) );
  XNOR2_X1 U417 ( .A(n570), .B(a[2]), .ZN(n491) );
  XOR2_X1 U418 ( .A(n572), .B(a[2]), .Z(n492) );
  OR2_X1 U419 ( .A1(n176), .A2(n185), .ZN(n493) );
  XOR2_X1 U420 ( .A(n573), .B(a[4]), .Z(n494) );
  OR2_X1 U421 ( .A1(n224), .A2(n227), .ZN(n495) );
  NOR2_X1 U422 ( .A1(n164), .A2(n175), .ZN(n496) );
  NOR2_X1 U423 ( .A1(n164), .A2(n175), .ZN(n75) );
  BUF_X2 U424 ( .A(n575), .Z(n535) );
  AOI21_X2 U425 ( .B1(n557), .B2(n120), .A(n117), .ZN(n115) );
  CLKBUF_X3 U426 ( .A(n19), .Z(n521) );
  INV_X1 U427 ( .A(n540), .ZN(n27) );
  INV_X1 U428 ( .A(n501), .ZN(n111) );
  OR2_X1 U429 ( .A1(n329), .A2(n258), .ZN(n497) );
  CLKBUF_X1 U430 ( .A(n507), .Z(n498) );
  CLKBUF_X1 U431 ( .A(n25), .Z(n499) );
  OR2_X2 U432 ( .A1(n520), .A2(n540), .ZN(n500) );
  OR2_X1 U433 ( .A1(n520), .A2(n540), .ZN(n29) );
  AND2_X1 U434 ( .A1(n232), .A2(n233), .ZN(n501) );
  AND2_X1 U435 ( .A1(n212), .A2(n217), .ZN(n502) );
  XNOR2_X1 U436 ( .A(n226), .B(n503), .ZN(n224) );
  XNOR2_X1 U437 ( .A(n229), .B(n298), .ZN(n503) );
  AND2_X1 U438 ( .A1(n224), .A2(n227), .ZN(n504) );
  OR2_X2 U439 ( .A1(n538), .A2(n544), .ZN(n511) );
  BUF_X2 U440 ( .A(n9), .Z(n505) );
  CLKBUF_X1 U441 ( .A(n9), .Z(n565) );
  CLKBUF_X1 U442 ( .A(n18), .Z(n506) );
  INV_X1 U443 ( .A(n516), .ZN(n37) );
  CLKBUF_X1 U444 ( .A(n7), .Z(n528) );
  XNOR2_X1 U445 ( .A(n7), .B(a[4]), .ZN(n16) );
  INV_X1 U446 ( .A(n545), .ZN(n508) );
  CLKBUF_X3 U447 ( .A(n16), .Z(n564) );
  AOI21_X1 U448 ( .B1(n517), .B2(n80), .A(n81), .ZN(n509) );
  BUF_X1 U449 ( .A(n83), .Z(n510) );
  CLKBUF_X1 U450 ( .A(n16), .Z(n518) );
  OAI22_X1 U451 ( .A1(n530), .A2(n375), .B1(n374), .B2(n564), .ZN(n298) );
  OR2_X1 U452 ( .A1(n544), .A2(n538), .ZN(n23) );
  INV_X1 U453 ( .A(n541), .ZN(n512) );
  INV_X1 U454 ( .A(n514), .ZN(n513) );
  XNOR2_X1 U455 ( .A(n88), .B(n51), .ZN(product[10]) );
  INV_X1 U456 ( .A(n515), .ZN(n514) );
  XNOR2_X1 U457 ( .A(n535), .B(a[6]), .ZN(n515) );
  INV_X1 U458 ( .A(n515), .ZN(n522) );
  INV_X2 U459 ( .A(n575), .ZN(n573) );
  XNOR2_X1 U460 ( .A(n580), .B(a[12]), .ZN(n516) );
  OAI21_X1 U461 ( .B1(n89), .B2(n91), .A(n90), .ZN(n517) );
  XOR2_X1 U462 ( .A(n578), .B(a[10]), .Z(n32) );
  INV_X1 U463 ( .A(n541), .ZN(n577) );
  NOR2_X1 U464 ( .A1(n186), .A2(n195), .ZN(n519) );
  NOR2_X1 U465 ( .A1(n186), .A2(n195), .ZN(n82) );
  XNOR2_X1 U466 ( .A(n577), .B(a[8]), .ZN(n520) );
  XNOR2_X1 U467 ( .A(n580), .B(a[10]), .ZN(n428) );
  INV_X1 U468 ( .A(n580), .ZN(n579) );
  INV_X1 U469 ( .A(n569), .ZN(n523) );
  BUF_X1 U470 ( .A(n567), .Z(n524) );
  BUF_X2 U471 ( .A(n567), .Z(n525) );
  INV_X1 U472 ( .A(n249), .ZN(n567) );
  BUF_X2 U473 ( .A(n32), .Z(n526) );
  CLKBUF_X1 U474 ( .A(n91), .Z(n527) );
  INV_X1 U475 ( .A(n571), .ZN(n529) );
  INV_X2 U476 ( .A(n572), .ZN(n571) );
  NAND2_X1 U477 ( .A1(n554), .A2(n518), .ZN(n530) );
  OAI21_X1 U478 ( .B1(n113), .B2(n115), .A(n114), .ZN(n531) );
  CLKBUF_X1 U479 ( .A(n99), .Z(n532) );
  AOI21_X1 U480 ( .B1(n112), .B2(n559), .A(n501), .ZN(n533) );
  OAI21_X1 U481 ( .B1(n508), .B2(n533), .A(n498), .ZN(n534) );
  OR2_X1 U482 ( .A1(n552), .A2(n405), .ZN(n536) );
  OR2_X1 U483 ( .A1(n404), .A2(n525), .ZN(n537) );
  NAND2_X1 U484 ( .A1(n536), .A2(n537), .ZN(n326) );
  XNOR2_X1 U485 ( .A(n19), .B(a[6]), .ZN(n538) );
  INV_X1 U486 ( .A(n574), .ZN(n539) );
  INV_X1 U487 ( .A(n13), .ZN(n575) );
  XNOR2_X1 U488 ( .A(n576), .B(a[8]), .ZN(n540) );
  INV_X1 U489 ( .A(n25), .ZN(n541) );
  NAND2_X1 U490 ( .A1(n428), .A2(n32), .ZN(n542) );
  XOR2_X1 U491 ( .A(n499), .B(a[10]), .Z(n543) );
  XNOR2_X1 U492 ( .A(n535), .B(a[6]), .ZN(n544) );
  XOR2_X1 U493 ( .A(n570), .B(a[2]), .Z(n9) );
  OR2_X1 U494 ( .A1(n228), .A2(n231), .ZN(n545) );
  XNOR2_X1 U495 ( .A(n570), .B(n249), .ZN(n433) );
  NAND2_X1 U496 ( .A1(n226), .A2(n229), .ZN(n546) );
  NAND2_X1 U497 ( .A1(n226), .A2(n298), .ZN(n547) );
  NAND2_X1 U498 ( .A1(n229), .A2(n298), .ZN(n548) );
  NAND3_X1 U499 ( .A1(n546), .A2(n547), .A3(n548), .ZN(n223) );
  CLKBUF_X1 U500 ( .A(n96), .Z(n549) );
  OR2_X1 U501 ( .A1(n6), .A2(n403), .ZN(n550) );
  OR2_X1 U502 ( .A1(n402), .A2(n525), .ZN(n551) );
  NAND2_X1 U503 ( .A1(n550), .A2(n551), .ZN(n324) );
  NAND2_X1 U504 ( .A1(n524), .A2(n433), .ZN(n552) );
  NAND2_X1 U505 ( .A1(n433), .A2(n524), .ZN(n553) );
  NAND2_X1 U506 ( .A1(n494), .A2(n518), .ZN(n18) );
  XOR2_X1 U507 ( .A(n573), .B(a[4]), .Z(n554) );
  NAND2_X1 U508 ( .A1(n555), .A2(n69), .ZN(n47) );
  INV_X1 U509 ( .A(n73), .ZN(n71) );
  INV_X1 U510 ( .A(n69), .ZN(n67) );
  NAND2_X1 U511 ( .A1(n73), .A2(n555), .ZN(n64) );
  INV_X1 U512 ( .A(n74), .ZN(n72) );
  NAND2_X1 U513 ( .A1(n493), .A2(n79), .ZN(n49) );
  NAND2_X1 U514 ( .A1(n129), .A2(n90), .ZN(n52) );
  INV_X1 U515 ( .A(n89), .ZN(n129) );
  OR2_X1 U516 ( .A1(n152), .A2(n163), .ZN(n555) );
  NAND2_X1 U517 ( .A1(n128), .A2(n86), .ZN(n51) );
  INV_X1 U518 ( .A(n85), .ZN(n128) );
  NAND2_X1 U519 ( .A1(n490), .A2(n95), .ZN(n53) );
  NAND2_X1 U520 ( .A1(n125), .A2(n76), .ZN(n48) );
  INV_X1 U521 ( .A(n75), .ZN(n125) );
  OAI21_X1 U522 ( .B1(n496), .B2(n79), .A(n76), .ZN(n74) );
  NAND2_X1 U523 ( .A1(n127), .A2(n510), .ZN(n50) );
  NOR2_X1 U524 ( .A1(n75), .A2(n78), .ZN(n73) );
  NAND2_X1 U525 ( .A1(n152), .A2(n163), .ZN(n69) );
  AOI21_X1 U526 ( .B1(n112), .B2(n559), .A(n501), .ZN(n107) );
  OAI21_X1 U527 ( .B1(n107), .B2(n105), .A(n106), .ZN(n104) );
  OAI21_X1 U528 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  NAND2_X1 U529 ( .A1(n545), .A2(n507), .ZN(n56) );
  NAND2_X1 U530 ( .A1(n131), .A2(n98), .ZN(n54) );
  INV_X1 U531 ( .A(n97), .ZN(n131) );
  INV_X1 U532 ( .A(n119), .ZN(n117) );
  NOR2_X1 U533 ( .A1(n176), .A2(n185), .ZN(n78) );
  NAND2_X1 U534 ( .A1(n559), .A2(n111), .ZN(n57) );
  XOR2_X1 U535 ( .A(n58), .B(n115), .Z(product[3]) );
  INV_X1 U536 ( .A(n113), .ZN(n135) );
  NOR2_X1 U537 ( .A1(n196), .A2(n203), .ZN(n85) );
  XNOR2_X1 U538 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U539 ( .A1(n558), .A2(n62), .ZN(n46) );
  AOI21_X1 U540 ( .B1(n74), .B2(n555), .A(n67), .ZN(n65) );
  XNOR2_X1 U541 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U542 ( .A1(n557), .A2(n119), .ZN(n59) );
  XNOR2_X1 U543 ( .A(n55), .B(n534), .ZN(product[6]) );
  NAND2_X1 U544 ( .A1(n495), .A2(n103), .ZN(n55) );
  NAND2_X1 U545 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U546 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U547 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U548 ( .A1(n212), .A2(n217), .ZN(n95) );
  NAND2_X1 U549 ( .A1(n186), .A2(n195), .ZN(n83) );
  OR2_X1 U550 ( .A1(n212), .A2(n217), .ZN(n556) );
  OR2_X1 U551 ( .A1(n328), .A2(n314), .ZN(n557) );
  NOR2_X1 U552 ( .A1(n228), .A2(n231), .ZN(n105) );
  OR2_X1 U553 ( .A1(n151), .A2(n139), .ZN(n558) );
  NOR2_X1 U554 ( .A1(n234), .A2(n257), .ZN(n113) );
  NOR2_X1 U555 ( .A1(n218), .A2(n223), .ZN(n97) );
  NAND2_X1 U556 ( .A1(n228), .A2(n231), .ZN(n106) );
  OR2_X1 U557 ( .A1(n232), .A2(n233), .ZN(n559) );
  NAND2_X1 U558 ( .A1(n218), .A2(n223), .ZN(n98) );
  NAND2_X1 U559 ( .A1(n224), .A2(n227), .ZN(n103) );
  OR2_X1 U560 ( .A1(n224), .A2(n227), .ZN(n560) );
  INV_X1 U561 ( .A(n41), .ZN(n235) );
  AND2_X1 U562 ( .A1(n497), .A2(n122), .ZN(product[1]) );
  OR2_X1 U563 ( .A1(n566), .A2(n529), .ZN(n392) );
  XNOR2_X1 U564 ( .A(n581), .B(a[14]), .ZN(n41) );
  NAND2_X1 U565 ( .A1(n433), .A2(n524), .ZN(n6) );
  XNOR2_X1 U566 ( .A(n574), .B(n43), .ZN(n376) );
  XNOR2_X1 U567 ( .A(n512), .B(n43), .ZN(n352) );
  OAI22_X1 U568 ( .A1(n42), .A2(n584), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U569 ( .A1(n43), .A2(n584), .ZN(n332) );
  AND2_X1 U570 ( .A1(n566), .A2(n245), .ZN(n300) );
  XOR2_X1 U571 ( .A(n315), .B(n261), .Z(n150) );
  XNOR2_X1 U572 ( .A(n155), .B(n562), .ZN(n139) );
  XNOR2_X1 U573 ( .A(n153), .B(n141), .ZN(n562) );
  XNOR2_X1 U574 ( .A(n157), .B(n563), .ZN(n141) );
  XNOR2_X1 U575 ( .A(n145), .B(n143), .ZN(n563) );
  XNOR2_X1 U576 ( .A(n581), .B(n43), .ZN(n336) );
  AND2_X1 U577 ( .A1(n566), .A2(n540), .ZN(n278) );
  OAI22_X1 U578 ( .A1(n39), .A2(n336), .B1(n37), .B2(n335), .ZN(n263) );
  AND2_X1 U579 ( .A1(n566), .A2(n516), .ZN(n264) );
  AND2_X1 U580 ( .A1(n566), .A2(n513), .ZN(n288) );
  AND2_X1 U581 ( .A1(n566), .A2(n543), .ZN(n270) );
  AND2_X1 U582 ( .A1(n566), .A2(n235), .ZN(n260) );
  OAI22_X1 U583 ( .A1(n39), .A2(n335), .B1(n37), .B2(n334), .ZN(n262) );
  NAND2_X1 U584 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U585 ( .A(n581), .B(a[12]), .Z(n427) );
  INV_X1 U586 ( .A(n25), .ZN(n578) );
  INV_X1 U587 ( .A(n19), .ZN(n576) );
  NAND2_X1 U588 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U589 ( .A(n583), .B(a[14]), .Z(n426) );
  INV_X1 U590 ( .A(n7), .ZN(n572) );
  XNOR2_X1 U591 ( .A(n521), .B(n43), .ZN(n363) );
  OAI22_X1 U592 ( .A1(n39), .A2(n582), .B1(n337), .B2(n37), .ZN(n252) );
  OR2_X1 U593 ( .A1(n43), .A2(n582), .ZN(n337) );
  AND2_X1 U594 ( .A1(n566), .A2(n247), .ZN(n314) );
  AND2_X1 U595 ( .A1(n566), .A2(n249), .ZN(product[0]) );
  OR2_X1 U596 ( .A1(n43), .A2(n576), .ZN(n364) );
  OR2_X1 U597 ( .A1(n43), .A2(n580), .ZN(n344) );
  OR2_X1 U598 ( .A1(n43), .A2(n578), .ZN(n353) );
  OR2_X1 U599 ( .A1(n566), .A2(n539), .ZN(n377) );
  XNOR2_X1 U600 ( .A(n521), .B(b[9]), .ZN(n354) );
  XNOR2_X1 U601 ( .A(n574), .B(b[11]), .ZN(n365) );
  OAI22_X1 U602 ( .A1(n39), .A2(n334), .B1(n37), .B2(n333), .ZN(n261) );
  XNOR2_X1 U603 ( .A(n581), .B(n422), .ZN(n333) );
  XNOR2_X1 U604 ( .A(n581), .B(n424), .ZN(n335) );
  XNOR2_X1 U605 ( .A(n581), .B(n423), .ZN(n334) );
  OAI22_X1 U606 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U607 ( .A(n583), .B(n424), .ZN(n330) );
  XNOR2_X1 U608 ( .A(n583), .B(n43), .ZN(n331) );
  XNOR2_X1 U609 ( .A(n499), .B(n418), .ZN(n345) );
  XNOR2_X1 U610 ( .A(n579), .B(n420), .ZN(n338) );
  XNOR2_X1 U611 ( .A(n571), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U612 ( .A(n571), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U613 ( .A(n571), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U614 ( .A(n571), .B(n418), .ZN(n384) );
  XNOR2_X1 U615 ( .A(n571), .B(n419), .ZN(n385) );
  XNOR2_X1 U616 ( .A(n571), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U617 ( .A(n571), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U618 ( .A(n571), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U619 ( .A(n521), .B(n424), .ZN(n362) );
  XNOR2_X1 U620 ( .A(n512), .B(n424), .ZN(n351) );
  XNOR2_X1 U621 ( .A(n574), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U622 ( .A(n574), .B(n418), .ZN(n369) );
  XNOR2_X1 U623 ( .A(n574), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U624 ( .A(n574), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U625 ( .A(n521), .B(n423), .ZN(n361) );
  XNOR2_X1 U626 ( .A(n521), .B(n422), .ZN(n360) );
  XNOR2_X1 U627 ( .A(n512), .B(n422), .ZN(n349) );
  XNOR2_X1 U628 ( .A(n577), .B(n423), .ZN(n350) );
  XNOR2_X1 U629 ( .A(n569), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U630 ( .A(n569), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U631 ( .A(n569), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U632 ( .A(n569), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U633 ( .A(n521), .B(n421), .ZN(n359) );
  XNOR2_X1 U634 ( .A(n521), .B(n420), .ZN(n358) );
  XNOR2_X1 U635 ( .A(n577), .B(n421), .ZN(n348) );
  XNOR2_X1 U636 ( .A(n499), .B(n420), .ZN(n347) );
  XNOR2_X1 U637 ( .A(n579), .B(n421), .ZN(n339) );
  XNOR2_X1 U638 ( .A(n521), .B(n418), .ZN(n356) );
  XNOR2_X1 U639 ( .A(n521), .B(n419), .ZN(n357) );
  XNOR2_X1 U640 ( .A(n512), .B(n419), .ZN(n346) );
  XNOR2_X1 U641 ( .A(n521), .B(b[8]), .ZN(n355) );
  XNOR2_X1 U642 ( .A(n569), .B(b[15]), .ZN(n393) );
  BUF_X1 U643 ( .A(n43), .Z(n566) );
  XNOR2_X1 U644 ( .A(n579), .B(n424), .ZN(n342) );
  XNOR2_X1 U645 ( .A(n579), .B(n423), .ZN(n341) );
  XNOR2_X1 U646 ( .A(n579), .B(n43), .ZN(n343) );
  XNOR2_X1 U647 ( .A(n579), .B(n422), .ZN(n340) );
  NAND2_X1 U648 ( .A1(n328), .A2(n314), .ZN(n119) );
  OAI22_X1 U649 ( .A1(n542), .A2(n339), .B1(n338), .B2(n526), .ZN(n265) );
  OAI22_X1 U650 ( .A1(n542), .A2(n340), .B1(n339), .B2(n526), .ZN(n266) );
  OAI22_X1 U651 ( .A1(n542), .A2(n341), .B1(n340), .B2(n526), .ZN(n267) );
  OAI22_X1 U652 ( .A1(n542), .A2(n342), .B1(n341), .B2(n526), .ZN(n268) );
  OAI22_X1 U653 ( .A1(n542), .A2(n343), .B1(n342), .B2(n526), .ZN(n269) );
  OAI22_X1 U654 ( .A1(n34), .A2(n580), .B1(n344), .B2(n32), .ZN(n253) );
  NAND2_X1 U655 ( .A1(n428), .A2(n32), .ZN(n34) );
  OAI22_X1 U656 ( .A1(n553), .A2(n395), .B1(n394), .B2(n525), .ZN(n316) );
  OAI22_X1 U657 ( .A1(n6), .A2(n394), .B1(n393), .B2(n525), .ZN(n315) );
  OAI22_X1 U658 ( .A1(n552), .A2(n400), .B1(n399), .B2(n525), .ZN(n321) );
  OAI22_X1 U659 ( .A1(n6), .A2(n397), .B1(n396), .B2(n525), .ZN(n318) );
  OAI22_X1 U660 ( .A1(n552), .A2(n396), .B1(n395), .B2(n525), .ZN(n317) );
  OAI22_X1 U661 ( .A1(n399), .A2(n6), .B1(n398), .B2(n525), .ZN(n320) );
  OAI22_X1 U662 ( .A1(n553), .A2(n398), .B1(n397), .B2(n525), .ZN(n319) );
  OAI22_X1 U663 ( .A1(n553), .A2(n401), .B1(n400), .B2(n525), .ZN(n322) );
  OAI22_X1 U664 ( .A1(n553), .A2(n404), .B1(n403), .B2(n525), .ZN(n325) );
  OAI22_X1 U665 ( .A1(n552), .A2(n406), .B1(n405), .B2(n525), .ZN(n327) );
  OAI22_X1 U666 ( .A1(n553), .A2(n408), .B1(n407), .B2(n525), .ZN(n329) );
  OAI22_X1 U667 ( .A1(n553), .A2(n407), .B1(n406), .B2(n525), .ZN(n328) );
  OAI22_X1 U668 ( .A1(n552), .A2(n402), .B1(n401), .B2(n525), .ZN(n323) );
  INV_X1 U669 ( .A(n519), .ZN(n127) );
  NOR2_X1 U670 ( .A1(n519), .A2(n85), .ZN(n80) );
  OAI21_X1 U671 ( .B1(n86), .B2(n82), .A(n83), .ZN(n81) );
  XNOR2_X1 U672 ( .A(n70), .B(n47), .ZN(product[14]) );
  NAND2_X1 U673 ( .A1(n204), .A2(n211), .ZN(n90) );
  NOR2_X1 U674 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U675 ( .A1(n500), .A2(n346), .B1(n345), .B2(n27), .ZN(n271) );
  OAI22_X1 U676 ( .A1(n500), .A2(n347), .B1(n346), .B2(n27), .ZN(n272) );
  OAI22_X1 U677 ( .A1(n500), .A2(n350), .B1(n349), .B2(n27), .ZN(n275) );
  OAI22_X1 U678 ( .A1(n500), .A2(n348), .B1(n347), .B2(n27), .ZN(n273) );
  OAI22_X1 U679 ( .A1(n29), .A2(n349), .B1(n348), .B2(n27), .ZN(n274) );
  OAI22_X1 U680 ( .A1(n29), .A2(n578), .B1(n353), .B2(n27), .ZN(n254) );
  OAI22_X1 U681 ( .A1(n500), .A2(n351), .B1(n350), .B2(n27), .ZN(n276) );
  OAI22_X1 U682 ( .A1(n29), .A2(n352), .B1(n351), .B2(n27), .ZN(n277) );
  XNOR2_X1 U683 ( .A(n549), .B(n53), .ZN(product[8]) );
  XNOR2_X1 U684 ( .A(n528), .B(n420), .ZN(n386) );
  XNOR2_X1 U685 ( .A(n528), .B(n423), .ZN(n389) );
  XNOR2_X1 U686 ( .A(n528), .B(n43), .ZN(n391) );
  XNOR2_X1 U687 ( .A(n528), .B(n422), .ZN(n388) );
  XNOR2_X1 U688 ( .A(n528), .B(n424), .ZN(n390) );
  XNOR2_X1 U689 ( .A(n528), .B(n421), .ZN(n387) );
  AOI21_X1 U690 ( .B1(n104), .B2(n560), .A(n504), .ZN(n99) );
  OAI21_X1 U691 ( .B1(n99), .B2(n97), .A(n98), .ZN(n96) );
  XNOR2_X1 U692 ( .A(n77), .B(n48), .ZN(product[13]) );
  XOR2_X1 U693 ( .A(n56), .B(n533), .Z(product[5]) );
  OR2_X1 U694 ( .A1(n43), .A2(n523), .ZN(n409) );
  INV_X1 U695 ( .A(n570), .ZN(n569) );
  OAI22_X1 U696 ( .A1(n511), .A2(n358), .B1(n357), .B2(n514), .ZN(n282) );
  OAI22_X1 U697 ( .A1(n23), .A2(n356), .B1(n355), .B2(n522), .ZN(n280) );
  OAI22_X1 U698 ( .A1(n511), .A2(n362), .B1(n361), .B2(n522), .ZN(n286) );
  OAI22_X1 U699 ( .A1(n511), .A2(n576), .B1(n364), .B2(n514), .ZN(n255) );
  OAI22_X1 U700 ( .A1(n511), .A2(n357), .B1(n356), .B2(n522), .ZN(n281) );
  OAI22_X1 U701 ( .A1(n511), .A2(n360), .B1(n359), .B2(n514), .ZN(n284) );
  OAI22_X1 U702 ( .A1(n511), .A2(n355), .B1(n354), .B2(n522), .ZN(n279) );
  OAI22_X1 U703 ( .A1(n511), .A2(n361), .B1(n360), .B2(n522), .ZN(n285) );
  XNOR2_X1 U704 ( .A(n573), .B(n423), .ZN(n374) );
  OAI22_X1 U705 ( .A1(n23), .A2(n363), .B1(n362), .B2(n522), .ZN(n287) );
  XNOR2_X1 U706 ( .A(n573), .B(n422), .ZN(n373) );
  XNOR2_X1 U707 ( .A(n573), .B(n421), .ZN(n372) );
  OAI22_X1 U708 ( .A1(n23), .A2(n359), .B1(n358), .B2(n514), .ZN(n283) );
  XNOR2_X1 U709 ( .A(n573), .B(n424), .ZN(n375) );
  XNOR2_X1 U710 ( .A(n573), .B(n419), .ZN(n370) );
  XNOR2_X1 U711 ( .A(n573), .B(n420), .ZN(n371) );
  OAI21_X1 U712 ( .B1(n87), .B2(n85), .A(n86), .ZN(n84) );
  XNOR2_X1 U713 ( .A(n57), .B(n531), .ZN(product[4]) );
  XNOR2_X1 U714 ( .A(n568), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U715 ( .A(n568), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U716 ( .A(n568), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U717 ( .A(n568), .B(n418), .ZN(n401) );
  XNOR2_X1 U718 ( .A(n568), .B(n419), .ZN(n402) );
  XNOR2_X1 U719 ( .A(n568), .B(n420), .ZN(n403) );
  XNOR2_X1 U720 ( .A(n568), .B(n422), .ZN(n405) );
  XNOR2_X1 U721 ( .A(n568), .B(n421), .ZN(n404) );
  XNOR2_X1 U722 ( .A(n568), .B(n43), .ZN(n408) );
  XNOR2_X1 U723 ( .A(n568), .B(n423), .ZN(n406) );
  XNOR2_X1 U724 ( .A(n568), .B(n424), .ZN(n407) );
  NAND2_X1 U725 ( .A1(n151), .A2(n139), .ZN(n62) );
  OAI22_X1 U726 ( .A1(n506), .A2(n370), .B1(n369), .B2(n564), .ZN(n293) );
  OAI22_X1 U727 ( .A1(n530), .A2(n367), .B1(n366), .B2(n564), .ZN(n290) );
  OAI22_X1 U728 ( .A1(n18), .A2(n374), .B1(n373), .B2(n564), .ZN(n297) );
  OAI22_X1 U729 ( .A1(n530), .A2(n373), .B1(n372), .B2(n564), .ZN(n296) );
  OAI22_X1 U730 ( .A1(n530), .A2(n376), .B1(n375), .B2(n564), .ZN(n299) );
  OAI22_X1 U731 ( .A1(n506), .A2(n539), .B1(n377), .B2(n564), .ZN(n256) );
  OAI22_X1 U732 ( .A1(n530), .A2(n368), .B1(n367), .B2(n564), .ZN(n291) );
  OAI22_X1 U733 ( .A1(n18), .A2(n372), .B1(n371), .B2(n564), .ZN(n295) );
  OAI22_X1 U734 ( .A1(n18), .A2(n369), .B1(n368), .B2(n564), .ZN(n292) );
  OAI22_X1 U735 ( .A1(n530), .A2(n371), .B1(n370), .B2(n564), .ZN(n294) );
  OAI22_X1 U736 ( .A1(n18), .A2(n366), .B1(n365), .B2(n564), .ZN(n289) );
  INV_X1 U737 ( .A(n564), .ZN(n245) );
  INV_X1 U738 ( .A(n1), .ZN(n570) );
  XNOR2_X1 U739 ( .A(n84), .B(n50), .ZN(product[11]) );
  INV_X2 U740 ( .A(n570), .ZN(n568) );
  NAND2_X1 U741 ( .A1(n135), .A2(n114), .ZN(n58) );
  AOI21_X1 U742 ( .B1(n517), .B2(n80), .A(n81), .ZN(n45) );
  XOR2_X1 U743 ( .A(n527), .B(n52), .Z(product[9]) );
  INV_X1 U744 ( .A(n88), .ZN(n87) );
  OAI21_X1 U745 ( .B1(n91), .B2(n89), .A(n90), .ZN(n88) );
  AOI21_X1 U746 ( .B1(n96), .B2(n556), .A(n502), .ZN(n91) );
  OAI21_X1 U747 ( .B1(n64), .B2(n45), .A(n65), .ZN(n63) );
  OAI21_X1 U748 ( .B1(n78), .B2(n45), .A(n79), .ZN(n77) );
  OAI21_X1 U749 ( .B1(n71), .B2(n509), .A(n72), .ZN(n70) );
  XOR2_X1 U750 ( .A(n509), .B(n49), .Z(product[12]) );
  INV_X1 U751 ( .A(n122), .ZN(n120) );
  NAND2_X1 U752 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI22_X1 U753 ( .A1(n6), .A2(n523), .B1(n409), .B2(n525), .ZN(n258) );
  XOR2_X1 U754 ( .A(n532), .B(n54), .Z(product[7]) );
  OAI22_X1 U755 ( .A1(n12), .A2(n379), .B1(n378), .B2(n505), .ZN(n301) );
  OAI22_X1 U756 ( .A1(n12), .A2(n380), .B1(n379), .B2(n505), .ZN(n302) );
  OAI22_X1 U757 ( .A1(n12), .A2(n385), .B1(n384), .B2(n505), .ZN(n307) );
  OAI22_X1 U758 ( .A1(n12), .A2(n382), .B1(n381), .B2(n505), .ZN(n304) );
  OAI22_X1 U759 ( .A1(n12), .A2(n381), .B1(n380), .B2(n505), .ZN(n303) );
  NAND2_X1 U760 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U761 ( .A1(n12), .A2(n383), .B1(n382), .B2(n565), .ZN(n305) );
  OAI22_X1 U762 ( .A1(n12), .A2(n384), .B1(n383), .B2(n565), .ZN(n306) );
  OAI22_X1 U763 ( .A1(n12), .A2(n386), .B1(n385), .B2(n505), .ZN(n308) );
  OAI22_X1 U764 ( .A1(n12), .A2(n387), .B1(n386), .B2(n505), .ZN(n309) );
  OAI22_X1 U765 ( .A1(n12), .A2(n529), .B1(n392), .B2(n505), .ZN(n257) );
  OAI22_X1 U766 ( .A1(n12), .A2(n389), .B1(n565), .B2(n388), .ZN(n311) );
  OAI22_X1 U767 ( .A1(n12), .A2(n388), .B1(n387), .B2(n505), .ZN(n310) );
  OAI22_X1 U768 ( .A1(n12), .A2(n390), .B1(n389), .B2(n565), .ZN(n312) );
  INV_X1 U769 ( .A(n505), .ZN(n247) );
  OAI22_X1 U770 ( .A1(n12), .A2(n391), .B1(n390), .B2(n505), .ZN(n313) );
  INV_X1 U771 ( .A(n535), .ZN(n574) );
  INV_X1 U772 ( .A(n31), .ZN(n580) );
  INV_X1 U773 ( .A(n582), .ZN(n581) );
  INV_X1 U774 ( .A(n36), .ZN(n582) );
  INV_X1 U775 ( .A(n584), .ZN(n583) );
  INV_X1 U776 ( .A(n40), .ZN(n584) );
  XOR2_X1 U777 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U778 ( .A(n289), .B(n279), .Z(n146) );
  XOR2_X1 U779 ( .A(n149), .B(n147), .Z(n144) );
  XOR2_X1 U780 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_0_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n19,
         n20, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n44, n45, n47, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n67, n68, n69, n70, n71,
         n73, n75, n76, n77, n78, n79, n81, n83, n84, n86, n88, n89, n90, n91,
         n94, n95, n96, n98, n100, n157, n158, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181;

  INV_X1 U122 ( .A(n38), .ZN(n157) );
  OR2_X1 U123 ( .A1(A[5]), .A2(B[5]), .ZN(n179) );
  OR2_X1 U124 ( .A1(A[15]), .A2(B[15]), .ZN(n158) );
  AND2_X1 U125 ( .A1(n174), .A2(n86), .ZN(SUM[0]) );
  NOR2_X1 U126 ( .A1(A[8]), .A2(B[8]), .ZN(n160) );
  NOR2_X1 U127 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  AND2_X1 U128 ( .A1(A[5]), .A2(B[5]), .ZN(n161) );
  INV_X1 U129 ( .A(n51), .ZN(n162) );
  XNOR2_X1 U130 ( .A(n163), .B(n157), .ZN(SUM[11]) );
  AND2_X1 U131 ( .A1(n91), .A2(n36), .ZN(n163) );
  OR2_X1 U132 ( .A1(A[10]), .A2(B[10]), .ZN(n164) );
  OR2_X1 U133 ( .A1(A[10]), .A2(B[10]), .ZN(n180) );
  CLKBUF_X1 U134 ( .A(n36), .Z(n165) );
  INV_X1 U135 ( .A(n91), .ZN(n166) );
  AOI21_X1 U136 ( .B1(n60), .B2(n52), .A(n53), .ZN(n167) );
  NOR2_X1 U137 ( .A1(A[12]), .A2(B[12]), .ZN(n168) );
  NOR2_X1 U138 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  NOR2_X1 U139 ( .A1(A[14]), .A2(B[14]), .ZN(n169) );
  NOR2_X1 U140 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  AOI21_X1 U141 ( .B1(n180), .B2(n47), .A(n181), .ZN(n170) );
  OAI21_X1 U142 ( .B1(n39), .B2(n51), .A(n40), .ZN(n171) );
  AOI21_X1 U143 ( .B1(n171), .B2(n30), .A(n31), .ZN(n172) );
  AOI21_X1 U144 ( .B1(n171), .B2(n30), .A(n31), .ZN(n173) );
  INV_X1 U145 ( .A(n24), .ZN(n22) );
  OR2_X1 U146 ( .A1(A[0]), .A2(B[0]), .ZN(n174) );
  INV_X1 U147 ( .A(n167), .ZN(n50) );
  AOI21_X1 U148 ( .B1(n178), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U149 ( .A(n75), .ZN(n73) );
  AOI21_X1 U150 ( .B1(n177), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U151 ( .A(n83), .ZN(n81) );
  OAI21_X1 U152 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  AOI21_X1 U153 ( .B1(n179), .B2(n68), .A(n161), .ZN(n63) );
  OR2_X1 U154 ( .A1(n25), .A2(n28), .ZN(n175) );
  OAI21_X1 U155 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  AOI21_X1 U156 ( .B1(n162), .B2(n176), .A(n47), .ZN(n45) );
  INV_X1 U157 ( .A(n86), .ZN(n84) );
  OAI21_X1 U158 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  AOI21_X1 U159 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  NOR2_X1 U160 ( .A1(n160), .A2(n57), .ZN(n52) );
  OAI21_X1 U161 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  INV_X1 U162 ( .A(n49), .ZN(n47) );
  NAND2_X1 U163 ( .A1(n94), .A2(n55), .ZN(n9) );
  INV_X1 U164 ( .A(n160), .ZN(n94) );
  NAND2_X1 U165 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U166 ( .A(n69), .ZN(n98) );
  INV_X1 U167 ( .A(n35), .ZN(n91) );
  NAND2_X1 U168 ( .A1(n176), .A2(n49), .ZN(n8) );
  NAND2_X1 U169 ( .A1(n178), .A2(n75), .ZN(n14) );
  NAND2_X1 U170 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U171 ( .A(n57), .ZN(n95) );
  NAND2_X1 U172 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U173 ( .A(n77), .ZN(n100) );
  NAND2_X1 U174 ( .A1(n179), .A2(n67), .ZN(n12) );
  NAND2_X1 U175 ( .A1(n177), .A2(n83), .ZN(n16) );
  NAND2_X1 U176 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U177 ( .A(n61), .ZN(n96) );
  INV_X1 U178 ( .A(n28), .ZN(n89) );
  INV_X1 U179 ( .A(n181), .ZN(n44) );
  NAND2_X1 U180 ( .A1(n33), .A2(n90), .ZN(n5) );
  XNOR2_X1 U181 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XNOR2_X1 U182 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XOR2_X1 U183 ( .A(n13), .B(n71), .Z(SUM[4]) );
  XNOR2_X1 U184 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NOR2_X1 U185 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  NOR2_X1 U186 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  NOR2_X1 U187 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  OR2_X1 U188 ( .A1(A[9]), .A2(B[9]), .ZN(n176) );
  NOR2_X1 U189 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NOR2_X1 U190 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NAND2_X1 U191 ( .A1(n26), .A2(n88), .ZN(n3) );
  XOR2_X1 U192 ( .A(n7), .B(n45), .Z(SUM[10]) );
  XOR2_X1 U193 ( .A(n59), .B(n10), .Z(SUM[7]) );
  OR2_X1 U194 ( .A1(A[1]), .A2(B[1]), .ZN(n177) );
  OR2_X1 U195 ( .A1(A[3]), .A2(B[3]), .ZN(n178) );
  NAND2_X1 U196 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  NAND2_X1 U197 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  XNOR2_X1 U198 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  NOR2_X1 U199 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NAND2_X1 U200 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  NAND2_X1 U201 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U202 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  NAND2_X1 U203 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U204 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U205 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U206 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  NAND2_X1 U207 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  NAND2_X1 U208 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  XNOR2_X1 U209 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  XOR2_X1 U210 ( .A(n15), .B(n79), .Z(SUM[2]) );
  NAND2_X1 U211 ( .A1(n158), .A2(n19), .ZN(n2) );
  INV_X1 U212 ( .A(n60), .ZN(n59) );
  AND2_X1 U213 ( .A1(A[10]), .A2(B[10]), .ZN(n181) );
  NAND2_X1 U214 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  NAND2_X1 U215 ( .A1(A[15]), .A2(B[15]), .ZN(n19) );
  NAND2_X1 U216 ( .A1(n89), .A2(n29), .ZN(n4) );
  XOR2_X1 U217 ( .A(n11), .B(n63), .Z(SUM[6]) );
  OAI21_X1 U218 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  NAND2_X1 U219 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NAND2_X1 U220 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  OAI21_X1 U221 ( .B1(n37), .B2(n166), .A(n165), .ZN(n34) );
  INV_X1 U222 ( .A(n168), .ZN(n90) );
  NOR2_X1 U223 ( .A1(n168), .A2(n35), .ZN(n30) );
  OAI21_X1 U224 ( .B1(n32), .B2(n36), .A(n33), .ZN(n31) );
  INV_X1 U225 ( .A(n25), .ZN(n88) );
  OAI21_X1 U226 ( .B1(n169), .B2(n29), .A(n26), .ZN(n24) );
  INV_X1 U227 ( .A(n38), .ZN(n37) );
  OAI21_X1 U228 ( .B1(n39), .B2(n167), .A(n170), .ZN(n38) );
  AOI21_X1 U229 ( .B1(n164), .B2(n47), .A(n181), .ZN(n40) );
  NAND2_X1 U230 ( .A1(n164), .A2(n44), .ZN(n7) );
  NAND2_X1 U231 ( .A1(n180), .A2(n176), .ZN(n39) );
  XNOR2_X1 U232 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  XNOR2_X1 U233 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  XNOR2_X1 U234 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  XOR2_X1 U235 ( .A(n172), .B(n4), .Z(SUM[13]) );
  OAI21_X1 U236 ( .B1(n173), .B2(n28), .A(n29), .ZN(n27) );
  OAI21_X1 U237 ( .B1(n172), .B2(n175), .A(n22), .ZN(n20) );
endmodule


module datapath_M16_N8_T16_P16_0 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n30, n31, n84, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n103, n104,
         n105, n106, n107, n108, n109, n110, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n85, n102,
         n111, n112, n113, n114;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 \mul_out_save_reg[15]  ( .D(n101), .CK(clk), .Q(n24) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n100), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n99), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n98), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n97), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n96), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n95), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n94), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n93), .CK(clk), .Q(n34) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n92), .CK(clk), .Q(n35) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n91), .CK(clk), .Q(n36) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n90), .CK(clk), .Q(n37) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n89), .CK(clk), .Q(n38) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n88), .CK(clk), .Q(n39) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n87), .CK(clk), .Q(n40) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n86), .CK(clk), .Q(n42) );
  datapath_M16_N8_T16_P16_0_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_0_DW01_add_2 add_262 ( .A({n127, n128, n129, n130, 
        n131, n132, n118, n119, n120, n121, n122, n123, n124, n125, n126, n133}), .B({f[15], n46, n47, n48, f[11], n50, f[9:3], n58, n60, n62}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X1 clear_acc_delay_reg ( .D(clear_acc), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \data_out_reg[15]  ( .D(n165), .CK(clk), .Q(data_out[15]), .QN(n134)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n164), .CK(clk), .Q(data_out[14]), .QN(n135)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n163), .CK(clk), .Q(data_out[13]), .QN(n136)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n162), .CK(clk), .Q(data_out[12]), .QN(n137)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n161), .CK(clk), .Q(data_out[11]), .QN(n138)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n160), .CK(clk), .Q(data_out[10]), .QN(n139)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n159), .CK(clk), .Q(data_out[9]), .QN(n140) );
  DFF_X1 \data_out_reg[8]  ( .D(n158), .CK(clk), .Q(data_out[8]), .QN(n141) );
  DFF_X1 \data_out_reg[7]  ( .D(n157), .CK(clk), .Q(data_out[7]), .QN(n142) );
  DFF_X1 \data_out_reg[6]  ( .D(n156), .CK(clk), .Q(data_out[6]), .QN(n143) );
  DFF_X1 \data_out_reg[5]  ( .D(n155), .CK(clk), .Q(data_out[5]), .QN(n144) );
  DFF_X1 \data_out_reg[4]  ( .D(n154), .CK(clk), .Q(data_out[4]), .QN(n145) );
  DFF_X1 \data_out_reg[3]  ( .D(n153), .CK(clk), .Q(data_out[3]), .QN(n146) );
  DFF_X1 \data_out_reg[2]  ( .D(n152), .CK(clk), .Q(data_out[2]), .QN(n147) );
  DFF_X1 \data_out_reg[1]  ( .D(n151), .CK(clk), .Q(data_out[1]), .QN(n148) );
  DFF_X1 \data_out_reg[0]  ( .D(n150), .CK(clk), .Q(data_out[0]), .QN(n149) );
  DFF_X1 \f_reg[0]  ( .D(n113), .CK(clk), .Q(n62), .QN(n117) );
  DFF_X1 \f_reg[1]  ( .D(n112), .CK(clk), .Q(n60), .QN(n116) );
  DFF_X1 \f_reg[2]  ( .D(n111), .CK(clk), .Q(n58), .QN(n115) );
  DFF_X1 \f_reg[3]  ( .D(n102), .CK(clk), .Q(f[3]), .QN(n66) );
  DFF_X1 \f_reg[4]  ( .D(n85), .CK(clk), .Q(f[4]), .QN(n67) );
  DFF_X1 \f_reg[5]  ( .D(n83), .CK(clk), .Q(f[5]), .QN(n68) );
  DFF_X1 \f_reg[6]  ( .D(n82), .CK(clk), .Q(f[6]), .QN(n69) );
  DFF_X1 \f_reg[7]  ( .D(n81), .CK(clk), .Q(f[7]), .QN(n110) );
  DFF_X1 \f_reg[8]  ( .D(n80), .CK(clk), .Q(f[8]), .QN(n109) );
  DFF_X1 \f_reg[9]  ( .D(n79), .CK(clk), .Q(f[9]), .QN(n108) );
  DFF_X1 \f_reg[10]  ( .D(n78), .CK(clk), .Q(n50), .QN(n107) );
  DFF_X1 \f_reg[11]  ( .D(n77), .CK(clk), .Q(f[11]), .QN(n106) );
  DFF_X1 \f_reg[12]  ( .D(n2), .CK(clk), .Q(n48), .QN(n105) );
  DFF_X1 \f_reg[15]  ( .D(n11), .CK(clk), .Q(f[15]), .QN(n74) );
  DFF_X1 \f_reg[14]  ( .D(n7), .CK(clk), .Q(n46), .QN(n103) );
  DFF_X2 delay_reg ( .D(n114), .CK(clk), .Q(n12), .QN(n84) );
  DFF_X2 \f_reg[13]  ( .D(n1), .CK(clk), .Q(n47), .QN(n104) );
  INV_X1 U3 ( .A(n45), .ZN(n64) );
  AND2_X1 U4 ( .A1(n45), .A2(n21), .ZN(n19) );
  NAND3_X1 U5 ( .A1(n4), .A2(n5), .A3(n6), .ZN(n1) );
  MUX2_X2 U6 ( .A(N34), .B(n36), .S(n12), .Z(n122) );
  NAND3_X1 U8 ( .A1(n9), .A2(n8), .A3(n10), .ZN(n2) );
  MUX2_X2 U9 ( .A(n26), .B(N42), .S(n84), .Z(n129) );
  MUX2_X2 U10 ( .A(n28), .B(N40), .S(n84), .Z(n131) );
  MUX2_X2 U11 ( .A(n33), .B(N37), .S(n84), .Z(n119) );
  NAND2_X1 U12 ( .A1(data_out_b[13]), .A2(clear_acc), .ZN(n4) );
  NAND2_X1 U13 ( .A1(adder[13]), .A2(n19), .ZN(n5) );
  NAND2_X1 U14 ( .A1(n64), .A2(n47), .ZN(n6) );
  NAND3_X1 U15 ( .A1(n14), .A2(n13), .A3(n15), .ZN(n7) );
  MUX2_X2 U16 ( .A(n27), .B(N41), .S(n84), .Z(n130) );
  NAND2_X1 U17 ( .A1(data_out_b[12]), .A2(clear_acc), .ZN(n8) );
  NAND2_X1 U18 ( .A1(adder[12]), .A2(n19), .ZN(n9) );
  NAND2_X1 U19 ( .A1(n64), .A2(n48), .ZN(n10) );
  NAND3_X1 U20 ( .A1(n17), .A2(n16), .A3(n18), .ZN(n11) );
  MUX2_X2 U21 ( .A(N39), .B(n29), .S(n12), .Z(n132) );
  MUX2_X2 U22 ( .A(N43), .B(n25), .S(n12), .Z(n128) );
  NAND2_X1 U23 ( .A1(data_out_b[14]), .A2(clear_acc), .ZN(n13) );
  NAND2_X1 U24 ( .A1(adder[14]), .A2(n19), .ZN(n14) );
  NAND2_X1 U25 ( .A1(n64), .A2(n46), .ZN(n15) );
  NAND2_X1 U26 ( .A1(data_out_b[15]), .A2(clear_acc), .ZN(n16) );
  NAND2_X1 U27 ( .A1(adder[15]), .A2(n19), .ZN(n17) );
  NAND2_X1 U28 ( .A1(n64), .A2(f[15]), .ZN(n18) );
  NAND2_X1 U29 ( .A1(n114), .A2(n20), .ZN(n30) );
  INV_X1 U30 ( .A(clear_acc), .ZN(n21) );
  NAND3_X1 U31 ( .A1(wr_en_y), .A2(n75), .A3(n74), .ZN(n31) );
  INV_X1 U32 ( .A(n23), .ZN(n41) );
  OAI22_X1 U33 ( .A1(n146), .A2(n30), .B1(n66), .B2(n31), .ZN(n153) );
  OAI22_X1 U34 ( .A1(n145), .A2(n30), .B1(n67), .B2(n31), .ZN(n154) );
  OAI22_X1 U35 ( .A1(n144), .A2(n30), .B1(n68), .B2(n31), .ZN(n155) );
  OAI22_X1 U36 ( .A1(n143), .A2(n30), .B1(n69), .B2(n31), .ZN(n156) );
  OAI22_X1 U37 ( .A1(n142), .A2(n30), .B1(n110), .B2(n31), .ZN(n157) );
  OAI22_X1 U38 ( .A1(n141), .A2(n30), .B1(n109), .B2(n31), .ZN(n158) );
  OAI22_X1 U39 ( .A1(n140), .A2(n30), .B1(n108), .B2(n31), .ZN(n159) );
  MUX2_X1 U40 ( .A(n38), .B(N32), .S(n84), .Z(n124) );
  INV_X1 U41 ( .A(wr_en_y), .ZN(n20) );
  INV_X1 U42 ( .A(m_ready), .ZN(n22) );
  NAND2_X1 U43 ( .A1(m_valid), .A2(n22), .ZN(n43) );
  OAI21_X1 U44 ( .B1(sel[4]), .B2(n76), .A(n43), .ZN(n114) );
  NAND2_X1 U45 ( .A1(clear_acc_delay), .A2(n84), .ZN(n23) );
  MUX2_X1 U46 ( .A(n24), .B(N44), .S(n41), .Z(n101) );
  MUX2_X1 U47 ( .A(n24), .B(N44), .S(n84), .Z(n127) );
  MUX2_X1 U48 ( .A(n25), .B(N43), .S(n41), .Z(n100) );
  MUX2_X1 U49 ( .A(n26), .B(N42), .S(n41), .Z(n99) );
  MUX2_X1 U50 ( .A(n27), .B(N41), .S(n41), .Z(n98) );
  MUX2_X1 U51 ( .A(n28), .B(N40), .S(n41), .Z(n97) );
  MUX2_X1 U52 ( .A(n29), .B(N39), .S(n41), .Z(n96) );
  MUX2_X1 U53 ( .A(n32), .B(N38), .S(n41), .Z(n95) );
  MUX2_X1 U54 ( .A(n32), .B(N38), .S(n84), .Z(n118) );
  MUX2_X1 U55 ( .A(n33), .B(N37), .S(n41), .Z(n94) );
  MUX2_X1 U56 ( .A(n34), .B(N36), .S(n41), .Z(n93) );
  MUX2_X1 U57 ( .A(n34), .B(N36), .S(n84), .Z(n120) );
  MUX2_X1 U58 ( .A(n35), .B(N35), .S(n41), .Z(n92) );
  MUX2_X1 U59 ( .A(n35), .B(N35), .S(n84), .Z(n121) );
  MUX2_X1 U60 ( .A(n36), .B(N34), .S(n41), .Z(n91) );
  MUX2_X1 U61 ( .A(n37), .B(N33), .S(n41), .Z(n90) );
  MUX2_X1 U62 ( .A(n37), .B(N33), .S(n84), .Z(n123) );
  MUX2_X1 U63 ( .A(n38), .B(N32), .S(n41), .Z(n89) );
  MUX2_X1 U64 ( .A(n39), .B(N31), .S(n41), .Z(n88) );
  MUX2_X1 U65 ( .A(n39), .B(N31), .S(n84), .Z(n125) );
  MUX2_X1 U66 ( .A(n40), .B(N30), .S(n41), .Z(n87) );
  MUX2_X1 U67 ( .A(n40), .B(N30), .S(n84), .Z(n126) );
  MUX2_X1 U68 ( .A(n42), .B(N29), .S(n41), .Z(n86) );
  MUX2_X1 U69 ( .A(n42), .B(N29), .S(n84), .Z(n133) );
  INV_X1 U70 ( .A(n43), .ZN(n44) );
  OAI21_X1 U71 ( .B1(n44), .B2(n12), .A(n21), .ZN(n45) );
  AOI222_X1 U72 ( .A1(data_out_b[11]), .A2(clear_acc), .B1(adder[11]), .B2(n19), .C1(n64), .C2(f[11]), .ZN(n49) );
  INV_X1 U73 ( .A(n49), .ZN(n77) );
  AOI222_X1 U74 ( .A1(data_out_b[10]), .A2(clear_acc), .B1(adder[10]), .B2(n19), .C1(n64), .C2(n50), .ZN(n51) );
  INV_X1 U75 ( .A(n51), .ZN(n78) );
  AOI222_X1 U76 ( .A1(data_out_b[8]), .A2(clear_acc), .B1(adder[8]), .B2(n19), 
        .C1(n64), .C2(f[8]), .ZN(n52) );
  INV_X1 U77 ( .A(n52), .ZN(n80) );
  AOI222_X1 U78 ( .A1(data_out_b[7]), .A2(clear_acc), .B1(adder[7]), .B2(n19), 
        .C1(n64), .C2(f[7]), .ZN(n53) );
  INV_X1 U79 ( .A(n53), .ZN(n81) );
  AOI222_X1 U80 ( .A1(data_out_b[6]), .A2(clear_acc), .B1(adder[6]), .B2(n19), 
        .C1(n64), .C2(f[6]), .ZN(n54) );
  INV_X1 U81 ( .A(n54), .ZN(n82) );
  AOI222_X1 U82 ( .A1(data_out_b[5]), .A2(clear_acc), .B1(adder[5]), .B2(n19), 
        .C1(n64), .C2(f[5]), .ZN(n55) );
  INV_X1 U83 ( .A(n55), .ZN(n83) );
  AOI222_X1 U84 ( .A1(data_out_b[4]), .A2(clear_acc), .B1(adder[4]), .B2(n19), 
        .C1(n64), .C2(f[4]), .ZN(n56) );
  INV_X1 U85 ( .A(n56), .ZN(n85) );
  AOI222_X1 U86 ( .A1(data_out_b[3]), .A2(clear_acc), .B1(adder[3]), .B2(n19), 
        .C1(n64), .C2(f[3]), .ZN(n57) );
  INV_X1 U87 ( .A(n57), .ZN(n102) );
  AOI222_X1 U88 ( .A1(data_out_b[2]), .A2(clear_acc), .B1(adder[2]), .B2(n19), 
        .C1(n64), .C2(n58), .ZN(n59) );
  INV_X1 U89 ( .A(n59), .ZN(n111) );
  AOI222_X1 U90 ( .A1(data_out_b[1]), .A2(clear_acc), .B1(adder[1]), .B2(n19), 
        .C1(n64), .C2(n60), .ZN(n61) );
  INV_X1 U91 ( .A(n61), .ZN(n112) );
  AOI222_X1 U92 ( .A1(data_out_b[0]), .A2(clear_acc), .B1(adder[0]), .B2(n19), 
        .C1(n64), .C2(n62), .ZN(n63) );
  INV_X1 U93 ( .A(n63), .ZN(n113) );
  AOI222_X1 U94 ( .A1(data_out_b[9]), .A2(clear_acc), .B1(adder[9]), .B2(n19), 
        .C1(n64), .C2(f[9]), .ZN(n65) );
  INV_X1 U95 ( .A(n65), .ZN(n79) );
  NOR4_X1 U96 ( .A1(f[11]), .A2(n48), .A3(n47), .A4(n46), .ZN(n73) );
  NOR4_X1 U97 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n50), .ZN(n72) );
  NAND4_X1 U98 ( .A1(n69), .A2(n68), .A3(n67), .A4(n66), .ZN(n70) );
  NOR4_X1 U99 ( .A1(n70), .A2(n62), .A3(n60), .A4(n58), .ZN(n71) );
  NAND3_X1 U100 ( .A1(n73), .A2(n72), .A3(n71), .ZN(n75) );
  OAI22_X1 U101 ( .A1(n149), .A2(n30), .B1(n117), .B2(n31), .ZN(n150) );
  OAI22_X1 U102 ( .A1(n148), .A2(n30), .B1(n116), .B2(n31), .ZN(n151) );
  OAI22_X1 U103 ( .A1(n147), .A2(n30), .B1(n115), .B2(n31), .ZN(n152) );
  OAI22_X1 U104 ( .A1(n139), .A2(n30), .B1(n107), .B2(n31), .ZN(n160) );
  OAI22_X1 U105 ( .A1(n138), .A2(n30), .B1(n106), .B2(n31), .ZN(n161) );
  OAI22_X1 U106 ( .A1(n137), .A2(n30), .B1(n105), .B2(n31), .ZN(n162) );
  OAI22_X1 U107 ( .A1(n136), .A2(n30), .B1(n104), .B2(n31), .ZN(n163) );
  OAI22_X1 U108 ( .A1(n135), .A2(n30), .B1(n103), .B2(n31), .ZN(n164) );
  OAI22_X1 U109 ( .A1(n134), .A2(n30), .B1(n74), .B2(n31), .ZN(n165) );
  AND4_X1 U110 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n76)
         );
endmodule


module datapath_M16_N8_T16_P16_15_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n25, n27, n29, n31, n34,
         n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n49, n50, n53,
         n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n95, n96, n97, n98, n99, n101, n103,
         n104, n105, n106, n107, n111, n112, n113, n114, n115, n117, n119,
         n120, n122, n127, n131, n133, n135, n139, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n237, n239, n243, n245, n249, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n418, n419, n420, n421, n422, n423, n424, n426, n427,
         n428, n429, n430, n431, n432, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U148 ( .A(n265), .B(n144), .Z(n145) );
  XOR2_X1 U150 ( .A(n271), .B(n146), .Z(n147) );
  XOR2_X1 U152 ( .A(n301), .B(n148), .Z(n149) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U161 ( .A(n177), .B(n168), .CI(n166), .CO(n163), .S(n164) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n274), .CI(n292), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n305), .B(n253), .CI(n283), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n269), .B(n319), .CO(n193), .S(n194) );
  FA_X1 U177 ( .A(n205), .B(n200), .CI(n198), .CO(n195), .S(n196) );
  FA_X1 U178 ( .A(n207), .B(n209), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n284), .B(n294), .CI(n276), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n320), .B(n270), .CI(n306), .CO(n201), .S(n202) );
  FA_X1 U181 ( .A(n208), .B(n213), .CI(n206), .CO(n203), .S(n204) );
  FA_X1 U182 ( .A(n215), .B(n307), .CI(n210), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n295), .B(n285), .CI(n254), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n255), .B(n309), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n287), .B(n323), .CO(n221), .S(n222) );
  FA_X1 U192 ( .A(n324), .B(n288), .CI(n310), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n311), .B(n325), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n326), .B(n300), .CI(n312), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  AND2_X1 U414 ( .A1(n232), .A2(n233), .ZN(n490) );
  CLKBUF_X3 U415 ( .A(n16), .Z(n565) );
  AOI21_X1 U416 ( .B1(n104), .B2(n555), .A(n101), .ZN(n491) );
  INV_X1 U417 ( .A(n31), .ZN(n585) );
  XNOR2_X1 U418 ( .A(n585), .B(a[10]), .ZN(n428) );
  OR2_X1 U419 ( .A1(n164), .A2(n175), .ZN(n492) );
  OR2_X1 U420 ( .A1(n329), .A2(n258), .ZN(n493) );
  BUF_X1 U421 ( .A(n514), .Z(n504) );
  OR2_X1 U422 ( .A1(n176), .A2(n185), .ZN(n494) );
  XNOR2_X1 U423 ( .A(n535), .B(n495), .ZN(product[9]) );
  AND2_X1 U424 ( .A1(n499), .A2(n90), .ZN(n495) );
  BUF_X1 U425 ( .A(n516), .Z(n535) );
  INV_X1 U426 ( .A(n577), .ZN(n496) );
  BUF_X1 U427 ( .A(n37), .Z(n497) );
  NAND2_X1 U428 ( .A1(n432), .A2(n9), .ZN(n498) );
  OR2_X1 U429 ( .A1(n204), .A2(n211), .ZN(n499) );
  BUF_X1 U430 ( .A(n512), .Z(n500) );
  NOR2_X1 U431 ( .A1(n164), .A2(n175), .ZN(n501) );
  NOR2_X1 U432 ( .A1(n164), .A2(n175), .ZN(n75) );
  BUF_X1 U433 ( .A(n571), .Z(n502) );
  BUF_X1 U434 ( .A(n571), .Z(n503) );
  BUF_X1 U435 ( .A(n527), .Z(n507) );
  NAND2_X1 U436 ( .A1(n430), .A2(n21), .ZN(n505) );
  INV_X1 U437 ( .A(n513), .ZN(n21) );
  AOI21_X1 U438 ( .B1(n80), .B2(n520), .A(n81), .ZN(n506) );
  BUF_X2 U439 ( .A(n527), .Z(n508) );
  INV_X1 U440 ( .A(n566), .ZN(n527) );
  XNOR2_X1 U441 ( .A(n87), .B(n509), .ZN(product[10]) );
  AND2_X1 U442 ( .A1(n517), .A2(n86), .ZN(n509) );
  NAND2_X1 U443 ( .A1(n431), .A2(n564), .ZN(n510) );
  NAND2_X1 U444 ( .A1(n431), .A2(n564), .ZN(n18) );
  XNOR2_X1 U445 ( .A(n583), .B(a[8]), .ZN(n429) );
  INV_X1 U446 ( .A(n508), .ZN(n511) );
  BUF_X2 U447 ( .A(n570), .Z(n562) );
  XNOR2_X1 U448 ( .A(n582), .B(a[10]), .ZN(n512) );
  INV_X1 U449 ( .A(n576), .ZN(n574) );
  XNOR2_X1 U450 ( .A(n579), .B(a[6]), .ZN(n513) );
  OAI21_X1 U451 ( .B1(n99), .B2(n97), .A(n98), .ZN(n514) );
  INV_X1 U452 ( .A(n546), .ZN(n515) );
  INV_X1 U453 ( .A(n546), .ZN(n27) );
  AOI21_X1 U454 ( .B1(n514), .B2(n554), .A(n536), .ZN(n516) );
  OR2_X1 U455 ( .A1(n196), .A2(n203), .ZN(n517) );
  NAND2_X1 U456 ( .A1(n428), .A2(n512), .ZN(n518) );
  NAND2_X1 U457 ( .A1(n428), .A2(n545), .ZN(n519) );
  OAI21_X1 U458 ( .B1(n516), .B2(n89), .A(n90), .ZN(n520) );
  INV_X1 U459 ( .A(n585), .ZN(n521) );
  INV_X1 U460 ( .A(n585), .ZN(n522) );
  XNOR2_X1 U461 ( .A(n581), .B(a[6]), .ZN(n430) );
  CLKBUF_X1 U462 ( .A(n506), .Z(n523) );
  INV_X1 U463 ( .A(n574), .ZN(n524) );
  INV_X1 U464 ( .A(n583), .ZN(n525) );
  INV_X1 U465 ( .A(n583), .ZN(n526) );
  INV_X1 U466 ( .A(n583), .ZN(n582) );
  XNOR2_X1 U467 ( .A(n573), .B(n249), .ZN(n552) );
  INV_X1 U468 ( .A(n566), .ZN(n9) );
  OAI21_X1 U469 ( .B1(n115), .B2(n113), .A(n114), .ZN(n528) );
  OAI21_X1 U470 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  XOR2_X1 U471 ( .A(n216), .B(n219), .Z(n529) );
  XOR2_X1 U472 ( .A(n214), .B(n529), .Z(n212) );
  NAND2_X1 U473 ( .A1(n214), .A2(n216), .ZN(n530) );
  NAND2_X1 U474 ( .A1(n214), .A2(n219), .ZN(n531) );
  NAND2_X1 U475 ( .A1(n216), .A2(n219), .ZN(n532) );
  NAND3_X1 U476 ( .A1(n530), .A2(n531), .A3(n532), .ZN(n211) );
  INV_X1 U477 ( .A(n579), .ZN(n577) );
  INV_X2 U478 ( .A(n579), .ZN(n578) );
  BUF_X1 U479 ( .A(n21), .Z(n550) );
  CLKBUF_X3 U480 ( .A(n21), .Z(n549) );
  NAND2_X1 U481 ( .A1(n430), .A2(n21), .ZN(n533) );
  NAND2_X1 U482 ( .A1(n430), .A2(n21), .ZN(n534) );
  XNOR2_X1 U483 ( .A(n576), .B(a[2]), .ZN(n432) );
  AND2_X1 U484 ( .A1(n212), .A2(n217), .ZN(n536) );
  XNOR2_X1 U485 ( .A(n226), .B(n537), .ZN(n224) );
  XNOR2_X1 U486 ( .A(n229), .B(n298), .ZN(n537) );
  XOR2_X1 U487 ( .A(n576), .B(a[4]), .Z(n16) );
  NAND2_X2 U488 ( .A1(n429), .A2(n27), .ZN(n29) );
  NOR2_X1 U489 ( .A1(n228), .A2(n231), .ZN(n538) );
  NOR2_X1 U490 ( .A1(n228), .A2(n231), .ZN(n105) );
  BUF_X1 U491 ( .A(n16), .Z(n564) );
  NAND2_X1 U492 ( .A1(n226), .A2(n229), .ZN(n539) );
  NAND2_X1 U493 ( .A1(n226), .A2(n298), .ZN(n540) );
  NAND2_X1 U494 ( .A1(n229), .A2(n298), .ZN(n541) );
  NAND3_X1 U495 ( .A1(n539), .A2(n540), .A3(n541), .ZN(n223) );
  INV_X1 U496 ( .A(n563), .ZN(n542) );
  CLKBUF_X1 U497 ( .A(n99), .Z(n543) );
  NOR2_X1 U498 ( .A1(n186), .A2(n195), .ZN(n544) );
  XNOR2_X1 U499 ( .A(n582), .B(a[10]), .ZN(n545) );
  XNOR2_X1 U500 ( .A(n581), .B(a[8]), .ZN(n546) );
  INV_X2 U501 ( .A(n581), .ZN(n580) );
  NAND2_X1 U502 ( .A1(n552), .A2(n570), .ZN(n547) );
  NAND2_X1 U503 ( .A1(n552), .A2(n570), .ZN(n548) );
  NAND2_X1 U504 ( .A1(n432), .A2(n9), .ZN(n551) );
  NAND2_X1 U505 ( .A1(n432), .A2(n9), .ZN(n12) );
  NAND2_X1 U506 ( .A1(n552), .A2(n570), .ZN(n6) );
  XNOR2_X1 U507 ( .A(n70), .B(n47), .ZN(product[14]) );
  NAND2_X1 U508 ( .A1(n553), .A2(n69), .ZN(n47) );
  INV_X1 U509 ( .A(n73), .ZN(n71) );
  AOI21_X1 U510 ( .B1(n74), .B2(n553), .A(n67), .ZN(n65) );
  INV_X1 U511 ( .A(n69), .ZN(n67) );
  NAND2_X1 U512 ( .A1(n73), .A2(n553), .ZN(n64) );
  INV_X1 U513 ( .A(n74), .ZN(n72) );
  XNOR2_X1 U514 ( .A(n77), .B(n48), .ZN(product[13]) );
  NAND2_X1 U515 ( .A1(n492), .A2(n76), .ZN(n48) );
  NAND2_X1 U516 ( .A1(n494), .A2(n79), .ZN(n49) );
  OR2_X1 U517 ( .A1(n152), .A2(n163), .ZN(n553) );
  AOI21_X1 U518 ( .B1(n96), .B2(n554), .A(n536), .ZN(n91) );
  NAND2_X1 U519 ( .A1(n554), .A2(n95), .ZN(n53) );
  OAI21_X1 U520 ( .B1(n501), .B2(n79), .A(n76), .ZN(n74) );
  NOR2_X1 U521 ( .A1(n75), .A2(n78), .ZN(n73) );
  XNOR2_X1 U522 ( .A(n84), .B(n50), .ZN(product[11]) );
  NAND2_X1 U523 ( .A1(n127), .A2(n83), .ZN(n50) );
  INV_X1 U524 ( .A(n544), .ZN(n127) );
  NAND2_X1 U525 ( .A1(n152), .A2(n163), .ZN(n69) );
  AOI21_X1 U526 ( .B1(n520), .B2(n80), .A(n81), .ZN(n45) );
  NOR2_X1 U527 ( .A1(n544), .A2(n85), .ZN(n80) );
  INV_X1 U528 ( .A(n119), .ZN(n117) );
  NAND2_X1 U529 ( .A1(n131), .A2(n98), .ZN(n54) );
  INV_X1 U530 ( .A(n97), .ZN(n131) );
  NOR2_X1 U531 ( .A1(n186), .A2(n195), .ZN(n82) );
  NOR2_X1 U532 ( .A1(n196), .A2(n203), .ZN(n85) );
  NOR2_X1 U533 ( .A1(n176), .A2(n185), .ZN(n78) );
  NAND2_X1 U534 ( .A1(n556), .A2(n111), .ZN(n57) );
  NAND2_X1 U535 ( .A1(n557), .A2(n119), .ZN(n59) );
  XOR2_X1 U536 ( .A(n58), .B(n115), .Z(product[3]) );
  INV_X1 U537 ( .A(n113), .ZN(n135) );
  XOR2_X1 U538 ( .A(n56), .B(n567), .Z(product[5]) );
  NAND2_X1 U539 ( .A1(n133), .A2(n106), .ZN(n56) );
  INV_X1 U540 ( .A(n538), .ZN(n133) );
  XNOR2_X1 U541 ( .A(n55), .B(n568), .ZN(product[6]) );
  NAND2_X1 U542 ( .A1(n176), .A2(n185), .ZN(n79) );
  BUF_X1 U543 ( .A(n571), .Z(n563) );
  NAND2_X1 U544 ( .A1(n164), .A2(n175), .ZN(n76) );
  OR2_X1 U545 ( .A1(n212), .A2(n217), .ZN(n554) );
  NAND2_X1 U546 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U547 ( .A1(n186), .A2(n195), .ZN(n83) );
  NAND2_X1 U548 ( .A1(n212), .A2(n217), .ZN(n95) );
  NAND2_X1 U549 ( .A1(n204), .A2(n211), .ZN(n90) );
  INV_X1 U550 ( .A(n585), .ZN(n584) );
  OR2_X1 U551 ( .A1(n224), .A2(n227), .ZN(n555) );
  NOR2_X1 U552 ( .A1(n234), .A2(n257), .ZN(n113) );
  NAND2_X1 U553 ( .A1(n328), .A2(n314), .ZN(n119) );
  NOR2_X1 U554 ( .A1(n218), .A2(n223), .ZN(n97) );
  OR2_X1 U555 ( .A1(n232), .A2(n233), .ZN(n556) );
  NAND2_X1 U556 ( .A1(n228), .A2(n231), .ZN(n106) );
  NAND2_X1 U557 ( .A1(n218), .A2(n223), .ZN(n98) );
  INV_X1 U558 ( .A(n37), .ZN(n237) );
  OR2_X1 U559 ( .A1(n328), .A2(n314), .ZN(n557) );
  NAND2_X1 U560 ( .A1(n232), .A2(n233), .ZN(n111) );
  INV_X1 U561 ( .A(n41), .ZN(n235) );
  OR2_X1 U562 ( .A1(n151), .A2(n139), .ZN(n558) );
  AND2_X1 U563 ( .A1(n493), .A2(n122), .ZN(product[1]) );
  XNOR2_X1 U564 ( .A(n584), .B(a[12]), .ZN(n37) );
  OR2_X1 U565 ( .A1(n43), .A2(n524), .ZN(n392) );
  OAI22_X1 U566 ( .A1(n548), .A2(n407), .B1(n406), .B2(n562), .ZN(n328) );
  XNOR2_X1 U567 ( .A(n586), .B(a[14]), .ZN(n41) );
  OAI22_X1 U568 ( .A1(n39), .A2(n336), .B1(n497), .B2(n335), .ZN(n263) );
  XOR2_X1 U569 ( .A(n577), .B(a[4]), .Z(n431) );
  OAI22_X1 U570 ( .A1(n6), .A2(n400), .B1(n399), .B2(n562), .ZN(n321) );
  XNOR2_X1 U571 ( .A(n525), .B(n43), .ZN(n352) );
  OAI22_X1 U572 ( .A1(n548), .A2(n408), .B1(n407), .B2(n562), .ZN(n329) );
  OAI22_X1 U573 ( .A1(n547), .A2(n406), .B1(n405), .B2(n562), .ZN(n327) );
  XNOR2_X1 U574 ( .A(n574), .B(n43), .ZN(n391) );
  AND2_X1 U575 ( .A1(n569), .A2(n235), .ZN(n260) );
  OAI22_X1 U576 ( .A1(n39), .A2(n335), .B1(n497), .B2(n334), .ZN(n262) );
  OAI22_X1 U577 ( .A1(n6), .A2(n395), .B1(n394), .B2(n562), .ZN(n316) );
  OAI22_X1 U578 ( .A1(n42), .A2(n589), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U579 ( .A1(n43), .A2(n589), .ZN(n332) );
  XNOR2_X1 U580 ( .A(n578), .B(n43), .ZN(n376) );
  OAI22_X1 U581 ( .A1(n547), .A2(n398), .B1(n397), .B2(n562), .ZN(n319) );
  OAI22_X1 U582 ( .A1(n547), .A2(n404), .B1(n403), .B2(n562), .ZN(n325) );
  XNOR2_X1 U583 ( .A(n155), .B(n560), .ZN(n139) );
  XNOR2_X1 U584 ( .A(n153), .B(n141), .ZN(n560) );
  XNOR2_X1 U585 ( .A(n157), .B(n561), .ZN(n141) );
  XNOR2_X1 U586 ( .A(n145), .B(n143), .ZN(n561) );
  XOR2_X1 U587 ( .A(n315), .B(n261), .Z(n150) );
  OAI22_X1 U588 ( .A1(n39), .A2(n334), .B1(n497), .B2(n333), .ZN(n261) );
  OAI22_X1 U589 ( .A1(n548), .A2(n405), .B1(n404), .B2(n562), .ZN(n326) );
  AND2_X1 U590 ( .A1(n569), .A2(n245), .ZN(n300) );
  XNOR2_X1 U591 ( .A(n586), .B(n43), .ZN(n336) );
  AND2_X1 U592 ( .A1(n569), .A2(n546), .ZN(n278) );
  OAI22_X1 U593 ( .A1(n401), .A2(n548), .B1(n400), .B2(n562), .ZN(n322) );
  AND2_X1 U594 ( .A1(n569), .A2(n237), .ZN(n264) );
  OAI22_X1 U595 ( .A1(n6), .A2(n397), .B1(n396), .B2(n562), .ZN(n318) );
  AND2_X1 U596 ( .A1(n569), .A2(n243), .ZN(n288) );
  OAI22_X1 U597 ( .A1(n6), .A2(n403), .B1(n402), .B2(n562), .ZN(n324) );
  AND2_X1 U598 ( .A1(n569), .A2(n239), .ZN(n270) );
  OAI22_X1 U599 ( .A1(n399), .A2(n547), .B1(n398), .B2(n562), .ZN(n320) );
  NAND2_X1 U600 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U601 ( .A(n586), .B(a[12]), .Z(n427) );
  INV_X1 U602 ( .A(n25), .ZN(n583) );
  NAND2_X1 U603 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U604 ( .A(n588), .B(a[14]), .Z(n426) );
  OAI22_X1 U605 ( .A1(n402), .A2(n6), .B1(n401), .B2(n562), .ZN(n323) );
  XNOR2_X1 U606 ( .A(n580), .B(n43), .ZN(n363) );
  OAI22_X1 U607 ( .A1(n39), .A2(n587), .B1(n337), .B2(n497), .ZN(n252) );
  OAI22_X1 U608 ( .A1(n547), .A2(n396), .B1(n395), .B2(n562), .ZN(n317) );
  OR2_X1 U609 ( .A1(n43), .A2(n587), .ZN(n337) );
  AND2_X1 U610 ( .A1(n569), .A2(n249), .ZN(product[0]) );
  OR2_X1 U611 ( .A1(n43), .A2(n581), .ZN(n364) );
  OR2_X1 U612 ( .A1(n43), .A2(n583), .ZN(n353) );
  OR2_X1 U613 ( .A1(n43), .A2(n585), .ZN(n344) );
  OR2_X1 U614 ( .A1(n43), .A2(n496), .ZN(n377) );
  XNOR2_X1 U615 ( .A(n580), .B(b[9]), .ZN(n354) );
  XNOR2_X1 U616 ( .A(n578), .B(b[11]), .ZN(n365) );
  OAI22_X1 U617 ( .A1(n548), .A2(n394), .B1(n393), .B2(n562), .ZN(n315) );
  XNOR2_X1 U618 ( .A(n572), .B(b[15]), .ZN(n393) );
  XNOR2_X1 U619 ( .A(n586), .B(n424), .ZN(n335) );
  XNOR2_X1 U620 ( .A(n586), .B(n423), .ZN(n334) );
  OAI22_X1 U621 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U622 ( .A(n588), .B(n424), .ZN(n330) );
  XNOR2_X1 U623 ( .A(n588), .B(n43), .ZN(n331) );
  XNOR2_X1 U624 ( .A(n572), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U625 ( .A(n572), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U626 ( .A(n572), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U627 ( .A(n572), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U628 ( .A(n525), .B(n418), .ZN(n345) );
  XNOR2_X1 U629 ( .A(n521), .B(n420), .ZN(n338) );
  XNOR2_X1 U630 ( .A(n574), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U631 ( .A(n580), .B(n424), .ZN(n362) );
  XNOR2_X1 U632 ( .A(n574), .B(n424), .ZN(n390) );
  XNOR2_X1 U633 ( .A(n526), .B(n424), .ZN(n351) );
  XNOR2_X1 U634 ( .A(n578), .B(n424), .ZN(n375) );
  XNOR2_X1 U635 ( .A(n575), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U636 ( .A(n575), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U637 ( .A(n575), .B(n418), .ZN(n384) );
  XNOR2_X1 U638 ( .A(n575), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U639 ( .A(n575), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U640 ( .A(n575), .B(n419), .ZN(n385) );
  XNOR2_X1 U641 ( .A(n575), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U642 ( .A(n574), .B(n423), .ZN(n389) );
  XNOR2_X1 U643 ( .A(n574), .B(n422), .ZN(n388) );
  XNOR2_X1 U644 ( .A(n578), .B(n422), .ZN(n373) );
  XNOR2_X1 U645 ( .A(n580), .B(n423), .ZN(n361) );
  XNOR2_X1 U646 ( .A(n580), .B(n422), .ZN(n360) );
  XNOR2_X1 U647 ( .A(n578), .B(n423), .ZN(n374) );
  XNOR2_X1 U648 ( .A(n526), .B(n423), .ZN(n350) );
  XNOR2_X1 U649 ( .A(n525), .B(n422), .ZN(n349) );
  XNOR2_X1 U650 ( .A(n586), .B(n422), .ZN(n333) );
  XNOR2_X1 U651 ( .A(n578), .B(n418), .ZN(n369) );
  XNOR2_X1 U652 ( .A(n578), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U653 ( .A(n578), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U654 ( .A(n578), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U655 ( .A(n580), .B(n421), .ZN(n359) );
  XNOR2_X1 U656 ( .A(n580), .B(n420), .ZN(n358) );
  XNOR2_X1 U657 ( .A(n574), .B(n420), .ZN(n386) );
  XNOR2_X1 U658 ( .A(n574), .B(n421), .ZN(n387) );
  XNOR2_X1 U659 ( .A(n526), .B(n421), .ZN(n348) );
  XNOR2_X1 U660 ( .A(n578), .B(n421), .ZN(n372) );
  XNOR2_X1 U661 ( .A(n578), .B(n420), .ZN(n371) );
  XNOR2_X1 U662 ( .A(n525), .B(n420), .ZN(n347) );
  XNOR2_X1 U663 ( .A(n522), .B(n421), .ZN(n339) );
  XNOR2_X1 U664 ( .A(n580), .B(n418), .ZN(n356) );
  XNOR2_X1 U665 ( .A(n580), .B(n419), .ZN(n357) );
  XNOR2_X1 U666 ( .A(n578), .B(n419), .ZN(n370) );
  XNOR2_X1 U667 ( .A(n526), .B(n419), .ZN(n346) );
  XNOR2_X1 U668 ( .A(n580), .B(b[8]), .ZN(n355) );
  BUF_X1 U669 ( .A(n43), .Z(n569) );
  AND2_X1 U670 ( .A1(n569), .A2(n511), .ZN(n314) );
  XNOR2_X1 U671 ( .A(n522), .B(n424), .ZN(n342) );
  XNOR2_X1 U672 ( .A(n522), .B(n423), .ZN(n341) );
  XNOR2_X1 U673 ( .A(n521), .B(n43), .ZN(n343) );
  XNOR2_X1 U674 ( .A(n521), .B(n422), .ZN(n340) );
  INV_X1 U675 ( .A(n249), .ZN(n570) );
  INV_X1 U676 ( .A(n573), .ZN(n571) );
  OAI22_X1 U677 ( .A1(n518), .A2(n339), .B1(n338), .B2(n545), .ZN(n265) );
  OAI22_X1 U678 ( .A1(n519), .A2(n340), .B1(n339), .B2(n500), .ZN(n266) );
  OAI22_X1 U679 ( .A1(n519), .A2(n341), .B1(n340), .B2(n545), .ZN(n267) );
  OAI22_X1 U680 ( .A1(n518), .A2(n342), .B1(n341), .B2(n500), .ZN(n268) );
  INV_X1 U681 ( .A(n512), .ZN(n239) );
  OAI22_X1 U682 ( .A1(n518), .A2(n343), .B1(n342), .B2(n545), .ZN(n269) );
  OAI22_X1 U683 ( .A1(n34), .A2(n585), .B1(n344), .B2(n545), .ZN(n253) );
  NAND2_X1 U684 ( .A1(n512), .A2(n428), .ZN(n34) );
  XNOR2_X1 U685 ( .A(n573), .B(a[2]), .ZN(n566) );
  OAI21_X1 U686 ( .B1(n86), .B2(n82), .A(n83), .ZN(n81) );
  AOI21_X1 U687 ( .B1(n556), .B2(n528), .A(n490), .ZN(n567) );
  INV_X1 U688 ( .A(n19), .ZN(n581) );
  AOI21_X1 U689 ( .B1(n556), .B2(n112), .A(n490), .ZN(n107) );
  NOR2_X1 U690 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U691 ( .A1(n29), .A2(n346), .B1(n345), .B2(n515), .ZN(n271) );
  OAI22_X1 U692 ( .A1(n29), .A2(n350), .B1(n349), .B2(n515), .ZN(n275) );
  OAI22_X1 U693 ( .A1(n29), .A2(n347), .B1(n346), .B2(n515), .ZN(n272) );
  OAI22_X1 U694 ( .A1(n29), .A2(n348), .B1(n347), .B2(n515), .ZN(n273) );
  OAI22_X1 U695 ( .A1(n29), .A2(n583), .B1(n353), .B2(n515), .ZN(n254) );
  OAI22_X1 U696 ( .A1(n29), .A2(n351), .B1(n350), .B2(n515), .ZN(n276) );
  OAI22_X1 U697 ( .A1(n29), .A2(n349), .B1(n348), .B2(n515), .ZN(n274) );
  OAI22_X1 U698 ( .A1(n29), .A2(n352), .B1(n351), .B2(n515), .ZN(n277) );
  NAND2_X1 U699 ( .A1(n555), .A2(n103), .ZN(n55) );
  INV_X1 U700 ( .A(n103), .ZN(n101) );
  NAND2_X1 U701 ( .A1(n224), .A2(n227), .ZN(n103) );
  INV_X1 U702 ( .A(n13), .ZN(n579) );
  OAI21_X1 U703 ( .B1(n538), .B2(n567), .A(n106), .ZN(n568) );
  OAI21_X1 U704 ( .B1(n85), .B2(n87), .A(n86), .ZN(n84) );
  XNOR2_X1 U705 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U706 ( .A1(n558), .A2(n62), .ZN(n46) );
  INV_X1 U707 ( .A(n7), .ZN(n576) );
  INV_X1 U708 ( .A(n1), .ZN(n573) );
  INV_X1 U709 ( .A(n573), .ZN(n572) );
  OR2_X1 U710 ( .A1(n43), .A2(n542), .ZN(n409) );
  OAI21_X1 U711 ( .B1(n107), .B2(n105), .A(n106), .ZN(n104) );
  OAI22_X1 U712 ( .A1(n534), .A2(n358), .B1(n357), .B2(n549), .ZN(n282) );
  OAI22_X1 U713 ( .A1(n534), .A2(n356), .B1(n355), .B2(n549), .ZN(n280) );
  OAI22_X1 U714 ( .A1(n534), .A2(n360), .B1(n359), .B2(n549), .ZN(n284) );
  OAI22_X1 U715 ( .A1(n505), .A2(n357), .B1(n356), .B2(n549), .ZN(n281) );
  OAI22_X1 U716 ( .A1(n533), .A2(n361), .B1(n360), .B2(n549), .ZN(n285) );
  OAI22_X1 U717 ( .A1(n534), .A2(n581), .B1(n364), .B2(n550), .ZN(n255) );
  OAI22_X1 U718 ( .A1(n505), .A2(n362), .B1(n361), .B2(n549), .ZN(n286) );
  OAI22_X1 U719 ( .A1(n505), .A2(n355), .B1(n354), .B2(n549), .ZN(n279) );
  OAI22_X1 U720 ( .A1(n533), .A2(n359), .B1(n358), .B2(n550), .ZN(n283) );
  OAI22_X1 U721 ( .A1(n505), .A2(n363), .B1(n362), .B2(n550), .ZN(n287) );
  INV_X1 U722 ( .A(n550), .ZN(n243) );
  INV_X1 U723 ( .A(n88), .ZN(n87) );
  OAI21_X1 U724 ( .B1(n91), .B2(n89), .A(n90), .ZN(n88) );
  NAND2_X1 U725 ( .A1(n151), .A2(n139), .ZN(n62) );
  OAI22_X1 U726 ( .A1(n510), .A2(n367), .B1(n366), .B2(n565), .ZN(n290) );
  OAI22_X1 U727 ( .A1(n510), .A2(n370), .B1(n369), .B2(n565), .ZN(n293) );
  OAI22_X1 U728 ( .A1(n510), .A2(n368), .B1(n367), .B2(n565), .ZN(n291) );
  OAI22_X1 U729 ( .A1(n510), .A2(n375), .B1(n374), .B2(n565), .ZN(n298) );
  OAI22_X1 U730 ( .A1(n18), .A2(n369), .B1(n368), .B2(n565), .ZN(n292) );
  OAI22_X1 U731 ( .A1(n18), .A2(n371), .B1(n370), .B2(n565), .ZN(n294) );
  OAI22_X1 U732 ( .A1(n510), .A2(n373), .B1(n372), .B2(n565), .ZN(n296) );
  OAI22_X1 U733 ( .A1(n18), .A2(n374), .B1(n373), .B2(n565), .ZN(n297) );
  OAI22_X1 U734 ( .A1(n18), .A2(n372), .B1(n371), .B2(n565), .ZN(n295) );
  OAI22_X1 U735 ( .A1(n510), .A2(n376), .B1(n375), .B2(n565), .ZN(n299) );
  OAI22_X1 U736 ( .A1(n510), .A2(n496), .B1(n377), .B2(n565), .ZN(n256) );
  OAI22_X1 U737 ( .A1(n18), .A2(n366), .B1(n365), .B2(n565), .ZN(n289) );
  INV_X1 U738 ( .A(n565), .ZN(n245) );
  XNOR2_X1 U739 ( .A(n57), .B(n528), .ZN(product[4]) );
  XNOR2_X1 U740 ( .A(n503), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U741 ( .A(n572), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U742 ( .A(n502), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U743 ( .A(n572), .B(n418), .ZN(n401) );
  XNOR2_X1 U744 ( .A(n563), .B(n43), .ZN(n408) );
  XNOR2_X1 U745 ( .A(n563), .B(n420), .ZN(n403) );
  XNOR2_X1 U746 ( .A(n502), .B(n419), .ZN(n402) );
  XNOR2_X1 U747 ( .A(n502), .B(n424), .ZN(n407) );
  XNOR2_X1 U748 ( .A(n572), .B(n421), .ZN(n404) );
  XNOR2_X1 U749 ( .A(n503), .B(n422), .ZN(n405) );
  XNOR2_X1 U750 ( .A(n503), .B(n423), .ZN(n406) );
  OAI21_X1 U751 ( .B1(n64), .B2(n523), .A(n65), .ZN(n63) );
  OAI21_X1 U752 ( .B1(n506), .B2(n78), .A(n79), .ZN(n77) );
  XOR2_X1 U753 ( .A(n45), .B(n49), .Z(product[12]) );
  OAI21_X1 U754 ( .B1(n71), .B2(n506), .A(n72), .ZN(n70) );
  NAND2_X1 U755 ( .A1(n135), .A2(n114), .ZN(n58) );
  XNOR2_X1 U756 ( .A(n504), .B(n53), .ZN(product[8]) );
  XNOR2_X1 U757 ( .A(n59), .B(n120), .ZN(product[2]) );
  AOI21_X1 U758 ( .B1(n557), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U759 ( .A(n122), .ZN(n120) );
  NAND2_X1 U760 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI21_X1 U761 ( .B1(n491), .B2(n97), .A(n98), .ZN(n96) );
  AOI21_X1 U762 ( .B1(n104), .B2(n555), .A(n101), .ZN(n99) );
  OAI22_X1 U763 ( .A1(n6), .A2(n542), .B1(n409), .B2(n562), .ZN(n258) );
  XOR2_X1 U764 ( .A(n543), .B(n54), .Z(product[7]) );
  OAI22_X1 U765 ( .A1(n551), .A2(n379), .B1(n378), .B2(n508), .ZN(n301) );
  OAI22_X1 U766 ( .A1(n551), .A2(n380), .B1(n379), .B2(n508), .ZN(n302) );
  OAI22_X1 U767 ( .A1(n498), .A2(n385), .B1(n384), .B2(n508), .ZN(n307) );
  OAI22_X1 U768 ( .A1(n498), .A2(n382), .B1(n381), .B2(n508), .ZN(n304) );
  OAI22_X1 U769 ( .A1(n551), .A2(n381), .B1(n380), .B2(n508), .ZN(n303) );
  NAND2_X1 U770 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U771 ( .A1(n383), .A2(n12), .B1(n382), .B2(n507), .ZN(n305) );
  OAI22_X1 U772 ( .A1(n12), .A2(n384), .B1(n507), .B2(n383), .ZN(n306) );
  OAI22_X1 U773 ( .A1(n498), .A2(n386), .B1(n385), .B2(n508), .ZN(n308) );
  OAI22_X1 U774 ( .A1(n551), .A2(n387), .B1(n386), .B2(n508), .ZN(n309) );
  OAI22_X1 U775 ( .A1(n551), .A2(n524), .B1(n392), .B2(n508), .ZN(n257) );
  OAI22_X1 U776 ( .A1(n12), .A2(n389), .B1(n388), .B2(n507), .ZN(n311) );
  OAI22_X1 U777 ( .A1(n551), .A2(n388), .B1(n387), .B2(n508), .ZN(n310) );
  OAI22_X1 U778 ( .A1(n498), .A2(n390), .B1(n508), .B2(n389), .ZN(n312) );
  OAI22_X1 U779 ( .A1(n498), .A2(n391), .B1(n390), .B2(n508), .ZN(n313) );
  INV_X1 U780 ( .A(n576), .ZN(n575) );
  INV_X1 U781 ( .A(n587), .ZN(n586) );
  INV_X1 U782 ( .A(n36), .ZN(n587) );
  INV_X1 U783 ( .A(n589), .ZN(n588) );
  INV_X1 U784 ( .A(n40), .ZN(n589) );
  XOR2_X1 U785 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U786 ( .A(n289), .B(n279), .Z(n146) );
  XOR2_X1 U787 ( .A(n149), .B(n147), .Z(n144) );
  XOR2_X1 U788 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_15_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n2, n4, n5, n8, n9, n10, n11, n12, n13, n14, n15, n16, n19, n20, n22,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n38,
         n39, n40, n44, n45, n47, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n65, n67, n68, n69, n70, n71, n73, n75,
         n76, n77, n78, n79, n81, n83, n84, n86, n88, n89, n90, n94, n95, n96,
         n98, n100, n157, n158, n159, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182;

  XNOR2_X1 U122 ( .A(n45), .B(n157), .ZN(SUM[10]) );
  AND2_X1 U123 ( .A1(n180), .A2(n44), .ZN(n157) );
  AOI21_X2 U124 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  INV_X1 U125 ( .A(n38), .ZN(n158) );
  BUF_X1 U126 ( .A(n29), .Z(n159) );
  INV_X1 U127 ( .A(n167), .ZN(n44) );
  AND2_X1 U128 ( .A1(n174), .A2(n86), .ZN(SUM[0]) );
  BUF_X1 U129 ( .A(n55), .Z(n161) );
  OR2_X1 U130 ( .A1(A[11]), .A2(B[11]), .ZN(n162) );
  INV_X1 U131 ( .A(n38), .ZN(n163) );
  AND2_X1 U132 ( .A1(A[10]), .A2(B[10]), .ZN(n167) );
  XNOR2_X1 U133 ( .A(n27), .B(n164), .ZN(SUM[14]) );
  NAND2_X1 U134 ( .A1(n88), .A2(n26), .ZN(n164) );
  OR2_X1 U135 ( .A1(A[15]), .A2(B[15]), .ZN(n165) );
  AOI21_X1 U136 ( .B1(n180), .B2(n47), .A(n167), .ZN(n166) );
  OR2_X2 U137 ( .A1(A[10]), .A2(B[10]), .ZN(n180) );
  OAI21_X1 U138 ( .B1(n39), .B2(n51), .A(n40), .ZN(n168) );
  XNOR2_X1 U139 ( .A(n163), .B(n169), .ZN(SUM[11]) );
  AND2_X1 U140 ( .A1(n162), .A2(n36), .ZN(n169) );
  NOR2_X1 U141 ( .A1(A[8]), .A2(B[8]), .ZN(n170) );
  NOR2_X1 U142 ( .A1(A[12]), .A2(B[12]), .ZN(n171) );
  NOR2_X1 U143 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  NOR2_X1 U144 ( .A1(A[14]), .A2(B[14]), .ZN(n172) );
  OAI21_X1 U145 ( .B1(n32), .B2(n36), .A(n33), .ZN(n173) );
  INV_X1 U146 ( .A(n24), .ZN(n22) );
  OR2_X1 U147 ( .A1(A[0]), .A2(B[0]), .ZN(n174) );
  AOI21_X1 U148 ( .B1(n168), .B2(n30), .A(n173), .ZN(n175) );
  AOI21_X1 U149 ( .B1(n168), .B2(n30), .A(n31), .ZN(n176) );
  INV_X1 U150 ( .A(n60), .ZN(n59) );
  INV_X1 U151 ( .A(n51), .ZN(n50) );
  OAI21_X1 U152 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  AOI21_X1 U153 ( .B1(n181), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U154 ( .A(n67), .ZN(n65) );
  AOI21_X1 U155 ( .B1(n182), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U156 ( .A(n75), .ZN(n73) );
  OAI21_X1 U157 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  AOI21_X1 U158 ( .B1(n179), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U159 ( .A(n83), .ZN(n81) );
  OR2_X1 U160 ( .A1(n25), .A2(n28), .ZN(n177) );
  OAI21_X1 U161 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  NOR2_X1 U162 ( .A1(n170), .A2(n57), .ZN(n52) );
  OAI21_X1 U163 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  AOI21_X1 U164 ( .B1(n50), .B2(n178), .A(n47), .ZN(n45) );
  INV_X1 U165 ( .A(n86), .ZN(n84) );
  OAI21_X1 U166 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  INV_X1 U167 ( .A(n49), .ZN(n47) );
  NAND2_X1 U168 ( .A1(n94), .A2(n161), .ZN(n9) );
  INV_X1 U169 ( .A(n170), .ZN(n94) );
  NAND2_X1 U170 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U171 ( .A(n61), .ZN(n96) );
  NAND2_X1 U172 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U173 ( .A(n69), .ZN(n98) );
  INV_X1 U174 ( .A(n28), .ZN(n89) );
  INV_X1 U175 ( .A(n171), .ZN(n90) );
  NAND2_X1 U176 ( .A1(n182), .A2(n75), .ZN(n14) );
  NAND2_X1 U177 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U178 ( .A(n57), .ZN(n95) );
  NAND2_X1 U179 ( .A1(n178), .A2(n49), .ZN(n8) );
  NAND2_X1 U180 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U181 ( .A(n77), .ZN(n100) );
  NAND2_X1 U182 ( .A1(n181), .A2(n67), .ZN(n12) );
  NAND2_X1 U183 ( .A1(n179), .A2(n83), .ZN(n16) );
  XOR2_X1 U184 ( .A(n11), .B(n63), .Z(SUM[6]) );
  XOR2_X1 U185 ( .A(n13), .B(n71), .Z(SUM[4]) );
  XNOR2_X1 U186 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  XNOR2_X1 U187 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NOR2_X1 U188 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  NOR2_X1 U189 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  NOR2_X1 U190 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  NAND2_X1 U191 ( .A1(n89), .A2(n29), .ZN(n4) );
  NOR2_X1 U192 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  OR2_X1 U193 ( .A1(A[9]), .A2(B[9]), .ZN(n178) );
  NOR2_X1 U194 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NAND2_X1 U195 ( .A1(n90), .A2(n33), .ZN(n5) );
  NAND2_X1 U196 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  OR2_X1 U197 ( .A1(A[1]), .A2(B[1]), .ZN(n179) );
  NAND2_X1 U198 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  NOR2_X1 U199 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NOR2_X1 U200 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NOR2_X1 U201 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  XNOR2_X1 U202 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  OR2_X1 U203 ( .A1(A[5]), .A2(B[5]), .ZN(n181) );
  NAND2_X1 U204 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  NAND2_X1 U205 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  OR2_X1 U206 ( .A1(A[3]), .A2(B[3]), .ZN(n182) );
  NAND2_X1 U207 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  NAND2_X1 U208 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U209 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U210 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U211 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U212 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  XNOR2_X1 U213 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XOR2_X1 U214 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XNOR2_X1 U215 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  XOR2_X1 U216 ( .A(n15), .B(n79), .Z(SUM[2]) );
  NAND2_X1 U217 ( .A1(n165), .A2(n19), .ZN(n2) );
  NAND2_X1 U218 ( .A1(A[15]), .A2(B[15]), .ZN(n19) );
  NAND2_X1 U219 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NAND2_X1 U220 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  NAND2_X1 U221 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  OAI21_X1 U222 ( .B1(n158), .B2(n35), .A(n36), .ZN(n34) );
  NOR2_X1 U223 ( .A1(n32), .A2(n35), .ZN(n30) );
  OAI21_X1 U224 ( .B1(n171), .B2(n36), .A(n33), .ZN(n31) );
  OAI21_X1 U225 ( .B1(n39), .B2(n51), .A(n166), .ZN(n38) );
  NAND2_X1 U226 ( .A1(n180), .A2(n178), .ZN(n39) );
  AOI21_X1 U227 ( .B1(n180), .B2(n47), .A(n167), .ZN(n40) );
  INV_X1 U228 ( .A(n25), .ZN(n88) );
  OAI21_X1 U229 ( .B1(n172), .B2(n29), .A(n26), .ZN(n24) );
  NAND2_X1 U230 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  XNOR2_X1 U231 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  XNOR2_X1 U232 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  XOR2_X1 U233 ( .A(n175), .B(n4), .Z(SUM[13]) );
  OAI21_X1 U234 ( .B1(n176), .B2(n28), .A(n159), .ZN(n27) );
  OAI21_X1 U235 ( .B1(n175), .B2(n177), .A(n22), .ZN(n20) );
endmodule


module datapath_M16_N8_T16_P16_15 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n19), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n227), .CK(clk), .Q(n22) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n228), .CK(clk), .Q(n23) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n229), .CK(clk), .Q(n24) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n230), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n231), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n232), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n233), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n234), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n235), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n236), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n237), .CK(clk), .Q(n34) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n238), .CK(clk), .Q(n35) );
  DFF_X1 \f_reg[0]  ( .D(n166), .CK(clk), .Q(n61), .QN(n216) );
  DFF_X1 \f_reg[1]  ( .D(n114), .CK(clk), .Q(n59), .QN(n217) );
  DFF_X1 \f_reg[2]  ( .D(n113), .CK(clk), .Q(n57), .QN(n218) );
  DFF_X1 \data_out_reg[15]  ( .D(n168), .CK(clk), .Q(data_out[15]), .QN(n199)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n169), .CK(clk), .Q(data_out[14]), .QN(n198)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n170), .CK(clk), .Q(data_out[13]), .QN(n197)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n171), .CK(clk), .Q(data_out[12]), .QN(n196)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n172), .CK(clk), .Q(data_out[11]), .QN(n195)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n173), .CK(clk), .Q(data_out[10]), .QN(n194)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n174), .CK(clk), .Q(data_out[9]), .QN(n193) );
  DFF_X1 \data_out_reg[8]  ( .D(n175), .CK(clk), .Q(data_out[8]), .QN(n192) );
  DFF_X1 \data_out_reg[7]  ( .D(n176), .CK(clk), .Q(data_out[7]), .QN(n191) );
  DFF_X1 \data_out_reg[6]  ( .D(n177), .CK(clk), .Q(data_out[6]), .QN(n190) );
  DFF_X1 \data_out_reg[5]  ( .D(n178), .CK(clk), .Q(data_out[5]), .QN(n189) );
  DFF_X1 \data_out_reg[4]  ( .D(n179), .CK(clk), .Q(data_out[4]), .QN(n188) );
  DFF_X1 \data_out_reg[3]  ( .D(n180), .CK(clk), .Q(data_out[3]), .QN(n187) );
  DFF_X1 \data_out_reg[2]  ( .D(n181), .CK(clk), .Q(data_out[2]), .QN(n186) );
  DFF_X1 \data_out_reg[1]  ( .D(n182), .CK(clk), .Q(data_out[1]), .QN(n185) );
  DFF_X1 \data_out_reg[0]  ( .D(n183), .CK(clk), .Q(data_out[0]), .QN(n184) );
  datapath_M16_N8_T16_P16_15_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_15_DW01_add_2 add_262 ( .A({n206, n205, n204, n203, 
        n202, n201, n215, n214, n213, n212, n211, n210, n209, n208, n207, n200}), .B({f[15], n43, n44, n46, n47, n49, f[9:3], n57, n59, n61}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X1 delay_reg ( .D(n167), .CK(clk), .Q(n10), .QN(n243) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n242), .CK(clk), .Q(n39) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n241), .CK(clk), .Q(n38) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n240), .CK(clk), .Q(n37) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n239), .CK(clk), .Q(n36) );
  DFF_X1 \f_reg[3]  ( .D(n112), .CK(clk), .Q(f[3]), .QN(n65) );
  DFF_X1 \f_reg[4]  ( .D(n111), .CK(clk), .Q(f[4]), .QN(n66) );
  DFF_X1 \f_reg[5]  ( .D(n102), .CK(clk), .Q(f[5]), .QN(n67) );
  DFF_X1 \f_reg[6]  ( .D(n85), .CK(clk), .Q(f[6]), .QN(n68) );
  DFF_X1 \f_reg[7]  ( .D(n83), .CK(clk), .Q(f[7]), .QN(n219) );
  DFF_X1 \f_reg[8]  ( .D(n82), .CK(clk), .Q(f[8]), .QN(n220) );
  DFF_X1 \f_reg[9]  ( .D(n81), .CK(clk), .Q(f[9]), .QN(n221) );
  DFF_X1 \f_reg[10]  ( .D(n80), .CK(clk), .Q(n49), .QN(n222) );
  DFF_X1 \f_reg[15]  ( .D(n76), .CK(clk), .Q(f[15]), .QN(n73) );
  DFF_X1 \f_reg[11]  ( .D(n79), .CK(clk), .Q(n47), .QN(n223) );
  DFF_X1 \f_reg[13]  ( .D(n78), .CK(clk), .Q(n44), .QN(n225) );
  DFF_X1 \f_reg[14]  ( .D(n77), .CK(clk), .Q(n43), .QN(n226) );
  DFF_X1 \f_reg[12]  ( .D(n2), .CK(clk), .Q(n46), .QN(n224) );
  AND2_X1 U3 ( .A1(clear_acc_delay), .A2(n243), .ZN(n1) );
  NAND2_X1 U4 ( .A1(n63), .A2(f[15]), .ZN(n16) );
  AND2_X1 U5 ( .A1(n42), .A2(n20), .ZN(n17) );
  AND2_X1 U6 ( .A1(n16), .A2(n14), .ZN(n4) );
  MUX2_X2 U8 ( .A(n26), .B(N40), .S(n243), .Z(n202) );
  NAND3_X1 U9 ( .A1(n7), .A2(n6), .A3(n8), .ZN(n2) );
  MUX2_X2 U10 ( .A(n22), .B(N44), .S(n243), .Z(n206) );
  NAND2_X1 U11 ( .A1(n15), .A2(n4), .ZN(n76) );
  MUX2_X2 U12 ( .A(N39), .B(n27), .S(n10), .Z(n201) );
  MUX2_X2 U13 ( .A(n29), .B(N37), .S(n243), .Z(n214) );
  MUX2_X2 U14 ( .A(n23), .B(N43), .S(n243), .Z(n205) );
  CLKBUF_X1 U15 ( .A(N42), .Z(n5) );
  MUX2_X2 U16 ( .A(n25), .B(N41), .S(n243), .Z(n203) );
  NAND2_X1 U17 ( .A1(data_out_b[12]), .A2(n19), .ZN(n6) );
  NAND2_X1 U18 ( .A1(adder[12]), .A2(n17), .ZN(n7) );
  NAND2_X1 U19 ( .A1(n63), .A2(n46), .ZN(n8) );
  AND2_X1 U20 ( .A1(n13), .A2(n11), .ZN(n9) );
  NAND2_X1 U21 ( .A1(n12), .A2(n9), .ZN(n77) );
  NAND2_X1 U22 ( .A1(data_out_b[14]), .A2(n19), .ZN(n11) );
  NAND2_X1 U23 ( .A1(adder[14]), .A2(n17), .ZN(n12) );
  NAND2_X1 U24 ( .A1(n63), .A2(n43), .ZN(n13) );
  NAND2_X1 U25 ( .A1(data_out_b[15]), .A2(n19), .ZN(n14) );
  NAND2_X1 U26 ( .A1(adder[15]), .A2(n17), .ZN(n15) );
  NAND2_X1 U27 ( .A1(n167), .A2(n18), .ZN(n245) );
  INV_X1 U28 ( .A(n42), .ZN(n63) );
  INV_X1 U29 ( .A(clear_acc), .ZN(n20) );
  OAI22_X1 U30 ( .A1(n187), .A2(n245), .B1(n65), .B2(n244), .ZN(n180) );
  OAI22_X1 U31 ( .A1(n188), .A2(n245), .B1(n66), .B2(n244), .ZN(n179) );
  OAI22_X1 U32 ( .A1(n189), .A2(n245), .B1(n67), .B2(n244), .ZN(n178) );
  OAI22_X1 U33 ( .A1(n190), .A2(n245), .B1(n68), .B2(n244), .ZN(n177) );
  OAI22_X1 U34 ( .A1(n191), .A2(n245), .B1(n219), .B2(n244), .ZN(n176) );
  OAI22_X1 U35 ( .A1(n192), .A2(n245), .B1(n220), .B2(n244), .ZN(n175) );
  OAI22_X1 U36 ( .A1(n193), .A2(n245), .B1(n221), .B2(n244), .ZN(n174) );
  MUX2_X1 U37 ( .A(n24), .B(N42), .S(n243), .Z(n204) );
  INV_X1 U38 ( .A(wr_en_y), .ZN(n18) );
  INV_X1 U39 ( .A(n20), .ZN(n19) );
  INV_X1 U40 ( .A(m_ready), .ZN(n21) );
  NAND2_X1 U41 ( .A1(m_valid), .A2(n21), .ZN(n40) );
  OAI21_X1 U42 ( .B1(sel[4]), .B2(n75), .A(n40), .ZN(n167) );
  MUX2_X1 U43 ( .A(n22), .B(N44), .S(n1), .Z(n227) );
  MUX2_X1 U44 ( .A(n23), .B(N43), .S(n1), .Z(n228) );
  MUX2_X1 U45 ( .A(n24), .B(n5), .S(n1), .Z(n229) );
  MUX2_X1 U46 ( .A(n25), .B(N41), .S(n1), .Z(n230) );
  MUX2_X1 U47 ( .A(n26), .B(N40), .S(n1), .Z(n231) );
  MUX2_X1 U48 ( .A(n27), .B(N39), .S(n1), .Z(n232) );
  MUX2_X1 U49 ( .A(n28), .B(N38), .S(n1), .Z(n233) );
  MUX2_X1 U50 ( .A(n28), .B(N38), .S(n243), .Z(n215) );
  MUX2_X1 U51 ( .A(n29), .B(N37), .S(n1), .Z(n234) );
  MUX2_X1 U52 ( .A(n32), .B(N36), .S(n1), .Z(n235) );
  MUX2_X1 U53 ( .A(n32), .B(N36), .S(n243), .Z(n213) );
  MUX2_X1 U54 ( .A(n33), .B(N35), .S(n1), .Z(n236) );
  MUX2_X1 U55 ( .A(n33), .B(N35), .S(n243), .Z(n212) );
  MUX2_X1 U56 ( .A(n34), .B(N34), .S(n1), .Z(n237) );
  MUX2_X1 U57 ( .A(n34), .B(N34), .S(n243), .Z(n211) );
  MUX2_X1 U58 ( .A(n35), .B(N33), .S(n1), .Z(n238) );
  MUX2_X1 U59 ( .A(n35), .B(N33), .S(n243), .Z(n210) );
  MUX2_X1 U60 ( .A(n36), .B(N32), .S(n1), .Z(n239) );
  MUX2_X1 U61 ( .A(n36), .B(N32), .S(n243), .Z(n209) );
  MUX2_X1 U62 ( .A(n37), .B(N31), .S(n1), .Z(n240) );
  MUX2_X1 U63 ( .A(n37), .B(N31), .S(n243), .Z(n208) );
  MUX2_X1 U64 ( .A(n38), .B(N30), .S(n1), .Z(n241) );
  MUX2_X1 U65 ( .A(n38), .B(N30), .S(n243), .Z(n207) );
  MUX2_X1 U66 ( .A(n39), .B(N29), .S(n1), .Z(n242) );
  MUX2_X1 U67 ( .A(n39), .B(N29), .S(n243), .Z(n200) );
  INV_X1 U68 ( .A(n40), .ZN(n41) );
  OAI21_X1 U69 ( .B1(n41), .B2(n10), .A(n20), .ZN(n42) );
  AOI222_X1 U70 ( .A1(data_out_b[13]), .A2(n19), .B1(adder[13]), .B2(n17), 
        .C1(n63), .C2(n44), .ZN(n45) );
  INV_X1 U71 ( .A(n45), .ZN(n78) );
  AOI222_X1 U72 ( .A1(data_out_b[11]), .A2(n19), .B1(adder[11]), .B2(n17), 
        .C1(n63), .C2(n47), .ZN(n48) );
  INV_X1 U73 ( .A(n48), .ZN(n79) );
  AOI222_X1 U74 ( .A1(data_out_b[10]), .A2(n19), .B1(adder[10]), .B2(n17), 
        .C1(n63), .C2(n49), .ZN(n50) );
  INV_X1 U75 ( .A(n50), .ZN(n80) );
  AOI222_X1 U76 ( .A1(data_out_b[8]), .A2(n19), .B1(adder[8]), .B2(n17), .C1(
        n63), .C2(f[8]), .ZN(n51) );
  INV_X1 U77 ( .A(n51), .ZN(n82) );
  AOI222_X1 U78 ( .A1(data_out_b[7]), .A2(n19), .B1(adder[7]), .B2(n17), .C1(
        n63), .C2(f[7]), .ZN(n52) );
  INV_X1 U79 ( .A(n52), .ZN(n83) );
  AOI222_X1 U80 ( .A1(data_out_b[6]), .A2(n19), .B1(adder[6]), .B2(n17), .C1(
        n63), .C2(f[6]), .ZN(n53) );
  INV_X1 U81 ( .A(n53), .ZN(n85) );
  AOI222_X1 U82 ( .A1(data_out_b[5]), .A2(n19), .B1(adder[5]), .B2(n17), .C1(
        n63), .C2(f[5]), .ZN(n54) );
  INV_X1 U83 ( .A(n54), .ZN(n102) );
  AOI222_X1 U84 ( .A1(data_out_b[4]), .A2(n19), .B1(adder[4]), .B2(n17), .C1(
        n63), .C2(f[4]), .ZN(n55) );
  INV_X1 U85 ( .A(n55), .ZN(n111) );
  AOI222_X1 U86 ( .A1(data_out_b[3]), .A2(n19), .B1(adder[3]), .B2(n17), .C1(
        n63), .C2(f[3]), .ZN(n56) );
  INV_X1 U87 ( .A(n56), .ZN(n112) );
  AOI222_X1 U88 ( .A1(data_out_b[2]), .A2(n19), .B1(adder[2]), .B2(n17), .C1(
        n63), .C2(n57), .ZN(n58) );
  INV_X1 U89 ( .A(n58), .ZN(n113) );
  AOI222_X1 U90 ( .A1(data_out_b[1]), .A2(n19), .B1(adder[1]), .B2(n17), .C1(
        n63), .C2(n59), .ZN(n60) );
  INV_X1 U91 ( .A(n60), .ZN(n114) );
  AOI222_X1 U92 ( .A1(data_out_b[0]), .A2(n19), .B1(adder[0]), .B2(n17), .C1(
        n63), .C2(n61), .ZN(n62) );
  INV_X1 U93 ( .A(n62), .ZN(n166) );
  AOI222_X1 U94 ( .A1(data_out_b[9]), .A2(n19), .B1(adder[9]), .B2(n17), .C1(
        n63), .C2(f[9]), .ZN(n64) );
  INV_X1 U95 ( .A(n64), .ZN(n81) );
  NOR4_X1 U96 ( .A1(n47), .A2(n46), .A3(n44), .A4(n43), .ZN(n72) );
  NOR4_X1 U97 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n49), .ZN(n71) );
  NAND4_X1 U98 ( .A1(n68), .A2(n67), .A3(n66), .A4(n65), .ZN(n69) );
  NOR4_X1 U99 ( .A1(n69), .A2(n61), .A3(n59), .A4(n57), .ZN(n70) );
  NAND3_X1 U100 ( .A1(n72), .A2(n71), .A3(n70), .ZN(n74) );
  NAND3_X1 U101 ( .A1(wr_en_y), .A2(n74), .A3(n73), .ZN(n244) );
  OAI22_X1 U102 ( .A1(n184), .A2(n245), .B1(n216), .B2(n244), .ZN(n183) );
  OAI22_X1 U103 ( .A1(n185), .A2(n245), .B1(n217), .B2(n244), .ZN(n182) );
  OAI22_X1 U104 ( .A1(n186), .A2(n245), .B1(n218), .B2(n244), .ZN(n181) );
  OAI22_X1 U105 ( .A1(n194), .A2(n245), .B1(n222), .B2(n244), .ZN(n173) );
  OAI22_X1 U106 ( .A1(n195), .A2(n245), .B1(n223), .B2(n244), .ZN(n172) );
  OAI22_X1 U107 ( .A1(n196), .A2(n245), .B1(n224), .B2(n244), .ZN(n171) );
  OAI22_X1 U108 ( .A1(n197), .A2(n245), .B1(n225), .B2(n244), .ZN(n170) );
  OAI22_X1 U109 ( .A1(n198), .A2(n245), .B1(n226), .B2(n244), .ZN(n169) );
  OAI22_X1 U110 ( .A1(n199), .A2(n245), .B1(n73), .B2(n244), .ZN(n168) );
  AND4_X1 U111 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n75)
         );
endmodule


module datapath_M16_N8_T16_P16_14_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n27, n29, n31,
         n32, n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50,
         n51, n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n95, n96, n97, n98, n99, n101,
         n103, n104, n105, n106, n107, n111, n112, n113, n114, n115, n117,
         n119, n120, n122, n127, n131, n135, n139, n141, n142, n143, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n237, n247, n249, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n418,
         n419, n420, n421, n422, n423, n424, n426, n427, n428, n429, n433,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U150 ( .A(n271), .B(n146), .Z(n147) );
  XOR2_X1 U152 ( .A(n301), .B(n148), .Z(n149) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n167), .B(n160), .CI(n158), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n274), .CI(n292), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n283), .B(n253), .CI(n305), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n319), .B(n269), .CO(n193), .S(n194) );
  FA_X1 U178 ( .A(n207), .B(n209), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n276), .B(n284), .CI(n294), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n320), .B(n270), .CI(n306), .CO(n201), .S(n202) );
  FA_X1 U182 ( .A(n215), .B(n307), .CI(n210), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n254), .B(n285), .CI(n295), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  HA_X1 U190 ( .A(n323), .B(n287), .CO(n221), .S(n222) );
  FA_X1 U192 ( .A(n324), .B(n288), .CI(n310), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n325), .B(n311), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n300), .B(n326), .CI(n312), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n327), .B(n313), .CO(n233), .S(n234) );
  XOR2_X1 U414 ( .A(n608), .B(a[4]), .Z(n544) );
  NAND2_X2 U415 ( .A1(n428), .A2(n559), .ZN(n34) );
  XNOR2_X1 U416 ( .A(n490), .B(n198), .ZN(n196) );
  XNOR2_X1 U417 ( .A(n205), .B(n200), .ZN(n490) );
  CLKBUF_X1 U418 ( .A(n1), .Z(n491) );
  XNOR2_X2 U419 ( .A(n612), .B(a[12]), .ZN(n37) );
  XNOR2_X1 U420 ( .A(n566), .B(n420), .ZN(n338) );
  OR2_X1 U421 ( .A1(n231), .A2(n228), .ZN(n492) );
  OR2_X1 U422 ( .A1(n329), .A2(n258), .ZN(n493) );
  INV_X1 U423 ( .A(n500), .ZN(n95) );
  BUF_X1 U424 ( .A(n83), .Z(n494) );
  CLKBUF_X1 U425 ( .A(n112), .Z(n495) );
  CLKBUF_X3 U426 ( .A(n9), .Z(n555) );
  NOR2_X1 U427 ( .A1(n176), .A2(n185), .ZN(n78) );
  OAI21_X1 U428 ( .B1(n91), .B2(n89), .A(n90), .ZN(n496) );
  BUF_X1 U429 ( .A(n604), .Z(n497) );
  BUF_X1 U430 ( .A(n604), .Z(n498) );
  OR2_X1 U431 ( .A1(n176), .A2(n185), .ZN(n499) );
  BUF_X1 U432 ( .A(n572), .Z(n554) );
  AND2_X1 U433 ( .A1(n212), .A2(n217), .ZN(n500) );
  XNOR2_X1 U434 ( .A(n575), .B(n501), .ZN(product[9]) );
  AND2_X1 U435 ( .A1(n552), .A2(n90), .ZN(n501) );
  NOR2_X1 U436 ( .A1(n186), .A2(n195), .ZN(n502) );
  NOR2_X1 U437 ( .A1(n186), .A2(n195), .ZN(n82) );
  BUF_X2 U438 ( .A(n12), .Z(n581) );
  AND2_X1 U439 ( .A1(n232), .A2(n233), .ZN(n503) );
  XOR2_X1 U440 ( .A(n551), .B(n422), .Z(n405) );
  BUF_X1 U441 ( .A(n601), .Z(n542) );
  BUF_X1 U442 ( .A(n602), .Z(n551) );
  XNOR2_X1 U443 ( .A(n226), .B(n504), .ZN(n224) );
  XNOR2_X1 U444 ( .A(n229), .B(n298), .ZN(n504) );
  XOR2_X1 U445 ( .A(n208), .B(n213), .Z(n505) );
  XOR2_X1 U446 ( .A(n206), .B(n505), .Z(n204) );
  NAND2_X1 U447 ( .A1(n206), .A2(n208), .ZN(n506) );
  NAND2_X1 U448 ( .A1(n206), .A2(n213), .ZN(n507) );
  NAND2_X1 U449 ( .A1(n208), .A2(n213), .ZN(n508) );
  NAND3_X1 U450 ( .A1(n506), .A2(n507), .A3(n508), .ZN(n203) );
  BUF_X1 U451 ( .A(n583), .Z(n571) );
  NAND2_X1 U452 ( .A1(n27), .A2(n429), .ZN(n509) );
  NAND2_X1 U453 ( .A1(n198), .A2(n205), .ZN(n510) );
  NAND2_X1 U454 ( .A1(n198), .A2(n200), .ZN(n511) );
  NAND2_X1 U455 ( .A1(n205), .A2(n200), .ZN(n512) );
  NAND3_X1 U456 ( .A1(n510), .A2(n511), .A3(n512), .ZN(n195) );
  XOR2_X1 U457 ( .A(n309), .B(n255), .Z(n513) );
  XOR2_X1 U458 ( .A(n513), .B(n297), .Z(n220) );
  XOR2_X1 U459 ( .A(n225), .B(n222), .Z(n514) );
  XOR2_X1 U460 ( .A(n514), .B(n220), .Z(n218) );
  NAND2_X1 U461 ( .A1(n255), .A2(n309), .ZN(n515) );
  NAND2_X1 U462 ( .A1(n255), .A2(n297), .ZN(n516) );
  NAND2_X1 U463 ( .A1(n309), .A2(n297), .ZN(n517) );
  NAND3_X1 U464 ( .A1(n515), .A2(n516), .A3(n517), .ZN(n219) );
  NAND2_X1 U465 ( .A1(n225), .A2(n222), .ZN(n518) );
  NAND2_X1 U466 ( .A1(n225), .A2(n220), .ZN(n519) );
  NAND2_X1 U467 ( .A1(n222), .A2(n220), .ZN(n520) );
  NAND3_X1 U468 ( .A1(n518), .A2(n519), .A3(n520), .ZN(n217) );
  OR2_X2 U469 ( .A1(n562), .A2(n563), .ZN(n546) );
  XOR2_X1 U470 ( .A(n170), .B(n172), .Z(n521) );
  XOR2_X1 U471 ( .A(n521), .B(n179), .Z(n166) );
  XOR2_X1 U472 ( .A(n177), .B(n168), .Z(n522) );
  XOR2_X1 U473 ( .A(n522), .B(n166), .Z(n164) );
  NAND2_X1 U474 ( .A1(n170), .A2(n172), .ZN(n523) );
  NAND2_X1 U475 ( .A1(n170), .A2(n179), .ZN(n524) );
  NAND2_X1 U476 ( .A1(n172), .A2(n179), .ZN(n525) );
  NAND3_X1 U477 ( .A1(n523), .A2(n524), .A3(n525), .ZN(n165) );
  NAND2_X1 U478 ( .A1(n177), .A2(n168), .ZN(n526) );
  NAND2_X1 U479 ( .A1(n177), .A2(n166), .ZN(n527) );
  NAND2_X1 U480 ( .A1(n168), .A2(n166), .ZN(n528) );
  NAND3_X1 U481 ( .A1(n526), .A2(n527), .A3(n528), .ZN(n163) );
  BUF_X2 U482 ( .A(n16), .Z(n597) );
  AOI21_X1 U483 ( .B1(n587), .B2(n120), .A(n117), .ZN(n529) );
  XOR2_X1 U484 ( .A(n609), .B(a[6]), .Z(n562) );
  BUF_X2 U485 ( .A(n21), .Z(n595) );
  INV_X1 U486 ( .A(n535), .ZN(n27) );
  INV_X1 U487 ( .A(n535), .ZN(n541) );
  NAND2_X1 U488 ( .A1(n226), .A2(n229), .ZN(n530) );
  NAND2_X1 U489 ( .A1(n226), .A2(n298), .ZN(n531) );
  NAND2_X1 U490 ( .A1(n229), .A2(n298), .ZN(n532) );
  NAND3_X1 U491 ( .A1(n530), .A2(n531), .A3(n532), .ZN(n223) );
  OR2_X1 U492 ( .A1(n544), .A2(n545), .ZN(n533) );
  OR2_X2 U493 ( .A1(n544), .A2(n545), .ZN(n534) );
  OR2_X1 U494 ( .A1(n544), .A2(n545), .ZN(n18) );
  XNOR2_X1 U495 ( .A(n609), .B(a[8]), .ZN(n535) );
  CLKBUF_X3 U496 ( .A(n600), .Z(n536) );
  BUF_X2 U497 ( .A(n600), .Z(n537) );
  INV_X1 U498 ( .A(n249), .ZN(n600) );
  XOR2_X1 U499 ( .A(n551), .B(n420), .Z(n403) );
  BUF_X1 U500 ( .A(n605), .Z(n538) );
  NAND2_X1 U501 ( .A1(n557), .A2(n536), .ZN(n539) );
  BUF_X1 U502 ( .A(n604), .Z(n540) );
  BUF_X2 U503 ( .A(n601), .Z(n543) );
  XOR2_X1 U504 ( .A(n603), .B(a[4]), .Z(n545) );
  OR2_X1 U505 ( .A1(n562), .A2(n563), .ZN(n23) );
  OR2_X1 U506 ( .A1(n196), .A2(n203), .ZN(n547) );
  OR2_X1 U507 ( .A1(n164), .A2(n175), .ZN(n548) );
  INV_X1 U508 ( .A(n561), .ZN(n549) );
  BUF_X1 U509 ( .A(n603), .Z(n560) );
  AOI21_X1 U510 ( .B1(n588), .B2(n495), .A(n503), .ZN(n550) );
  OR2_X1 U511 ( .A1(n204), .A2(n211), .ZN(n552) );
  CLKBUF_X1 U512 ( .A(n104), .Z(n553) );
  XNOR2_X1 U513 ( .A(n611), .B(a[8]), .ZN(n429) );
  CLKBUF_X1 U514 ( .A(n9), .Z(n596) );
  XNOR2_X1 U515 ( .A(n45), .B(n556), .ZN(product[12]) );
  AND2_X1 U516 ( .A1(n499), .A2(n79), .ZN(n556) );
  XOR2_X1 U517 ( .A(n601), .B(n249), .Z(n557) );
  CLKBUF_X1 U518 ( .A(n96), .Z(n558) );
  INV_X1 U519 ( .A(n577), .ZN(n559) );
  NAND2_X1 U520 ( .A1(n27), .A2(n429), .ZN(n578) );
  BUF_X1 U521 ( .A(n604), .Z(n561) );
  INV_X1 U522 ( .A(n605), .ZN(n604) );
  XNOR2_X1 U523 ( .A(n608), .B(a[6]), .ZN(n563) );
  XNOR2_X1 U524 ( .A(n538), .B(a[2]), .ZN(n584) );
  INV_X1 U525 ( .A(n543), .ZN(n564) );
  INV_X1 U526 ( .A(n606), .ZN(n565) );
  INV_X1 U527 ( .A(n613), .ZN(n566) );
  INV_X1 U528 ( .A(n613), .ZN(n567) );
  NAND2_X1 U529 ( .A1(n584), .A2(n9), .ZN(n568) );
  NAND2_X1 U530 ( .A1(n584), .A2(n9), .ZN(n12) );
  CLKBUF_X1 U531 ( .A(n99), .Z(n569) );
  INV_X1 U532 ( .A(n551), .ZN(n570) );
  INV_X1 U533 ( .A(n577), .ZN(n32) );
  XOR2_X1 U534 ( .A(n602), .B(a[2]), .Z(n9) );
  BUF_X1 U535 ( .A(n583), .Z(n572) );
  BUF_X2 U536 ( .A(n583), .Z(n573) );
  NAND2_X1 U537 ( .A1(n433), .A2(n600), .ZN(n583) );
  OAI21_X1 U538 ( .B1(n113), .B2(n529), .A(n114), .ZN(n574) );
  CLKBUF_X1 U539 ( .A(n91), .Z(n575) );
  INV_X1 U540 ( .A(n247), .ZN(n576) );
  AOI21_X1 U541 ( .B1(n496), .B2(n80), .A(n81), .ZN(n45) );
  XNOR2_X1 U542 ( .A(n611), .B(a[10]), .ZN(n577) );
  XNOR2_X1 U543 ( .A(n88), .B(n51), .ZN(product[10]) );
  XOR2_X1 U544 ( .A(n608), .B(a[6]), .Z(n21) );
  INV_X1 U545 ( .A(n609), .ZN(n579) );
  INV_X1 U546 ( .A(n609), .ZN(n580) );
  NAND2_X1 U547 ( .A1(n27), .A2(n429), .ZN(n29) );
  INV_X2 U548 ( .A(n608), .ZN(n606) );
  INV_X1 U549 ( .A(n605), .ZN(n603) );
  INV_X1 U550 ( .A(n602), .ZN(n601) );
  CLKBUF_X1 U551 ( .A(n45), .Z(n582) );
  NAND2_X1 U552 ( .A1(n557), .A2(n536), .ZN(n6) );
  OR2_X1 U553 ( .A1(n152), .A2(n163), .ZN(n585) );
  NOR2_X1 U554 ( .A1(n164), .A2(n175), .ZN(n75) );
  INV_X2 U555 ( .A(n611), .ZN(n610) );
  NAND2_X1 U556 ( .A1(n585), .A2(n69), .ZN(n47) );
  INV_X1 U557 ( .A(n73), .ZN(n71) );
  INV_X1 U558 ( .A(n69), .ZN(n67) );
  NAND2_X1 U559 ( .A1(n73), .A2(n585), .ZN(n64) );
  INV_X1 U560 ( .A(n74), .ZN(n72) );
  NAND2_X1 U561 ( .A1(n547), .A2(n86), .ZN(n51) );
  NAND2_X1 U562 ( .A1(n548), .A2(n76), .ZN(n48) );
  OAI21_X1 U563 ( .B1(n75), .B2(n79), .A(n76), .ZN(n74) );
  NOR2_X1 U564 ( .A1(n75), .A2(n78), .ZN(n73) );
  XNOR2_X1 U565 ( .A(n84), .B(n50), .ZN(product[11]) );
  NAND2_X1 U566 ( .A1(n127), .A2(n494), .ZN(n50) );
  NAND2_X1 U567 ( .A1(n152), .A2(n163), .ZN(n69) );
  NAND2_X1 U568 ( .A1(n586), .A2(n95), .ZN(n53) );
  OAI21_X1 U569 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  NAND2_X1 U570 ( .A1(n131), .A2(n98), .ZN(n54) );
  INV_X1 U571 ( .A(n97), .ZN(n131) );
  AOI21_X1 U572 ( .B1(n588), .B2(n112), .A(n503), .ZN(n107) );
  NAND2_X1 U573 ( .A1(n588), .A2(n111), .ZN(n57) );
  AOI21_X1 U574 ( .B1(n587), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U575 ( .A(n119), .ZN(n117) );
  INV_X1 U576 ( .A(n122), .ZN(n120) );
  NOR2_X1 U577 ( .A1(n196), .A2(n203), .ZN(n85) );
  XNOR2_X1 U578 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U579 ( .A1(n589), .A2(n62), .ZN(n46) );
  AOI21_X1 U580 ( .B1(n74), .B2(n585), .A(n67), .ZN(n65) );
  XNOR2_X1 U581 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U582 ( .A1(n587), .A2(n119), .ZN(n59) );
  NAND2_X1 U583 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U584 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U585 ( .A1(n196), .A2(n203), .ZN(n86) );
  OR2_X1 U586 ( .A1(n212), .A2(n217), .ZN(n586) );
  NAND2_X1 U587 ( .A1(n204), .A2(n211), .ZN(n90) );
  NAND2_X1 U588 ( .A1(n492), .A2(n106), .ZN(n56) );
  OR2_X1 U589 ( .A1(n328), .A2(n314), .ZN(n587) );
  NOR2_X1 U590 ( .A1(n228), .A2(n231), .ZN(n105) );
  NOR2_X1 U591 ( .A1(n218), .A2(n223), .ZN(n97) );
  NAND2_X1 U592 ( .A1(n218), .A2(n223), .ZN(n98) );
  NAND2_X1 U593 ( .A1(n228), .A2(n231), .ZN(n106) );
  OR2_X1 U594 ( .A1(n232), .A2(n233), .ZN(n588) );
  INV_X1 U595 ( .A(n37), .ZN(n237) );
  INV_X1 U596 ( .A(n41), .ZN(n235) );
  OR2_X1 U597 ( .A1(n151), .A2(n139), .ZN(n589) );
  OR2_X1 U598 ( .A1(n224), .A2(n227), .ZN(n590) );
  AND2_X1 U599 ( .A1(n493), .A2(n122), .ZN(product[1]) );
  XNOR2_X1 U600 ( .A(n614), .B(a[14]), .ZN(n41) );
  AND2_X1 U601 ( .A1(n599), .A2(n535), .ZN(n278) );
  OR2_X1 U602 ( .A1(n598), .A2(n549), .ZN(n392) );
  XNOR2_X1 U603 ( .A(n580), .B(n598), .ZN(n363) );
  OAI22_X1 U604 ( .A1(n39), .A2(n336), .B1(n37), .B2(n335), .ZN(n263) );
  XNOR2_X1 U605 ( .A(n607), .B(n598), .ZN(n376) );
  XOR2_X1 U606 ( .A(n31), .B(a[10]), .Z(n428) );
  XNOR2_X1 U607 ( .A(n610), .B(n598), .ZN(n352) );
  OAI22_X1 U608 ( .A1(n39), .A2(n615), .B1(n337), .B2(n37), .ZN(n252) );
  OR2_X1 U609 ( .A1(n598), .A2(n615), .ZN(n337) );
  OAI22_X1 U610 ( .A1(n42), .A2(n617), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U611 ( .A1(n598), .A2(n617), .ZN(n332) );
  XNOR2_X1 U612 ( .A(n567), .B(n598), .ZN(n343) );
  AND2_X1 U613 ( .A1(n599), .A2(n545), .ZN(n300) );
  XOR2_X1 U614 ( .A(n315), .B(n261), .Z(n150) );
  XNOR2_X1 U615 ( .A(n155), .B(n592), .ZN(n139) );
  XNOR2_X1 U616 ( .A(n153), .B(n141), .ZN(n592) );
  XNOR2_X1 U617 ( .A(n157), .B(n593), .ZN(n141) );
  XNOR2_X1 U618 ( .A(n145), .B(n143), .ZN(n593) );
  XNOR2_X1 U619 ( .A(n614), .B(n598), .ZN(n336) );
  NAND2_X1 U620 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U621 ( .A(n614), .B(a[12]), .Z(n427) );
  AND2_X1 U622 ( .A1(n599), .A2(n237), .ZN(n264) );
  AND2_X1 U623 ( .A1(n599), .A2(n235), .ZN(n260) );
  OAI22_X1 U624 ( .A1(n39), .A2(n335), .B1(n37), .B2(n334), .ZN(n262) );
  AND2_X1 U625 ( .A1(n599), .A2(n577), .ZN(n270) );
  AND2_X1 U626 ( .A1(n599), .A2(n563), .ZN(n288) );
  INV_X1 U627 ( .A(n25), .ZN(n611) );
  NAND2_X1 U628 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U629 ( .A(n616), .B(a[14]), .Z(n426) );
  INV_X1 U630 ( .A(n13), .ZN(n608) );
  INV_X1 U631 ( .A(n7), .ZN(n605) );
  AND2_X1 U632 ( .A1(n599), .A2(n247), .ZN(n314) );
  AND2_X1 U633 ( .A1(n599), .A2(n249), .ZN(product[0]) );
  OR2_X1 U634 ( .A1(n598), .A2(n613), .ZN(n344) );
  OR2_X1 U635 ( .A1(n598), .A2(n611), .ZN(n353) );
  OR2_X1 U636 ( .A1(n598), .A2(n609), .ZN(n364) );
  OR2_X1 U637 ( .A1(n598), .A2(n565), .ZN(n377) );
  BUF_X2 U638 ( .A(n43), .Z(n598) );
  XNOR2_X1 U639 ( .A(n580), .B(b[9]), .ZN(n354) );
  OAI22_X1 U640 ( .A1(n39), .A2(n334), .B1(n37), .B2(n333), .ZN(n261) );
  XNOR2_X1 U641 ( .A(n614), .B(n422), .ZN(n333) );
  XNOR2_X1 U642 ( .A(n607), .B(b[11]), .ZN(n365) );
  XNOR2_X1 U643 ( .A(n614), .B(n423), .ZN(n334) );
  XNOR2_X1 U644 ( .A(n614), .B(n424), .ZN(n335) );
  OAI22_X1 U645 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U646 ( .A(n616), .B(n424), .ZN(n330) );
  XNOR2_X1 U647 ( .A(n616), .B(n598), .ZN(n331) );
  XNOR2_X1 U648 ( .A(n610), .B(n418), .ZN(n345) );
  XNOR2_X1 U649 ( .A(n265), .B(n594), .ZN(n145) );
  XNOR2_X1 U650 ( .A(n149), .B(n147), .ZN(n594) );
  XNOR2_X1 U651 ( .A(n540), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U652 ( .A(n610), .B(n424), .ZN(n351) );
  XNOR2_X1 U653 ( .A(n566), .B(n424), .ZN(n342) );
  XNOR2_X1 U654 ( .A(n579), .B(n424), .ZN(n362) );
  XNOR2_X1 U655 ( .A(n567), .B(n422), .ZN(n340) );
  XNOR2_X1 U656 ( .A(n567), .B(n421), .ZN(n339) );
  XNOR2_X1 U657 ( .A(n566), .B(n423), .ZN(n341) );
  XNOR2_X1 U658 ( .A(n498), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U659 ( .A(n497), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U660 ( .A(n498), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U661 ( .A(n497), .B(n418), .ZN(n384) );
  XNOR2_X1 U662 ( .A(n561), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U663 ( .A(n561), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U664 ( .A(n498), .B(n419), .ZN(n385) );
  XNOR2_X1 U665 ( .A(n607), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U666 ( .A(n607), .B(n418), .ZN(n369) );
  XNOR2_X1 U667 ( .A(n607), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U668 ( .A(n607), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U669 ( .A(n580), .B(n423), .ZN(n361) );
  XNOR2_X1 U670 ( .A(n580), .B(n422), .ZN(n360) );
  XNOR2_X1 U671 ( .A(n610), .B(n422), .ZN(n349) );
  XNOR2_X1 U672 ( .A(n610), .B(n423), .ZN(n350) );
  XNOR2_X1 U673 ( .A(n570), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U674 ( .A(n570), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U675 ( .A(n570), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U676 ( .A(n570), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U677 ( .A(n610), .B(n420), .ZN(n347) );
  XNOR2_X1 U678 ( .A(n579), .B(n420), .ZN(n358) );
  XNOR2_X1 U679 ( .A(n610), .B(n421), .ZN(n348) );
  XNOR2_X1 U680 ( .A(n579), .B(n421), .ZN(n359) );
  XNOR2_X1 U681 ( .A(n580), .B(n418), .ZN(n356) );
  XNOR2_X1 U682 ( .A(n610), .B(n419), .ZN(n346) );
  XNOR2_X1 U683 ( .A(n580), .B(n419), .ZN(n357) );
  XNOR2_X1 U684 ( .A(n580), .B(b[8]), .ZN(n355) );
  XNOR2_X1 U685 ( .A(n570), .B(b[15]), .ZN(n393) );
  BUF_X1 U686 ( .A(n43), .Z(n599) );
  OAI22_X1 U687 ( .A1(n34), .A2(n339), .B1(n338), .B2(n32), .ZN(n265) );
  OAI22_X1 U688 ( .A1(n34), .A2(n340), .B1(n339), .B2(n32), .ZN(n266) );
  OAI22_X1 U689 ( .A1(n34), .A2(n341), .B1(n340), .B2(n32), .ZN(n267) );
  OAI22_X1 U690 ( .A1(n34), .A2(n342), .B1(n341), .B2(n32), .ZN(n268) );
  OAI22_X1 U691 ( .A1(n34), .A2(n343), .B1(n342), .B2(n32), .ZN(n269) );
  OAI22_X1 U692 ( .A1(n34), .A2(n613), .B1(n344), .B2(n32), .ZN(n253) );
  NAND2_X1 U693 ( .A1(n314), .A2(n328), .ZN(n119) );
  XNOR2_X1 U694 ( .A(n603), .B(a[4]), .ZN(n16) );
  NAND2_X1 U695 ( .A1(n232), .A2(n233), .ZN(n111) );
  NAND2_X1 U696 ( .A1(n590), .A2(n103), .ZN(n55) );
  INV_X1 U697 ( .A(n103), .ZN(n101) );
  NAND2_X1 U698 ( .A1(n224), .A2(n227), .ZN(n103) );
  INV_X1 U699 ( .A(n19), .ZN(n609) );
  NOR2_X1 U700 ( .A1(n234), .A2(n257), .ZN(n113) );
  INV_X1 U701 ( .A(n113), .ZN(n135) );
  NAND2_X1 U702 ( .A1(n135), .A2(n114), .ZN(n58) );
  XNOR2_X1 U703 ( .A(n70), .B(n47), .ZN(product[14]) );
  XNOR2_X1 U704 ( .A(n77), .B(n48), .ZN(product[13]) );
  NOR2_X1 U705 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U706 ( .A1(n578), .A2(n346), .B1(n345), .B2(n541), .ZN(n271) );
  OAI22_X1 U707 ( .A1(n578), .A2(n350), .B1(n349), .B2(n541), .ZN(n275) );
  OAI22_X1 U708 ( .A1(n29), .A2(n351), .B1(n350), .B2(n541), .ZN(n276) );
  OAI22_X1 U709 ( .A1(n509), .A2(n347), .B1(n346), .B2(n541), .ZN(n272) );
  OAI22_X1 U710 ( .A1(n509), .A2(n348), .B1(n347), .B2(n541), .ZN(n273) );
  OAI22_X1 U711 ( .A1(n509), .A2(n349), .B1(n348), .B2(n541), .ZN(n274) );
  OAI22_X1 U712 ( .A1(n578), .A2(n611), .B1(n353), .B2(n541), .ZN(n254) );
  OAI22_X1 U713 ( .A1(n509), .A2(n352), .B1(n351), .B2(n541), .ZN(n277) );
  INV_X1 U714 ( .A(n1), .ZN(n602) );
  INV_X1 U715 ( .A(n502), .ZN(n127) );
  NOR2_X1 U716 ( .A1(n502), .A2(n85), .ZN(n80) );
  OAI21_X1 U717 ( .B1(n82), .B2(n86), .A(n83), .ZN(n81) );
  NAND2_X1 U718 ( .A1(n186), .A2(n195), .ZN(n83) );
  OAI21_X1 U719 ( .B1(n87), .B2(n85), .A(n86), .ZN(n84) );
  OAI21_X1 U720 ( .B1(n99), .B2(n97), .A(n98), .ZN(n96) );
  OR2_X1 U721 ( .A1(n598), .A2(n564), .ZN(n409) );
  OAI22_X1 U722 ( .A1(n546), .A2(n358), .B1(n357), .B2(n595), .ZN(n282) );
  OAI22_X1 U723 ( .A1(n546), .A2(n356), .B1(n355), .B2(n595), .ZN(n280) );
  OAI22_X1 U724 ( .A1(n23), .A2(n355), .B1(n354), .B2(n595), .ZN(n279) );
  OAI22_X1 U725 ( .A1(n546), .A2(n362), .B1(n361), .B2(n595), .ZN(n286) );
  OAI22_X1 U726 ( .A1(n546), .A2(n609), .B1(n364), .B2(n595), .ZN(n255) );
  OAI22_X1 U727 ( .A1(n546), .A2(n357), .B1(n356), .B2(n595), .ZN(n281) );
  OAI22_X1 U728 ( .A1(n546), .A2(n360), .B1(n359), .B2(n595), .ZN(n284) );
  OAI22_X1 U729 ( .A1(n546), .A2(n361), .B1(n360), .B2(n595), .ZN(n285) );
  XNOR2_X1 U730 ( .A(n606), .B(n424), .ZN(n375) );
  OAI22_X1 U731 ( .A1(n23), .A2(n363), .B1(n362), .B2(n595), .ZN(n287) );
  XNOR2_X1 U732 ( .A(n606), .B(n423), .ZN(n374) );
  OAI22_X1 U733 ( .A1(n23), .A2(n359), .B1(n358), .B2(n595), .ZN(n283) );
  XNOR2_X1 U734 ( .A(n606), .B(n421), .ZN(n372) );
  XNOR2_X1 U735 ( .A(n606), .B(n422), .ZN(n373) );
  XNOR2_X1 U736 ( .A(n606), .B(n419), .ZN(n370) );
  XNOR2_X1 U737 ( .A(n606), .B(n420), .ZN(n371) );
  AOI21_X1 U738 ( .B1(n104), .B2(n590), .A(n101), .ZN(n99) );
  XNOR2_X1 U739 ( .A(n55), .B(n553), .ZN(product[6]) );
  OAI21_X1 U740 ( .B1(n107), .B2(n105), .A(n106), .ZN(n104) );
  XNOR2_X1 U741 ( .A(n543), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U742 ( .A(n543), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U743 ( .A(n542), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U744 ( .A(n542), .B(n418), .ZN(n401) );
  XNOR2_X1 U745 ( .A(n542), .B(n598), .ZN(n408) );
  XNOR2_X1 U746 ( .A(n543), .B(n421), .ZN(n404) );
  XNOR2_X1 U747 ( .A(n491), .B(n419), .ZN(n402) );
  XNOR2_X1 U748 ( .A(n542), .B(n424), .ZN(n407) );
  XNOR2_X1 U749 ( .A(n543), .B(n423), .ZN(n406) );
  XOR2_X1 U750 ( .A(n491), .B(n249), .Z(n433) );
  NAND2_X1 U751 ( .A1(n151), .A2(n139), .ZN(n62) );
  OAI22_X1 U752 ( .A1(n533), .A2(n370), .B1(n369), .B2(n597), .ZN(n293) );
  OAI22_X1 U753 ( .A1(n533), .A2(n367), .B1(n366), .B2(n597), .ZN(n290) );
  OAI22_X1 U754 ( .A1(n534), .A2(n375), .B1(n374), .B2(n597), .ZN(n298) );
  OAI22_X1 U755 ( .A1(n533), .A2(n368), .B1(n367), .B2(n597), .ZN(n291) );
  OAI22_X1 U756 ( .A1(n533), .A2(n372), .B1(n371), .B2(n597), .ZN(n295) );
  OAI22_X1 U757 ( .A1(n18), .A2(n369), .B1(n368), .B2(n597), .ZN(n292) );
  OAI22_X1 U758 ( .A1(n534), .A2(n373), .B1(n372), .B2(n597), .ZN(n296) );
  OAI22_X1 U759 ( .A1(n534), .A2(n371), .B1(n370), .B2(n597), .ZN(n294) );
  OAI22_X1 U760 ( .A1(n18), .A2(n374), .B1(n373), .B2(n16), .ZN(n297) );
  OAI22_X1 U761 ( .A1(n533), .A2(n565), .B1(n377), .B2(n597), .ZN(n256) );
  OAI22_X1 U762 ( .A1(n534), .A2(n376), .B1(n375), .B2(n597), .ZN(n299) );
  OAI22_X1 U763 ( .A1(n534), .A2(n366), .B1(n365), .B2(n597), .ZN(n289) );
  XNOR2_X1 U764 ( .A(n540), .B(n420), .ZN(n386) );
  XNOR2_X1 U765 ( .A(n540), .B(n598), .ZN(n391) );
  XNOR2_X1 U766 ( .A(n604), .B(n423), .ZN(n389) );
  XNOR2_X1 U767 ( .A(n497), .B(n424), .ZN(n390) );
  XNOR2_X1 U768 ( .A(n560), .B(n422), .ZN(n388) );
  XNOR2_X1 U769 ( .A(n560), .B(n421), .ZN(n387) );
  XOR2_X1 U770 ( .A(n56), .B(n550), .Z(product[5]) );
  XNOR2_X1 U771 ( .A(n57), .B(n574), .ZN(product[4]) );
  OAI21_X1 U772 ( .B1(n91), .B2(n89), .A(n90), .ZN(n88) );
  INV_X1 U773 ( .A(n496), .ZN(n87) );
  OAI21_X1 U774 ( .B1(n64), .B2(n582), .A(n65), .ZN(n63) );
  OAI21_X1 U775 ( .B1(n45), .B2(n71), .A(n72), .ZN(n70) );
  OAI21_X1 U776 ( .B1(n45), .B2(n78), .A(n79), .ZN(n77) );
  XNOR2_X1 U777 ( .A(n558), .B(n53), .ZN(product[8]) );
  AOI21_X1 U778 ( .B1(n96), .B2(n586), .A(n500), .ZN(n91) );
  XOR2_X1 U779 ( .A(n58), .B(n529), .Z(product[3]) );
  OAI22_X1 U780 ( .A1(n554), .A2(n395), .B1(n394), .B2(n536), .ZN(n316) );
  OAI22_X1 U781 ( .A1(n573), .A2(n394), .B1(n393), .B2(n537), .ZN(n315) );
  OAI22_X1 U782 ( .A1(n554), .A2(n396), .B1(n395), .B2(n536), .ZN(n317) );
  OAI22_X1 U783 ( .A1(n573), .A2(n397), .B1(n396), .B2(n536), .ZN(n318) );
  OAI22_X1 U784 ( .A1(n571), .A2(n398), .B1(n397), .B2(n536), .ZN(n319) );
  OAI22_X1 U785 ( .A1(n573), .A2(n400), .B1(n399), .B2(n536), .ZN(n321) );
  OAI22_X1 U786 ( .A1(n571), .A2(n399), .B1(n398), .B2(n537), .ZN(n320) );
  OAI22_X1 U787 ( .A1(n571), .A2(n401), .B1(n400), .B2(n537), .ZN(n322) );
  OAI22_X1 U788 ( .A1(n572), .A2(n402), .B1(n401), .B2(n537), .ZN(n323) );
  NAND2_X1 U789 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI22_X1 U790 ( .A1(n539), .A2(n404), .B1(n403), .B2(n536), .ZN(n325) );
  OAI22_X1 U791 ( .A1(n6), .A2(n403), .B1(n402), .B2(n537), .ZN(n324) );
  OAI22_X1 U792 ( .A1(n573), .A2(n406), .B1(n405), .B2(n537), .ZN(n327) );
  OAI22_X1 U793 ( .A1(n539), .A2(n405), .B1(n404), .B2(n536), .ZN(n326) );
  OAI22_X1 U794 ( .A1(n573), .A2(n407), .B1(n406), .B2(n537), .ZN(n328) );
  OAI22_X1 U795 ( .A1(n573), .A2(n408), .B1(n407), .B2(n536), .ZN(n329) );
  OAI22_X1 U796 ( .A1(n6), .A2(n564), .B1(n409), .B2(n537), .ZN(n258) );
  XOR2_X1 U797 ( .A(n569), .B(n54), .Z(product[7]) );
  OAI22_X1 U798 ( .A1(n581), .A2(n379), .B1(n378), .B2(n576), .ZN(n301) );
  OAI22_X1 U799 ( .A1(n581), .A2(n380), .B1(n379), .B2(n576), .ZN(n302) );
  OAI22_X1 U800 ( .A1(n581), .A2(n385), .B1(n384), .B2(n576), .ZN(n307) );
  OAI22_X1 U801 ( .A1(n568), .A2(n382), .B1(n381), .B2(n555), .ZN(n304) );
  OAI22_X1 U802 ( .A1(n581), .A2(n381), .B1(n380), .B2(n555), .ZN(n303) );
  NAND2_X1 U803 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U804 ( .A1(n12), .A2(n383), .B1(n382), .B2(n555), .ZN(n305) );
  OAI22_X1 U805 ( .A1(n568), .A2(n384), .B1(n383), .B2(n555), .ZN(n306) );
  OAI22_X1 U806 ( .A1(n581), .A2(n386), .B1(n385), .B2(n555), .ZN(n308) );
  OAI22_X1 U807 ( .A1(n568), .A2(n387), .B1(n386), .B2(n555), .ZN(n309) );
  OAI22_X1 U808 ( .A1(n581), .A2(n549), .B1(n392), .B2(n555), .ZN(n257) );
  OAI22_X1 U809 ( .A1(n12), .A2(n389), .B1(n388), .B2(n596), .ZN(n311) );
  OAI22_X1 U810 ( .A1(n388), .A2(n568), .B1(n387), .B2(n596), .ZN(n310) );
  OAI22_X1 U811 ( .A1(n568), .A2(n390), .B1(n389), .B2(n555), .ZN(n312) );
  INV_X1 U812 ( .A(n555), .ZN(n247) );
  OAI22_X1 U813 ( .A1(n568), .A2(n391), .B1(n390), .B2(n555), .ZN(n313) );
  INV_X1 U814 ( .A(n608), .ZN(n607) );
  INV_X1 U815 ( .A(n613), .ZN(n612) );
  INV_X1 U816 ( .A(n31), .ZN(n613) );
  INV_X1 U817 ( .A(n615), .ZN(n614) );
  INV_X1 U818 ( .A(n36), .ZN(n615) );
  INV_X1 U819 ( .A(n617), .ZN(n616) );
  INV_X1 U820 ( .A(n40), .ZN(n617) );
  XOR2_X1 U821 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U822 ( .A(n289), .B(n279), .Z(n146) );
  XOR2_X1 U823 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_14_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n5, n8, n9, n10, n11, n12, n13, n14, n15, n16, n19, n20, n22,
         n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n44, n45, n47, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n65, n67, n68, n69, n70, n71, n73, n75,
         n76, n77, n78, n79, n81, n83, n84, n86, n90, n91, n94, n95, n96, n98,
         n100, n157, n158, n159, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178;

  XNOR2_X1 U122 ( .A(n45), .B(n157), .ZN(SUM[10]) );
  AND2_X1 U123 ( .A1(n177), .A2(n44), .ZN(n157) );
  NOR2_X2 U124 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  OR2_X1 U125 ( .A1(A[14]), .A2(B[14]), .ZN(n158) );
  OR2_X1 U126 ( .A1(n168), .A2(n28), .ZN(n159) );
  AND2_X1 U127 ( .A1(n171), .A2(n86), .ZN(SUM[0]) );
  AOI21_X1 U128 ( .B1(n175), .B2(n68), .A(n65), .ZN(n161) );
  OR2_X1 U129 ( .A1(A[15]), .A2(B[15]), .ZN(n162) );
  CLKBUF_X1 U130 ( .A(n37), .Z(n165) );
  XNOR2_X1 U131 ( .A(n165), .B(n163), .ZN(SUM[11]) );
  AND2_X1 U132 ( .A1(n91), .A2(n36), .ZN(n163) );
  XNOR2_X1 U133 ( .A(n170), .B(n164), .ZN(SUM[13]) );
  AND2_X1 U134 ( .A1(n166), .A2(n29), .ZN(n164) );
  OR2_X1 U135 ( .A1(A[13]), .A2(B[13]), .ZN(n166) );
  NOR2_X1 U136 ( .A1(A[8]), .A2(B[8]), .ZN(n167) );
  AOI21_X2 U137 ( .B1(n38), .B2(n30), .A(n31), .ZN(n170) );
  OR2_X2 U138 ( .A1(A[10]), .A2(B[10]), .ZN(n177) );
  NOR2_X1 U139 ( .A1(A[14]), .A2(B[14]), .ZN(n168) );
  NOR2_X1 U140 ( .A1(A[14]), .A2(B[14]), .ZN(n169) );
  OR2_X1 U141 ( .A1(A[0]), .A2(B[0]), .ZN(n171) );
  INV_X1 U142 ( .A(n60), .ZN(n59) );
  INV_X1 U143 ( .A(n51), .ZN(n50) );
  AOI21_X1 U144 ( .B1(n174), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U145 ( .A(n75), .ZN(n73) );
  AOI21_X1 U146 ( .B1(n173), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U147 ( .A(n83), .ZN(n81) );
  OAI21_X1 U148 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  AOI21_X1 U149 ( .B1(n175), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U150 ( .A(n67), .ZN(n65) );
  INV_X1 U151 ( .A(n24), .ZN(n22) );
  OAI21_X1 U152 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  AOI21_X1 U153 ( .B1(n50), .B2(n172), .A(n47), .ZN(n45) );
  NAND2_X1 U154 ( .A1(n94), .A2(n55), .ZN(n9) );
  INV_X1 U155 ( .A(n86), .ZN(n84) );
  OAI21_X1 U156 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  NAND2_X1 U157 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U158 ( .A(n69), .ZN(n98) );
  NAND2_X1 U159 ( .A1(n174), .A2(n75), .ZN(n14) );
  NAND2_X1 U160 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U161 ( .A(n57), .ZN(n95) );
  NAND2_X1 U162 ( .A1(n172), .A2(n49), .ZN(n8) );
  NAND2_X1 U163 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U164 ( .A(n77), .ZN(n100) );
  NAND2_X1 U165 ( .A1(n175), .A2(n67), .ZN(n12) );
  NAND2_X1 U166 ( .A1(n173), .A2(n83), .ZN(n16) );
  NAND2_X1 U167 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U168 ( .A(n61), .ZN(n96) );
  XNOR2_X1 U169 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  NAND2_X1 U170 ( .A1(n90), .A2(n33), .ZN(n5) );
  XOR2_X1 U171 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XOR2_X1 U172 ( .A(n13), .B(n71), .Z(SUM[4]) );
  XOR2_X1 U173 ( .A(n15), .B(n79), .Z(SUM[2]) );
  NOR2_X1 U174 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  NOR2_X1 U175 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  NOR2_X1 U176 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  OR2_X1 U177 ( .A1(A[9]), .A2(B[9]), .ZN(n172) );
  NOR2_X1 U178 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NOR2_X1 U179 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NAND2_X1 U180 ( .A1(n158), .A2(n26), .ZN(n3) );
  NAND2_X1 U181 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  OR2_X1 U182 ( .A1(A[1]), .A2(B[1]), .ZN(n173) );
  OR2_X1 U183 ( .A1(A[3]), .A2(B[3]), .ZN(n174) );
  NAND2_X1 U184 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  NAND2_X1 U185 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  XNOR2_X1 U186 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XNOR2_X1 U187 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XNOR2_X1 U188 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  NOR2_X1 U189 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NAND2_X1 U190 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  OR2_X1 U191 ( .A1(A[5]), .A2(B[5]), .ZN(n175) );
  NAND2_X1 U192 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U193 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  NAND2_X1 U194 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U195 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U196 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U197 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  NAND2_X1 U198 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  XNOR2_X1 U199 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  XNOR2_X1 U200 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NAND2_X1 U201 ( .A1(n162), .A2(n19), .ZN(n2) );
  NOR2_X1 U202 ( .A1(A[12]), .A2(B[12]), .ZN(n176) );
  INV_X1 U203 ( .A(n178), .ZN(n44) );
  INV_X1 U204 ( .A(n49), .ZN(n47) );
  AOI21_X1 U205 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  AOI21_X1 U206 ( .B1(n177), .B2(n47), .A(n178), .ZN(n40) );
  INV_X1 U207 ( .A(n167), .ZN(n94) );
  NOR2_X1 U208 ( .A1(n167), .A2(n57), .ZN(n52) );
  OAI21_X1 U209 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  NAND2_X1 U210 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  AND2_X1 U211 ( .A1(A[10]), .A2(B[10]), .ZN(n178) );
  NAND2_X1 U212 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  OAI21_X1 U213 ( .B1(n32), .B2(n36), .A(n33), .ZN(n31) );
  INV_X1 U214 ( .A(n176), .ZN(n90) );
  NOR2_X1 U215 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  XOR2_X1 U216 ( .A(n11), .B(n161), .Z(SUM[6]) );
  OAI21_X1 U217 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  NAND2_X1 U218 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  INV_X1 U219 ( .A(n35), .ZN(n91) );
  NOR2_X1 U220 ( .A1(n176), .A2(n35), .ZN(n30) );
  OAI21_X1 U221 ( .B1(n37), .B2(n35), .A(n36), .ZN(n34) );
  INV_X1 U222 ( .A(n38), .ZN(n37) );
  OAI21_X1 U223 ( .B1(n169), .B2(n29), .A(n26), .ZN(n24) );
  OAI21_X1 U224 ( .B1(n39), .B2(n51), .A(n40), .ZN(n38) );
  NAND2_X1 U225 ( .A1(A[15]), .A2(B[15]), .ZN(n19) );
  NAND2_X1 U226 ( .A1(n177), .A2(n172), .ZN(n39) );
  XNOR2_X1 U227 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  XNOR2_X1 U228 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  OAI21_X1 U229 ( .B1(n170), .B2(n28), .A(n29), .ZN(n27) );
  OAI21_X1 U230 ( .B1(n170), .B2(n159), .A(n22), .ZN(n20) );
endmodule


module datapath_M16_N8_T16_P16_14 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n18), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n225), .CK(clk), .Q(n21) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n226), .CK(clk), .Q(n22) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n227), .CK(clk), .Q(n23) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n228), .CK(clk), .Q(n24) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n229), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n230), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n231), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n232), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n233), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n234), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n235), .CK(clk), .Q(n33) );
  DFF_X1 \f_reg[0]  ( .D(n113), .CK(clk), .Q(n61), .QN(n214) );
  DFF_X1 \f_reg[1]  ( .D(n112), .CK(clk), .Q(n59), .QN(n215) );
  DFF_X1 \f_reg[2]  ( .D(n111), .CK(clk), .Q(n57), .QN(n216) );
  DFF_X1 \f_reg[3]  ( .D(n102), .CK(clk), .Q(f[3]), .QN(n65) );
  DFF_X1 \data_out_reg[15]  ( .D(n166), .CK(clk), .Q(data_out[15]), .QN(n197)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n167), .CK(clk), .Q(data_out[14]), .QN(n196)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n168), .CK(clk), .Q(data_out[13]), .QN(n195)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n169), .CK(clk), .Q(data_out[12]), .QN(n194)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n170), .CK(clk), .Q(data_out[11]), .QN(n193)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n171), .CK(clk), .Q(data_out[10]), .QN(n192)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n172), .CK(clk), .Q(data_out[9]), .QN(n191) );
  DFF_X1 \data_out_reg[8]  ( .D(n173), .CK(clk), .Q(data_out[8]), .QN(n190) );
  DFF_X1 \data_out_reg[7]  ( .D(n174), .CK(clk), .Q(data_out[7]), .QN(n189) );
  DFF_X1 \data_out_reg[6]  ( .D(n175), .CK(clk), .Q(data_out[6]), .QN(n188) );
  DFF_X1 \data_out_reg[5]  ( .D(n176), .CK(clk), .Q(data_out[5]), .QN(n187) );
  DFF_X1 \data_out_reg[4]  ( .D(n177), .CK(clk), .Q(data_out[4]), .QN(n186) );
  DFF_X1 \data_out_reg[3]  ( .D(n178), .CK(clk), .Q(data_out[3]), .QN(n185) );
  DFF_X1 \data_out_reg[2]  ( .D(n179), .CK(clk), .Q(data_out[2]), .QN(n184) );
  DFF_X1 \data_out_reg[1]  ( .D(n180), .CK(clk), .Q(data_out[1]), .QN(n183) );
  DFF_X1 \data_out_reg[0]  ( .D(n181), .CK(clk), .Q(data_out[0]), .QN(n182) );
  datapath_M16_N8_T16_P16_14_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_14_DW01_add_2 add_262 ( .A({n204, n203, n202, n201, 
        n200, n199, n213, n212, n211, n210, n209, n208, n207, n206, n205, n198}), .B({f[15], n43, n44, n45, n47, n49, f[9:3], n57, n59, n61}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n240), .CK(clk), .Q(n38) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n239), .CK(clk), .Q(n37) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n238), .CK(clk), .Q(n36) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n237), .CK(clk), .Q(n35) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n236), .CK(clk), .Q(n34) );
  DFF_X1 \f_reg[4]  ( .D(n85), .CK(clk), .Q(f[4]), .QN(n66) );
  DFF_X1 \f_reg[5]  ( .D(n83), .CK(clk), .Q(f[5]), .QN(n67) );
  DFF_X1 \f_reg[6]  ( .D(n82), .CK(clk), .Q(f[6]), .QN(n68) );
  DFF_X1 \f_reg[7]  ( .D(n81), .CK(clk), .Q(f[7]), .QN(n217) );
  DFF_X1 \f_reg[8]  ( .D(n80), .CK(clk), .Q(f[8]), .QN(n218) );
  DFF_X1 \f_reg[9]  ( .D(n79), .CK(clk), .Q(f[9]), .QN(n219) );
  DFF_X1 \f_reg[10]  ( .D(n78), .CK(clk), .Q(n49), .QN(n220) );
  DFF_X1 \f_reg[14]  ( .D(n5), .CK(clk), .Q(n43), .QN(n224) );
  DFF_X1 \f_reg[15]  ( .D(n12), .CK(clk), .Q(f[15]), .QN(n73) );
  DFF_X1 \f_reg[11]  ( .D(n77), .CK(clk), .Q(n47), .QN(n221) );
  DFF_X1 \f_reg[12]  ( .D(n76), .CK(clk), .Q(n45), .QN(n222) );
  DFF_X2 \f_reg[13]  ( .D(n2), .CK(clk), .Q(n44), .QN(n223) );
  DFF_X2 delay_reg ( .D(n114), .CK(clk), .Q(n40), .QN(n241) );
  MUX2_X2 U3 ( .A(N39), .B(n26), .S(n40), .Z(n199) );
  MUX2_X2 U4 ( .A(n28), .B(N37), .S(n241), .Z(n212) );
  MUX2_X2 U5 ( .A(n25), .B(N40), .S(n241), .Z(n200) );
  MUX2_X2 U6 ( .A(N41), .B(n24), .S(n40), .Z(n201) );
  AND2_X1 U8 ( .A1(clear_acc_delay), .A2(n241), .ZN(n1) );
  AND2_X1 U9 ( .A1(n42), .A2(n19), .ZN(n16) );
  NAND3_X1 U10 ( .A1(n7), .A2(n6), .A3(n8), .ZN(n2) );
  MUX2_X2 U11 ( .A(n21), .B(N44), .S(n241), .Z(n204) );
  MUX2_X2 U12 ( .A(n23), .B(N42), .S(n241), .Z(n202) );
  CLKBUF_X1 U13 ( .A(N41), .Z(n4) );
  NAND3_X1 U14 ( .A1(n10), .A2(n9), .A3(n11), .ZN(n5) );
  NAND2_X1 U15 ( .A1(data_out_b[13]), .A2(n18), .ZN(n6) );
  NAND2_X1 U16 ( .A1(adder[13]), .A2(n16), .ZN(n7) );
  NAND2_X1 U17 ( .A1(n63), .A2(n44), .ZN(n8) );
  NAND2_X1 U18 ( .A1(data_out_b[14]), .A2(n18), .ZN(n9) );
  NAND2_X1 U19 ( .A1(adder[14]), .A2(n16), .ZN(n10) );
  NAND2_X1 U20 ( .A1(n63), .A2(n43), .ZN(n11) );
  NAND3_X1 U21 ( .A1(n14), .A2(n13), .A3(n15), .ZN(n12) );
  MUX2_X2 U22 ( .A(n22), .B(N43), .S(n241), .Z(n203) );
  NAND2_X1 U23 ( .A1(n63), .A2(f[15]), .ZN(n15) );
  NAND2_X1 U24 ( .A1(data_out_b[15]), .A2(n18), .ZN(n13) );
  NAND2_X1 U25 ( .A1(adder[15]), .A2(n16), .ZN(n14) );
  NAND2_X1 U26 ( .A1(n114), .A2(n17), .ZN(n243) );
  INV_X1 U27 ( .A(n42), .ZN(n63) );
  INV_X1 U28 ( .A(clear_acc), .ZN(n19) );
  OAI22_X1 U29 ( .A1(n185), .A2(n243), .B1(n65), .B2(n242), .ZN(n178) );
  OAI22_X1 U30 ( .A1(n186), .A2(n243), .B1(n66), .B2(n242), .ZN(n177) );
  OAI22_X1 U31 ( .A1(n187), .A2(n243), .B1(n67), .B2(n242), .ZN(n176) );
  OAI22_X1 U32 ( .A1(n188), .A2(n243), .B1(n68), .B2(n242), .ZN(n175) );
  OAI22_X1 U33 ( .A1(n189), .A2(n243), .B1(n217), .B2(n242), .ZN(n174) );
  OAI22_X1 U34 ( .A1(n190), .A2(n243), .B1(n218), .B2(n242), .ZN(n173) );
  OAI22_X1 U35 ( .A1(n191), .A2(n243), .B1(n219), .B2(n242), .ZN(n172) );
  MUX2_X1 U36 ( .A(n35), .B(N32), .S(n241), .Z(n207) );
  INV_X1 U37 ( .A(wr_en_y), .ZN(n17) );
  INV_X1 U38 ( .A(n19), .ZN(n18) );
  INV_X1 U39 ( .A(m_ready), .ZN(n20) );
  NAND2_X1 U40 ( .A1(m_valid), .A2(n20), .ZN(n39) );
  OAI21_X1 U41 ( .B1(sel[4]), .B2(n75), .A(n39), .ZN(n114) );
  MUX2_X1 U42 ( .A(n21), .B(N44), .S(n1), .Z(n225) );
  MUX2_X1 U43 ( .A(n22), .B(N43), .S(n1), .Z(n226) );
  MUX2_X1 U44 ( .A(n23), .B(N42), .S(n1), .Z(n227) );
  MUX2_X1 U45 ( .A(n24), .B(n4), .S(n1), .Z(n228) );
  MUX2_X1 U46 ( .A(n25), .B(N40), .S(n1), .Z(n229) );
  MUX2_X1 U47 ( .A(n26), .B(N39), .S(n1), .Z(n230) );
  MUX2_X1 U48 ( .A(n27), .B(N38), .S(n1), .Z(n231) );
  MUX2_X1 U49 ( .A(n27), .B(N38), .S(n241), .Z(n213) );
  MUX2_X1 U50 ( .A(n28), .B(N37), .S(n1), .Z(n232) );
  MUX2_X1 U51 ( .A(n29), .B(N36), .S(n1), .Z(n233) );
  MUX2_X1 U52 ( .A(n29), .B(N36), .S(n241), .Z(n211) );
  MUX2_X1 U53 ( .A(n32), .B(N35), .S(n1), .Z(n234) );
  MUX2_X1 U54 ( .A(n32), .B(N35), .S(n241), .Z(n210) );
  MUX2_X1 U55 ( .A(n33), .B(N34), .S(n1), .Z(n235) );
  MUX2_X1 U56 ( .A(n33), .B(N34), .S(n241), .Z(n209) );
  MUX2_X1 U57 ( .A(n34), .B(N33), .S(n1), .Z(n236) );
  MUX2_X1 U58 ( .A(n34), .B(N33), .S(n241), .Z(n208) );
  MUX2_X1 U59 ( .A(n35), .B(N32), .S(n1), .Z(n237) );
  MUX2_X1 U60 ( .A(n36), .B(N31), .S(n1), .Z(n238) );
  MUX2_X1 U61 ( .A(n36), .B(N31), .S(n241), .Z(n206) );
  MUX2_X1 U62 ( .A(n37), .B(N30), .S(n1), .Z(n239) );
  MUX2_X1 U63 ( .A(n37), .B(N30), .S(n241), .Z(n205) );
  MUX2_X1 U64 ( .A(n38), .B(N29), .S(n1), .Z(n240) );
  MUX2_X1 U65 ( .A(n38), .B(N29), .S(n241), .Z(n198) );
  INV_X1 U66 ( .A(n39), .ZN(n41) );
  OAI21_X1 U67 ( .B1(n41), .B2(n40), .A(n19), .ZN(n42) );
  AOI222_X1 U68 ( .A1(data_out_b[12]), .A2(n18), .B1(adder[12]), .B2(n16), 
        .C1(n63), .C2(n45), .ZN(n46) );
  INV_X1 U69 ( .A(n46), .ZN(n76) );
  AOI222_X1 U70 ( .A1(data_out_b[11]), .A2(n18), .B1(adder[11]), .B2(n16), 
        .C1(n63), .C2(n47), .ZN(n48) );
  INV_X1 U71 ( .A(n48), .ZN(n77) );
  AOI222_X1 U72 ( .A1(data_out_b[10]), .A2(n18), .B1(adder[10]), .B2(n16), 
        .C1(n63), .C2(n49), .ZN(n50) );
  INV_X1 U73 ( .A(n50), .ZN(n78) );
  AOI222_X1 U74 ( .A1(data_out_b[8]), .A2(n18), .B1(adder[8]), .B2(n16), .C1(
        n63), .C2(f[8]), .ZN(n51) );
  INV_X1 U75 ( .A(n51), .ZN(n80) );
  AOI222_X1 U76 ( .A1(data_out_b[7]), .A2(n18), .B1(adder[7]), .B2(n16), .C1(
        n63), .C2(f[7]), .ZN(n52) );
  INV_X1 U77 ( .A(n52), .ZN(n81) );
  AOI222_X1 U78 ( .A1(data_out_b[6]), .A2(n18), .B1(adder[6]), .B2(n16), .C1(
        n63), .C2(f[6]), .ZN(n53) );
  INV_X1 U79 ( .A(n53), .ZN(n82) );
  AOI222_X1 U80 ( .A1(data_out_b[5]), .A2(n18), .B1(adder[5]), .B2(n16), .C1(
        n63), .C2(f[5]), .ZN(n54) );
  INV_X1 U81 ( .A(n54), .ZN(n83) );
  AOI222_X1 U82 ( .A1(data_out_b[4]), .A2(n18), .B1(adder[4]), .B2(n16), .C1(
        n63), .C2(f[4]), .ZN(n55) );
  INV_X1 U83 ( .A(n55), .ZN(n85) );
  AOI222_X1 U84 ( .A1(data_out_b[3]), .A2(n18), .B1(adder[3]), .B2(n16), .C1(
        n63), .C2(f[3]), .ZN(n56) );
  INV_X1 U85 ( .A(n56), .ZN(n102) );
  AOI222_X1 U86 ( .A1(data_out_b[2]), .A2(n18), .B1(adder[2]), .B2(n16), .C1(
        n63), .C2(n57), .ZN(n58) );
  INV_X1 U87 ( .A(n58), .ZN(n111) );
  AOI222_X1 U88 ( .A1(data_out_b[1]), .A2(n18), .B1(adder[1]), .B2(n16), .C1(
        n63), .C2(n59), .ZN(n60) );
  INV_X1 U89 ( .A(n60), .ZN(n112) );
  AOI222_X1 U90 ( .A1(data_out_b[0]), .A2(n18), .B1(adder[0]), .B2(n16), .C1(
        n63), .C2(n61), .ZN(n62) );
  INV_X1 U91 ( .A(n62), .ZN(n113) );
  AOI222_X1 U92 ( .A1(data_out_b[9]), .A2(n18), .B1(adder[9]), .B2(n16), .C1(
        n63), .C2(f[9]), .ZN(n64) );
  INV_X1 U93 ( .A(n64), .ZN(n79) );
  NOR4_X1 U94 ( .A1(n47), .A2(n45), .A3(n44), .A4(n43), .ZN(n72) );
  NOR4_X1 U95 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n49), .ZN(n71) );
  NAND4_X1 U96 ( .A1(n68), .A2(n67), .A3(n66), .A4(n65), .ZN(n69) );
  NOR4_X1 U97 ( .A1(n69), .A2(n61), .A3(n59), .A4(n57), .ZN(n70) );
  NAND3_X1 U98 ( .A1(n72), .A2(n71), .A3(n70), .ZN(n74) );
  NAND3_X1 U99 ( .A1(wr_en_y), .A2(n74), .A3(n73), .ZN(n242) );
  OAI22_X1 U100 ( .A1(n182), .A2(n243), .B1(n214), .B2(n242), .ZN(n181) );
  OAI22_X1 U101 ( .A1(n183), .A2(n243), .B1(n215), .B2(n242), .ZN(n180) );
  OAI22_X1 U102 ( .A1(n184), .A2(n243), .B1(n216), .B2(n242), .ZN(n179) );
  OAI22_X1 U103 ( .A1(n192), .A2(n243), .B1(n220), .B2(n242), .ZN(n171) );
  OAI22_X1 U104 ( .A1(n193), .A2(n243), .B1(n221), .B2(n242), .ZN(n170) );
  OAI22_X1 U105 ( .A1(n194), .A2(n243), .B1(n222), .B2(n242), .ZN(n169) );
  OAI22_X1 U106 ( .A1(n195), .A2(n243), .B1(n223), .B2(n242), .ZN(n168) );
  OAI22_X1 U107 ( .A1(n196), .A2(n243), .B1(n224), .B2(n242), .ZN(n167) );
  OAI22_X1 U108 ( .A1(n197), .A2(n243), .B1(n73), .B2(n242), .ZN(n166) );
  AND4_X1 U109 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n75)
         );
endmodule


module datapath_M16_N8_T16_P16_13_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n23, n25, n27, n29, n31, n32,
         n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50, n52,
         n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n93, n95, n96, n97, n98, n99, n101,
         n103, n104, n105, n106, n107, n111, n112, n113, n114, n115, n117,
         n119, n120, n122, n125, n127, n135, n139, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n237, n241, n245, n247, n249, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n418, n419, n420, n421, n422, n423, n424, n426, n427, n429, n433,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U148 ( .A(n265), .B(n144), .Z(n145) );
  XOR2_X1 U150 ( .A(n271), .B(n146), .Z(n147) );
  XOR2_X1 U152 ( .A(n301), .B(n148), .Z(n149) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U161 ( .A(n177), .B(n168), .CI(n166), .CO(n163), .S(n164) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n274), .CI(n292), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n253), .B(n283), .CI(n305), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n269), .B(n319), .CO(n193), .S(n194) );
  FA_X1 U177 ( .A(n205), .B(n200), .CI(n198), .CO(n195), .S(n196) );
  FA_X1 U178 ( .A(n207), .B(n493), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n276), .B(n294), .CI(n284), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n320), .B(n270), .CI(n306), .CO(n201), .S(n202) );
  FA_X1 U181 ( .A(n208), .B(n213), .CI(n206), .CO(n203), .S(n204) );
  FA_X1 U182 ( .A(n215), .B(n307), .CI(n210), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n295), .B(n285), .CI(n254), .CO(n207), .S(n208) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n255), .B(n309), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n287), .B(n323), .CO(n221), .S(n222) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n325), .B(n311), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n326), .B(n300), .CI(n312), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  XNOR2_X1 U414 ( .A(n45), .B(n490), .ZN(product[12]) );
  AND2_X1 U415 ( .A1(n523), .A2(n79), .ZN(n490) );
  BUF_X1 U416 ( .A(n86), .Z(n491) );
  BUF_X1 U417 ( .A(n495), .Z(n492) );
  BUF_X2 U418 ( .A(n12), .Z(n562) );
  AND2_X1 U419 ( .A1(n232), .A2(n233), .ZN(n551) );
  XNOR2_X1 U420 ( .A(n517), .B(a[4]), .ZN(n526) );
  INV_X1 U421 ( .A(n551), .ZN(n111) );
  AND2_X1 U422 ( .A1(n277), .A2(n321), .ZN(n493) );
  OR2_X1 U423 ( .A1(n329), .A2(n258), .ZN(n494) );
  AND2_X1 U424 ( .A1(n541), .A2(n542), .ZN(n495) );
  AND2_X1 U425 ( .A1(n541), .A2(n542), .ZN(n565) );
  BUF_X1 U426 ( .A(n229), .Z(n496) );
  BUF_X1 U427 ( .A(n585), .Z(n512) );
  INV_X1 U428 ( .A(n546), .ZN(n497) );
  BUF_X1 U429 ( .A(n12), .Z(n561) );
  BUF_X1 U430 ( .A(n23), .Z(n516) );
  XOR2_X1 U431 ( .A(n585), .B(a[2]), .Z(n9) );
  INV_X1 U432 ( .A(n515), .ZN(n498) );
  INV_X1 U433 ( .A(n31), .ZN(n499) );
  INV_X1 U434 ( .A(n31), .ZN(n500) );
  XNOR2_X2 U435 ( .A(n517), .B(a[4]), .ZN(n501) );
  OAI21_X1 U436 ( .B1(n99), .B2(n97), .A(n98), .ZN(n502) );
  OAI21_X1 U437 ( .B1(n99), .B2(n97), .A(n98), .ZN(n96) );
  XNOR2_X2 U438 ( .A(n522), .B(a[8]), .ZN(n27) );
  INV_X2 U439 ( .A(n588), .ZN(n587) );
  BUF_X1 U440 ( .A(n9), .Z(n580) );
  BUF_X2 U441 ( .A(n508), .Z(n563) );
  XNOR2_X1 U442 ( .A(n594), .B(a[8]), .ZN(n429) );
  XOR2_X1 U443 ( .A(n588), .B(a[4]), .Z(n16) );
  BUF_X1 U444 ( .A(n324), .Z(n503) );
  CLKBUF_X1 U445 ( .A(n107), .Z(n504) );
  INV_X1 U446 ( .A(n512), .ZN(n505) );
  INV_X1 U447 ( .A(n586), .ZN(n506) );
  INV_X1 U448 ( .A(n592), .ZN(n507) );
  BUF_X2 U449 ( .A(n19), .Z(n545) );
  XNOR2_X1 U450 ( .A(n583), .B(a[2]), .ZN(n508) );
  CLKBUF_X1 U451 ( .A(n562), .Z(n509) );
  NOR2_X1 U452 ( .A1(n164), .A2(n175), .ZN(n510) );
  NOR2_X1 U453 ( .A1(n164), .A2(n175), .ZN(n75) );
  INV_X1 U454 ( .A(n532), .ZN(n511) );
  OR2_X1 U455 ( .A1(n228), .A2(n231), .ZN(n513) );
  OR2_X2 U456 ( .A1(n514), .A2(n539), .ZN(n34) );
  XNOR2_X1 U457 ( .A(n595), .B(a[10]), .ZN(n514) );
  CLKBUF_X1 U458 ( .A(n585), .Z(n515) );
  INV_X1 U459 ( .A(n588), .ZN(n517) );
  BUF_X1 U460 ( .A(n591), .Z(n518) );
  XNOR2_X1 U461 ( .A(n518), .B(a[4]), .ZN(n569) );
  CLKBUF_X1 U462 ( .A(n516), .Z(n519) );
  OAI21_X1 U463 ( .B1(n89), .B2(n91), .A(n90), .ZN(n88) );
  INV_X1 U464 ( .A(n589), .ZN(n520) );
  XNOR2_X1 U465 ( .A(n521), .B(n88), .ZN(product[10]) );
  NAND2_X1 U466 ( .A1(n86), .A2(n534), .ZN(n521) );
  INV_X1 U467 ( .A(n592), .ZN(n522) );
  OR2_X1 U468 ( .A1(n176), .A2(n185), .ZN(n523) );
  INV_X1 U469 ( .A(n505), .ZN(n524) );
  OR2_X1 U470 ( .A1(n218), .A2(n223), .ZN(n525) );
  INV_X1 U471 ( .A(n499), .ZN(n527) );
  XNOR2_X1 U472 ( .A(n588), .B(a[2]), .ZN(n568) );
  CLKBUF_X1 U473 ( .A(n18), .Z(n528) );
  AOI21_X1 U474 ( .B1(n96), .B2(n571), .A(n93), .ZN(n529) );
  OR2_X2 U475 ( .A1(n530), .A2(n546), .ZN(n23) );
  XNOR2_X1 U476 ( .A(n545), .B(a[6]), .ZN(n530) );
  BUF_X2 U477 ( .A(n37), .Z(n531) );
  BUF_X2 U478 ( .A(n593), .Z(n532) );
  BUF_X1 U479 ( .A(n593), .Z(n533) );
  INV_X1 U480 ( .A(n594), .ZN(n593) );
  OR2_X1 U481 ( .A1(n203), .A2(n196), .ZN(n534) );
  CLKBUF_X1 U482 ( .A(n104), .Z(n535) );
  INV_X2 U483 ( .A(n518), .ZN(n589) );
  NAND2_X2 U484 ( .A1(n16), .A2(n569), .ZN(n18) );
  INV_X1 U485 ( .A(n539), .ZN(n32) );
  OAI21_X1 U486 ( .B1(n529), .B2(n89), .A(n90), .ZN(n536) );
  NAND2_X1 U487 ( .A1(n429), .A2(n27), .ZN(n537) );
  BUF_X2 U488 ( .A(n27), .Z(n538) );
  XNOR2_X1 U489 ( .A(n594), .B(a[10]), .ZN(n539) );
  INV_X2 U490 ( .A(n249), .ZN(n582) );
  NOR2_X1 U491 ( .A1(n186), .A2(n195), .ZN(n540) );
  NOR2_X1 U492 ( .A1(n186), .A2(n195), .ZN(n82) );
  NAND2_X1 U493 ( .A1(n536), .A2(n80), .ZN(n541) );
  INV_X1 U494 ( .A(n543), .ZN(n542) );
  OAI21_X1 U495 ( .B1(n82), .B2(n86), .A(n83), .ZN(n543) );
  XOR2_X1 U496 ( .A(n277), .B(n321), .Z(n210) );
  OR2_X1 U497 ( .A1(n204), .A2(n211), .ZN(n544) );
  INV_X1 U498 ( .A(n588), .ZN(n586) );
  XNOR2_X1 U499 ( .A(n591), .B(a[6]), .ZN(n546) );
  XNOR2_X1 U500 ( .A(n547), .B(n310), .ZN(n226) );
  XNOR2_X1 U501 ( .A(n324), .B(n288), .ZN(n547) );
  AOI21_X1 U502 ( .B1(n573), .B2(n535), .A(n101), .ZN(n548) );
  INV_X1 U503 ( .A(n512), .ZN(n549) );
  INV_X1 U504 ( .A(n515), .ZN(n550) );
  INV_X1 U505 ( .A(n585), .ZN(n583) );
  OR2_X1 U506 ( .A1(n29), .A2(n352), .ZN(n552) );
  OR2_X1 U507 ( .A1(n351), .A2(n27), .ZN(n553) );
  NAND2_X1 U508 ( .A1(n552), .A2(n553), .ZN(n277) );
  XOR2_X1 U509 ( .A(n229), .B(n298), .Z(n554) );
  XOR2_X1 U510 ( .A(n554), .B(n226), .Z(n224) );
  NAND2_X1 U511 ( .A1(n503), .A2(n288), .ZN(n555) );
  NAND2_X1 U512 ( .A1(n503), .A2(n310), .ZN(n556) );
  NAND2_X1 U513 ( .A1(n288), .A2(n310), .ZN(n557) );
  NAND3_X1 U514 ( .A1(n555), .A2(n556), .A3(n557), .ZN(n225) );
  NAND2_X1 U515 ( .A1(n496), .A2(n298), .ZN(n558) );
  NAND2_X1 U516 ( .A1(n496), .A2(n226), .ZN(n559) );
  NAND2_X1 U517 ( .A1(n298), .A2(n226), .ZN(n560) );
  NAND3_X1 U518 ( .A1(n558), .A2(n559), .A3(n560), .ZN(n223) );
  XNOR2_X1 U519 ( .A(n585), .B(n249), .ZN(n433) );
  NAND2_X1 U520 ( .A1(n508), .A2(n568), .ZN(n564) );
  NAND2_X1 U521 ( .A1(n433), .A2(n582), .ZN(n566) );
  NAND2_X1 U522 ( .A1(n433), .A2(n582), .ZN(n567) );
  NAND2_X1 U523 ( .A1(n9), .A2(n568), .ZN(n12) );
  NAND2_X1 U524 ( .A1(n570), .A2(n69), .ZN(n47) );
  INV_X1 U525 ( .A(n73), .ZN(n71) );
  INV_X1 U526 ( .A(n69), .ZN(n67) );
  NAND2_X1 U527 ( .A1(n73), .A2(n570), .ZN(n64) );
  INV_X1 U528 ( .A(n74), .ZN(n72) );
  INV_X1 U529 ( .A(n95), .ZN(n93) );
  AOI21_X1 U530 ( .B1(n536), .B2(n80), .A(n81), .ZN(n45) );
  NOR2_X1 U531 ( .A1(n82), .A2(n85), .ZN(n80) );
  OAI21_X1 U532 ( .B1(n540), .B2(n86), .A(n83), .ZN(n81) );
  NAND2_X1 U533 ( .A1(n544), .A2(n90), .ZN(n52) );
  OR2_X1 U534 ( .A1(n152), .A2(n163), .ZN(n570) );
  NAND2_X1 U535 ( .A1(n571), .A2(n95), .ZN(n53) );
  OAI21_X1 U536 ( .B1(n510), .B2(n79), .A(n76), .ZN(n74) );
  NAND2_X1 U537 ( .A1(n127), .A2(n83), .ZN(n50) );
  INV_X1 U538 ( .A(n540), .ZN(n127) );
  NAND2_X1 U539 ( .A1(n125), .A2(n76), .ZN(n48) );
  INV_X1 U540 ( .A(n75), .ZN(n125) );
  NOR2_X1 U541 ( .A1(n75), .A2(n78), .ZN(n73) );
  NAND2_X1 U542 ( .A1(n152), .A2(n163), .ZN(n69) );
  INV_X1 U543 ( .A(n103), .ZN(n101) );
  OAI21_X1 U544 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  NAND2_X1 U545 ( .A1(n135), .A2(n114), .ZN(n58) );
  NAND2_X1 U546 ( .A1(n106), .A2(n513), .ZN(n56) );
  NAND2_X1 U547 ( .A1(n525), .A2(n98), .ZN(n54) );
  AOI21_X1 U548 ( .B1(n575), .B2(n112), .A(n551), .ZN(n107) );
  NOR2_X1 U549 ( .A1(n176), .A2(n185), .ZN(n78) );
  NOR2_X1 U550 ( .A1(n196), .A2(n203), .ZN(n85) );
  NAND2_X1 U551 ( .A1(n573), .A2(n103), .ZN(n55) );
  AOI21_X1 U552 ( .B1(n574), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U553 ( .A(n119), .ZN(n117) );
  INV_X1 U554 ( .A(n122), .ZN(n120) );
  XNOR2_X1 U555 ( .A(n57), .B(n112), .ZN(product[4]) );
  NAND2_X1 U556 ( .A1(n575), .A2(n111), .ZN(n57) );
  NAND2_X1 U557 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U558 ( .A1(n186), .A2(n195), .ZN(n83) );
  NAND2_X1 U559 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U560 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U561 ( .A1(n212), .A2(n217), .ZN(n95) );
  NAND2_X1 U562 ( .A1(n204), .A2(n211), .ZN(n90) );
  OR2_X1 U563 ( .A1(n212), .A2(n217), .ZN(n571) );
  XNOR2_X1 U564 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U565 ( .A1(n574), .A2(n119), .ZN(n59) );
  XNOR2_X1 U566 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U567 ( .A1(n576), .A2(n62), .ZN(n46) );
  AOI21_X1 U568 ( .B1(n74), .B2(n570), .A(n67), .ZN(n65) );
  AND2_X1 U569 ( .A1(n494), .A2(n122), .ZN(product[1]) );
  OR2_X1 U570 ( .A1(n224), .A2(n227), .ZN(n573) );
  OR2_X1 U571 ( .A1(n328), .A2(n314), .ZN(n574) );
  NOR2_X1 U572 ( .A1(n218), .A2(n223), .ZN(n97) );
  OR2_X1 U573 ( .A1(n232), .A2(n233), .ZN(n575) );
  NAND2_X1 U574 ( .A1(n218), .A2(n223), .ZN(n98) );
  INV_X1 U575 ( .A(n37), .ZN(n237) );
  NAND2_X1 U576 ( .A1(n224), .A2(n227), .ZN(n103) );
  NAND2_X1 U577 ( .A1(n228), .A2(n231), .ZN(n106) );
  INV_X1 U578 ( .A(n41), .ZN(n235) );
  OR2_X1 U579 ( .A1(n151), .A2(n139), .ZN(n576) );
  XNOR2_X1 U580 ( .A(n527), .B(a[12]), .ZN(n37) );
  XNOR2_X1 U581 ( .A(n597), .B(a[14]), .ZN(n41) );
  AND2_X1 U582 ( .A1(n581), .A2(n241), .ZN(n278) );
  OR2_X1 U583 ( .A1(n43), .A2(n506), .ZN(n392) );
  XNOR2_X1 U584 ( .A(n545), .B(n43), .ZN(n363) );
  XNOR2_X1 U585 ( .A(n532), .B(n43), .ZN(n352) );
  AND2_X1 U586 ( .A1(n581), .A2(n546), .ZN(n288) );
  AND2_X1 U587 ( .A1(n581), .A2(n245), .ZN(n300) );
  XNOR2_X1 U588 ( .A(n155), .B(n577), .ZN(n139) );
  XNOR2_X1 U589 ( .A(n153), .B(n141), .ZN(n577) );
  XNOR2_X1 U590 ( .A(n157), .B(n578), .ZN(n141) );
  XNOR2_X1 U591 ( .A(n145), .B(n143), .ZN(n578) );
  OAI22_X1 U592 ( .A1(n39), .A2(n598), .B1(n337), .B2(n531), .ZN(n252) );
  OR2_X1 U593 ( .A1(n43), .A2(n598), .ZN(n337) );
  OAI22_X1 U594 ( .A1(n42), .A2(n600), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U595 ( .A1(n43), .A2(n600), .ZN(n332) );
  XNOR2_X1 U596 ( .A(n527), .B(n43), .ZN(n343) );
  NAND2_X1 U597 ( .A1(n433), .A2(n582), .ZN(n6) );
  NAND2_X1 U598 ( .A1(n429), .A2(n27), .ZN(n29) );
  XNOR2_X1 U599 ( .A(n159), .B(n579), .ZN(n142) );
  XNOR2_X1 U600 ( .A(n315), .B(n261), .ZN(n579) );
  XNOR2_X1 U601 ( .A(n590), .B(n43), .ZN(n376) );
  XNOR2_X1 U602 ( .A(n597), .B(n43), .ZN(n336) );
  NAND2_X1 U603 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U604 ( .A(n597), .B(a[12]), .Z(n427) );
  OAI22_X1 U605 ( .A1(n39), .A2(n336), .B1(n531), .B2(n335), .ZN(n263) );
  AND2_X1 U606 ( .A1(n581), .A2(n237), .ZN(n264) );
  AND2_X1 U607 ( .A1(n581), .A2(n235), .ZN(n260) );
  OAI22_X1 U608 ( .A1(n39), .A2(n335), .B1(n531), .B2(n334), .ZN(n262) );
  AND2_X1 U609 ( .A1(n581), .A2(n539), .ZN(n270) );
  INV_X1 U610 ( .A(n25), .ZN(n594) );
  NAND2_X1 U611 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U612 ( .A(n599), .B(a[14]), .Z(n426) );
  INV_X1 U613 ( .A(n13), .ZN(n591) );
  INV_X1 U614 ( .A(n7), .ZN(n588) );
  AND2_X1 U615 ( .A1(n581), .A2(n247), .ZN(n314) );
  AND2_X1 U616 ( .A1(n581), .A2(n249), .ZN(product[0]) );
  OR2_X1 U617 ( .A1(n43), .A2(n592), .ZN(n364) );
  OR2_X1 U618 ( .A1(n43), .A2(n511), .ZN(n353) );
  OR2_X1 U619 ( .A1(n43), .A2(n500), .ZN(n344) );
  OR2_X1 U620 ( .A1(n43), .A2(n520), .ZN(n377) );
  XNOR2_X1 U621 ( .A(n545), .B(b[9]), .ZN(n354) );
  OAI22_X1 U622 ( .A1(n39), .A2(n334), .B1(n531), .B2(n333), .ZN(n261) );
  XNOR2_X1 U623 ( .A(n597), .B(n422), .ZN(n333) );
  XNOR2_X1 U624 ( .A(n590), .B(b[11]), .ZN(n365) );
  XNOR2_X1 U625 ( .A(n597), .B(n423), .ZN(n334) );
  XNOR2_X1 U626 ( .A(n597), .B(n424), .ZN(n335) );
  OAI22_X1 U627 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U628 ( .A(n599), .B(n424), .ZN(n330) );
  XNOR2_X1 U629 ( .A(n599), .B(n43), .ZN(n331) );
  XNOR2_X1 U630 ( .A(n532), .B(n418), .ZN(n345) );
  XNOR2_X1 U631 ( .A(n527), .B(n420), .ZN(n338) );
  XNOR2_X1 U632 ( .A(n586), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U633 ( .A(n533), .B(n424), .ZN(n351) );
  XNOR2_X1 U634 ( .A(n527), .B(n424), .ZN(n342) );
  XNOR2_X1 U635 ( .A(n545), .B(n424), .ZN(n362) );
  XNOR2_X1 U636 ( .A(n31), .B(n422), .ZN(n340) );
  XNOR2_X1 U637 ( .A(n595), .B(n421), .ZN(n339) );
  XNOR2_X1 U638 ( .A(n595), .B(n423), .ZN(n341) );
  XNOR2_X1 U639 ( .A(n586), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U640 ( .A(n586), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U641 ( .A(n587), .B(n418), .ZN(n384) );
  XNOR2_X1 U642 ( .A(n586), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U643 ( .A(n587), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U644 ( .A(n586), .B(n419), .ZN(n385) );
  XNOR2_X1 U645 ( .A(n587), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U646 ( .A(n590), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U647 ( .A(n590), .B(n418), .ZN(n369) );
  XNOR2_X1 U648 ( .A(n590), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U649 ( .A(n590), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U650 ( .A(n533), .B(n423), .ZN(n350) );
  XNOR2_X1 U651 ( .A(n507), .B(n423), .ZN(n361) );
  XNOR2_X1 U652 ( .A(n507), .B(n422), .ZN(n360) );
  XNOR2_X1 U653 ( .A(n532), .B(n422), .ZN(n349) );
  XNOR2_X1 U654 ( .A(n505), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U655 ( .A(n498), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U656 ( .A(n505), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U657 ( .A(n584), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U658 ( .A(n545), .B(n421), .ZN(n359) );
  XNOR2_X1 U659 ( .A(n545), .B(n420), .ZN(n358) );
  XNOR2_X1 U660 ( .A(n532), .B(n421), .ZN(n348) );
  XNOR2_X1 U661 ( .A(n532), .B(n420), .ZN(n347) );
  XNOR2_X1 U662 ( .A(n507), .B(n418), .ZN(n356) );
  XNOR2_X1 U663 ( .A(n533), .B(n419), .ZN(n346) );
  XNOR2_X1 U664 ( .A(n507), .B(n419), .ZN(n357) );
  XNOR2_X1 U665 ( .A(n545), .B(b[8]), .ZN(n355) );
  XNOR2_X1 U666 ( .A(n584), .B(b[15]), .ZN(n393) );
  BUF_X1 U667 ( .A(n43), .Z(n581) );
  OAI22_X1 U668 ( .A1(n34), .A2(n339), .B1(n338), .B2(n32), .ZN(n265) );
  OAI22_X1 U669 ( .A1(n34), .A2(n340), .B1(n339), .B2(n32), .ZN(n266) );
  OAI22_X1 U670 ( .A1(n34), .A2(n341), .B1(n340), .B2(n32), .ZN(n267) );
  OAI22_X1 U671 ( .A1(n34), .A2(n342), .B1(n341), .B2(n32), .ZN(n268) );
  OAI22_X1 U672 ( .A1(n34), .A2(n343), .B1(n342), .B2(n32), .ZN(n269) );
  OAI22_X1 U673 ( .A1(n34), .A2(n499), .B1(n344), .B2(n32), .ZN(n253) );
  XNOR2_X1 U674 ( .A(n77), .B(n48), .ZN(product[13]) );
  XNOR2_X1 U675 ( .A(n84), .B(n50), .ZN(product[11]) );
  INV_X1 U676 ( .A(n19), .ZN(n592) );
  NOR2_X1 U677 ( .A1(n228), .A2(n231), .ZN(n105) );
  INV_X1 U678 ( .A(n113), .ZN(n135) );
  NOR2_X1 U679 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U680 ( .A1(n537), .A2(n350), .B1(n349), .B2(n538), .ZN(n275) );
  OAI22_X1 U681 ( .A1(n537), .A2(n346), .B1(n345), .B2(n538), .ZN(n271) );
  OAI22_X1 U682 ( .A1(n537), .A2(n347), .B1(n346), .B2(n538), .ZN(n272) );
  OAI22_X1 U683 ( .A1(n537), .A2(n348), .B1(n347), .B2(n538), .ZN(n273) );
  OAI22_X1 U684 ( .A1(n29), .A2(n349), .B1(n348), .B2(n538), .ZN(n274) );
  OAI22_X1 U685 ( .A1(n537), .A2(n511), .B1(n353), .B2(n538), .ZN(n254) );
  OAI22_X1 U686 ( .A1(n29), .A2(n351), .B1(n350), .B2(n538), .ZN(n276) );
  INV_X1 U687 ( .A(n27), .ZN(n241) );
  NAND2_X1 U688 ( .A1(n151), .A2(n139), .ZN(n62) );
  INV_X1 U689 ( .A(n1), .ZN(n585) );
  AOI21_X1 U690 ( .B1(n104), .B2(n573), .A(n101), .ZN(n99) );
  OR2_X1 U691 ( .A1(n43), .A2(n524), .ZN(n409) );
  INV_X1 U692 ( .A(n585), .ZN(n584) );
  OAI21_X1 U693 ( .B1(n87), .B2(n85), .A(n491), .ZN(n84) );
  XNOR2_X1 U694 ( .A(n502), .B(n53), .ZN(product[8]) );
  XOR2_X1 U695 ( .A(n548), .B(n54), .Z(product[7]) );
  AOI21_X1 U696 ( .B1(n96), .B2(n571), .A(n93), .ZN(n91) );
  XNOR2_X1 U697 ( .A(n70), .B(n47), .ZN(product[14]) );
  OAI22_X1 U698 ( .A1(n519), .A2(n358), .B1(n357), .B2(n497), .ZN(n282) );
  OAI22_X1 U699 ( .A1(n519), .A2(n356), .B1(n355), .B2(n497), .ZN(n280) );
  OAI22_X1 U700 ( .A1(n516), .A2(n362), .B1(n361), .B2(n497), .ZN(n286) );
  OAI22_X1 U701 ( .A1(n516), .A2(n360), .B1(n359), .B2(n497), .ZN(n284) );
  OAI22_X1 U702 ( .A1(n23), .A2(n592), .B1(n364), .B2(n497), .ZN(n255) );
  OAI22_X1 U703 ( .A1(n23), .A2(n361), .B1(n360), .B2(n497), .ZN(n285) );
  OAI22_X1 U704 ( .A1(n23), .A2(n357), .B1(n356), .B2(n497), .ZN(n281) );
  OAI22_X1 U705 ( .A1(n23), .A2(n363), .B1(n362), .B2(n497), .ZN(n287) );
  XNOR2_X1 U706 ( .A(n589), .B(n424), .ZN(n375) );
  OAI22_X1 U707 ( .A1(n23), .A2(n355), .B1(n354), .B2(n497), .ZN(n279) );
  XNOR2_X1 U708 ( .A(n589), .B(n423), .ZN(n374) );
  XNOR2_X1 U709 ( .A(n589), .B(n421), .ZN(n372) );
  OAI22_X1 U710 ( .A1(n23), .A2(n359), .B1(n358), .B2(n497), .ZN(n283) );
  XNOR2_X1 U711 ( .A(n589), .B(n422), .ZN(n373) );
  XNOR2_X1 U712 ( .A(n589), .B(n419), .ZN(n370) );
  XNOR2_X1 U713 ( .A(n589), .B(n420), .ZN(n371) );
  INV_X1 U714 ( .A(n88), .ZN(n87) );
  XNOR2_X1 U715 ( .A(n498), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U716 ( .A(n584), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U717 ( .A(n550), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U718 ( .A(n549), .B(n418), .ZN(n401) );
  XNOR2_X1 U719 ( .A(n549), .B(n423), .ZN(n406) );
  XNOR2_X1 U720 ( .A(n584), .B(n43), .ZN(n408) );
  XNOR2_X1 U721 ( .A(n584), .B(n422), .ZN(n405) );
  XNOR2_X1 U722 ( .A(n549), .B(n421), .ZN(n404) );
  XNOR2_X1 U723 ( .A(n550), .B(n420), .ZN(n403) );
  XNOR2_X1 U724 ( .A(n498), .B(n424), .ZN(n407) );
  XNOR2_X1 U725 ( .A(n584), .B(n419), .ZN(n402) );
  OAI22_X1 U726 ( .A1(n528), .A2(n370), .B1(n369), .B2(n501), .ZN(n293) );
  OAI22_X1 U727 ( .A1(n528), .A2(n367), .B1(n366), .B2(n526), .ZN(n290) );
  OAI22_X1 U728 ( .A1(n18), .A2(n375), .B1(n374), .B2(n526), .ZN(n298) );
  OAI22_X1 U729 ( .A1(n18), .A2(n368), .B1(n367), .B2(n501), .ZN(n291) );
  OAI22_X1 U730 ( .A1(n18), .A2(n373), .B1(n372), .B2(n526), .ZN(n296) );
  OAI22_X1 U731 ( .A1(n18), .A2(n520), .B1(n377), .B2(n501), .ZN(n256) );
  OAI22_X1 U732 ( .A1(n18), .A2(n369), .B1(n368), .B2(n501), .ZN(n292) );
  OAI22_X1 U733 ( .A1(n18), .A2(n372), .B1(n371), .B2(n501), .ZN(n295) );
  OAI22_X1 U734 ( .A1(n18), .A2(n371), .B1(n370), .B2(n501), .ZN(n294) );
  OAI22_X1 U735 ( .A1(n18), .A2(n376), .B1(n375), .B2(n526), .ZN(n299) );
  OAI22_X1 U736 ( .A1(n18), .A2(n374), .B1(n373), .B2(n526), .ZN(n297) );
  OAI22_X1 U737 ( .A1(n18), .A2(n366), .B1(n365), .B2(n526), .ZN(n289) );
  XNOR2_X1 U738 ( .A(n587), .B(n420), .ZN(n386) );
  XNOR2_X1 U739 ( .A(n587), .B(n43), .ZN(n391) );
  INV_X1 U740 ( .A(n16), .ZN(n245) );
  XNOR2_X1 U741 ( .A(n587), .B(n424), .ZN(n390) );
  XNOR2_X1 U742 ( .A(n587), .B(n423), .ZN(n389) );
  XNOR2_X1 U743 ( .A(n517), .B(n422), .ZN(n388) );
  XNOR2_X1 U744 ( .A(n586), .B(n421), .ZN(n387) );
  OAI21_X1 U745 ( .B1(n64), .B2(n492), .A(n65), .ZN(n63) );
  OAI21_X1 U746 ( .B1(n495), .B2(n71), .A(n72), .ZN(n70) );
  OAI21_X1 U747 ( .B1(n565), .B2(n78), .A(n79), .ZN(n77) );
  XOR2_X1 U748 ( .A(n529), .B(n52), .Z(product[9]) );
  XNOR2_X1 U749 ( .A(n55), .B(n535), .ZN(product[6]) );
  NAND2_X1 U750 ( .A1(n328), .A2(n314), .ZN(n119) );
  OAI21_X1 U751 ( .B1(n107), .B2(n105), .A(n106), .ZN(n104) );
  NOR2_X1 U752 ( .A1(n234), .A2(n257), .ZN(n113) );
  XOR2_X1 U753 ( .A(n56), .B(n504), .Z(product[5]) );
  XOR2_X1 U754 ( .A(n58), .B(n115), .Z(product[3]) );
  OAI22_X1 U755 ( .A1(n567), .A2(n395), .B1(n394), .B2(n582), .ZN(n316) );
  OAI22_X1 U756 ( .A1(n6), .A2(n394), .B1(n393), .B2(n582), .ZN(n315) );
  OAI22_X1 U757 ( .A1(n566), .A2(n396), .B1(n395), .B2(n582), .ZN(n317) );
  OAI22_X1 U758 ( .A1(n6), .A2(n397), .B1(n396), .B2(n582), .ZN(n318) );
  OAI22_X1 U759 ( .A1(n6), .A2(n398), .B1(n397), .B2(n582), .ZN(n319) );
  OAI22_X1 U760 ( .A1(n566), .A2(n400), .B1(n399), .B2(n582), .ZN(n321) );
  OAI22_X1 U761 ( .A1(n6), .A2(n399), .B1(n398), .B2(n582), .ZN(n320) );
  OAI22_X1 U762 ( .A1(n567), .A2(n401), .B1(n400), .B2(n582), .ZN(n322) );
  OAI22_X1 U763 ( .A1(n566), .A2(n402), .B1(n401), .B2(n582), .ZN(n323) );
  NAND2_X1 U764 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI22_X1 U765 ( .A1(n567), .A2(n404), .B1(n403), .B2(n582), .ZN(n325) );
  OAI22_X1 U766 ( .A1(n6), .A2(n403), .B1(n402), .B2(n582), .ZN(n324) );
  OAI22_X1 U767 ( .A1(n566), .A2(n406), .B1(n405), .B2(n582), .ZN(n327) );
  OAI22_X1 U768 ( .A1(n566), .A2(n405), .B1(n404), .B2(n582), .ZN(n326) );
  OAI22_X1 U769 ( .A1(n567), .A2(n407), .B1(n406), .B2(n582), .ZN(n328) );
  OAI22_X1 U770 ( .A1(n567), .A2(n408), .B1(n407), .B2(n582), .ZN(n329) );
  OAI22_X1 U771 ( .A1(n6), .A2(n524), .B1(n409), .B2(n582), .ZN(n258) );
  OAI22_X1 U772 ( .A1(n564), .A2(n379), .B1(n378), .B2(n580), .ZN(n301) );
  OAI22_X1 U773 ( .A1(n509), .A2(n380), .B1(n379), .B2(n563), .ZN(n302) );
  OAI22_X1 U774 ( .A1(n564), .A2(n385), .B1(n384), .B2(n563), .ZN(n307) );
  OAI22_X1 U775 ( .A1(n564), .A2(n382), .B1(n381), .B2(n563), .ZN(n304) );
  OAI22_X1 U776 ( .A1(n564), .A2(n381), .B1(n380), .B2(n563), .ZN(n303) );
  NAND2_X1 U777 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U778 ( .A1(n562), .A2(n383), .B1(n563), .B2(n382), .ZN(n305) );
  OAI22_X1 U779 ( .A1(n562), .A2(n384), .B1(n383), .B2(n563), .ZN(n306) );
  OAI22_X1 U780 ( .A1(n562), .A2(n386), .B1(n385), .B2(n563), .ZN(n308) );
  OAI22_X1 U781 ( .A1(n564), .A2(n387), .B1(n386), .B2(n563), .ZN(n309) );
  OAI22_X1 U782 ( .A1(n509), .A2(n506), .B1(n392), .B2(n563), .ZN(n257) );
  OAI22_X1 U783 ( .A1(n561), .A2(n389), .B1(n388), .B2(n580), .ZN(n311) );
  OAI22_X1 U784 ( .A1(n562), .A2(n388), .B1(n387), .B2(n580), .ZN(n310) );
  OAI22_X1 U785 ( .A1(n564), .A2(n390), .B1(n580), .B2(n389), .ZN(n312) );
  INV_X1 U786 ( .A(n563), .ZN(n247) );
  OAI22_X1 U787 ( .A1(n564), .A2(n391), .B1(n390), .B2(n563), .ZN(n313) );
  INV_X1 U788 ( .A(n591), .ZN(n590) );
  INV_X1 U789 ( .A(n596), .ZN(n595) );
  INV_X1 U790 ( .A(n31), .ZN(n596) );
  INV_X1 U791 ( .A(n598), .ZN(n597) );
  INV_X1 U792 ( .A(n36), .ZN(n598) );
  INV_X1 U793 ( .A(n600), .ZN(n599) );
  INV_X1 U794 ( .A(n40), .ZN(n600) );
  XOR2_X1 U795 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U796 ( .A(n289), .B(n279), .Z(n146) );
  XOR2_X1 U797 ( .A(n149), .B(n147), .Z(n144) );
endmodule


module datapath_M16_N8_T16_P16_13_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n5, n8, n9, n10, n11, n12, n13, n14, n15, n16, n19, n20,
         n22, n24, n26, n27, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39,
         n40, n44, n45, n47, n49, n50, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n65, n67, n68, n69, n70, n71, n73, n75, n76, n77,
         n78, n79, n81, n83, n84, n86, n90, n94, n95, n96, n98, n100, n157,
         n158, n159, n160, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186;

  XNOR2_X1 U122 ( .A(n45), .B(n157), .ZN(SUM[10]) );
  AND2_X1 U123 ( .A1(n164), .A2(n44), .ZN(n157) );
  XNOR2_X1 U124 ( .A(n37), .B(n158), .ZN(SUM[11]) );
  AND2_X1 U125 ( .A1(n159), .A2(n36), .ZN(n158) );
  OR2_X1 U126 ( .A1(A[11]), .A2(B[11]), .ZN(n159) );
  OR2_X1 U127 ( .A1(A[15]), .A2(B[15]), .ZN(n160) );
  AND2_X1 U128 ( .A1(n179), .A2(n86), .ZN(SUM[0]) );
  AOI21_X1 U129 ( .B1(n52), .B2(n60), .A(n53), .ZN(n162) );
  AOI21_X1 U130 ( .B1(n52), .B2(n60), .A(n53), .ZN(n163) );
  NOR2_X2 U131 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  OR2_X2 U132 ( .A1(A[10]), .A2(B[10]), .ZN(n164) );
  OR2_X1 U133 ( .A1(A[10]), .A2(B[10]), .ZN(n184) );
  OR2_X1 U134 ( .A1(A[14]), .A2(B[14]), .ZN(n165) );
  AOI21_X1 U135 ( .B1(n184), .B2(n47), .A(n185), .ZN(n166) );
  OR2_X1 U136 ( .A1(A[13]), .A2(B[13]), .ZN(n167) );
  OAI21_X1 U137 ( .B1(n39), .B2(n162), .A(n166), .ZN(n168) );
  BUF_X1 U138 ( .A(n26), .Z(n169) );
  XNOR2_X1 U139 ( .A(n170), .B(n1), .ZN(SUM[13]) );
  AND2_X1 U140 ( .A1(n171), .A2(n167), .ZN(n170) );
  BUF_X1 U141 ( .A(n29), .Z(n171) );
  NOR2_X1 U142 ( .A1(A[12]), .A2(B[12]), .ZN(n172) );
  NOR2_X1 U143 ( .A1(A[12]), .A2(B[12]), .ZN(n173) );
  OAI21_X1 U144 ( .B1(n173), .B2(n36), .A(n33), .ZN(n174) );
  INV_X1 U145 ( .A(n167), .ZN(n175) );
  NOR2_X1 U146 ( .A1(A[14]), .A2(B[14]), .ZN(n176) );
  AOI21_X1 U147 ( .B1(n168), .B2(n30), .A(n31), .ZN(n177) );
  AOI21_X1 U148 ( .B1(n168), .B2(n30), .A(n174), .ZN(n178) );
  OR2_X1 U149 ( .A1(A[0]), .A2(B[0]), .ZN(n179) );
  INV_X1 U150 ( .A(n60), .ZN(n59) );
  INV_X1 U151 ( .A(n163), .ZN(n50) );
  OAI21_X1 U152 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  AOI21_X1 U153 ( .B1(n183), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U154 ( .A(n75), .ZN(n73) );
  AOI21_X1 U155 ( .B1(n168), .B2(n30), .A(n174), .ZN(n1) );
  AOI21_X1 U156 ( .B1(n181), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U157 ( .A(n83), .ZN(n81) );
  INV_X1 U158 ( .A(n24), .ZN(n22) );
  AOI21_X1 U159 ( .B1(n182), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U160 ( .A(n67), .ZN(n65) );
  OAI21_X1 U161 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  AOI21_X1 U162 ( .B1(n50), .B2(n180), .A(n47), .ZN(n45) );
  INV_X1 U163 ( .A(n86), .ZN(n84) );
  OAI21_X1 U164 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  INV_X1 U165 ( .A(n49), .ZN(n47) );
  NAND2_X1 U166 ( .A1(n182), .A2(n67), .ZN(n12) );
  NAND2_X1 U167 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U168 ( .A(n57), .ZN(n95) );
  NAND2_X1 U169 ( .A1(n180), .A2(n49), .ZN(n8) );
  NAND2_X1 U170 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U171 ( .A(n77), .ZN(n100) );
  NAND2_X1 U172 ( .A1(n94), .A2(n55), .ZN(n9) );
  INV_X1 U173 ( .A(n54), .ZN(n94) );
  NAND2_X1 U174 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U175 ( .A(n69), .ZN(n98) );
  NAND2_X1 U176 ( .A1(n183), .A2(n75), .ZN(n14) );
  NAND2_X1 U177 ( .A1(n181), .A2(n83), .ZN(n16) );
  NAND2_X1 U178 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U179 ( .A(n61), .ZN(n96) );
  XNOR2_X1 U180 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  NAND2_X1 U181 ( .A1(n90), .A2(n33), .ZN(n5) );
  NOR2_X1 U182 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  OR2_X1 U183 ( .A1(A[9]), .A2(B[9]), .ZN(n180) );
  NOR2_X1 U184 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NAND2_X1 U185 ( .A1(n165), .A2(n169), .ZN(n3) );
  NAND2_X1 U186 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  NAND2_X1 U187 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  OR2_X1 U188 ( .A1(A[1]), .A2(B[1]), .ZN(n181) );
  OR2_X1 U189 ( .A1(A[5]), .A2(B[5]), .ZN(n182) );
  NAND2_X1 U190 ( .A1(n160), .A2(n19), .ZN(n2) );
  NOR2_X1 U191 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NAND2_X1 U192 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  XNOR2_X1 U193 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XNOR2_X1 U194 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XNOR2_X1 U195 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NOR2_X1 U196 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NAND2_X1 U197 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  OR2_X1 U198 ( .A1(A[3]), .A2(B[3]), .ZN(n183) );
  NAND2_X1 U199 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  NAND2_X1 U200 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  NAND2_X1 U201 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U202 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NAND2_X1 U203 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U204 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  NAND2_X1 U205 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U206 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  XOR2_X1 U207 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XOR2_X1 U208 ( .A(n13), .B(n71), .Z(SUM[4]) );
  XNOR2_X1 U209 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  XOR2_X1 U210 ( .A(n15), .B(n79), .Z(SUM[2]) );
  INV_X1 U211 ( .A(n185), .ZN(n44) );
  NOR2_X1 U212 ( .A1(n54), .A2(n57), .ZN(n52) );
  OAI21_X1 U213 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  XOR2_X1 U214 ( .A(n11), .B(n63), .Z(SUM[6]) );
  NAND2_X1 U215 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  AND2_X1 U216 ( .A1(A[10]), .A2(B[10]), .ZN(n185) );
  NAND2_X1 U217 ( .A1(n165), .A2(n167), .ZN(n186) );
  OAI21_X1 U218 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  INV_X1 U219 ( .A(n172), .ZN(n90) );
  OAI21_X1 U220 ( .B1(n172), .B2(n36), .A(n33), .ZN(n31) );
  NAND2_X1 U221 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  INV_X1 U222 ( .A(n38), .ZN(n37) );
  NOR2_X1 U223 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  OAI21_X1 U224 ( .B1(n176), .B2(n29), .A(n26), .ZN(n24) );
  OAI21_X1 U225 ( .B1(n37), .B2(n35), .A(n36), .ZN(n34) );
  NOR2_X1 U226 ( .A1(n35), .A2(n173), .ZN(n30) );
  NAND2_X1 U227 ( .A1(A[15]), .A2(B[15]), .ZN(n19) );
  XNOR2_X1 U228 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  OAI21_X1 U229 ( .B1(n39), .B2(n162), .A(n40), .ZN(n38) );
  NAND2_X1 U230 ( .A1(n164), .A2(n180), .ZN(n39) );
  AOI21_X1 U231 ( .B1(n164), .B2(n47), .A(n185), .ZN(n40) );
  XNOR2_X1 U232 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  XNOR2_X1 U233 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  OAI21_X1 U234 ( .B1(n178), .B2(n186), .A(n22), .ZN(n20) );
  OAI21_X1 U235 ( .B1(n177), .B2(n175), .A(n171), .ZN(n27) );
endmodule


module datapath_M16_N8_T16_P16_13 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n22), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n228), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n229), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n230), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n231), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n232), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n233), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n234), .CK(clk), .Q(n34) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n235), .CK(clk), .Q(n35) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n236), .CK(clk), .Q(n36) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n237), .CK(clk), .Q(n37) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n238), .CK(clk), .Q(n38) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n239), .CK(clk), .Q(n39) );
  DFF_X1 \f_reg[0]  ( .D(n167), .CK(clk), .Q(n65), .QN(n217) );
  DFF_X1 \f_reg[1]  ( .D(n166), .CK(clk), .Q(n63), .QN(n218) );
  DFF_X1 \f_reg[2]  ( .D(n114), .CK(clk), .Q(n61), .QN(n219) );
  DFF_X1 \f_reg[3]  ( .D(n113), .CK(clk), .Q(f[3]), .QN(n69) );
  DFF_X1 \data_out_reg[15]  ( .D(n169), .CK(clk), .Q(data_out[15]), .QN(n200)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n170), .CK(clk), .Q(data_out[14]), .QN(n199)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n171), .CK(clk), .Q(data_out[13]), .QN(n198)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n172), .CK(clk), .Q(data_out[12]), .QN(n197)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n173), .CK(clk), .Q(data_out[11]), .QN(n196)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n174), .CK(clk), .Q(data_out[10]), .QN(n195)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n175), .CK(clk), .Q(data_out[9]), .QN(n194) );
  DFF_X1 \data_out_reg[8]  ( .D(n176), .CK(clk), .Q(data_out[8]), .QN(n193) );
  DFF_X1 \data_out_reg[7]  ( .D(n177), .CK(clk), .Q(data_out[7]), .QN(n192) );
  DFF_X1 \data_out_reg[6]  ( .D(n178), .CK(clk), .Q(data_out[6]), .QN(n191) );
  DFF_X1 \data_out_reg[5]  ( .D(n179), .CK(clk), .Q(data_out[5]), .QN(n190) );
  DFF_X1 \data_out_reg[4]  ( .D(n180), .CK(clk), .Q(data_out[4]), .QN(n189) );
  DFF_X1 \data_out_reg[3]  ( .D(n181), .CK(clk), .Q(data_out[3]), .QN(n188) );
  DFF_X1 \data_out_reg[2]  ( .D(n182), .CK(clk), .Q(data_out[2]), .QN(n187) );
  DFF_X1 \data_out_reg[1]  ( .D(n183), .CK(clk), .Q(data_out[1]), .QN(n186) );
  DFF_X1 \data_out_reg[0]  ( .D(n184), .CK(clk), .Q(data_out[0]), .QN(n185) );
  datapath_M16_N8_T16_P16_13_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_13_DW01_add_2 add_262 ( .A({n207, n206, n205, n204, 
        n203, n202, n216, n215, n214, n213, n212, n211, n210, n209, n208, n201}), .B({f[15], n48, n49, n50, n51, n53, f[9:3], n61, n63, n65}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n243), .CK(clk), .Q(n44) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n242), .CK(clk), .Q(n42) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n241), .CK(clk), .Q(n41) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n240), .CK(clk), .Q(n40) );
  DFF_X1 \f_reg[4]  ( .D(n112), .CK(clk), .Q(f[4]), .QN(n70) );
  DFF_X1 \f_reg[5]  ( .D(n111), .CK(clk), .Q(f[5]), .QN(n71) );
  DFF_X1 \f_reg[6]  ( .D(n102), .CK(clk), .Q(f[6]), .QN(n72) );
  DFF_X1 \f_reg[7]  ( .D(n85), .CK(clk), .Q(f[7]), .QN(n220) );
  DFF_X1 \f_reg[8]  ( .D(n83), .CK(clk), .Q(f[8]), .QN(n221) );
  DFF_X1 \f_reg[9]  ( .D(n82), .CK(clk), .Q(f[9]), .QN(n222) );
  DFF_X1 \f_reg[10]  ( .D(n81), .CK(clk), .Q(n53), .QN(n223) );
  DFF_X1 \f_reg[11]  ( .D(n80), .CK(clk), .Q(n51), .QN(n224) );
  DFF_X1 \f_reg[14]  ( .D(n7), .CK(clk), .Q(n48), .QN(n227) );
  DFF_X1 \f_reg[15]  ( .D(n8), .CK(clk), .Q(f[15]), .QN(n77) );
  DFF_X1 \f_reg[12]  ( .D(n1), .CK(clk), .Q(n50), .QN(n225) );
  DFF_X2 delay_reg ( .D(n168), .CK(clk), .Q(n9), .QN(n244) );
  DFF_X1 \f_reg[13]  ( .D(n2), .CK(clk), .Q(n49), .QN(n226) );
  MUX2_X2 U3 ( .A(n35), .B(N37), .S(n244), .Z(n215) );
  MUX2_X2 U4 ( .A(n32), .B(N40), .S(n244), .Z(n203) );
  INV_X1 U5 ( .A(n47), .ZN(n67) );
  AND2_X1 U6 ( .A1(n47), .A2(n23), .ZN(n19) );
  MUX2_X2 U8 ( .A(N43), .B(n27), .S(n9), .Z(n206) );
  NAND3_X1 U9 ( .A1(n11), .A2(n10), .A3(n12), .ZN(n1) );
  NAND3_X1 U10 ( .A1(n5), .A2(n4), .A3(n6), .ZN(n2) );
  MUX2_X1 U11 ( .A(N42), .B(n28), .S(n9), .Z(n205) );
  NAND2_X1 U12 ( .A1(data_out_b[13]), .A2(n21), .ZN(n4) );
  NAND2_X1 U13 ( .A1(adder[13]), .A2(n19), .ZN(n5) );
  NAND2_X1 U14 ( .A1(n67), .A2(n49), .ZN(n6) );
  NAND3_X1 U15 ( .A1(n17), .A2(n16), .A3(n18), .ZN(n7) );
  NAND3_X1 U16 ( .A1(n14), .A2(n13), .A3(n15), .ZN(n8) );
  MUX2_X2 U17 ( .A(N39), .B(n33), .S(n9), .Z(n202) );
  MUX2_X2 U18 ( .A(n29), .B(N41), .S(n244), .Z(n204) );
  NAND2_X1 U19 ( .A1(data_out_b[12]), .A2(n21), .ZN(n10) );
  NAND2_X1 U20 ( .A1(adder[12]), .A2(n19), .ZN(n11) );
  NAND2_X1 U21 ( .A1(n67), .A2(n50), .ZN(n12) );
  NAND2_X1 U22 ( .A1(data_out_b[15]), .A2(n21), .ZN(n13) );
  NAND2_X1 U23 ( .A1(adder[15]), .A2(n19), .ZN(n14) );
  NAND2_X1 U24 ( .A1(n67), .A2(f[15]), .ZN(n15) );
  NAND2_X1 U25 ( .A1(data_out_b[14]), .A2(n21), .ZN(n16) );
  NAND2_X1 U26 ( .A1(adder[14]), .A2(n19), .ZN(n17) );
  NAND2_X1 U27 ( .A1(n67), .A2(n48), .ZN(n18) );
  INV_X1 U28 ( .A(n23), .ZN(n21) );
  NAND2_X1 U29 ( .A1(n168), .A2(n20), .ZN(n246) );
  INV_X1 U30 ( .A(clear_acc), .ZN(n23) );
  OAI22_X1 U31 ( .A1(n188), .A2(n246), .B1(n69), .B2(n245), .ZN(n181) );
  OAI22_X1 U32 ( .A1(n189), .A2(n246), .B1(n70), .B2(n245), .ZN(n180) );
  OAI22_X1 U33 ( .A1(n190), .A2(n246), .B1(n71), .B2(n245), .ZN(n179) );
  OAI22_X1 U34 ( .A1(n191), .A2(n246), .B1(n72), .B2(n245), .ZN(n178) );
  OAI22_X1 U35 ( .A1(n192), .A2(n246), .B1(n220), .B2(n245), .ZN(n177) );
  OAI22_X1 U36 ( .A1(n193), .A2(n246), .B1(n221), .B2(n245), .ZN(n176) );
  OAI22_X1 U37 ( .A1(n194), .A2(n246), .B1(n222), .B2(n245), .ZN(n175) );
  INV_X1 U38 ( .A(n25), .ZN(n43) );
  INV_X1 U39 ( .A(wr_en_y), .ZN(n20) );
  INV_X1 U40 ( .A(n23), .ZN(n22) );
  INV_X1 U41 ( .A(m_ready), .ZN(n24) );
  NAND2_X1 U42 ( .A1(m_valid), .A2(n24), .ZN(n45) );
  OAI21_X1 U43 ( .B1(sel[4]), .B2(n79), .A(n45), .ZN(n168) );
  NAND2_X1 U44 ( .A1(clear_acc_delay), .A2(n244), .ZN(n25) );
  MUX2_X1 U45 ( .A(n26), .B(N44), .S(n43), .Z(n228) );
  MUX2_X1 U46 ( .A(n26), .B(N44), .S(n244), .Z(n207) );
  MUX2_X1 U47 ( .A(n27), .B(N43), .S(n43), .Z(n229) );
  MUX2_X1 U48 ( .A(n28), .B(N42), .S(n43), .Z(n230) );
  MUX2_X1 U49 ( .A(n29), .B(N41), .S(n43), .Z(n231) );
  MUX2_X1 U50 ( .A(n32), .B(N40), .S(n43), .Z(n232) );
  MUX2_X1 U51 ( .A(n33), .B(N39), .S(n43), .Z(n233) );
  MUX2_X1 U52 ( .A(n34), .B(N38), .S(n43), .Z(n234) );
  MUX2_X1 U53 ( .A(n34), .B(N38), .S(n244), .Z(n216) );
  MUX2_X1 U54 ( .A(n35), .B(N37), .S(n43), .Z(n235) );
  MUX2_X1 U55 ( .A(n36), .B(N36), .S(n43), .Z(n236) );
  MUX2_X1 U56 ( .A(n36), .B(N36), .S(n244), .Z(n214) );
  MUX2_X1 U57 ( .A(n37), .B(N35), .S(n43), .Z(n237) );
  MUX2_X1 U58 ( .A(n37), .B(N35), .S(n244), .Z(n213) );
  MUX2_X1 U59 ( .A(n38), .B(N34), .S(n43), .Z(n238) );
  MUX2_X1 U60 ( .A(n38), .B(N34), .S(n244), .Z(n212) );
  MUX2_X1 U61 ( .A(n39), .B(N33), .S(n43), .Z(n239) );
  MUX2_X1 U62 ( .A(n39), .B(N33), .S(n244), .Z(n211) );
  MUX2_X1 U63 ( .A(n40), .B(N32), .S(n43), .Z(n240) );
  MUX2_X1 U64 ( .A(n40), .B(N32), .S(n244), .Z(n210) );
  MUX2_X1 U65 ( .A(n41), .B(N31), .S(n43), .Z(n241) );
  MUX2_X1 U66 ( .A(n41), .B(N31), .S(n244), .Z(n209) );
  MUX2_X1 U67 ( .A(n42), .B(N30), .S(n43), .Z(n242) );
  MUX2_X1 U68 ( .A(n42), .B(N30), .S(n244), .Z(n208) );
  MUX2_X1 U69 ( .A(n44), .B(N29), .S(n43), .Z(n243) );
  MUX2_X1 U70 ( .A(n44), .B(N29), .S(n244), .Z(n201) );
  INV_X1 U71 ( .A(n45), .ZN(n46) );
  OAI21_X1 U72 ( .B1(n46), .B2(n9), .A(n23), .ZN(n47) );
  AOI222_X1 U73 ( .A1(data_out_b[11]), .A2(n21), .B1(adder[11]), .B2(n19), 
        .C1(n67), .C2(n51), .ZN(n52) );
  INV_X1 U74 ( .A(n52), .ZN(n80) );
  AOI222_X1 U75 ( .A1(data_out_b[10]), .A2(n21), .B1(adder[10]), .B2(n19), 
        .C1(n67), .C2(n53), .ZN(n54) );
  INV_X1 U76 ( .A(n54), .ZN(n81) );
  AOI222_X1 U77 ( .A1(data_out_b[8]), .A2(n21), .B1(adder[8]), .B2(n19), .C1(
        n67), .C2(f[8]), .ZN(n55) );
  INV_X1 U78 ( .A(n55), .ZN(n83) );
  AOI222_X1 U79 ( .A1(data_out_b[7]), .A2(n21), .B1(adder[7]), .B2(n19), .C1(
        n67), .C2(f[7]), .ZN(n56) );
  INV_X1 U80 ( .A(n56), .ZN(n85) );
  AOI222_X1 U81 ( .A1(data_out_b[6]), .A2(n21), .B1(adder[6]), .B2(n19), .C1(
        n67), .C2(f[6]), .ZN(n57) );
  INV_X1 U82 ( .A(n57), .ZN(n102) );
  AOI222_X1 U83 ( .A1(data_out_b[5]), .A2(n21), .B1(adder[5]), .B2(n19), .C1(
        n67), .C2(f[5]), .ZN(n58) );
  INV_X1 U84 ( .A(n58), .ZN(n111) );
  AOI222_X1 U85 ( .A1(data_out_b[4]), .A2(n21), .B1(adder[4]), .B2(n19), .C1(
        n67), .C2(f[4]), .ZN(n59) );
  INV_X1 U86 ( .A(n59), .ZN(n112) );
  AOI222_X1 U87 ( .A1(data_out_b[3]), .A2(n21), .B1(adder[3]), .B2(n19), .C1(
        n67), .C2(f[3]), .ZN(n60) );
  INV_X1 U88 ( .A(n60), .ZN(n113) );
  AOI222_X1 U89 ( .A1(data_out_b[2]), .A2(n22), .B1(adder[2]), .B2(n19), .C1(
        n67), .C2(n61), .ZN(n62) );
  INV_X1 U90 ( .A(n62), .ZN(n114) );
  AOI222_X1 U91 ( .A1(data_out_b[1]), .A2(n22), .B1(adder[1]), .B2(n19), .C1(
        n67), .C2(n63), .ZN(n64) );
  INV_X1 U92 ( .A(n64), .ZN(n166) );
  AOI222_X1 U93 ( .A1(data_out_b[0]), .A2(n22), .B1(adder[0]), .B2(n19), .C1(
        n67), .C2(n65), .ZN(n66) );
  INV_X1 U94 ( .A(n66), .ZN(n167) );
  AOI222_X1 U95 ( .A1(data_out_b[9]), .A2(n22), .B1(adder[9]), .B2(n19), .C1(
        n67), .C2(f[9]), .ZN(n68) );
  INV_X1 U96 ( .A(n68), .ZN(n82) );
  NOR4_X1 U97 ( .A1(n51), .A2(n50), .A3(n49), .A4(n48), .ZN(n76) );
  NOR4_X1 U98 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n53), .ZN(n75) );
  NAND4_X1 U99 ( .A1(n72), .A2(n71), .A3(n70), .A4(n69), .ZN(n73) );
  NOR4_X1 U100 ( .A1(n73), .A2(n65), .A3(n63), .A4(n61), .ZN(n74) );
  NAND3_X1 U101 ( .A1(n76), .A2(n75), .A3(n74), .ZN(n78) );
  NAND3_X1 U102 ( .A1(wr_en_y), .A2(n78), .A3(n77), .ZN(n245) );
  OAI22_X1 U103 ( .A1(n185), .A2(n246), .B1(n217), .B2(n245), .ZN(n184) );
  OAI22_X1 U104 ( .A1(n186), .A2(n246), .B1(n218), .B2(n245), .ZN(n183) );
  OAI22_X1 U105 ( .A1(n187), .A2(n246), .B1(n219), .B2(n245), .ZN(n182) );
  OAI22_X1 U106 ( .A1(n195), .A2(n246), .B1(n223), .B2(n245), .ZN(n174) );
  OAI22_X1 U107 ( .A1(n196), .A2(n246), .B1(n224), .B2(n245), .ZN(n173) );
  OAI22_X1 U108 ( .A1(n197), .A2(n246), .B1(n225), .B2(n245), .ZN(n172) );
  OAI22_X1 U109 ( .A1(n198), .A2(n246), .B1(n226), .B2(n245), .ZN(n171) );
  OAI22_X1 U110 ( .A1(n199), .A2(n246), .B1(n227), .B2(n245), .ZN(n170) );
  OAI22_X1 U111 ( .A1(n200), .A2(n246), .B1(n77), .B2(n245), .ZN(n169) );
  AND4_X1 U112 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n79)
         );
endmodule


module datapath_M16_N8_T16_P16_12_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n27, n29, n31,
         n32, n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50,
         n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n89, n90, n91, n93, n95, n96, n97, n98, n99, n103,
         n104, n105, n106, n107, n109, n111, n112, n113, n114, n115, n117,
         n119, n120, n122, n125, n127, n131, n133, n135, n139, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n237, n241, n243, n247, n249, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n418, n419, n420, n421, n422, n423, n424, n426,
         n427, n429, n430, n433, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U148 ( .A(n265), .B(n144), .Z(n145) );
  XOR2_X1 U150 ( .A(n271), .B(n146), .Z(n147) );
  XOR2_X1 U152 ( .A(n301), .B(n148), .Z(n149) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n292), .CI(n274), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n305), .B(n283), .CI(n253), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n269), .B(n319), .CO(n193), .S(n194) );
  FA_X1 U178 ( .A(n207), .B(n209), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n294), .B(n284), .CI(n276), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n306), .B(n270), .CI(n320), .CO(n201), .S(n202) );
  FA_X1 U181 ( .A(n208), .B(n213), .CI(n206), .CO(n203), .S(n204) );
  FA_X1 U182 ( .A(n215), .B(n307), .CI(n210), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n254), .B(n285), .CI(n295), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n255), .B(n309), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n287), .B(n323), .CO(n221), .S(n222) );
  FA_X1 U191 ( .A(n229), .B(n298), .CI(n226), .CO(n223), .S(n224) );
  FA_X1 U192 ( .A(n288), .B(n324), .CI(n310), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n311), .B(n325), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n300), .B(n326), .CI(n312), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  CLKBUF_X1 U414 ( .A(n7), .Z(n490) );
  XNOR2_X1 U415 ( .A(n198), .B(n491), .ZN(n196) );
  XNOR2_X1 U416 ( .A(n205), .B(n200), .ZN(n491) );
  BUF_X1 U417 ( .A(n23), .Z(n521) );
  BUF_X1 U418 ( .A(n23), .Z(n522) );
  BUF_X1 U419 ( .A(n107), .Z(n492) );
  INV_X1 U420 ( .A(n578), .ZN(n493) );
  INV_X1 U421 ( .A(n578), .ZN(n494) );
  BUF_X2 U422 ( .A(n9), .Z(n510) );
  NOR2_X1 U423 ( .A1(n228), .A2(n231), .ZN(n105) );
  AOI21_X1 U424 ( .B1(n554), .B2(n112), .A(n109), .ZN(n107) );
  NAND2_X1 U425 ( .A1(n176), .A2(n185), .ZN(n79) );
  OR2_X1 U426 ( .A1(n329), .A2(n258), .ZN(n495) );
  XNOR2_X1 U427 ( .A(n575), .B(a[2]), .ZN(n551) );
  BUF_X2 U428 ( .A(n21), .Z(n562) );
  BUF_X1 U429 ( .A(n565), .Z(n549) );
  CLKBUF_X1 U430 ( .A(n29), .Z(n496) );
  NAND2_X1 U431 ( .A1(n429), .A2(n27), .ZN(n29) );
  INV_X1 U432 ( .A(n548), .ZN(n497) );
  INV_X1 U433 ( .A(n548), .ZN(n16) );
  CLKBUF_X1 U434 ( .A(n25), .Z(n498) );
  BUF_X2 U435 ( .A(n9), .Z(n563) );
  NAND2_X1 U436 ( .A1(n533), .A2(n563), .ZN(n499) );
  NAND2_X1 U437 ( .A1(n551), .A2(n532), .ZN(n500) );
  INV_X1 U438 ( .A(n572), .ZN(n501) );
  XNOR2_X1 U439 ( .A(n166), .B(n502), .ZN(n164) );
  XNOR2_X1 U440 ( .A(n177), .B(n168), .ZN(n502) );
  NOR2_X1 U441 ( .A1(n196), .A2(n203), .ZN(n85) );
  NAND2_X1 U442 ( .A1(n198), .A2(n205), .ZN(n503) );
  NAND2_X1 U443 ( .A1(n198), .A2(n200), .ZN(n504) );
  NAND2_X1 U444 ( .A1(n205), .A2(n200), .ZN(n505) );
  NAND3_X1 U445 ( .A1(n503), .A2(n504), .A3(n505), .ZN(n195) );
  OR2_X1 U446 ( .A1(n196), .A2(n203), .ZN(n506) );
  INV_X2 U447 ( .A(n573), .ZN(n571) );
  XNOR2_X1 U448 ( .A(n13), .B(a[6]), .ZN(n21) );
  NAND2_X1 U449 ( .A1(n166), .A2(n177), .ZN(n507) );
  NAND2_X1 U450 ( .A1(n166), .A2(n168), .ZN(n508) );
  NAND2_X1 U451 ( .A1(n177), .A2(n168), .ZN(n509) );
  NAND3_X1 U452 ( .A1(n507), .A2(n508), .A3(n509), .ZN(n163) );
  NOR2_X1 U453 ( .A1(n186), .A2(n195), .ZN(n511) );
  NOR2_X1 U454 ( .A1(n186), .A2(n195), .ZN(n82) );
  BUF_X1 U455 ( .A(n580), .Z(n512) );
  OAI21_X1 U456 ( .B1(n91), .B2(n89), .A(n90), .ZN(n513) );
  INV_X1 U457 ( .A(n31), .ZN(n514) );
  INV_X1 U458 ( .A(n31), .ZN(n515) );
  OR2_X1 U459 ( .A1(n516), .A2(n548), .ZN(n18) );
  XNOR2_X1 U460 ( .A(n576), .B(a[4]), .ZN(n516) );
  OR2_X2 U461 ( .A1(n516), .A2(n548), .ZN(n517) );
  OR2_X1 U462 ( .A1(n528), .A2(n546), .ZN(n34) );
  AOI21_X1 U463 ( .B1(n566), .B2(n80), .A(n81), .ZN(n544) );
  XNOR2_X1 U464 ( .A(n564), .B(n518), .ZN(product[9]) );
  AND2_X1 U465 ( .A1(n542), .A2(n90), .ZN(n518) );
  OR2_X2 U466 ( .A1(n224), .A2(n227), .ZN(n557) );
  XNOR2_X1 U467 ( .A(n45), .B(n519), .ZN(product[12]) );
  AND2_X1 U468 ( .A1(n529), .A2(n79), .ZN(n519) );
  NAND2_X2 U469 ( .A1(n433), .A2(n570), .ZN(n520) );
  NAND2_X1 U470 ( .A1(n433), .A2(n570), .ZN(n6) );
  BUF_X1 U471 ( .A(n23), .Z(n523) );
  XOR2_X1 U472 ( .A(n580), .B(a[8]), .Z(n27) );
  INV_X1 U473 ( .A(n580), .ZN(n579) );
  INV_X1 U474 ( .A(n581), .ZN(n524) );
  INV_X1 U475 ( .A(n575), .ZN(n525) );
  INV_X1 U476 ( .A(n575), .ZN(n526) );
  NAND2_X1 U477 ( .A1(n430), .A2(n21), .ZN(n23) );
  INV_X1 U478 ( .A(n525), .ZN(n527) );
  XNOR2_X1 U479 ( .A(n582), .B(a[10]), .ZN(n528) );
  OR2_X1 U480 ( .A1(n176), .A2(n185), .ZN(n529) );
  INV_X1 U481 ( .A(n515), .ZN(n530) );
  INV_X1 U482 ( .A(n515), .ZN(n531) );
  XOR2_X1 U483 ( .A(n573), .B(a[2]), .Z(n532) );
  XOR2_X1 U484 ( .A(n490), .B(a[2]), .Z(n533) );
  XNOR2_X1 U485 ( .A(n580), .B(a[6]), .ZN(n430) );
  NAND2_X1 U486 ( .A1(n533), .A2(n532), .ZN(n534) );
  NAND2_X1 U487 ( .A1(n551), .A2(n532), .ZN(n12) );
  BUF_X2 U488 ( .A(n570), .Z(n535) );
  INV_X1 U489 ( .A(n249), .ZN(n570) );
  CLKBUF_X1 U490 ( .A(n45), .Z(n536) );
  INV_X1 U491 ( .A(n512), .ZN(n537) );
  XOR2_X1 U492 ( .A(n573), .B(a[2]), .Z(n9) );
  BUF_X2 U493 ( .A(n27), .Z(n538) );
  CLKBUF_X1 U494 ( .A(n104), .Z(n539) );
  CLKBUF_X1 U495 ( .A(n499), .Z(n540) );
  INV_X1 U496 ( .A(n578), .ZN(n576) );
  INV_X1 U497 ( .A(n545), .ZN(n103) );
  BUF_X1 U498 ( .A(n512), .Z(n541) );
  OR2_X1 U499 ( .A1(n204), .A2(n211), .ZN(n542) );
  AOI21_X1 U500 ( .B1(n557), .B2(n104), .A(n545), .ZN(n543) );
  BUF_X1 U501 ( .A(n567), .Z(n564) );
  AOI21_X1 U502 ( .B1(n566), .B2(n80), .A(n81), .ZN(n45) );
  INV_X1 U503 ( .A(n546), .ZN(n32) );
  AND2_X2 U504 ( .A1(n224), .A2(n227), .ZN(n545) );
  XNOR2_X1 U505 ( .A(n581), .B(a[10]), .ZN(n546) );
  NOR2_X2 U506 ( .A1(n164), .A2(n175), .ZN(n75) );
  XNOR2_X1 U507 ( .A(n573), .B(n249), .ZN(n433) );
  XNOR2_X1 U508 ( .A(n513), .B(n547), .ZN(product[10]) );
  NAND2_X1 U509 ( .A1(n506), .A2(n86), .ZN(n547) );
  XNOR2_X1 U510 ( .A(n575), .B(a[4]), .ZN(n548) );
  CLKBUF_X1 U511 ( .A(n99), .Z(n550) );
  OR2_X1 U512 ( .A1(n152), .A2(n163), .ZN(n552) );
  OR2_X1 U513 ( .A1(n212), .A2(n217), .ZN(n553) );
  BUF_X1 U514 ( .A(n43), .Z(n569) );
  AOI21_X1 U515 ( .B1(n74), .B2(n552), .A(n67), .ZN(n65) );
  INV_X1 U516 ( .A(n69), .ZN(n67) );
  INV_X1 U517 ( .A(n74), .ZN(n72) );
  NAND2_X1 U518 ( .A1(n552), .A2(n69), .ZN(n47) );
  INV_X1 U519 ( .A(n73), .ZN(n71) );
  NOR2_X1 U520 ( .A1(n75), .A2(n78), .ZN(n73) );
  NAND2_X1 U521 ( .A1(n553), .A2(n95), .ZN(n53) );
  NAND2_X1 U522 ( .A1(n127), .A2(n83), .ZN(n50) );
  NAND2_X1 U523 ( .A1(n125), .A2(n76), .ZN(n48) );
  NAND2_X1 U524 ( .A1(n152), .A2(n163), .ZN(n69) );
  INV_X1 U525 ( .A(n95), .ZN(n93) );
  NAND2_X1 U526 ( .A1(n103), .A2(n557), .ZN(n55) );
  NOR2_X1 U527 ( .A1(n176), .A2(n185), .ZN(n78) );
  AOI21_X1 U528 ( .B1(n555), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U529 ( .A(n119), .ZN(n117) );
  INV_X1 U530 ( .A(n122), .ZN(n120) );
  XNOR2_X1 U531 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U532 ( .A1(n556), .A2(n62), .ZN(n46) );
  NAND2_X1 U533 ( .A1(n73), .A2(n552), .ZN(n64) );
  XNOR2_X1 U534 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U535 ( .A1(n555), .A2(n119), .ZN(n59) );
  NAND2_X1 U536 ( .A1(n186), .A2(n195), .ZN(n83) );
  NAND2_X1 U537 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U538 ( .A1(n204), .A2(n211), .ZN(n90) );
  NAND2_X1 U539 ( .A1(n212), .A2(n217), .ZN(n95) );
  NAND2_X1 U540 ( .A1(n135), .A2(n114), .ZN(n58) );
  INV_X1 U541 ( .A(n21), .ZN(n243) );
  NAND2_X1 U542 ( .A1(n131), .A2(n98), .ZN(n54) );
  INV_X1 U543 ( .A(n97), .ZN(n131) );
  NAND2_X1 U544 ( .A1(n554), .A2(n111), .ZN(n57) );
  NAND2_X1 U545 ( .A1(n133), .A2(n106), .ZN(n56) );
  INV_X1 U546 ( .A(n105), .ZN(n133) );
  OR2_X1 U547 ( .A1(n232), .A2(n233), .ZN(n554) );
  NOR2_X1 U548 ( .A1(n218), .A2(n223), .ZN(n97) );
  OR2_X1 U549 ( .A1(n328), .A2(n314), .ZN(n555) );
  OR2_X1 U550 ( .A1(n151), .A2(n139), .ZN(n556) );
  NAND2_X1 U551 ( .A1(n218), .A2(n223), .ZN(n98) );
  INV_X1 U552 ( .A(n37), .ZN(n237) );
  NAND2_X1 U553 ( .A1(n232), .A2(n233), .ZN(n111) );
  NAND2_X1 U554 ( .A1(n228), .A2(n231), .ZN(n106) );
  INV_X1 U555 ( .A(n41), .ZN(n235) );
  AND2_X1 U556 ( .A1(n495), .A2(n122), .ZN(product[1]) );
  XNOR2_X1 U557 ( .A(n582), .B(a[12]), .ZN(n37) );
  XNOR2_X1 U558 ( .A(n584), .B(a[14]), .ZN(n41) );
  OR2_X1 U559 ( .A1(n568), .A2(n527), .ZN(n392) );
  XNOR2_X1 U560 ( .A(n524), .B(n568), .ZN(n352) );
  OAI22_X1 U561 ( .A1(n39), .A2(n336), .B1(n37), .B2(n335), .ZN(n263) );
  AND2_X1 U562 ( .A1(n569), .A2(n548), .ZN(n300) );
  XNOR2_X1 U563 ( .A(n155), .B(n559), .ZN(n139) );
  XNOR2_X1 U564 ( .A(n153), .B(n141), .ZN(n559) );
  XNOR2_X1 U565 ( .A(n157), .B(n560), .ZN(n141) );
  XNOR2_X1 U566 ( .A(n145), .B(n143), .ZN(n560) );
  OAI22_X1 U567 ( .A1(n42), .A2(n587), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U568 ( .A1(n568), .A2(n587), .ZN(n332) );
  XNOR2_X1 U569 ( .A(n531), .B(n568), .ZN(n343) );
  XOR2_X1 U570 ( .A(n498), .B(a[8]), .Z(n429) );
  XNOR2_X1 U571 ( .A(n159), .B(n561), .ZN(n142) );
  XNOR2_X1 U572 ( .A(n315), .B(n261), .ZN(n561) );
  XNOR2_X1 U573 ( .A(n577), .B(n568), .ZN(n376) );
  XNOR2_X1 U574 ( .A(n584), .B(n568), .ZN(n336) );
  NAND2_X1 U575 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U576 ( .A(n584), .B(a[12]), .Z(n427) );
  AND2_X1 U577 ( .A1(n569), .A2(n237), .ZN(n264) );
  AND2_X1 U578 ( .A1(n569), .A2(n243), .ZN(n288) );
  AND2_X1 U579 ( .A1(n569), .A2(n546), .ZN(n270) );
  AND2_X1 U580 ( .A1(n569), .A2(n235), .ZN(n260) );
  OAI22_X1 U581 ( .A1(n39), .A2(n335), .B1(n37), .B2(n334), .ZN(n262) );
  INV_X1 U582 ( .A(n25), .ZN(n581) );
  AND2_X1 U583 ( .A1(n569), .A2(n241), .ZN(n278) );
  INV_X1 U584 ( .A(n13), .ZN(n578) );
  NAND2_X1 U585 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U586 ( .A(n586), .B(a[14]), .Z(n426) );
  XNOR2_X1 U587 ( .A(n537), .B(n568), .ZN(n363) );
  OAI22_X1 U588 ( .A1(n39), .A2(n585), .B1(n337), .B2(n37), .ZN(n252) );
  OR2_X1 U589 ( .A1(n568), .A2(n585), .ZN(n337) );
  AND2_X1 U590 ( .A1(n569), .A2(n247), .ZN(n314) );
  AND2_X1 U591 ( .A1(n569), .A2(n249), .ZN(product[0]) );
  OR2_X1 U592 ( .A1(n568), .A2(n541), .ZN(n364) );
  OR2_X1 U593 ( .A1(n568), .A2(n514), .ZN(n344) );
  OR2_X1 U594 ( .A1(n568), .A2(n581), .ZN(n353) );
  OR2_X1 U595 ( .A1(n568), .A2(n578), .ZN(n377) );
  XNOR2_X1 U596 ( .A(n537), .B(b[9]), .ZN(n354) );
  OAI22_X1 U597 ( .A1(n39), .A2(n334), .B1(n37), .B2(n333), .ZN(n261) );
  XNOR2_X1 U598 ( .A(n584), .B(n422), .ZN(n333) );
  XNOR2_X1 U599 ( .A(n494), .B(b[11]), .ZN(n365) );
  XNOR2_X1 U600 ( .A(n584), .B(n423), .ZN(n334) );
  XNOR2_X1 U601 ( .A(n584), .B(n424), .ZN(n335) );
  OAI22_X1 U602 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U603 ( .A(n586), .B(n424), .ZN(n330) );
  XNOR2_X1 U604 ( .A(n586), .B(n568), .ZN(n331) );
  XNOR2_X1 U605 ( .A(n524), .B(n418), .ZN(n345) );
  XNOR2_X1 U606 ( .A(n530), .B(n420), .ZN(n338) );
  XNOR2_X1 U607 ( .A(n574), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U608 ( .A(n579), .B(n424), .ZN(n362) );
  XNOR2_X1 U609 ( .A(n498), .B(n424), .ZN(n351) );
  XNOR2_X1 U610 ( .A(n531), .B(n424), .ZN(n342) );
  XNOR2_X1 U611 ( .A(n530), .B(n422), .ZN(n340) );
  XNOR2_X1 U612 ( .A(n530), .B(n423), .ZN(n341) );
  XNOR2_X1 U613 ( .A(n531), .B(n421), .ZN(n339) );
  XNOR2_X1 U614 ( .A(n525), .B(n418), .ZN(n384) );
  XNOR2_X1 U615 ( .A(n526), .B(n419), .ZN(n385) );
  XNOR2_X1 U616 ( .A(n525), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U617 ( .A(n526), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U618 ( .A(n526), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U619 ( .A(n525), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U620 ( .A(n574), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U621 ( .A(n493), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U622 ( .A(n494), .B(n418), .ZN(n369) );
  XNOR2_X1 U623 ( .A(n493), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U624 ( .A(n493), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U625 ( .A(n579), .B(n423), .ZN(n361) );
  XNOR2_X1 U626 ( .A(n579), .B(n422), .ZN(n360) );
  XNOR2_X1 U627 ( .A(n524), .B(n422), .ZN(n349) );
  XNOR2_X1 U628 ( .A(n498), .B(n423), .ZN(n350) );
  XNOR2_X1 U629 ( .A(n571), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U630 ( .A(n571), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U631 ( .A(n571), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U632 ( .A(n571), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U633 ( .A(n579), .B(n420), .ZN(n358) );
  XNOR2_X1 U634 ( .A(n579), .B(n421), .ZN(n359) );
  XNOR2_X1 U635 ( .A(n524), .B(n420), .ZN(n347) );
  XNOR2_X1 U636 ( .A(n498), .B(n421), .ZN(n348) );
  XNOR2_X1 U637 ( .A(n537), .B(n418), .ZN(n356) );
  XNOR2_X1 U638 ( .A(n537), .B(n419), .ZN(n357) );
  XNOR2_X1 U639 ( .A(n524), .B(n419), .ZN(n346) );
  XNOR2_X1 U640 ( .A(n537), .B(b[8]), .ZN(n355) );
  XNOR2_X1 U641 ( .A(n571), .B(b[15]), .ZN(n393) );
  OAI22_X1 U642 ( .A1(n520), .A2(n395), .B1(n394), .B2(n535), .ZN(n316) );
  OAI22_X1 U643 ( .A1(n520), .A2(n394), .B1(n393), .B2(n535), .ZN(n315) );
  OAI22_X1 U644 ( .A1(n520), .A2(n401), .B1(n400), .B2(n535), .ZN(n322) );
  OAI22_X1 U645 ( .A1(n520), .A2(n400), .B1(n399), .B2(n535), .ZN(n321) );
  OAI22_X1 U646 ( .A1(n520), .A2(n407), .B1(n406), .B2(n535), .ZN(n328) );
  OAI22_X1 U647 ( .A1(n520), .A2(n406), .B1(n405), .B2(n535), .ZN(n327) );
  OAI22_X1 U648 ( .A1(n6), .A2(n402), .B1(n401), .B2(n535), .ZN(n323) );
  OAI22_X1 U649 ( .A1(n6), .A2(n404), .B1(n403), .B2(n535), .ZN(n325) );
  OAI22_X1 U650 ( .A1(n520), .A2(n398), .B1(n397), .B2(n535), .ZN(n319) );
  OAI22_X1 U651 ( .A1(n520), .A2(n397), .B1(n396), .B2(n535), .ZN(n318) );
  OAI22_X1 U652 ( .A1(n520), .A2(n396), .B1(n395), .B2(n535), .ZN(n317) );
  OAI22_X1 U653 ( .A1(n520), .A2(n408), .B1(n407), .B2(n535), .ZN(n329) );
  OAI22_X1 U654 ( .A1(n403), .A2(n6), .B1(n402), .B2(n570), .ZN(n324) );
  OAI22_X1 U655 ( .A1(n520), .A2(n399), .B1(n398), .B2(n535), .ZN(n320) );
  OAI22_X1 U656 ( .A1(n6), .A2(n405), .B1(n404), .B2(n535), .ZN(n326) );
  XNOR2_X1 U657 ( .A(n57), .B(n112), .ZN(product[4]) );
  XNOR2_X1 U658 ( .A(n525), .B(n568), .ZN(n391) );
  XNOR2_X1 U659 ( .A(n574), .B(n420), .ZN(n386) );
  XNOR2_X1 U660 ( .A(n574), .B(n422), .ZN(n388) );
  XNOR2_X1 U661 ( .A(n526), .B(n421), .ZN(n387) );
  XNOR2_X1 U662 ( .A(n574), .B(n423), .ZN(n389) );
  XNOR2_X1 U663 ( .A(n526), .B(n424), .ZN(n390) );
  INV_X1 U664 ( .A(n19), .ZN(n580) );
  INV_X1 U665 ( .A(n75), .ZN(n125) );
  OAI21_X1 U666 ( .B1(n75), .B2(n79), .A(n76), .ZN(n74) );
  NAND2_X1 U667 ( .A1(n164), .A2(n175), .ZN(n76) );
  OAI22_X1 U668 ( .A1(n34), .A2(n339), .B1(n338), .B2(n32), .ZN(n265) );
  OAI22_X1 U669 ( .A1(n34), .A2(n340), .B1(n339), .B2(n32), .ZN(n266) );
  OAI22_X1 U670 ( .A1(n34), .A2(n342), .B1(n341), .B2(n32), .ZN(n268) );
  OAI22_X1 U671 ( .A1(n34), .A2(n343), .B1(n342), .B2(n32), .ZN(n269) );
  OAI22_X1 U672 ( .A1(n34), .A2(n341), .B1(n340), .B2(n32), .ZN(n267) );
  OAI22_X1 U673 ( .A1(n34), .A2(n514), .B1(n344), .B2(n32), .ZN(n253) );
  AOI21_X1 U674 ( .B1(n557), .B2(n104), .A(n545), .ZN(n99) );
  XNOR2_X1 U675 ( .A(n84), .B(n50), .ZN(product[11]) );
  XNOR2_X1 U676 ( .A(n77), .B(n48), .ZN(product[13]) );
  OAI21_X1 U677 ( .B1(n543), .B2(n97), .A(n98), .ZN(n565) );
  AOI21_X1 U678 ( .B1(n96), .B2(n553), .A(n93), .ZN(n567) );
  OAI21_X1 U679 ( .B1(n99), .B2(n97), .A(n98), .ZN(n96) );
  INV_X1 U680 ( .A(n111), .ZN(n109) );
  INV_X1 U681 ( .A(n1), .ZN(n573) );
  INV_X1 U682 ( .A(n7), .ZN(n575) );
  INV_X1 U683 ( .A(n511), .ZN(n127) );
  NOR2_X1 U684 ( .A1(n511), .A2(n85), .ZN(n80) );
  OAI21_X1 U685 ( .B1(n82), .B2(n86), .A(n83), .ZN(n81) );
  OAI22_X1 U686 ( .A1(n522), .A2(n362), .B1(n361), .B2(n562), .ZN(n286) );
  OAI22_X1 U687 ( .A1(n523), .A2(n358), .B1(n357), .B2(n562), .ZN(n282) );
  OAI22_X1 U688 ( .A1(n522), .A2(n356), .B1(n355), .B2(n562), .ZN(n280) );
  OAI22_X1 U689 ( .A1(n523), .A2(n541), .B1(n364), .B2(n562), .ZN(n255) );
  OAI22_X1 U690 ( .A1(n521), .A2(n363), .B1(n362), .B2(n562), .ZN(n287) );
  OAI22_X1 U691 ( .A1(n523), .A2(n357), .B1(n356), .B2(n562), .ZN(n281) );
  OAI22_X1 U692 ( .A1(n522), .A2(n360), .B1(n359), .B2(n562), .ZN(n284) );
  OAI22_X1 U693 ( .A1(n523), .A2(n361), .B1(n360), .B2(n562), .ZN(n285) );
  OAI22_X1 U694 ( .A1(n522), .A2(n355), .B1(n354), .B2(n562), .ZN(n279) );
  OAI22_X1 U695 ( .A1(n521), .A2(n359), .B1(n358), .B2(n562), .ZN(n283) );
  NOR2_X1 U696 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U697 ( .A1(n496), .A2(n346), .B1(n345), .B2(n538), .ZN(n271) );
  OAI22_X1 U698 ( .A1(n29), .A2(n350), .B1(n349), .B2(n538), .ZN(n275) );
  OAI22_X1 U699 ( .A1(n496), .A2(n347), .B1(n346), .B2(n538), .ZN(n272) );
  OAI22_X1 U700 ( .A1(n496), .A2(n348), .B1(n347), .B2(n538), .ZN(n273) );
  OAI22_X1 U701 ( .A1(n29), .A2(n349), .B1(n348), .B2(n538), .ZN(n274) );
  OAI22_X1 U702 ( .A1(n29), .A2(n351), .B1(n350), .B2(n538), .ZN(n276) );
  OAI22_X1 U703 ( .A1(n29), .A2(n581), .B1(n353), .B2(n538), .ZN(n254) );
  INV_X1 U704 ( .A(n27), .ZN(n241) );
  OAI22_X1 U705 ( .A1(n29), .A2(n352), .B1(n351), .B2(n538), .ZN(n277) );
  XNOR2_X1 U706 ( .A(n549), .B(n53), .ZN(product[8]) );
  XOR2_X1 U707 ( .A(n550), .B(n54), .Z(product[7]) );
  OAI22_X1 U708 ( .A1(n520), .A2(n501), .B1(n409), .B2(n535), .ZN(n258) );
  OR2_X1 U709 ( .A1(n568), .A2(n501), .ZN(n409) );
  INV_X1 U710 ( .A(n573), .ZN(n572) );
  XNOR2_X1 U711 ( .A(n70), .B(n47), .ZN(product[14]) );
  XNOR2_X1 U712 ( .A(n494), .B(n424), .ZN(n375) );
  XNOR2_X1 U713 ( .A(n493), .B(n423), .ZN(n374) );
  XNOR2_X1 U714 ( .A(n577), .B(n421), .ZN(n372) );
  XNOR2_X1 U715 ( .A(n577), .B(n422), .ZN(n373) );
  XNOR2_X1 U716 ( .A(n577), .B(n419), .ZN(n370) );
  XNOR2_X1 U717 ( .A(n494), .B(n420), .ZN(n371) );
  OAI21_X1 U718 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  INV_X1 U719 ( .A(n113), .ZN(n135) );
  OAI21_X1 U720 ( .B1(n567), .B2(n89), .A(n90), .ZN(n566) );
  AOI21_X1 U721 ( .B1(n565), .B2(n553), .A(n93), .ZN(n91) );
  OAI21_X1 U722 ( .B1(n87), .B2(n85), .A(n86), .ZN(n84) );
  XNOR2_X1 U723 ( .A(n55), .B(n539), .ZN(product[6]) );
  NAND2_X1 U724 ( .A1(n328), .A2(n314), .ZN(n119) );
  NAND2_X1 U725 ( .A1(n151), .A2(n139), .ZN(n62) );
  OAI22_X1 U726 ( .A1(n517), .A2(n370), .B1(n369), .B2(n497), .ZN(n293) );
  OAI22_X1 U727 ( .A1(n517), .A2(n375), .B1(n374), .B2(n497), .ZN(n298) );
  OAI22_X1 U728 ( .A1(n517), .A2(n367), .B1(n366), .B2(n497), .ZN(n290) );
  OAI22_X1 U729 ( .A1(n18), .A2(n368), .B1(n367), .B2(n497), .ZN(n291) );
  OAI22_X1 U730 ( .A1(n18), .A2(n372), .B1(n371), .B2(n16), .ZN(n295) );
  OAI22_X1 U731 ( .A1(n517), .A2(n369), .B1(n368), .B2(n16), .ZN(n292) );
  OAI22_X1 U732 ( .A1(n18), .A2(n374), .B1(n373), .B2(n16), .ZN(n297) );
  OAI22_X1 U733 ( .A1(n517), .A2(n373), .B1(n372), .B2(n16), .ZN(n296) );
  OAI22_X1 U734 ( .A1(n18), .A2(n371), .B1(n370), .B2(n16), .ZN(n294) );
  OAI22_X1 U735 ( .A1(n517), .A2(n578), .B1(n377), .B2(n497), .ZN(n256) );
  OAI22_X1 U736 ( .A1(n517), .A2(n376), .B1(n375), .B2(n497), .ZN(n299) );
  OAI22_X1 U737 ( .A1(n18), .A2(n366), .B1(n365), .B2(n16), .ZN(n289) );
  INV_X1 U738 ( .A(n513), .ZN(n87) );
  OAI21_X1 U739 ( .B1(n64), .B2(n536), .A(n65), .ZN(n63) );
  OAI21_X1 U740 ( .B1(n544), .B2(n78), .A(n79), .ZN(n77) );
  OAI21_X1 U741 ( .B1(n71), .B2(n544), .A(n72), .ZN(n70) );
  XNOR2_X1 U742 ( .A(n571), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U743 ( .A(n572), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U744 ( .A(n572), .B(n418), .ZN(n401) );
  XNOR2_X1 U745 ( .A(n572), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U746 ( .A(n572), .B(n419), .ZN(n402) );
  XNOR2_X1 U747 ( .A(n571), .B(n568), .ZN(n408) );
  XNOR2_X1 U748 ( .A(n572), .B(n420), .ZN(n403) );
  XNOR2_X1 U749 ( .A(n571), .B(n421), .ZN(n404) );
  XNOR2_X1 U750 ( .A(n571), .B(n422), .ZN(n405) );
  XNOR2_X1 U751 ( .A(n571), .B(n424), .ZN(n407) );
  XNOR2_X1 U752 ( .A(n571), .B(n423), .ZN(n406) );
  OAI21_X1 U753 ( .B1(n105), .B2(n107), .A(n106), .ZN(n104) );
  NOR2_X1 U754 ( .A1(n234), .A2(n257), .ZN(n113) );
  XOR2_X1 U755 ( .A(n56), .B(n492), .Z(product[5]) );
  XOR2_X1 U756 ( .A(n58), .B(n115), .Z(product[3]) );
  NAND2_X1 U757 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI22_X1 U758 ( .A1(n540), .A2(n379), .B1(n378), .B2(n510), .ZN(n301) );
  OAI22_X1 U759 ( .A1(n540), .A2(n380), .B1(n379), .B2(n510), .ZN(n302) );
  OAI22_X1 U760 ( .A1(n540), .A2(n385), .B1(n384), .B2(n510), .ZN(n307) );
  OAI22_X1 U761 ( .A1(n534), .A2(n382), .B1(n381), .B2(n510), .ZN(n304) );
  OAI22_X1 U762 ( .A1(n499), .A2(n381), .B1(n380), .B2(n510), .ZN(n303) );
  NAND2_X1 U763 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U764 ( .A1(n12), .A2(n383), .B1(n382), .B2(n563), .ZN(n305) );
  OAI22_X1 U765 ( .A1(n500), .A2(n384), .B1(n383), .B2(n563), .ZN(n306) );
  OAI22_X1 U766 ( .A1(n499), .A2(n386), .B1(n385), .B2(n510), .ZN(n308) );
  OAI22_X1 U767 ( .A1(n534), .A2(n387), .B1(n386), .B2(n510), .ZN(n309) );
  OAI22_X1 U768 ( .A1(n534), .A2(n527), .B1(n392), .B2(n510), .ZN(n257) );
  OAI22_X1 U769 ( .A1(n500), .A2(n389), .B1(n388), .B2(n563), .ZN(n311) );
  OAI22_X1 U770 ( .A1(n12), .A2(n388), .B1(n387), .B2(n563), .ZN(n310) );
  OAI22_X1 U771 ( .A1(n500), .A2(n390), .B1(n389), .B2(n510), .ZN(n312) );
  INV_X1 U772 ( .A(n510), .ZN(n247) );
  OAI22_X1 U773 ( .A1(n534), .A2(n391), .B1(n390), .B2(n510), .ZN(n313) );
  BUF_X4 U774 ( .A(n43), .Z(n568) );
  INV_X1 U775 ( .A(n575), .ZN(n574) );
  INV_X1 U776 ( .A(n578), .ZN(n577) );
  INV_X1 U777 ( .A(n583), .ZN(n582) );
  INV_X1 U778 ( .A(n31), .ZN(n583) );
  INV_X1 U779 ( .A(n585), .ZN(n584) );
  INV_X1 U780 ( .A(n36), .ZN(n585) );
  INV_X1 U781 ( .A(n587), .ZN(n586) );
  INV_X1 U782 ( .A(n40), .ZN(n587) );
  XOR2_X1 U783 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U784 ( .A(n289), .B(n279), .Z(n146) );
  XOR2_X1 U785 ( .A(n149), .B(n147), .Z(n144) );
endmodule


module datapath_M16_N8_T16_P16_12_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n20, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n44, n45, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n65, n67, n68, n69, n70,
         n71, n73, n75, n76, n77, n78, n79, n81, n83, n84, n86, n88, n89, n90,
         n91, n95, n96, n98, n100, n157, n158, n159, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178;

  XNOR2_X1 U122 ( .A(n170), .B(n6), .ZN(SUM[11]) );
  NOR2_X1 U123 ( .A1(A[12]), .A2(B[12]), .ZN(n157) );
  NOR2_X1 U124 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  INV_X1 U125 ( .A(n167), .ZN(n49) );
  OR2_X1 U126 ( .A1(A[8]), .A2(B[8]), .ZN(n158) );
  OR2_X1 U127 ( .A1(A[15]), .A2(B[15]), .ZN(n159) );
  AND2_X1 U128 ( .A1(n172), .A2(n86), .ZN(SUM[0]) );
  INV_X1 U129 ( .A(n51), .ZN(n161) );
  CLKBUF_X1 U130 ( .A(n35), .Z(n162) );
  NOR2_X1 U131 ( .A1(A[8]), .A2(B[8]), .ZN(n163) );
  NOR2_X1 U132 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  XNOR2_X1 U133 ( .A(n45), .B(n164), .ZN(SUM[10]) );
  AND2_X1 U134 ( .A1(n177), .A2(n44), .ZN(n164) );
  OR2_X1 U135 ( .A1(A[9]), .A2(B[9]), .ZN(n165) );
  OAI21_X1 U136 ( .B1(n32), .B2(n36), .A(n33), .ZN(n166) );
  AND2_X2 U137 ( .A1(A[9]), .A2(B[9]), .ZN(n167) );
  NOR2_X1 U138 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  AOI21_X1 U139 ( .B1(n177), .B2(n167), .A(n178), .ZN(n168) );
  AOI21_X1 U140 ( .B1(n38), .B2(n30), .A(n166), .ZN(n169) );
  OAI21_X1 U141 ( .B1(n51), .B2(n39), .A(n168), .ZN(n170) );
  AOI21_X1 U142 ( .B1(n52), .B2(n60), .A(n53), .ZN(n171) );
  AOI21_X1 U143 ( .B1(n38), .B2(n30), .A(n31), .ZN(n1) );
  INV_X1 U144 ( .A(n24), .ZN(n22) );
  NOR2_X1 U145 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  NAND2_X1 U146 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  OR2_X1 U147 ( .A1(A[0]), .A2(B[0]), .ZN(n172) );
  INV_X1 U148 ( .A(n171), .ZN(n50) );
  INV_X1 U149 ( .A(n170), .ZN(n37) );
  OAI21_X1 U150 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  AOI21_X1 U151 ( .B1(n175), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U152 ( .A(n83), .ZN(n81) );
  OAI21_X1 U153 ( .B1(n39), .B2(n171), .A(n40), .ZN(n38) );
  AOI21_X1 U154 ( .B1(n177), .B2(n167), .A(n178), .ZN(n40) );
  OAI21_X1 U155 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  OR2_X1 U156 ( .A1(n25), .A2(n28), .ZN(n173) );
  AOI21_X1 U157 ( .B1(n176), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U158 ( .A(n75), .ZN(n73) );
  AOI21_X1 U159 ( .B1(n174), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U160 ( .A(n67), .ZN(n65) );
  AOI21_X1 U161 ( .B1(n161), .B2(n165), .A(n167), .ZN(n45) );
  OAI21_X1 U162 ( .B1(n25), .B2(n29), .A(n26), .ZN(n24) );
  INV_X1 U163 ( .A(n86), .ZN(n84) );
  OAI21_X1 U164 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  NAND2_X1 U165 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U166 ( .A(n69), .ZN(n98) );
  INV_X1 U167 ( .A(n157), .ZN(n90) );
  NAND2_X1 U168 ( .A1(n165), .A2(n49), .ZN(n8) );
  NAND2_X1 U169 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U170 ( .A(n57), .ZN(n95) );
  NAND2_X1 U171 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U172 ( .A(n77), .ZN(n100) );
  NAND2_X1 U173 ( .A1(n55), .A2(n158), .ZN(n9) );
  NAND2_X1 U174 ( .A1(n174), .A2(n67), .ZN(n12) );
  NAND2_X1 U175 ( .A1(n176), .A2(n75), .ZN(n14) );
  NAND2_X1 U176 ( .A1(n175), .A2(n83), .ZN(n16) );
  NAND2_X1 U177 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U178 ( .A(n61), .ZN(n96) );
  INV_X1 U179 ( .A(n178), .ZN(n44) );
  NAND2_X1 U180 ( .A1(n90), .A2(n33), .ZN(n5) );
  XNOR2_X1 U181 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XOR2_X1 U182 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XNOR2_X1 U183 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  NAND2_X1 U184 ( .A1(n89), .A2(n29), .ZN(n4) );
  NOR2_X1 U185 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NAND2_X1 U186 ( .A1(n88), .A2(n26), .ZN(n3) );
  NAND2_X1 U187 ( .A1(n91), .A2(n36), .ZN(n6) );
  OR2_X1 U188 ( .A1(A[5]), .A2(B[5]), .ZN(n174) );
  OR2_X1 U189 ( .A1(A[1]), .A2(B[1]), .ZN(n175) );
  NOR2_X1 U190 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NAND2_X1 U191 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  XNOR2_X1 U192 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XNOR2_X1 U193 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NOR2_X1 U194 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NOR2_X1 U195 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  NAND2_X1 U196 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  NAND2_X1 U197 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  OR2_X1 U198 ( .A1(A[3]), .A2(B[3]), .ZN(n176) );
  NAND2_X1 U199 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U200 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NAND2_X1 U201 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U202 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U203 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U204 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  NAND2_X1 U205 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  NAND2_X1 U206 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  XNOR2_X1 U207 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  XOR2_X1 U208 ( .A(n15), .B(n79), .Z(SUM[2]) );
  NAND2_X1 U209 ( .A1(n159), .A2(n19), .ZN(n2) );
  OR2_X2 U210 ( .A1(A[10]), .A2(B[10]), .ZN(n177) );
  NAND2_X1 U211 ( .A1(A[15]), .A2(B[15]), .ZN(n19) );
  NOR2_X1 U212 ( .A1(n32), .A2(n35), .ZN(n30) );
  INV_X1 U213 ( .A(n35), .ZN(n91) );
  AND2_X1 U214 ( .A1(A[10]), .A2(B[10]), .ZN(n178) );
  NAND2_X1 U215 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  NOR2_X2 U216 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  INV_X1 U217 ( .A(n25), .ZN(n88) );
  OAI21_X1 U218 ( .B1(n37), .B2(n162), .A(n36), .ZN(n34) );
  AOI21_X1 U219 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  INV_X1 U220 ( .A(n60), .ZN(n59) );
  OAI21_X1 U221 ( .B1(n36), .B2(n157), .A(n33), .ZN(n31) );
  INV_X1 U222 ( .A(n28), .ZN(n89) );
  XOR2_X1 U223 ( .A(n11), .B(n63), .Z(SUM[6]) );
  XOR2_X1 U224 ( .A(n13), .B(n71), .Z(SUM[4]) );
  OAI21_X1 U225 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  NOR2_X1 U226 ( .A1(n163), .A2(n57), .ZN(n52) );
  OAI21_X1 U227 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  XNOR2_X1 U228 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  NAND2_X1 U229 ( .A1(n177), .A2(n165), .ZN(n39) );
  XNOR2_X1 U230 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  XNOR2_X1 U231 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  XOR2_X1 U232 ( .A(n1), .B(n4), .Z(SUM[13]) );
  OAI21_X1 U233 ( .B1(n169), .B2(n173), .A(n22), .ZN(n20) );
  OAI21_X1 U234 ( .B1(n169), .B2(n28), .A(n29), .ZN(n27) );
endmodule


module datapath_M16_N8_T16_P16_12 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n19), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n228), .CK(clk), .Q(n23) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n229), .CK(clk), .Q(n24) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n230), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n231), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n232), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n233), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n234), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n235), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n236), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n237), .CK(clk), .Q(n34) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n238), .CK(clk), .Q(n35) );
  DFF_X1 \f_reg[0]  ( .D(n167), .CK(clk), .Q(n64), .QN(n217) );
  DFF_X1 \f_reg[1]  ( .D(n166), .CK(clk), .Q(n62), .QN(n218) );
  DFF_X1 \f_reg[2]  ( .D(n114), .CK(clk), .Q(n60), .QN(n219) );
  DFF_X1 \f_reg[3]  ( .D(n113), .CK(clk), .Q(f[3]), .QN(n68) );
  DFF_X1 \data_out_reg[15]  ( .D(n169), .CK(clk), .Q(data_out[15]), .QN(n200)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n170), .CK(clk), .Q(data_out[14]), .QN(n199)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n171), .CK(clk), .Q(data_out[13]), .QN(n198)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n172), .CK(clk), .Q(data_out[12]), .QN(n197)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n173), .CK(clk), .Q(data_out[11]), .QN(n196)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n174), .CK(clk), .Q(data_out[10]), .QN(n195)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n175), .CK(clk), .Q(data_out[9]), .QN(n194) );
  DFF_X1 \data_out_reg[8]  ( .D(n176), .CK(clk), .Q(data_out[8]), .QN(n193) );
  DFF_X1 \data_out_reg[7]  ( .D(n177), .CK(clk), .Q(data_out[7]), .QN(n192) );
  DFF_X1 \data_out_reg[6]  ( .D(n178), .CK(clk), .Q(data_out[6]), .QN(n191) );
  DFF_X1 \data_out_reg[5]  ( .D(n179), .CK(clk), .Q(data_out[5]), .QN(n190) );
  DFF_X1 \data_out_reg[4]  ( .D(n180), .CK(clk), .Q(data_out[4]), .QN(n189) );
  DFF_X1 \data_out_reg[3]  ( .D(n181), .CK(clk), .Q(data_out[3]), .QN(n188) );
  DFF_X1 \data_out_reg[2]  ( .D(n182), .CK(clk), .Q(data_out[2]), .QN(n187) );
  DFF_X1 \data_out_reg[1]  ( .D(n183), .CK(clk), .Q(data_out[1]), .QN(n186) );
  DFF_X1 \data_out_reg[0]  ( .D(n184), .CK(clk), .Q(data_out[0]), .QN(n185) );
  datapath_M16_N8_T16_P16_12_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_12_DW01_add_2 add_262 ( .A({n207, n206, n205, n204, 
        n203, n202, n216, n215, n214, n213, n212, n211, n210, n209, n208, n201}), .B({f[15], n46, n47, n49, n50, n52, f[9:3], n60, n62, n64}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n243), .CK(clk), .Q(n41) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n242), .CK(clk), .Q(n39) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n241), .CK(clk), .Q(n38) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n240), .CK(clk), .Q(n37) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n239), .CK(clk), .Q(n36) );
  DFF_X1 \f_reg[4]  ( .D(n112), .CK(clk), .Q(f[4]), .QN(n69) );
  DFF_X1 \f_reg[5]  ( .D(n111), .CK(clk), .Q(f[5]), .QN(n70) );
  DFF_X1 \f_reg[6]  ( .D(n102), .CK(clk), .Q(f[6]), .QN(n71) );
  DFF_X1 \f_reg[7]  ( .D(n85), .CK(clk), .Q(f[7]), .QN(n220) );
  DFF_X1 \f_reg[8]  ( .D(n83), .CK(clk), .Q(f[8]), .QN(n221) );
  DFF_X1 \f_reg[9]  ( .D(n82), .CK(clk), .Q(f[9]), .QN(n222) );
  DFF_X1 \f_reg[11]  ( .D(n80), .CK(clk), .Q(n50), .QN(n224) );
  DFF_X1 \f_reg[10]  ( .D(n81), .CK(clk), .Q(n52), .QN(n223) );
  DFF_X1 \f_reg[14]  ( .D(n9), .CK(clk), .Q(n46), .QN(n227) );
  DFF_X1 \f_reg[13]  ( .D(n79), .CK(clk), .Q(n47), .QN(n226) );
  DFF_X1 \f_reg[12]  ( .D(n4), .CK(clk), .Q(n49), .QN(n225) );
  DFF_X1 \f_reg[15]  ( .D(n8), .CK(clk), .Q(f[15]), .QN(n76) );
  DFF_X2 delay_reg ( .D(n168), .CK(clk), .Q(n43), .QN(n244) );
  AND2_X1 U3 ( .A1(n45), .A2(n20), .ZN(n16) );
  AND2_X1 U4 ( .A1(n15), .A2(n13), .ZN(n1) );
  AND2_X1 U5 ( .A1(n12), .A2(n10), .ZN(n2) );
  MUX2_X1 U6 ( .A(N39), .B(n28), .S(n43), .Z(n202) );
  MUX2_X2 U8 ( .A(n27), .B(N40), .S(n244), .Z(n203) );
  MUX2_X1 U9 ( .A(N38), .B(n29), .S(n43), .Z(n216) );
  NAND3_X1 U10 ( .A1(n6), .A2(n5), .A3(n7), .ZN(n4) );
  MUX2_X2 U11 ( .A(n24), .B(N43), .S(n244), .Z(n206) );
  NAND2_X1 U12 ( .A1(n14), .A2(n1), .ZN(n9) );
  NAND2_X1 U13 ( .A1(n11), .A2(n2), .ZN(n8) );
  MUX2_X2 U14 ( .A(n26), .B(N41), .S(n244), .Z(n204) );
  NAND2_X1 U15 ( .A1(data_out_b[12]), .A2(n18), .ZN(n5) );
  NAND2_X1 U16 ( .A1(adder[12]), .A2(n16), .ZN(n6) );
  NAND2_X1 U17 ( .A1(n66), .A2(n49), .ZN(n7) );
  NAND2_X1 U18 ( .A1(data_out_b[15]), .A2(n18), .ZN(n10) );
  NAND2_X1 U19 ( .A1(adder[15]), .A2(n16), .ZN(n11) );
  NAND2_X1 U20 ( .A1(n66), .A2(f[15]), .ZN(n12) );
  MUX2_X2 U21 ( .A(n32), .B(N37), .S(n244), .Z(n215) );
  NAND2_X1 U22 ( .A1(data_out_b[14]), .A2(n18), .ZN(n13) );
  NAND2_X1 U23 ( .A1(adder[14]), .A2(n16), .ZN(n14) );
  NAND2_X1 U24 ( .A1(n66), .A2(n46), .ZN(n15) );
  INV_X1 U25 ( .A(n20), .ZN(n18) );
  NAND2_X1 U26 ( .A1(n168), .A2(n17), .ZN(n246) );
  INV_X1 U27 ( .A(n45), .ZN(n66) );
  INV_X1 U28 ( .A(clear_acc), .ZN(n20) );
  OAI22_X1 U29 ( .A1(n188), .A2(n246), .B1(n68), .B2(n245), .ZN(n181) );
  OAI22_X1 U30 ( .A1(n189), .A2(n246), .B1(n69), .B2(n245), .ZN(n180) );
  OAI22_X1 U31 ( .A1(n190), .A2(n246), .B1(n70), .B2(n245), .ZN(n179) );
  OAI22_X1 U32 ( .A1(n191), .A2(n246), .B1(n71), .B2(n245), .ZN(n178) );
  OAI22_X1 U33 ( .A1(n192), .A2(n246), .B1(n220), .B2(n245), .ZN(n177) );
  OAI22_X1 U34 ( .A1(n193), .A2(n246), .B1(n221), .B2(n245), .ZN(n176) );
  OAI22_X1 U35 ( .A1(n194), .A2(n246), .B1(n222), .B2(n245), .ZN(n175) );
  MUX2_X1 U36 ( .A(n25), .B(N42), .S(n244), .Z(n205) );
  INV_X1 U37 ( .A(n22), .ZN(n40) );
  INV_X1 U38 ( .A(wr_en_y), .ZN(n17) );
  INV_X1 U39 ( .A(n20), .ZN(n19) );
  INV_X1 U40 ( .A(m_ready), .ZN(n21) );
  NAND2_X1 U41 ( .A1(m_valid), .A2(n21), .ZN(n42) );
  OAI21_X1 U42 ( .B1(sel[4]), .B2(n78), .A(n42), .ZN(n168) );
  NAND2_X1 U43 ( .A1(clear_acc_delay), .A2(n244), .ZN(n22) );
  MUX2_X1 U44 ( .A(n23), .B(N44), .S(n40), .Z(n228) );
  MUX2_X1 U45 ( .A(n23), .B(N44), .S(n244), .Z(n207) );
  MUX2_X1 U46 ( .A(n24), .B(N43), .S(n40), .Z(n229) );
  MUX2_X1 U47 ( .A(n25), .B(N42), .S(n40), .Z(n230) );
  MUX2_X1 U48 ( .A(n26), .B(N41), .S(n40), .Z(n231) );
  MUX2_X1 U49 ( .A(n27), .B(N40), .S(n40), .Z(n232) );
  MUX2_X1 U50 ( .A(n28), .B(N39), .S(n40), .Z(n233) );
  MUX2_X1 U51 ( .A(n29), .B(N38), .S(n40), .Z(n234) );
  MUX2_X1 U52 ( .A(n32), .B(N37), .S(n40), .Z(n235) );
  MUX2_X1 U53 ( .A(n33), .B(N36), .S(n40), .Z(n236) );
  MUX2_X1 U54 ( .A(n33), .B(N36), .S(n244), .Z(n214) );
  MUX2_X1 U55 ( .A(n34), .B(N35), .S(n40), .Z(n237) );
  MUX2_X1 U56 ( .A(n34), .B(N35), .S(n244), .Z(n213) );
  MUX2_X1 U57 ( .A(n35), .B(N34), .S(n40), .Z(n238) );
  MUX2_X1 U58 ( .A(n35), .B(N34), .S(n244), .Z(n212) );
  MUX2_X1 U59 ( .A(n36), .B(N33), .S(n40), .Z(n239) );
  MUX2_X1 U60 ( .A(n36), .B(N33), .S(n244), .Z(n211) );
  MUX2_X1 U61 ( .A(n37), .B(N32), .S(n40), .Z(n240) );
  MUX2_X1 U62 ( .A(n37), .B(N32), .S(n244), .Z(n210) );
  MUX2_X1 U63 ( .A(n38), .B(N31), .S(n40), .Z(n241) );
  MUX2_X1 U64 ( .A(n38), .B(N31), .S(n244), .Z(n209) );
  MUX2_X1 U65 ( .A(n39), .B(N30), .S(n40), .Z(n242) );
  MUX2_X1 U66 ( .A(n39), .B(N30), .S(n244), .Z(n208) );
  MUX2_X1 U67 ( .A(n41), .B(N29), .S(n40), .Z(n243) );
  MUX2_X1 U68 ( .A(n41), .B(N29), .S(n244), .Z(n201) );
  INV_X1 U69 ( .A(n42), .ZN(n44) );
  OAI21_X1 U70 ( .B1(n44), .B2(n43), .A(n20), .ZN(n45) );
  AOI222_X1 U71 ( .A1(data_out_b[13]), .A2(n18), .B1(adder[13]), .B2(n16), 
        .C1(n66), .C2(n47), .ZN(n48) );
  INV_X1 U72 ( .A(n48), .ZN(n79) );
  AOI222_X1 U73 ( .A1(data_out_b[11]), .A2(n18), .B1(adder[11]), .B2(n16), 
        .C1(n66), .C2(n50), .ZN(n51) );
  INV_X1 U74 ( .A(n51), .ZN(n80) );
  AOI222_X1 U75 ( .A1(data_out_b[10]), .A2(n18), .B1(adder[10]), .B2(n16), 
        .C1(n66), .C2(n52), .ZN(n53) );
  INV_X1 U76 ( .A(n53), .ZN(n81) );
  AOI222_X1 U77 ( .A1(data_out_b[8]), .A2(n18), .B1(adder[8]), .B2(n16), .C1(
        n66), .C2(f[8]), .ZN(n54) );
  INV_X1 U78 ( .A(n54), .ZN(n83) );
  AOI222_X1 U79 ( .A1(data_out_b[7]), .A2(n18), .B1(adder[7]), .B2(n16), .C1(
        n66), .C2(f[7]), .ZN(n55) );
  INV_X1 U80 ( .A(n55), .ZN(n85) );
  AOI222_X1 U81 ( .A1(data_out_b[6]), .A2(n18), .B1(adder[6]), .B2(n16), .C1(
        n66), .C2(f[6]), .ZN(n56) );
  INV_X1 U82 ( .A(n56), .ZN(n102) );
  AOI222_X1 U83 ( .A1(data_out_b[5]), .A2(n18), .B1(adder[5]), .B2(n16), .C1(
        n66), .C2(f[5]), .ZN(n57) );
  INV_X1 U84 ( .A(n57), .ZN(n111) );
  AOI222_X1 U85 ( .A1(data_out_b[4]), .A2(n18), .B1(adder[4]), .B2(n16), .C1(
        n66), .C2(f[4]), .ZN(n58) );
  INV_X1 U86 ( .A(n58), .ZN(n112) );
  AOI222_X1 U87 ( .A1(data_out_b[3]), .A2(n18), .B1(adder[3]), .B2(n16), .C1(
        n66), .C2(f[3]), .ZN(n59) );
  INV_X1 U88 ( .A(n59), .ZN(n113) );
  AOI222_X1 U89 ( .A1(data_out_b[2]), .A2(n19), .B1(adder[2]), .B2(n16), .C1(
        n66), .C2(n60), .ZN(n61) );
  INV_X1 U90 ( .A(n61), .ZN(n114) );
  AOI222_X1 U91 ( .A1(data_out_b[1]), .A2(n19), .B1(adder[1]), .B2(n16), .C1(
        n66), .C2(n62), .ZN(n63) );
  INV_X1 U92 ( .A(n63), .ZN(n166) );
  AOI222_X1 U93 ( .A1(data_out_b[0]), .A2(n19), .B1(adder[0]), .B2(n16), .C1(
        n66), .C2(n64), .ZN(n65) );
  INV_X1 U94 ( .A(n65), .ZN(n167) );
  AOI222_X1 U95 ( .A1(data_out_b[9]), .A2(n19), .B1(adder[9]), .B2(n16), .C1(
        n66), .C2(f[9]), .ZN(n67) );
  INV_X1 U96 ( .A(n67), .ZN(n82) );
  NOR4_X1 U97 ( .A1(n50), .A2(n49), .A3(n47), .A4(n46), .ZN(n75) );
  NOR4_X1 U98 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n52), .ZN(n74) );
  NAND4_X1 U99 ( .A1(n71), .A2(n70), .A3(n69), .A4(n68), .ZN(n72) );
  NOR4_X1 U100 ( .A1(n72), .A2(n64), .A3(n62), .A4(n60), .ZN(n73) );
  NAND3_X1 U101 ( .A1(n75), .A2(n74), .A3(n73), .ZN(n77) );
  NAND3_X1 U102 ( .A1(wr_en_y), .A2(n77), .A3(n76), .ZN(n245) );
  OAI22_X1 U103 ( .A1(n185), .A2(n246), .B1(n217), .B2(n245), .ZN(n184) );
  OAI22_X1 U104 ( .A1(n186), .A2(n246), .B1(n218), .B2(n245), .ZN(n183) );
  OAI22_X1 U105 ( .A1(n187), .A2(n246), .B1(n219), .B2(n245), .ZN(n182) );
  OAI22_X1 U106 ( .A1(n195), .A2(n246), .B1(n223), .B2(n245), .ZN(n174) );
  OAI22_X1 U107 ( .A1(n196), .A2(n246), .B1(n224), .B2(n245), .ZN(n173) );
  OAI22_X1 U108 ( .A1(n197), .A2(n246), .B1(n225), .B2(n245), .ZN(n172) );
  OAI22_X1 U109 ( .A1(n198), .A2(n246), .B1(n226), .B2(n245), .ZN(n171) );
  OAI22_X1 U110 ( .A1(n199), .A2(n246), .B1(n227), .B2(n245), .ZN(n170) );
  OAI22_X1 U111 ( .A1(n200), .A2(n246), .B1(n76), .B2(n245), .ZN(n169) );
  AND4_X1 U112 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n78)
         );
endmodule


module datapath_M16_N8_T16_P16_11_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n27, n29, n31,
         n32, n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50,
         n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67, n69, n70,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n95, n96, n97, n98, n99, n103, n104, n105,
         n106, n107, n111, n112, n113, n114, n115, n117, n119, n120, n122,
         n125, n127, n128, n131, n135, n139, n141, n142, n143, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n239, n241, n245, n247, n249, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n418, n419, n420, n421, n422, n423, n424, n426, n427, n428, n429,
         n432, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U150 ( .A(n271), .B(n146), .Z(n147) );
  XOR2_X1 U152 ( .A(n301), .B(n148), .Z(n149) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U161 ( .A(n177), .B(n168), .CI(n166), .CO(n163), .S(n164) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U165 ( .A(n303), .B(n291), .CI(n263), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n292), .CI(n274), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n305), .B(n253), .CI(n283), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n319), .B(n269), .CO(n193), .S(n194) );
  FA_X1 U178 ( .A(n207), .B(n209), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n284), .B(n294), .CI(n276), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n306), .B(n270), .CI(n320), .CO(n201), .S(n202) );
  FA_X1 U181 ( .A(n208), .B(n213), .CI(n206), .CO(n203), .S(n204) );
  FA_X1 U182 ( .A(n215), .B(n307), .CI(n210), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n295), .B(n285), .CI(n254), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n255), .B(n297), .CI(n309), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n323), .B(n287), .CO(n221), .S(n222) );
  FA_X1 U191 ( .A(n229), .B(n298), .CI(n226), .CO(n223), .S(n224) );
  FA_X1 U192 ( .A(n310), .B(n288), .CI(n324), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n311), .B(n325), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n326), .B(n300), .CI(n312), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  OR2_X2 U414 ( .A1(n212), .A2(n217), .ZN(n493) );
  AND2_X1 U415 ( .A1(n232), .A2(n233), .ZN(n557) );
  BUF_X2 U416 ( .A(n519), .Z(n586) );
  BUF_X2 U417 ( .A(n21), .Z(n585) );
  BUF_X1 U418 ( .A(n592), .Z(n524) );
  XNOR2_X1 U419 ( .A(n601), .B(n420), .ZN(n338) );
  INV_X1 U420 ( .A(n557), .ZN(n111) );
  OR2_X1 U421 ( .A1(n329), .A2(n258), .ZN(n490) );
  CLKBUF_X1 U422 ( .A(n13), .Z(n538) );
  INV_X1 U423 ( .A(n604), .ZN(n491) );
  AOI21_X1 U424 ( .B1(n570), .B2(n80), .A(n81), .ZN(n492) );
  AOI21_X1 U425 ( .B1(n570), .B2(n80), .A(n81), .ZN(n572) );
  OAI22_X1 U426 ( .A1(n544), .A2(n341), .B1(n340), .B2(n535), .ZN(n267) );
  AOI21_X1 U427 ( .B1(n576), .B2(n112), .A(n557), .ZN(n494) );
  AND2_X1 U428 ( .A1(n212), .A2(n217), .ZN(n495) );
  BUF_X2 U429 ( .A(n9), .Z(n568) );
  XNOR2_X1 U430 ( .A(n198), .B(n496), .ZN(n196) );
  XNOR2_X1 U431 ( .A(n205), .B(n200), .ZN(n496) );
  OR2_X1 U432 ( .A1(n520), .A2(n521), .ZN(n507) );
  AOI21_X1 U433 ( .B1(n576), .B2(n112), .A(n557), .ZN(n107) );
  BUF_X1 U434 ( .A(n13), .Z(n569) );
  CLKBUF_X1 U435 ( .A(n7), .Z(n514) );
  CLKBUF_X1 U436 ( .A(n7), .Z(n513) );
  CLKBUF_X1 U437 ( .A(n7), .Z(n515) );
  XNOR2_X1 U438 ( .A(n524), .B(n420), .ZN(n497) );
  BUF_X2 U439 ( .A(n27), .Z(n533) );
  XOR2_X1 U440 ( .A(n182), .B(n184), .Z(n498) );
  XOR2_X1 U441 ( .A(n498), .B(n189), .Z(n178) );
  XOR2_X1 U442 ( .A(n180), .B(n187), .Z(n499) );
  XOR2_X1 U443 ( .A(n499), .B(n178), .Z(n176) );
  NAND2_X1 U444 ( .A1(n182), .A2(n184), .ZN(n500) );
  NAND2_X1 U445 ( .A1(n182), .A2(n189), .ZN(n501) );
  NAND2_X1 U446 ( .A1(n184), .A2(n189), .ZN(n502) );
  NAND3_X1 U447 ( .A1(n500), .A2(n501), .A3(n502), .ZN(n177) );
  NAND2_X1 U448 ( .A1(n180), .A2(n187), .ZN(n503) );
  NAND2_X1 U449 ( .A1(n180), .A2(n178), .ZN(n504) );
  NAND2_X1 U450 ( .A1(n187), .A2(n178), .ZN(n505) );
  NAND3_X1 U451 ( .A1(n503), .A2(n504), .A3(n505), .ZN(n175) );
  BUF_X1 U452 ( .A(n32), .Z(n534) );
  OR2_X1 U453 ( .A1(n75), .A2(n78), .ZN(n506) );
  OR2_X1 U454 ( .A1(n520), .A2(n521), .ZN(n508) );
  OR2_X1 U455 ( .A1(n520), .A2(n521), .ZN(n23) );
  NAND2_X1 U456 ( .A1(n198), .A2(n205), .ZN(n509) );
  NAND2_X1 U457 ( .A1(n198), .A2(n200), .ZN(n510) );
  NAND2_X1 U458 ( .A1(n205), .A2(n200), .ZN(n511) );
  NAND3_X1 U459 ( .A1(n509), .A2(n510), .A3(n511), .ZN(n195) );
  XNOR2_X1 U460 ( .A(n562), .B(n512), .ZN(product[9]) );
  AND2_X1 U461 ( .A1(n556), .A2(n90), .ZN(n512) );
  BUF_X1 U462 ( .A(n587), .Z(n529) );
  NAND2_X2 U463 ( .A1(n573), .A2(n16), .ZN(n18) );
  BUF_X2 U464 ( .A(n592), .Z(n525) );
  INV_X1 U465 ( .A(n546), .ZN(n516) );
  INV_X2 U466 ( .A(n598), .ZN(n546) );
  CLKBUF_X1 U467 ( .A(n29), .Z(n517) );
  XNOR2_X1 U468 ( .A(n525), .B(n419), .ZN(n518) );
  BUF_X2 U469 ( .A(n592), .Z(n583) );
  XOR2_X1 U470 ( .A(n594), .B(a[4]), .Z(n519) );
  NAND2_X1 U471 ( .A1(n429), .A2(n27), .ZN(n29) );
  XNOR2_X1 U472 ( .A(n597), .B(a[6]), .ZN(n520) );
  XOR2_X1 U473 ( .A(n569), .B(a[6]), .Z(n521) );
  INV_X1 U474 ( .A(n531), .ZN(n522) );
  INV_X1 U475 ( .A(n515), .ZN(n523) );
  XNOR2_X1 U476 ( .A(n45), .B(n526), .ZN(product[12]) );
  AND2_X1 U477 ( .A1(n551), .A2(n79), .ZN(n526) );
  OR2_X2 U478 ( .A1(n224), .A2(n227), .ZN(n577) );
  CLKBUF_X1 U479 ( .A(n86), .Z(n527) );
  OAI21_X1 U480 ( .B1(n105), .B2(n494), .A(n106), .ZN(n528) );
  INV_X1 U481 ( .A(n543), .ZN(n37) );
  XOR2_X1 U482 ( .A(n249), .B(n593), .Z(n559) );
  INV_X1 U483 ( .A(n128), .ZN(n530) );
  XNOR2_X1 U484 ( .A(n602), .B(a[10]), .ZN(n428) );
  INV_X1 U485 ( .A(n600), .ZN(n531) );
  INV_X1 U486 ( .A(n600), .ZN(n599) );
  NAND2_X1 U487 ( .A1(n9), .A2(n432), .ZN(n532) );
  XNOR2_X1 U488 ( .A(n597), .B(a[8]), .ZN(n27) );
  BUF_X1 U489 ( .A(n32), .Z(n535) );
  XOR2_X1 U490 ( .A(n600), .B(a[10]), .Z(n32) );
  OAI21_X1 U491 ( .B1(n547), .B2(n97), .A(n98), .ZN(n536) );
  OAI21_X1 U492 ( .B1(n99), .B2(n97), .A(n98), .ZN(n96) );
  NOR2_X1 U493 ( .A1(n164), .A2(n175), .ZN(n537) );
  NOR2_X1 U494 ( .A1(n164), .A2(n175), .ZN(n75) );
  BUF_X1 U495 ( .A(n587), .Z(n567) );
  INV_X1 U496 ( .A(n602), .ZN(n539) );
  NAND2_X1 U497 ( .A1(n9), .A2(n432), .ZN(n540) );
  NAND2_X1 U498 ( .A1(n9), .A2(n432), .ZN(n541) );
  NAND2_X1 U499 ( .A1(n587), .A2(n432), .ZN(n12) );
  CLKBUF_X1 U500 ( .A(n528), .Z(n542) );
  XNOR2_X1 U501 ( .A(n602), .B(a[12]), .ZN(n543) );
  INV_X1 U502 ( .A(n602), .ZN(n601) );
  NAND2_X1 U503 ( .A1(n428), .A2(n534), .ZN(n544) );
  INV_X1 U504 ( .A(n598), .ZN(n545) );
  INV_X1 U505 ( .A(n598), .ZN(n597) );
  AOI21_X1 U506 ( .B1(n577), .B2(n528), .A(n558), .ZN(n547) );
  CLKBUF_X1 U507 ( .A(n74), .Z(n548) );
  XNOR2_X1 U508 ( .A(n273), .B(n549), .ZN(n170) );
  XNOR2_X1 U509 ( .A(n281), .B(n267), .ZN(n549) );
  INV_X1 U510 ( .A(n593), .ZN(n550) );
  OR2_X1 U511 ( .A1(n176), .A2(n185), .ZN(n551) );
  NAND2_X1 U512 ( .A1(n273), .A2(n281), .ZN(n552) );
  NAND2_X1 U513 ( .A1(n273), .A2(n267), .ZN(n553) );
  NAND2_X1 U514 ( .A1(n281), .A2(n267), .ZN(n554) );
  NAND3_X1 U515 ( .A1(n552), .A2(n553), .A3(n554), .ZN(n169) );
  OR2_X2 U516 ( .A1(n559), .A2(n564), .ZN(n560) );
  OR2_X2 U517 ( .A1(n559), .A2(n564), .ZN(n6) );
  NOR2_X1 U518 ( .A1(n186), .A2(n195), .ZN(n555) );
  NOR2_X1 U519 ( .A1(n186), .A2(n195), .ZN(n82) );
  XOR2_X1 U520 ( .A(n594), .B(a[4]), .Z(n16) );
  OR2_X1 U521 ( .A1(n204), .A2(n211), .ZN(n556) );
  INV_X1 U522 ( .A(n558), .ZN(n103) );
  AND2_X1 U523 ( .A1(n224), .A2(n227), .ZN(n558) );
  CLKBUF_X3 U524 ( .A(n592), .Z(n584) );
  AOI21_X1 U525 ( .B1(n96), .B2(n493), .A(n495), .ZN(n561) );
  AOI21_X1 U526 ( .B1(n536), .B2(n493), .A(n495), .ZN(n562) );
  CLKBUF_X1 U527 ( .A(n492), .Z(n563) );
  XNOR2_X1 U528 ( .A(n594), .B(a[2]), .ZN(n432) );
  INV_X1 U529 ( .A(n591), .ZN(n564) );
  INV_X2 U530 ( .A(n564), .ZN(n565) );
  INV_X1 U531 ( .A(n249), .ZN(n591) );
  OR2_X1 U532 ( .A1(n228), .A2(n231), .ZN(n566) );
  XNOR2_X1 U533 ( .A(n550), .B(a[2]), .ZN(n587) );
  OAI21_X1 U534 ( .B1(n561), .B2(n89), .A(n90), .ZN(n570) );
  INV_X1 U535 ( .A(n584), .ZN(n571) );
  OR2_X1 U536 ( .A1(n152), .A2(n163), .ZN(n574) );
  NOR2_X1 U537 ( .A1(n176), .A2(n185), .ZN(n78) );
  XOR2_X1 U538 ( .A(n569), .B(a[4]), .Z(n573) );
  NAND2_X1 U539 ( .A1(n574), .A2(n69), .ZN(n47) );
  AOI21_X1 U540 ( .B1(n548), .B2(n574), .A(n67), .ZN(n65) );
  INV_X1 U541 ( .A(n69), .ZN(n67) );
  INV_X1 U542 ( .A(n74), .ZN(n72) );
  AOI21_X1 U543 ( .B1(n80), .B2(n570), .A(n81), .ZN(n45) );
  NOR2_X1 U544 ( .A1(n555), .A2(n85), .ZN(n80) );
  OAI21_X1 U545 ( .B1(n82), .B2(n86), .A(n83), .ZN(n81) );
  INV_X1 U546 ( .A(n85), .ZN(n128) );
  NAND2_X1 U547 ( .A1(n127), .A2(n83), .ZN(n50) );
  INV_X1 U548 ( .A(n555), .ZN(n127) );
  OAI21_X1 U549 ( .B1(n537), .B2(n79), .A(n76), .ZN(n74) );
  NAND2_X1 U550 ( .A1(n125), .A2(n76), .ZN(n48) );
  INV_X1 U551 ( .A(n75), .ZN(n125) );
  NOR2_X1 U552 ( .A1(n75), .A2(n78), .ZN(n73) );
  NAND2_X1 U553 ( .A1(n152), .A2(n163), .ZN(n69) );
  NAND2_X1 U554 ( .A1(n493), .A2(n95), .ZN(n53) );
  OAI21_X1 U555 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  NAND2_X1 U556 ( .A1(n131), .A2(n98), .ZN(n54) );
  INV_X1 U557 ( .A(n97), .ZN(n131) );
  NOR2_X1 U558 ( .A1(n196), .A2(n203), .ZN(n85) );
  NAND2_X1 U559 ( .A1(n577), .A2(n103), .ZN(n55) );
  AOI21_X1 U560 ( .B1(n575), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U561 ( .A(n119), .ZN(n117) );
  XNOR2_X1 U562 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U563 ( .A1(n578), .A2(n62), .ZN(n46) );
  NAND2_X1 U564 ( .A1(n73), .A2(n574), .ZN(n64) );
  XNOR2_X1 U565 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U566 ( .A1(n575), .A2(n119), .ZN(n59) );
  NAND2_X1 U567 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U568 ( .A1(n186), .A2(n195), .ZN(n83) );
  NAND2_X1 U569 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U570 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U571 ( .A1(n212), .A2(n217), .ZN(n95) );
  NAND2_X1 U572 ( .A1(n204), .A2(n211), .ZN(n90) );
  XNOR2_X1 U573 ( .A(n57), .B(n112), .ZN(product[4]) );
  NAND2_X1 U574 ( .A1(n576), .A2(n111), .ZN(n57) );
  NAND2_X1 U575 ( .A1(n566), .A2(n106), .ZN(n56) );
  OR2_X1 U576 ( .A1(n328), .A2(n314), .ZN(n575) );
  NOR2_X1 U577 ( .A1(n228), .A2(n231), .ZN(n105) );
  NOR2_X1 U578 ( .A1(n218), .A2(n223), .ZN(n97) );
  NOR2_X1 U579 ( .A1(n234), .A2(n257), .ZN(n113) );
  OR2_X1 U580 ( .A1(n232), .A2(n233), .ZN(n576) );
  NAND2_X1 U581 ( .A1(n228), .A2(n231), .ZN(n106) );
  NAND2_X1 U582 ( .A1(n218), .A2(n223), .ZN(n98) );
  INV_X1 U583 ( .A(n41), .ZN(n235) );
  OR2_X1 U584 ( .A1(n151), .A2(n139), .ZN(n578) );
  AND2_X1 U585 ( .A1(n490), .A2(n122), .ZN(product[1]) );
  OR2_X1 U586 ( .A1(n589), .A2(n523), .ZN(n392) );
  XNOR2_X1 U587 ( .A(n603), .B(a[14]), .ZN(n41) );
  XNOR2_X1 U588 ( .A(n550), .B(a[2]), .ZN(n9) );
  AND2_X1 U589 ( .A1(n590), .A2(n241), .ZN(n278) );
  OAI22_X1 U590 ( .A1(n39), .A2(n336), .B1(n37), .B2(n335), .ZN(n263) );
  XNOR2_X1 U591 ( .A(n595), .B(n589), .ZN(n376) );
  AND2_X1 U592 ( .A1(n590), .A2(n245), .ZN(n300) );
  XNOR2_X1 U593 ( .A(n531), .B(n589), .ZN(n352) );
  OAI22_X1 U594 ( .A1(n39), .A2(n604), .B1(n337), .B2(n37), .ZN(n252) );
  OR2_X1 U595 ( .A1(n589), .A2(n604), .ZN(n337) );
  OAI22_X1 U596 ( .A1(n42), .A2(n606), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U597 ( .A1(n589), .A2(n606), .ZN(n332) );
  XOR2_X1 U598 ( .A(n599), .B(a[8]), .Z(n429) );
  XOR2_X1 U599 ( .A(n315), .B(n261), .Z(n150) );
  XNOR2_X1 U600 ( .A(n155), .B(n580), .ZN(n139) );
  XNOR2_X1 U601 ( .A(n153), .B(n141), .ZN(n580) );
  XNOR2_X1 U602 ( .A(n157), .B(n581), .ZN(n141) );
  XNOR2_X1 U603 ( .A(n145), .B(n143), .ZN(n581) );
  XNOR2_X1 U604 ( .A(n491), .B(n589), .ZN(n336) );
  AND2_X1 U605 ( .A1(n590), .A2(n543), .ZN(n264) );
  AND2_X1 U606 ( .A1(n590), .A2(n235), .ZN(n260) );
  OAI22_X1 U607 ( .A1(n39), .A2(n335), .B1(n37), .B2(n334), .ZN(n262) );
  AND2_X1 U608 ( .A1(n590), .A2(n239), .ZN(n270) );
  AND2_X1 U609 ( .A1(n590), .A2(n521), .ZN(n288) );
  NAND2_X1 U610 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U611 ( .A(n603), .B(a[12]), .Z(n427) );
  INV_X1 U612 ( .A(n25), .ZN(n600) );
  NAND2_X1 U613 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U614 ( .A(n605), .B(a[14]), .Z(n426) );
  INV_X1 U615 ( .A(n13), .ZN(n596) );
  INV_X1 U616 ( .A(n7), .ZN(n594) );
  XNOR2_X1 U617 ( .A(n545), .B(n589), .ZN(n363) );
  AND2_X1 U618 ( .A1(n590), .A2(n247), .ZN(n314) );
  AND2_X1 U619 ( .A1(n590), .A2(n249), .ZN(product[0]) );
  OR2_X1 U620 ( .A1(n589), .A2(n602), .ZN(n344) );
  OR2_X1 U621 ( .A1(n589), .A2(n516), .ZN(n364) );
  OR2_X1 U622 ( .A1(n589), .A2(n522), .ZN(n353) );
  OR2_X1 U623 ( .A1(n589), .A2(n596), .ZN(n377) );
  XNOR2_X1 U624 ( .A(n545), .B(b[9]), .ZN(n354) );
  BUF_X2 U625 ( .A(n43), .Z(n589) );
  XNOR2_X1 U626 ( .A(n595), .B(b[11]), .ZN(n365) );
  OAI22_X1 U627 ( .A1(n39), .A2(n334), .B1(n37), .B2(n333), .ZN(n261) );
  XNOR2_X1 U628 ( .A(n491), .B(n422), .ZN(n333) );
  XNOR2_X1 U629 ( .A(n491), .B(n423), .ZN(n334) );
  XNOR2_X1 U630 ( .A(n603), .B(n424), .ZN(n335) );
  OAI22_X1 U631 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U632 ( .A(n605), .B(n424), .ZN(n330) );
  XNOR2_X1 U633 ( .A(n605), .B(n589), .ZN(n331) );
  XNOR2_X1 U634 ( .A(n531), .B(n418), .ZN(n345) );
  XNOR2_X1 U635 ( .A(n265), .B(n582), .ZN(n145) );
  XNOR2_X1 U636 ( .A(n149), .B(n147), .ZN(n582) );
  XNOR2_X1 U637 ( .A(n514), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U638 ( .A(n513), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U639 ( .A(n515), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U640 ( .A(n514), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U641 ( .A(n513), .B(n418), .ZN(n384) );
  XNOR2_X1 U642 ( .A(n514), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U643 ( .A(n514), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U644 ( .A(n515), .B(n419), .ZN(n385) );
  XNOR2_X1 U645 ( .A(n599), .B(n424), .ZN(n351) );
  XNOR2_X1 U646 ( .A(n546), .B(n424), .ZN(n362) );
  XNOR2_X1 U647 ( .A(n595), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U648 ( .A(n595), .B(n418), .ZN(n369) );
  XNOR2_X1 U649 ( .A(n595), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U650 ( .A(n595), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U651 ( .A(n599), .B(n423), .ZN(n350) );
  XNOR2_X1 U652 ( .A(n531), .B(n422), .ZN(n349) );
  XNOR2_X1 U653 ( .A(n546), .B(n423), .ZN(n361) );
  XNOR2_X1 U654 ( .A(n546), .B(n422), .ZN(n360) );
  XNOR2_X1 U655 ( .A(n584), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U656 ( .A(n583), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U657 ( .A(n524), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U658 ( .A(n583), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U659 ( .A(n531), .B(n420), .ZN(n347) );
  XNOR2_X1 U660 ( .A(n539), .B(n421), .ZN(n339) );
  XNOR2_X1 U661 ( .A(n545), .B(n420), .ZN(n358) );
  XNOR2_X1 U662 ( .A(n599), .B(n421), .ZN(n348) );
  XNOR2_X1 U663 ( .A(n546), .B(n421), .ZN(n359) );
  XNOR2_X1 U664 ( .A(n531), .B(n419), .ZN(n346) );
  XNOR2_X1 U665 ( .A(n545), .B(n419), .ZN(n357) );
  XNOR2_X1 U666 ( .A(n545), .B(n418), .ZN(n356) );
  XNOR2_X1 U667 ( .A(n546), .B(b[8]), .ZN(n355) );
  BUF_X1 U668 ( .A(n43), .Z(n590) );
  XNOR2_X1 U669 ( .A(n525), .B(b[15]), .ZN(n393) );
  XNOR2_X1 U670 ( .A(n539), .B(n424), .ZN(n342) );
  XNOR2_X1 U671 ( .A(n539), .B(n422), .ZN(n340) );
  XNOR2_X1 U672 ( .A(n601), .B(n423), .ZN(n341) );
  XNOR2_X1 U673 ( .A(n601), .B(n589), .ZN(n343) );
  INV_X1 U674 ( .A(n593), .ZN(n592) );
  XNOR2_X1 U675 ( .A(n569), .B(a[6]), .ZN(n21) );
  OAI22_X1 U676 ( .A1(n544), .A2(n339), .B1(n338), .B2(n535), .ZN(n265) );
  OAI22_X1 U677 ( .A1(n544), .A2(n340), .B1(n339), .B2(n535), .ZN(n266) );
  OAI22_X1 U678 ( .A1(n34), .A2(n342), .B1(n341), .B2(n535), .ZN(n268) );
  OAI22_X1 U679 ( .A1(n544), .A2(n343), .B1(n342), .B2(n535), .ZN(n269) );
  INV_X1 U680 ( .A(n535), .ZN(n239) );
  OAI22_X1 U681 ( .A1(n34), .A2(n602), .B1(n344), .B2(n534), .ZN(n253) );
  NAND2_X1 U682 ( .A1(n428), .A2(n534), .ZN(n34) );
  NAND2_X1 U683 ( .A1(n328), .A2(n314), .ZN(n119) );
  XNOR2_X1 U684 ( .A(n84), .B(n50), .ZN(product[11]) );
  INV_X1 U685 ( .A(n19), .ZN(n598) );
  XNOR2_X1 U686 ( .A(n88), .B(n588), .ZN(product[10]) );
  NAND2_X1 U687 ( .A1(n128), .A2(n86), .ZN(n588) );
  XOR2_X1 U688 ( .A(n58), .B(n115), .Z(product[3]) );
  INV_X1 U689 ( .A(n113), .ZN(n135) );
  NOR2_X1 U690 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U691 ( .A1(n29), .A2(n350), .B1(n349), .B2(n533), .ZN(n275) );
  OAI22_X1 U692 ( .A1(n517), .A2(n346), .B1(n345), .B2(n533), .ZN(n271) );
  OAI22_X1 U693 ( .A1(n517), .A2(n347), .B1(n346), .B2(n533), .ZN(n272) );
  OAI22_X1 U694 ( .A1(n29), .A2(n348), .B1(n347), .B2(n27), .ZN(n273) );
  OAI22_X1 U695 ( .A1(n29), .A2(n349), .B1(n348), .B2(n533), .ZN(n274) );
  OAI22_X1 U696 ( .A1(n29), .A2(n522), .B1(n353), .B2(n533), .ZN(n254) );
  OAI22_X1 U697 ( .A1(n29), .A2(n351), .B1(n350), .B2(n533), .ZN(n276) );
  INV_X1 U698 ( .A(n27), .ZN(n241) );
  OAI22_X1 U699 ( .A1(n29), .A2(n352), .B1(n351), .B2(n533), .ZN(n277) );
  XNOR2_X1 U700 ( .A(n55), .B(n542), .ZN(product[6]) );
  OAI21_X1 U701 ( .B1(n105), .B2(n107), .A(n106), .ZN(n104) );
  XNOR2_X1 U702 ( .A(n77), .B(n48), .ZN(product[13]) );
  NAND2_X1 U703 ( .A1(n135), .A2(n114), .ZN(n58) );
  OAI21_X1 U704 ( .B1(n87), .B2(n530), .A(n527), .ZN(n84) );
  INV_X1 U705 ( .A(n88), .ZN(n87) );
  XOR2_X1 U706 ( .A(n56), .B(n494), .Z(product[5]) );
  OAI22_X1 U707 ( .A1(n508), .A2(n358), .B1(n357), .B2(n585), .ZN(n282) );
  OAI22_X1 U708 ( .A1(n507), .A2(n356), .B1(n355), .B2(n585), .ZN(n280) );
  OAI22_X1 U709 ( .A1(n507), .A2(n355), .B1(n354), .B2(n585), .ZN(n279) );
  OAI22_X1 U710 ( .A1(n507), .A2(n362), .B1(n361), .B2(n585), .ZN(n286) );
  OAI22_X1 U711 ( .A1(n508), .A2(n360), .B1(n359), .B2(n585), .ZN(n284) );
  OAI22_X1 U712 ( .A1(n508), .A2(n361), .B1(n360), .B2(n585), .ZN(n285) );
  OAI22_X1 U713 ( .A1(n507), .A2(n357), .B1(n356), .B2(n585), .ZN(n281) );
  OAI22_X1 U714 ( .A1(n508), .A2(n516), .B1(n364), .B2(n585), .ZN(n255) );
  OAI22_X1 U715 ( .A1(n23), .A2(n363), .B1(n362), .B2(n585), .ZN(n287) );
  XNOR2_X1 U716 ( .A(n538), .B(n421), .ZN(n372) );
  OAI22_X1 U717 ( .A1(n23), .A2(n359), .B1(n358), .B2(n585), .ZN(n283) );
  XNOR2_X1 U718 ( .A(n538), .B(n424), .ZN(n375) );
  XNOR2_X1 U719 ( .A(n538), .B(n423), .ZN(n374) );
  XNOR2_X1 U720 ( .A(n538), .B(n422), .ZN(n373) );
  XNOR2_X1 U721 ( .A(n538), .B(n419), .ZN(n370) );
  XNOR2_X1 U722 ( .A(n538), .B(n420), .ZN(n371) );
  INV_X1 U723 ( .A(n1), .ZN(n593) );
  OR2_X1 U724 ( .A1(n589), .A2(n571), .ZN(n409) );
  OAI21_X1 U725 ( .B1(n561), .B2(n89), .A(n90), .ZN(n88) );
  XNOR2_X1 U726 ( .A(n584), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U727 ( .A(n525), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U728 ( .A(n525), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U729 ( .A(n583), .B(n418), .ZN(n401) );
  XNOR2_X1 U730 ( .A(n583), .B(n419), .ZN(n402) );
  XNOR2_X1 U731 ( .A(n525), .B(n420), .ZN(n403) );
  XNOR2_X1 U732 ( .A(n524), .B(n589), .ZN(n408) );
  XNOR2_X1 U733 ( .A(n583), .B(n422), .ZN(n405) );
  XNOR2_X1 U734 ( .A(n524), .B(n421), .ZN(n404) );
  XNOR2_X1 U735 ( .A(n584), .B(n424), .ZN(n407) );
  XNOR2_X1 U736 ( .A(n584), .B(n423), .ZN(n406) );
  NAND2_X1 U737 ( .A1(n151), .A2(n139), .ZN(n62) );
  OAI22_X1 U738 ( .A1(n18), .A2(n370), .B1(n369), .B2(n586), .ZN(n293) );
  OAI22_X1 U739 ( .A1(n18), .A2(n367), .B1(n366), .B2(n586), .ZN(n290) );
  OAI22_X1 U740 ( .A1(n18), .A2(n375), .B1(n374), .B2(n586), .ZN(n298) );
  OAI22_X1 U741 ( .A1(n18), .A2(n372), .B1(n371), .B2(n586), .ZN(n295) );
  OAI22_X1 U742 ( .A1(n18), .A2(n368), .B1(n367), .B2(n586), .ZN(n291) );
  OAI22_X1 U743 ( .A1(n18), .A2(n373), .B1(n372), .B2(n586), .ZN(n296) );
  OAI22_X1 U744 ( .A1(n18), .A2(n371), .B1(n370), .B2(n586), .ZN(n294) );
  OAI22_X1 U745 ( .A1(n18), .A2(n369), .B1(n368), .B2(n586), .ZN(n292) );
  OAI22_X1 U746 ( .A1(n18), .A2(n374), .B1(n373), .B2(n586), .ZN(n297) );
  OAI22_X1 U747 ( .A1(n18), .A2(n376), .B1(n375), .B2(n586), .ZN(n299) );
  OAI22_X1 U748 ( .A1(n18), .A2(n596), .B1(n377), .B2(n586), .ZN(n256) );
  OAI22_X1 U749 ( .A1(n18), .A2(n366), .B1(n365), .B2(n586), .ZN(n289) );
  XNOR2_X1 U750 ( .A(n515), .B(n420), .ZN(n386) );
  INV_X1 U751 ( .A(n586), .ZN(n245) );
  XNOR2_X1 U752 ( .A(n513), .B(n421), .ZN(n387) );
  XNOR2_X1 U753 ( .A(n515), .B(n422), .ZN(n388) );
  XNOR2_X1 U754 ( .A(n514), .B(n589), .ZN(n391) );
  XNOR2_X1 U755 ( .A(n514), .B(n424), .ZN(n390) );
  XNOR2_X1 U756 ( .A(n513), .B(n423), .ZN(n389) );
  OAI21_X1 U757 ( .B1(n492), .B2(n506), .A(n72), .ZN(n70) );
  OAI21_X1 U758 ( .B1(n572), .B2(n78), .A(n79), .ZN(n77) );
  XNOR2_X1 U759 ( .A(n70), .B(n47), .ZN(product[14]) );
  OAI21_X1 U760 ( .B1(n64), .B2(n563), .A(n65), .ZN(n63) );
  XNOR2_X1 U761 ( .A(n536), .B(n53), .ZN(product[8]) );
  OAI22_X1 U762 ( .A1(n560), .A2(n395), .B1(n394), .B2(n565), .ZN(n316) );
  OAI22_X1 U763 ( .A1(n6), .A2(n394), .B1(n393), .B2(n565), .ZN(n315) );
  OAI22_X1 U764 ( .A1(n560), .A2(n396), .B1(n395), .B2(n565), .ZN(n317) );
  OAI22_X1 U765 ( .A1(n6), .A2(n397), .B1(n396), .B2(n565), .ZN(n318) );
  OAI22_X1 U766 ( .A1(n6), .A2(n398), .B1(n397), .B2(n565), .ZN(n319) );
  OAI22_X1 U767 ( .A1(n6), .A2(n400), .B1(n399), .B2(n565), .ZN(n321) );
  OAI22_X1 U768 ( .A1(n560), .A2(n401), .B1(n400), .B2(n565), .ZN(n322) );
  OAI22_X1 U769 ( .A1(n399), .A2(n560), .B1(n398), .B2(n565), .ZN(n320) );
  OAI22_X1 U770 ( .A1(n560), .A2(n518), .B1(n401), .B2(n565), .ZN(n323) );
  OAI22_X1 U771 ( .A1(n560), .A2(n404), .B1(n403), .B2(n565), .ZN(n325) );
  OAI22_X1 U772 ( .A1(n497), .A2(n6), .B1(n402), .B2(n565), .ZN(n324) );
  OAI22_X1 U773 ( .A1(n560), .A2(n406), .B1(n405), .B2(n565), .ZN(n327) );
  OAI22_X1 U774 ( .A1(n6), .A2(n405), .B1(n404), .B2(n565), .ZN(n326) );
  OAI22_X1 U775 ( .A1(n6), .A2(n407), .B1(n406), .B2(n565), .ZN(n328) );
  OAI22_X1 U776 ( .A1(n560), .A2(n408), .B1(n407), .B2(n565), .ZN(n329) );
  INV_X1 U777 ( .A(n122), .ZN(n120) );
  NAND2_X1 U778 ( .A1(n329), .A2(n258), .ZN(n122) );
  AOI21_X1 U779 ( .B1(n577), .B2(n104), .A(n558), .ZN(n99) );
  OAI22_X1 U780 ( .A1(n6), .A2(n571), .B1(n409), .B2(n565), .ZN(n258) );
  XOR2_X1 U781 ( .A(n547), .B(n54), .Z(product[7]) );
  OAI22_X1 U782 ( .A1(n541), .A2(n379), .B1(n378), .B2(n568), .ZN(n301) );
  OAI22_X1 U783 ( .A1(n541), .A2(n380), .B1(n379), .B2(n529), .ZN(n302) );
  OAI22_X1 U784 ( .A1(n532), .A2(n385), .B1(n384), .B2(n568), .ZN(n307) );
  OAI22_X1 U785 ( .A1(n541), .A2(n382), .B1(n381), .B2(n529), .ZN(n304) );
  OAI22_X1 U786 ( .A1(n541), .A2(n381), .B1(n380), .B2(n529), .ZN(n303) );
  NAND2_X1 U787 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U788 ( .A1(n540), .A2(n383), .B1(n567), .B2(n382), .ZN(n305) );
  OAI22_X1 U789 ( .A1(n12), .A2(n384), .B1(n383), .B2(n567), .ZN(n306) );
  OAI22_X1 U790 ( .A1(n532), .A2(n386), .B1(n385), .B2(n568), .ZN(n308) );
  OAI22_X1 U791 ( .A1(n532), .A2(n387), .B1(n386), .B2(n568), .ZN(n309) );
  OAI22_X1 U792 ( .A1(n532), .A2(n523), .B1(n392), .B2(n568), .ZN(n257) );
  OAI22_X1 U793 ( .A1(n12), .A2(n389), .B1(n388), .B2(n529), .ZN(n311) );
  OAI22_X1 U794 ( .A1(n12), .A2(n388), .B1(n567), .B2(n387), .ZN(n310) );
  OAI22_X1 U795 ( .A1(n541), .A2(n390), .B1(n389), .B2(n568), .ZN(n312) );
  INV_X1 U796 ( .A(n529), .ZN(n247) );
  OAI22_X1 U797 ( .A1(n532), .A2(n391), .B1(n390), .B2(n568), .ZN(n313) );
  INV_X1 U798 ( .A(n596), .ZN(n595) );
  INV_X1 U799 ( .A(n31), .ZN(n602) );
  INV_X1 U800 ( .A(n604), .ZN(n603) );
  INV_X1 U801 ( .A(n36), .ZN(n604) );
  INV_X1 U802 ( .A(n606), .ZN(n605) );
  INV_X1 U803 ( .A(n40), .ZN(n606) );
  XOR2_X1 U804 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U805 ( .A(n289), .B(n279), .Z(n146) );
  XOR2_X1 U806 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_11_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n8, n9, n10, n11, n12, n13, n14, n15, n16, n19,
         n20, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n44, n45, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n65, n67, n68, n69, n70, n71,
         n73, n75, n76, n77, n78, n79, n81, n83, n84, n86, n88, n89, n91, n94,
         n95, n96, n98, n100, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178;

  AND2_X1 U122 ( .A1(n169), .A2(n86), .ZN(SUM[0]) );
  AOI21_X1 U123 ( .B1(n174), .B2(n68), .A(n65), .ZN(n158) );
  XNOR2_X1 U124 ( .A(n45), .B(n159), .ZN(SUM[10]) );
  AND2_X1 U125 ( .A1(n166), .A2(n44), .ZN(n159) );
  OR2_X1 U126 ( .A1(A[15]), .A2(B[15]), .ZN(n160) );
  AND2_X1 U127 ( .A1(A[9]), .A2(B[9]), .ZN(n161) );
  XNOR2_X1 U128 ( .A(n162), .B(n37), .ZN(SUM[11]) );
  AND2_X1 U129 ( .A1(n91), .A2(n165), .ZN(n162) );
  BUF_X1 U130 ( .A(n36), .Z(n165) );
  INV_X1 U131 ( .A(n89), .ZN(n163) );
  NOR2_X1 U132 ( .A1(A[8]), .A2(B[8]), .ZN(n164) );
  OR2_X1 U133 ( .A1(A[10]), .A2(B[10]), .ZN(n166) );
  NOR2_X2 U134 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  NAND2_X1 U135 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  AOI21_X1 U136 ( .B1(n38), .B2(n30), .A(n31), .ZN(n167) );
  AOI21_X1 U137 ( .B1(n38), .B2(n30), .A(n31), .ZN(n1) );
  NOR2_X1 U138 ( .A1(A[14]), .A2(B[14]), .ZN(n168) );
  NOR2_X1 U139 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  OR2_X1 U140 ( .A1(A[0]), .A2(B[0]), .ZN(n169) );
  INV_X1 U141 ( .A(n38), .ZN(n37) );
  AOI21_X1 U142 ( .B1(n173), .B2(n161), .A(n178), .ZN(n40) );
  NOR2_X1 U143 ( .A1(n164), .A2(n57), .ZN(n52) );
  AOI21_X1 U144 ( .B1(n174), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U145 ( .A(n67), .ZN(n65) );
  AOI21_X1 U146 ( .B1(n172), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U147 ( .A(n83), .ZN(n81) );
  OAI21_X1 U148 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  OR2_X1 U149 ( .A1(n168), .A2(n28), .ZN(n170) );
  OAI21_X1 U150 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  AOI21_X1 U151 ( .B1(n50), .B2(n171), .A(n161), .ZN(n45) );
  INV_X1 U152 ( .A(n86), .ZN(n84) );
  INV_X1 U153 ( .A(n57), .ZN(n95) );
  NAND2_X1 U154 ( .A1(n94), .A2(n55), .ZN(n9) );
  INV_X1 U155 ( .A(n164), .ZN(n94) );
  AOI21_X1 U156 ( .B1(n175), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U157 ( .A(n75), .ZN(n73) );
  NAND2_X1 U158 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U159 ( .A(n69), .ZN(n98) );
  NAND2_X1 U160 ( .A1(n171), .A2(n49), .ZN(n8) );
  NAND2_X1 U161 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U162 ( .A(n77), .ZN(n100) );
  NAND2_X1 U163 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U164 ( .A(n61), .ZN(n96) );
  NAND2_X1 U165 ( .A1(n174), .A2(n67), .ZN(n12) );
  NAND2_X1 U166 ( .A1(n175), .A2(n75), .ZN(n14) );
  NAND2_X1 U167 ( .A1(n172), .A2(n83), .ZN(n16) );
  INV_X1 U168 ( .A(n178), .ZN(n44) );
  NAND2_X1 U169 ( .A1(n88), .A2(n26), .ZN(n3) );
  XNOR2_X1 U170 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  XNOR2_X1 U171 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XNOR2_X1 U172 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XOR2_X1 U173 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XOR2_X1 U174 ( .A(n11), .B(n158), .Z(SUM[6]) );
  XNOR2_X1 U175 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  XOR2_X1 U176 ( .A(n13), .B(n71), .Z(SUM[4]) );
  XNOR2_X1 U177 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  XOR2_X1 U178 ( .A(n15), .B(n79), .Z(SUM[2]) );
  XNOR2_X1 U179 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NOR2_X1 U180 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  NOR2_X1 U181 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  NOR2_X1 U182 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  OR2_X1 U183 ( .A1(A[9]), .A2(B[9]), .ZN(n171) );
  NOR2_X1 U184 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NOR2_X1 U185 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NAND2_X1 U186 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  OR2_X1 U187 ( .A1(A[1]), .A2(B[1]), .ZN(n172) );
  OR2_X1 U188 ( .A1(A[10]), .A2(B[10]), .ZN(n173) );
  NAND2_X1 U189 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  NOR2_X1 U190 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  OR2_X1 U191 ( .A1(A[5]), .A2(B[5]), .ZN(n174) );
  NAND2_X1 U192 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U193 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  OR2_X1 U194 ( .A1(A[3]), .A2(B[3]), .ZN(n175) );
  NAND2_X1 U195 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  NAND2_X1 U196 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NAND2_X1 U197 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U198 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U199 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U200 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  NAND2_X1 U201 ( .A1(n160), .A2(n19), .ZN(n2) );
  OR2_X1 U202 ( .A1(A[12]), .A2(B[12]), .ZN(n176) );
  OAI21_X1 U203 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  OAI21_X1 U204 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  NAND2_X1 U205 ( .A1(n95), .A2(n58), .ZN(n10) );
  NAND2_X1 U206 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  NAND2_X1 U207 ( .A1(n89), .A2(n29), .ZN(n4) );
  INV_X1 U208 ( .A(n28), .ZN(n89) );
  NAND2_X1 U209 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  NOR2_X1 U210 ( .A1(A[12]), .A2(B[12]), .ZN(n177) );
  NOR2_X1 U211 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  AND2_X1 U212 ( .A1(A[10]), .A2(B[10]), .ZN(n178) );
  INV_X1 U213 ( .A(n24), .ZN(n22) );
  NAND2_X1 U214 ( .A1(n176), .A2(n33), .ZN(n5) );
  INV_X1 U215 ( .A(n60), .ZN(n59) );
  INV_X1 U216 ( .A(n51), .ZN(n50) );
  OAI21_X1 U217 ( .B1(n32), .B2(n36), .A(n33), .ZN(n31) );
  AOI21_X1 U218 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  OAI21_X1 U219 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  INV_X1 U220 ( .A(n168), .ZN(n88) );
  OAI21_X1 U221 ( .B1(n25), .B2(n29), .A(n26), .ZN(n24) );
  NAND2_X1 U222 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  INV_X1 U223 ( .A(n35), .ZN(n91) );
  OAI21_X1 U224 ( .B1(n37), .B2(n35), .A(n165), .ZN(n34) );
  NOR2_X1 U225 ( .A1(n177), .A2(n35), .ZN(n30) );
  NAND2_X1 U226 ( .A1(A[15]), .A2(B[15]), .ZN(n19) );
  OAI21_X1 U227 ( .B1(n39), .B2(n51), .A(n40), .ZN(n38) );
  XNOR2_X1 U228 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  NAND2_X1 U229 ( .A1(n166), .A2(n171), .ZN(n39) );
  XNOR2_X1 U230 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  XOR2_X1 U231 ( .A(n1), .B(n4), .Z(SUM[13]) );
  OAI21_X1 U232 ( .B1(n167), .B2(n163), .A(n29), .ZN(n27) );
  OAI21_X1 U233 ( .B1(n167), .B2(n170), .A(n22), .ZN(n20) );
endmodule


module datapath_M16_N8_T16_P16_11 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n21), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n228), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n229), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n230), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n231), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n232), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n233), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n234), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n235), .CK(clk), .Q(n34) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n236), .CK(clk), .Q(n35) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n237), .CK(clk), .Q(n36) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n238), .CK(clk), .Q(n37) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n239), .CK(clk), .Q(n38) );
  DFF_X1 \f_reg[0]  ( .D(n167), .CK(clk), .Q(n64), .QN(n217) );
  DFF_X1 \f_reg[1]  ( .D(n166), .CK(clk), .Q(n62), .QN(n218) );
  DFF_X1 \f_reg[2]  ( .D(n114), .CK(clk), .Q(n60), .QN(n219) );
  DFF_X1 \f_reg[3]  ( .D(n113), .CK(clk), .Q(f[3]), .QN(n68) );
  DFF_X1 \data_out_reg[15]  ( .D(n169), .CK(clk), .Q(data_out[15]), .QN(n200)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n170), .CK(clk), .Q(data_out[14]), .QN(n199)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n171), .CK(clk), .Q(data_out[13]), .QN(n198)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n172), .CK(clk), .Q(data_out[12]), .QN(n197)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n173), .CK(clk), .Q(data_out[11]), .QN(n196)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n174), .CK(clk), .Q(data_out[10]), .QN(n195)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n175), .CK(clk), .Q(data_out[9]), .QN(n194) );
  DFF_X1 \data_out_reg[8]  ( .D(n176), .CK(clk), .Q(data_out[8]), .QN(n193) );
  DFF_X1 \data_out_reg[7]  ( .D(n177), .CK(clk), .Q(data_out[7]), .QN(n192) );
  DFF_X1 \data_out_reg[6]  ( .D(n178), .CK(clk), .Q(data_out[6]), .QN(n191) );
  DFF_X1 \data_out_reg[5]  ( .D(n179), .CK(clk), .Q(data_out[5]), .QN(n190) );
  DFF_X1 \data_out_reg[4]  ( .D(n180), .CK(clk), .Q(data_out[4]), .QN(n189) );
  DFF_X1 \data_out_reg[3]  ( .D(n181), .CK(clk), .Q(data_out[3]), .QN(n188) );
  DFF_X1 \data_out_reg[2]  ( .D(n182), .CK(clk), .Q(data_out[2]), .QN(n187) );
  DFF_X1 \data_out_reg[1]  ( .D(n183), .CK(clk), .Q(data_out[1]), .QN(n186) );
  DFF_X1 \data_out_reg[0]  ( .D(n184), .CK(clk), .Q(data_out[0]), .QN(n185) );
  datapath_M16_N8_T16_P16_11_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_11_DW01_add_2 add_262 ( .A({n207, n206, n205, n204, 
        n203, n202, n216, n215, n214, n213, n212, n211, n210, n209, n208, n201}), .B({f[15], n47, n48, n49, n50, n52, f[9:3], n60, n62, n64}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n243), .CK(clk), .Q(n43) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n242), .CK(clk), .Q(n41) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n241), .CK(clk), .Q(n40) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n240), .CK(clk), .Q(n39) );
  DFF_X1 \f_reg[4]  ( .D(n112), .CK(clk), .Q(f[4]), .QN(n69) );
  DFF_X1 \f_reg[5]  ( .D(n111), .CK(clk), .Q(f[5]), .QN(n70) );
  DFF_X1 \f_reg[6]  ( .D(n102), .CK(clk), .Q(f[6]), .QN(n71) );
  DFF_X1 \f_reg[7]  ( .D(n85), .CK(clk), .Q(f[7]), .QN(n220) );
  DFF_X1 \f_reg[8]  ( .D(n83), .CK(clk), .Q(f[8]), .QN(n221) );
  DFF_X1 \f_reg[9]  ( .D(n82), .CK(clk), .Q(f[9]), .QN(n222) );
  DFF_X1 \f_reg[10]  ( .D(n81), .CK(clk), .Q(n52), .QN(n223) );
  DFF_X1 \f_reg[11]  ( .D(n80), .CK(clk), .Q(n50), .QN(n224) );
  DFF_X1 \f_reg[13]  ( .D(n15), .CK(clk), .Q(n48), .QN(n226) );
  DFF_X1 \f_reg[12]  ( .D(n1), .CK(clk), .Q(n49), .QN(n225) );
  DFF_X2 delay_reg ( .D(n168), .CK(clk), .Q(n10), .QN(n244) );
  DFF_X2 \f_reg[15]  ( .D(n79), .CK(clk), .Q(f[15]), .QN(n76) );
  DFF_X1 \f_reg[14]  ( .D(n6), .CK(clk), .Q(n47), .QN(n227) );
  AND2_X1 U3 ( .A1(n46), .A2(n22), .ZN(n14) );
  NAND3_X1 U4 ( .A1(n4), .A2(n2), .A3(n5), .ZN(n1) );
  NAND2_X1 U5 ( .A1(data_out_b[12]), .A2(n20), .ZN(n2) );
  NAND2_X1 U6 ( .A1(adder[12]), .A2(n14), .ZN(n4) );
  NAND2_X1 U8 ( .A1(n66), .A2(n49), .ZN(n5) );
  NAND3_X1 U9 ( .A1(n12), .A2(n11), .A3(n13), .ZN(n6) );
  MUX2_X2 U10 ( .A(n25), .B(N44), .S(n244), .Z(n207) );
  MUX2_X2 U11 ( .A(N38), .B(n33), .S(n10), .Z(n216) );
  OAI222_X1 U12 ( .A1(n7), .A2(n22), .B1(n8), .B2(n9), .C1(n76), .C2(n46), 
        .ZN(n79) );
  INV_X1 U13 ( .A(data_out_b[15]), .ZN(n7) );
  INV_X1 U14 ( .A(adder[15]), .ZN(n8) );
  INV_X1 U15 ( .A(n14), .ZN(n9) );
  MUX2_X2 U16 ( .A(N39), .B(n32), .S(n10), .Z(n202) );
  MUX2_X2 U17 ( .A(n34), .B(N37), .S(n244), .Z(n215) );
  MUX2_X2 U18 ( .A(n29), .B(N40), .S(n244), .Z(n203) );
  NAND2_X1 U19 ( .A1(data_out_b[14]), .A2(n20), .ZN(n11) );
  NAND2_X1 U20 ( .A1(adder[14]), .A2(n14), .ZN(n12) );
  NAND2_X1 U21 ( .A1(n66), .A2(n47), .ZN(n13) );
  MUX2_X2 U22 ( .A(n26), .B(N43), .S(n244), .Z(n206) );
  MUX2_X2 U23 ( .A(n28), .B(N41), .S(n244), .Z(n204) );
  NAND2_X1 U24 ( .A1(n168), .A2(n19), .ZN(n246) );
  INV_X1 U25 ( .A(clear_acc), .ZN(n22) );
  OAI22_X1 U26 ( .A1(n188), .A2(n246), .B1(n68), .B2(n245), .ZN(n181) );
  OAI22_X1 U27 ( .A1(n189), .A2(n246), .B1(n69), .B2(n245), .ZN(n180) );
  OAI22_X1 U28 ( .A1(n190), .A2(n246), .B1(n70), .B2(n245), .ZN(n179) );
  OAI22_X1 U29 ( .A1(n191), .A2(n246), .B1(n71), .B2(n245), .ZN(n178) );
  OAI22_X1 U30 ( .A1(n192), .A2(n246), .B1(n220), .B2(n245), .ZN(n177) );
  OAI22_X1 U31 ( .A1(n193), .A2(n246), .B1(n221), .B2(n245), .ZN(n176) );
  OAI22_X1 U32 ( .A1(n194), .A2(n246), .B1(n222), .B2(n245), .ZN(n175) );
  INV_X1 U33 ( .A(n24), .ZN(n42) );
  MUX2_X1 U34 ( .A(n27), .B(N42), .S(n244), .Z(n205) );
  NAND3_X1 U35 ( .A1(n17), .A2(n16), .A3(n18), .ZN(n15) );
  NAND2_X1 U36 ( .A1(data_out_b[13]), .A2(n20), .ZN(n16) );
  NAND2_X1 U37 ( .A1(adder[13]), .A2(n14), .ZN(n17) );
  NAND2_X1 U38 ( .A1(n66), .A2(n48), .ZN(n18) );
  INV_X1 U39 ( .A(n22), .ZN(n20) );
  INV_X1 U40 ( .A(n46), .ZN(n66) );
  INV_X1 U41 ( .A(wr_en_y), .ZN(n19) );
  INV_X1 U42 ( .A(n22), .ZN(n21) );
  INV_X1 U43 ( .A(m_ready), .ZN(n23) );
  NAND2_X1 U44 ( .A1(m_valid), .A2(n23), .ZN(n44) );
  OAI21_X1 U45 ( .B1(sel[4]), .B2(n78), .A(n44), .ZN(n168) );
  NAND2_X1 U46 ( .A1(clear_acc_delay), .A2(n244), .ZN(n24) );
  MUX2_X1 U47 ( .A(n25), .B(N44), .S(n42), .Z(n228) );
  MUX2_X1 U48 ( .A(n26), .B(N43), .S(n42), .Z(n229) );
  MUX2_X1 U49 ( .A(n27), .B(N42), .S(n42), .Z(n230) );
  MUX2_X1 U50 ( .A(n28), .B(N41), .S(n42), .Z(n231) );
  MUX2_X1 U51 ( .A(n29), .B(N40), .S(n42), .Z(n232) );
  MUX2_X1 U52 ( .A(n32), .B(N39), .S(n42), .Z(n233) );
  MUX2_X1 U53 ( .A(n33), .B(N38), .S(n42), .Z(n234) );
  MUX2_X1 U54 ( .A(n34), .B(N37), .S(n42), .Z(n235) );
  MUX2_X1 U55 ( .A(n35), .B(N36), .S(n42), .Z(n236) );
  MUX2_X1 U56 ( .A(n35), .B(N36), .S(n244), .Z(n214) );
  MUX2_X1 U57 ( .A(n36), .B(N35), .S(n42), .Z(n237) );
  MUX2_X1 U58 ( .A(n36), .B(N35), .S(n244), .Z(n213) );
  MUX2_X1 U59 ( .A(n37), .B(N34), .S(n42), .Z(n238) );
  MUX2_X1 U60 ( .A(n37), .B(N34), .S(n244), .Z(n212) );
  MUX2_X1 U61 ( .A(n38), .B(N33), .S(n42), .Z(n239) );
  MUX2_X1 U62 ( .A(n38), .B(N33), .S(n244), .Z(n211) );
  MUX2_X1 U63 ( .A(n39), .B(N32), .S(n42), .Z(n240) );
  MUX2_X1 U64 ( .A(n39), .B(N32), .S(n244), .Z(n210) );
  MUX2_X1 U65 ( .A(n40), .B(N31), .S(n42), .Z(n241) );
  MUX2_X1 U66 ( .A(n40), .B(N31), .S(n244), .Z(n209) );
  MUX2_X1 U67 ( .A(n41), .B(N30), .S(n42), .Z(n242) );
  MUX2_X1 U68 ( .A(n41), .B(N30), .S(n244), .Z(n208) );
  MUX2_X1 U69 ( .A(n43), .B(N29), .S(n42), .Z(n243) );
  MUX2_X1 U70 ( .A(n43), .B(N29), .S(n244), .Z(n201) );
  INV_X1 U71 ( .A(n44), .ZN(n45) );
  OAI21_X1 U72 ( .B1(n45), .B2(n10), .A(n22), .ZN(n46) );
  AOI222_X1 U73 ( .A1(data_out_b[11]), .A2(n20), .B1(adder[11]), .B2(n14), 
        .C1(n66), .C2(n50), .ZN(n51) );
  INV_X1 U74 ( .A(n51), .ZN(n80) );
  AOI222_X1 U75 ( .A1(data_out_b[10]), .A2(n20), .B1(adder[10]), .B2(n14), 
        .C1(n66), .C2(n52), .ZN(n53) );
  INV_X1 U76 ( .A(n53), .ZN(n81) );
  AOI222_X1 U77 ( .A1(data_out_b[8]), .A2(n20), .B1(adder[8]), .B2(n14), .C1(
        n66), .C2(f[8]), .ZN(n54) );
  INV_X1 U78 ( .A(n54), .ZN(n83) );
  AOI222_X1 U79 ( .A1(data_out_b[7]), .A2(n20), .B1(adder[7]), .B2(n14), .C1(
        n66), .C2(f[7]), .ZN(n55) );
  INV_X1 U80 ( .A(n55), .ZN(n85) );
  AOI222_X1 U81 ( .A1(data_out_b[6]), .A2(n20), .B1(adder[6]), .B2(n14), .C1(
        n66), .C2(f[6]), .ZN(n56) );
  INV_X1 U82 ( .A(n56), .ZN(n102) );
  AOI222_X1 U83 ( .A1(data_out_b[5]), .A2(n20), .B1(adder[5]), .B2(n14), .C1(
        n66), .C2(f[5]), .ZN(n57) );
  INV_X1 U84 ( .A(n57), .ZN(n111) );
  AOI222_X1 U85 ( .A1(data_out_b[4]), .A2(n20), .B1(adder[4]), .B2(n14), .C1(
        n66), .C2(f[4]), .ZN(n58) );
  INV_X1 U86 ( .A(n58), .ZN(n112) );
  AOI222_X1 U87 ( .A1(data_out_b[3]), .A2(n20), .B1(adder[3]), .B2(n14), .C1(
        n66), .C2(f[3]), .ZN(n59) );
  INV_X1 U88 ( .A(n59), .ZN(n113) );
  AOI222_X1 U89 ( .A1(data_out_b[2]), .A2(n21), .B1(adder[2]), .B2(n14), .C1(
        n66), .C2(n60), .ZN(n61) );
  INV_X1 U90 ( .A(n61), .ZN(n114) );
  AOI222_X1 U91 ( .A1(data_out_b[1]), .A2(n21), .B1(adder[1]), .B2(n14), .C1(
        n66), .C2(n62), .ZN(n63) );
  INV_X1 U92 ( .A(n63), .ZN(n166) );
  AOI222_X1 U93 ( .A1(data_out_b[0]), .A2(n21), .B1(adder[0]), .B2(n14), .C1(
        n66), .C2(n64), .ZN(n65) );
  INV_X1 U94 ( .A(n65), .ZN(n167) );
  AOI222_X1 U95 ( .A1(data_out_b[9]), .A2(n21), .B1(adder[9]), .B2(n14), .C1(
        n66), .C2(f[9]), .ZN(n67) );
  INV_X1 U96 ( .A(n67), .ZN(n82) );
  NOR4_X1 U97 ( .A1(n50), .A2(n49), .A3(n48), .A4(n47), .ZN(n75) );
  NOR4_X1 U98 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n52), .ZN(n74) );
  NAND4_X1 U99 ( .A1(n71), .A2(n70), .A3(n69), .A4(n68), .ZN(n72) );
  NOR4_X1 U100 ( .A1(n72), .A2(n64), .A3(n62), .A4(n60), .ZN(n73) );
  NAND3_X1 U101 ( .A1(n75), .A2(n74), .A3(n73), .ZN(n77) );
  NAND3_X1 U102 ( .A1(wr_en_y), .A2(n77), .A3(n76), .ZN(n245) );
  OAI22_X1 U103 ( .A1(n185), .A2(n246), .B1(n217), .B2(n245), .ZN(n184) );
  OAI22_X1 U104 ( .A1(n186), .A2(n246), .B1(n218), .B2(n245), .ZN(n183) );
  OAI22_X1 U105 ( .A1(n187), .A2(n246), .B1(n219), .B2(n245), .ZN(n182) );
  OAI22_X1 U106 ( .A1(n195), .A2(n246), .B1(n223), .B2(n245), .ZN(n174) );
  OAI22_X1 U107 ( .A1(n196), .A2(n246), .B1(n224), .B2(n245), .ZN(n173) );
  OAI22_X1 U108 ( .A1(n197), .A2(n246), .B1(n225), .B2(n245), .ZN(n172) );
  OAI22_X1 U109 ( .A1(n198), .A2(n246), .B1(n226), .B2(n245), .ZN(n171) );
  OAI22_X1 U110 ( .A1(n199), .A2(n246), .B1(n227), .B2(n245), .ZN(n170) );
  OAI22_X1 U111 ( .A1(n200), .A2(n246), .B1(n76), .B2(n245), .ZN(n169) );
  AND4_X1 U112 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n78)
         );
endmodule


module datapath_M16_N8_T16_P16_10_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n27, n29, n31,
         n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50, n53,
         n55, n56, n58, n59, n62, n63, n64, n65, n67, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n93, n95, n96, n97, n98, n99, n103, n104, n105,
         n106, n107, n109, n111, n112, n113, n114, n115, n117, n119, n120,
         n122, n125, n127, n131, n133, n135, n139, n141, n142, n143, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n237, n243, n245, n247, n249, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n418, n419, n420, n421, n422, n423, n424, n426, n427, n429,
         n433, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U150 ( .A(n271), .B(n146), .Z(n147) );
  XOR2_X1 U152 ( .A(n301), .B(n148), .Z(n149) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U161 ( .A(n177), .B(n168), .CI(n166), .CO(n163), .S(n164) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n292), .CI(n274), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n253), .B(n283), .CI(n305), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n269), .B(n319), .CO(n193), .S(n194) );
  FA_X1 U179 ( .A(n284), .B(n294), .CI(n276), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n320), .B(n270), .CI(n306), .CO(n201), .S(n202) );
  FA_X1 U181 ( .A(n208), .B(n213), .CI(n206), .CO(n203), .S(n204) );
  FA_X1 U182 ( .A(n215), .B(n307), .CI(n210), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n295), .B(n285), .CI(n254), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n308), .B(n278), .CI(n322), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n255), .B(n309), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n287), .B(n323), .CO(n221), .S(n222) );
  FA_X1 U191 ( .A(n229), .B(n298), .CI(n226), .CO(n223), .S(n224) );
  FA_X1 U192 ( .A(n324), .B(n288), .CI(n310), .CO(n225), .S(n226) );
  HA_X1 U194 ( .A(n311), .B(n325), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n300), .B(n326), .CI(n312), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  INV_X1 U414 ( .A(n516), .ZN(n490) );
  CLKBUF_X1 U415 ( .A(n532), .Z(n491) );
  NAND2_X1 U416 ( .A1(n544), .A2(n563), .ZN(n492) );
  NAND2_X1 U417 ( .A1(n544), .A2(n563), .ZN(n493) );
  NAND2_X1 U418 ( .A1(n544), .A2(n563), .ZN(n23) );
  INV_X1 U419 ( .A(n590), .ZN(n494) );
  INV_X1 U420 ( .A(n590), .ZN(n589) );
  NAND2_X2 U421 ( .A1(n433), .A2(n579), .ZN(n558) );
  XNOR2_X1 U422 ( .A(n540), .B(n420), .ZN(n338) );
  INV_X1 U423 ( .A(n97), .ZN(n131) );
  XOR2_X1 U424 ( .A(n25), .B(a[10]), .Z(n495) );
  OR2_X1 U425 ( .A1(n328), .A2(n314), .ZN(n496) );
  OR2_X1 U426 ( .A1(n329), .A2(n258), .ZN(n497) );
  BUF_X1 U427 ( .A(n566), .Z(n499) );
  XNOR2_X1 U428 ( .A(n230), .B(n498), .ZN(n228) );
  XNOR2_X1 U429 ( .A(n299), .B(n256), .ZN(n498) );
  BUF_X1 U430 ( .A(n585), .Z(n521) );
  OR2_X1 U431 ( .A1(n224), .A2(n227), .ZN(n566) );
  BUF_X1 U432 ( .A(n557), .Z(n500) );
  CLKBUF_X1 U433 ( .A(n13), .Z(n501) );
  XNOR2_X1 U434 ( .A(n547), .B(n502), .ZN(product[9]) );
  AND2_X1 U435 ( .A1(n530), .A2(n90), .ZN(n502) );
  XNOR2_X1 U436 ( .A(n503), .B(n202), .ZN(n198) );
  XNOR2_X1 U437 ( .A(n207), .B(n209), .ZN(n503) );
  XNOR2_X1 U438 ( .A(n504), .B(n198), .ZN(n196) );
  XNOR2_X1 U439 ( .A(n205), .B(n200), .ZN(n504) );
  XNOR2_X1 U440 ( .A(n501), .B(a[6]), .ZN(n21) );
  CLKBUF_X3 U441 ( .A(n9), .Z(n574) );
  INV_X1 U442 ( .A(n521), .ZN(n505) );
  INV_X1 U443 ( .A(n521), .ZN(n584) );
  CLKBUF_X1 U444 ( .A(n582), .Z(n506) );
  AOI21_X1 U445 ( .B1(n567), .B2(n112), .A(n109), .ZN(n507) );
  INV_X1 U446 ( .A(n247), .ZN(n508) );
  NAND2_X1 U447 ( .A1(n207), .A2(n209), .ZN(n509) );
  NAND2_X1 U448 ( .A1(n207), .A2(n202), .ZN(n510) );
  NAND2_X1 U449 ( .A1(n209), .A2(n202), .ZN(n511) );
  NAND3_X1 U450 ( .A1(n509), .A2(n510), .A3(n511), .ZN(n197) );
  NAND2_X1 U451 ( .A1(n205), .A2(n200), .ZN(n512) );
  NAND2_X1 U452 ( .A1(n205), .A2(n198), .ZN(n513) );
  NAND2_X1 U453 ( .A1(n200), .A2(n198), .ZN(n514) );
  NAND3_X1 U454 ( .A1(n512), .A2(n513), .A3(n514), .ZN(n195) );
  BUF_X1 U455 ( .A(n549), .Z(n515) );
  AND2_X1 U456 ( .A1(n224), .A2(n227), .ZN(n549) );
  BUF_X1 U457 ( .A(n527), .Z(n547) );
  INV_X1 U458 ( .A(n594), .ZN(n516) );
  OAI21_X1 U459 ( .B1(n507), .B2(n105), .A(n106), .ZN(n517) );
  AOI21_X1 U460 ( .B1(n545), .B2(n80), .A(n81), .ZN(n518) );
  OR2_X1 U461 ( .A1(n196), .A2(n203), .ZN(n519) );
  AOI21_X1 U462 ( .B1(n499), .B2(n517), .A(n515), .ZN(n520) );
  BUF_X1 U463 ( .A(n75), .Z(n522) );
  NOR2_X1 U464 ( .A1(n196), .A2(n203), .ZN(n85) );
  NOR2_X1 U465 ( .A1(n186), .A2(n195), .ZN(n523) );
  NOR2_X1 U466 ( .A1(n186), .A2(n195), .ZN(n82) );
  OAI21_X1 U467 ( .B1(n523), .B2(n86), .A(n83), .ZN(n524) );
  XNOR2_X1 U468 ( .A(n88), .B(n525), .ZN(product[10]) );
  NAND2_X1 U469 ( .A1(n519), .A2(n86), .ZN(n525) );
  INV_X1 U470 ( .A(n592), .ZN(n526) );
  INV_X1 U471 ( .A(n592), .ZN(n591) );
  AOI21_X1 U472 ( .B1(n96), .B2(n565), .A(n93), .ZN(n527) );
  AOI21_X1 U473 ( .B1(n96), .B2(n565), .A(n93), .ZN(n91) );
  BUF_X1 U474 ( .A(n12), .Z(n555) );
  NOR2_X1 U475 ( .A1(n164), .A2(n175), .ZN(n528) );
  NOR2_X1 U476 ( .A1(n164), .A2(n175), .ZN(n75) );
  INV_X1 U477 ( .A(n505), .ZN(n529) );
  OR2_X1 U478 ( .A1(n204), .A2(n211), .ZN(n530) );
  INV_X1 U479 ( .A(n506), .ZN(n581) );
  INV_X2 U480 ( .A(n582), .ZN(n580) );
  BUF_X1 U481 ( .A(n12), .Z(n531) );
  BUF_X1 U482 ( .A(n12), .Z(n532) );
  CLKBUF_X1 U483 ( .A(n12), .Z(n556) );
  BUF_X2 U484 ( .A(n579), .Z(n533) );
  INV_X1 U485 ( .A(n249), .ZN(n579) );
  INV_X1 U486 ( .A(n554), .ZN(n534) );
  INV_X1 U487 ( .A(n554), .ZN(n27) );
  INV_X1 U488 ( .A(n501), .ZN(n535) );
  CLKBUF_X1 U489 ( .A(n18), .Z(n536) );
  BUF_X1 U490 ( .A(n18), .Z(n537) );
  BUF_X2 U491 ( .A(n18), .Z(n538) );
  INV_X1 U492 ( .A(n580), .ZN(n539) );
  INV_X1 U493 ( .A(n594), .ZN(n540) );
  INV_X1 U494 ( .A(n594), .ZN(n593) );
  OR2_X1 U495 ( .A1(n176), .A2(n185), .ZN(n541) );
  BUF_X1 U496 ( .A(n37), .Z(n542) );
  OR2_X2 U497 ( .A1(n543), .A2(n495), .ZN(n34) );
  XNOR2_X1 U498 ( .A(n516), .B(a[10]), .ZN(n543) );
  XOR2_X1 U499 ( .A(n588), .B(a[6]), .Z(n544) );
  OAI21_X1 U500 ( .B1(n527), .B2(n89), .A(n90), .ZN(n545) );
  INV_X1 U501 ( .A(n495), .ZN(n546) );
  XOR2_X1 U502 ( .A(n582), .B(a[2]), .Z(n9) );
  INV_X1 U503 ( .A(n515), .ZN(n103) );
  CLKBUF_X1 U504 ( .A(n74), .Z(n548) );
  XNOR2_X1 U505 ( .A(n582), .B(n249), .ZN(n433) );
  NAND2_X1 U506 ( .A1(n230), .A2(n299), .ZN(n550) );
  NAND2_X1 U507 ( .A1(n230), .A2(n256), .ZN(n551) );
  NAND2_X1 U508 ( .A1(n299), .A2(n256), .ZN(n552) );
  NAND3_X1 U509 ( .A1(n550), .A2(n551), .A3(n552), .ZN(n227) );
  XNOR2_X1 U510 ( .A(n590), .B(a[6]), .ZN(n563) );
  NAND2_X1 U511 ( .A1(n562), .A2(n16), .ZN(n18) );
  INV_X1 U512 ( .A(n19), .ZN(n590) );
  CLKBUF_X1 U513 ( .A(n96), .Z(n553) );
  OAI21_X1 U514 ( .B1(n107), .B2(n105), .A(n106), .ZN(n104) );
  OAI21_X1 U515 ( .B1(n91), .B2(n89), .A(n90), .ZN(n88) );
  XNOR2_X1 U516 ( .A(n590), .B(a[8]), .ZN(n554) );
  NAND2_X2 U517 ( .A1(n429), .A2(n27), .ZN(n29) );
  INV_X1 U518 ( .A(n588), .ZN(n586) );
  INV_X2 U519 ( .A(n588), .ZN(n587) );
  XNOR2_X1 U520 ( .A(n585), .B(a[2]), .ZN(n561) );
  INV_X1 U521 ( .A(n585), .ZN(n583) );
  XOR2_X1 U522 ( .A(n585), .B(a[4]), .Z(n16) );
  NAND2_X1 U523 ( .A1(n561), .A2(n9), .ZN(n12) );
  AOI21_X1 U524 ( .B1(n545), .B2(n80), .A(n524), .ZN(n557) );
  NAND2_X1 U525 ( .A1(n433), .A2(n579), .ZN(n6) );
  OR2_X1 U526 ( .A1(n152), .A2(n163), .ZN(n564) );
  XOR2_X1 U527 ( .A(n559), .B(n112), .Z(product[4]) );
  AND2_X1 U528 ( .A1(n567), .A2(n111), .ZN(n559) );
  NOR2_X1 U529 ( .A1(n176), .A2(n185), .ZN(n78) );
  OR2_X1 U530 ( .A1(n212), .A2(n217), .ZN(n565) );
  XOR2_X1 U531 ( .A(n520), .B(n560), .Z(product[7]) );
  NAND2_X1 U532 ( .A1(n131), .A2(n98), .ZN(n560) );
  XOR2_X1 U533 ( .A(n586), .B(a[4]), .Z(n562) );
  NAND2_X1 U534 ( .A1(n564), .A2(n69), .ZN(n47) );
  INV_X1 U535 ( .A(n74), .ZN(n72) );
  AOI21_X1 U536 ( .B1(n548), .B2(n564), .A(n67), .ZN(n65) );
  INV_X1 U537 ( .A(n69), .ZN(n67) );
  INV_X1 U538 ( .A(n73), .ZN(n71) );
  AOI21_X1 U539 ( .B1(n545), .B2(n80), .A(n81), .ZN(n45) );
  NOR2_X1 U540 ( .A1(n82), .A2(n85), .ZN(n80) );
  OAI21_X1 U541 ( .B1(n82), .B2(n86), .A(n83), .ZN(n81) );
  INV_X1 U542 ( .A(n95), .ZN(n93) );
  NAND2_X1 U543 ( .A1(n125), .A2(n76), .ZN(n48) );
  INV_X1 U544 ( .A(n522), .ZN(n125) );
  OAI21_X1 U545 ( .B1(n528), .B2(n79), .A(n76), .ZN(n74) );
  NOR2_X1 U546 ( .A1(n75), .A2(n78), .ZN(n73) );
  XNOR2_X1 U547 ( .A(n84), .B(n50), .ZN(product[11]) );
  NAND2_X1 U548 ( .A1(n127), .A2(n83), .ZN(n50) );
  INV_X1 U549 ( .A(n523), .ZN(n127) );
  NAND2_X1 U550 ( .A1(n152), .A2(n163), .ZN(n69) );
  NAND2_X1 U551 ( .A1(n565), .A2(n95), .ZN(n53) );
  OAI21_X1 U552 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  INV_X1 U553 ( .A(n113), .ZN(n135) );
  OAI21_X1 U554 ( .B1(n99), .B2(n97), .A(n98), .ZN(n96) );
  AOI21_X1 U555 ( .B1(n567), .B2(n112), .A(n109), .ZN(n107) );
  INV_X1 U556 ( .A(n111), .ZN(n109) );
  AOI21_X1 U557 ( .B1(n496), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U558 ( .A(n119), .ZN(n117) );
  INV_X1 U559 ( .A(n122), .ZN(n120) );
  XNOR2_X1 U560 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U561 ( .A1(n568), .A2(n62), .ZN(n46) );
  NAND2_X1 U562 ( .A1(n73), .A2(n564), .ZN(n64) );
  XNOR2_X1 U563 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U564 ( .A1(n496), .A2(n119), .ZN(n59) );
  NAND2_X1 U565 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U566 ( .A1(n186), .A2(n195), .ZN(n83) );
  NAND2_X1 U567 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U568 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U569 ( .A1(n212), .A2(n217), .ZN(n95) );
  NAND2_X1 U570 ( .A1(n204), .A2(n211), .ZN(n90) );
  NAND2_X1 U571 ( .A1(n133), .A2(n106), .ZN(n56) );
  INV_X1 U572 ( .A(n105), .ZN(n133) );
  NOR2_X1 U573 ( .A1(n234), .A2(n257), .ZN(n113) );
  BUF_X2 U574 ( .A(n21), .Z(n573) );
  NOR2_X1 U575 ( .A1(n228), .A2(n231), .ZN(n105) );
  NAND2_X1 U576 ( .A1(n228), .A2(n231), .ZN(n106) );
  OR2_X1 U577 ( .A1(n232), .A2(n233), .ZN(n567) );
  INV_X1 U578 ( .A(n37), .ZN(n237) );
  NAND2_X1 U579 ( .A1(n218), .A2(n223), .ZN(n98) );
  INV_X1 U580 ( .A(n41), .ZN(n235) );
  OR2_X1 U581 ( .A1(n151), .A2(n139), .ZN(n568) );
  AND2_X1 U582 ( .A1(n497), .A2(n122), .ZN(product[1]) );
  XNOR2_X1 U583 ( .A(n593), .B(a[12]), .ZN(n37) );
  XNOR2_X1 U584 ( .A(n595), .B(a[14]), .ZN(n41) );
  OR2_X1 U585 ( .A1(n577), .A2(n529), .ZN(n392) );
  AND2_X1 U586 ( .A1(n578), .A2(n554), .ZN(n278) );
  OAI22_X1 U587 ( .A1(n39), .A2(n596), .B1(n337), .B2(n542), .ZN(n252) );
  OR2_X1 U588 ( .A1(n577), .A2(n596), .ZN(n337) );
  AND2_X1 U589 ( .A1(n578), .A2(n235), .ZN(n260) );
  OAI22_X1 U590 ( .A1(n39), .A2(n335), .B1(n542), .B2(n334), .ZN(n262) );
  OAI22_X1 U591 ( .A1(n39), .A2(n336), .B1(n542), .B2(n335), .ZN(n263) );
  OR2_X1 U592 ( .A1(n577), .A2(n535), .ZN(n377) );
  XNOR2_X1 U593 ( .A(n526), .B(n577), .ZN(n352) );
  OAI22_X1 U594 ( .A1(n42), .A2(n598), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U595 ( .A1(n577), .A2(n598), .ZN(n332) );
  AND2_X1 U596 ( .A1(n578), .A2(n245), .ZN(n300) );
  XOR2_X1 U597 ( .A(n591), .B(a[8]), .Z(n429) );
  XNOR2_X1 U598 ( .A(n155), .B(n570), .ZN(n139) );
  XNOR2_X1 U599 ( .A(n153), .B(n141), .ZN(n570) );
  XNOR2_X1 U600 ( .A(n157), .B(n571), .ZN(n141) );
  XNOR2_X1 U601 ( .A(n145), .B(n143), .ZN(n571) );
  XOR2_X1 U602 ( .A(n315), .B(n261), .Z(n150) );
  OAI22_X1 U603 ( .A1(n39), .A2(n334), .B1(n542), .B2(n333), .ZN(n261) );
  XNOR2_X1 U604 ( .A(n595), .B(n577), .ZN(n336) );
  XNOR2_X1 U605 ( .A(n587), .B(n577), .ZN(n376) );
  AND2_X1 U606 ( .A1(n578), .A2(n237), .ZN(n264) );
  AND2_X1 U607 ( .A1(n578), .A2(n495), .ZN(n270) );
  AND2_X1 U608 ( .A1(n578), .A2(n243), .ZN(n288) );
  NAND2_X1 U609 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U610 ( .A(n595), .B(a[12]), .Z(n427) );
  INV_X1 U611 ( .A(n25), .ZN(n592) );
  NAND2_X1 U612 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U613 ( .A(n597), .B(a[14]), .Z(n426) );
  INV_X1 U614 ( .A(n13), .ZN(n588) );
  INV_X1 U615 ( .A(n7), .ZN(n585) );
  XNOR2_X1 U616 ( .A(n589), .B(n577), .ZN(n363) );
  AND2_X1 U617 ( .A1(n578), .A2(n247), .ZN(n314) );
  AND2_X1 U618 ( .A1(n578), .A2(n249), .ZN(product[0]) );
  OR2_X1 U619 ( .A1(n577), .A2(n490), .ZN(n344) );
  OR2_X1 U620 ( .A1(n577), .A2(n592), .ZN(n353) );
  OR2_X1 U621 ( .A1(n577), .A2(n590), .ZN(n364) );
  XNOR2_X1 U622 ( .A(n581), .B(b[15]), .ZN(n393) );
  XNOR2_X1 U623 ( .A(n494), .B(b[9]), .ZN(n354) );
  XNOR2_X1 U624 ( .A(n587), .B(b[11]), .ZN(n365) );
  XNOR2_X1 U625 ( .A(n595), .B(n423), .ZN(n334) );
  XNOR2_X1 U626 ( .A(n595), .B(n424), .ZN(n335) );
  OAI22_X1 U627 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U628 ( .A(n597), .B(n424), .ZN(n330) );
  XNOR2_X1 U629 ( .A(n597), .B(n577), .ZN(n331) );
  XNOR2_X1 U630 ( .A(n526), .B(n418), .ZN(n345) );
  XNOR2_X1 U631 ( .A(n265), .B(n572), .ZN(n145) );
  XNOR2_X1 U632 ( .A(n149), .B(n147), .ZN(n572) );
  XNOR2_X1 U633 ( .A(n505), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U634 ( .A(n505), .B(n418), .ZN(n384) );
  XNOR2_X1 U635 ( .A(n584), .B(n419), .ZN(n385) );
  XNOR2_X1 U636 ( .A(n505), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U637 ( .A(n505), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U638 ( .A(n584), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U639 ( .A(n584), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U640 ( .A(n505), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U641 ( .A(n589), .B(n424), .ZN(n362) );
  XNOR2_X1 U642 ( .A(n591), .B(n424), .ZN(n351) );
  XNOR2_X1 U643 ( .A(n587), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U644 ( .A(n587), .B(n418), .ZN(n369) );
  XNOR2_X1 U645 ( .A(n587), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U646 ( .A(n587), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U647 ( .A(n595), .B(n422), .ZN(n333) );
  XNOR2_X1 U648 ( .A(n494), .B(n423), .ZN(n361) );
  XNOR2_X1 U649 ( .A(n591), .B(n423), .ZN(n350) );
  XNOR2_X1 U650 ( .A(n526), .B(n422), .ZN(n349) );
  XNOR2_X1 U651 ( .A(n589), .B(n422), .ZN(n360) );
  XNOR2_X1 U652 ( .A(n580), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U653 ( .A(n581), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U654 ( .A(n581), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U655 ( .A(n581), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U656 ( .A(n589), .B(n420), .ZN(n358) );
  XNOR2_X1 U657 ( .A(n526), .B(n420), .ZN(n347) );
  XNOR2_X1 U658 ( .A(n540), .B(n421), .ZN(n339) );
  XNOR2_X1 U659 ( .A(n591), .B(n421), .ZN(n348) );
  XNOR2_X1 U660 ( .A(n589), .B(n421), .ZN(n359) );
  XNOR2_X1 U661 ( .A(n494), .B(n418), .ZN(n356) );
  XNOR2_X1 U662 ( .A(n526), .B(n419), .ZN(n346) );
  XNOR2_X1 U663 ( .A(n494), .B(n419), .ZN(n357) );
  XNOR2_X1 U664 ( .A(n494), .B(b[8]), .ZN(n355) );
  BUF_X1 U665 ( .A(n43), .Z(n578) );
  XNOR2_X1 U666 ( .A(n593), .B(n424), .ZN(n342) );
  XNOR2_X1 U667 ( .A(n593), .B(n422), .ZN(n340) );
  XNOR2_X1 U668 ( .A(n540), .B(n423), .ZN(n341) );
  XNOR2_X1 U669 ( .A(n540), .B(n577), .ZN(n343) );
  OAI22_X1 U670 ( .A1(n34), .A2(n339), .B1(n338), .B2(n546), .ZN(n265) );
  OAI22_X1 U671 ( .A1(n34), .A2(n341), .B1(n340), .B2(n546), .ZN(n267) );
  OAI22_X1 U672 ( .A1(n34), .A2(n340), .B1(n339), .B2(n546), .ZN(n266) );
  OAI22_X1 U673 ( .A1(n34), .A2(n342), .B1(n341), .B2(n546), .ZN(n268) );
  OAI22_X1 U674 ( .A1(n34), .A2(n343), .B1(n342), .B2(n546), .ZN(n269) );
  OAI22_X1 U675 ( .A1(n34), .A2(n490), .B1(n344), .B2(n546), .ZN(n253) );
  CLKBUF_X3 U676 ( .A(n16), .Z(n575) );
  NAND2_X1 U677 ( .A1(n499), .A2(n103), .ZN(n55) );
  XNOR2_X1 U678 ( .A(n518), .B(n576), .ZN(product[12]) );
  AND2_X1 U679 ( .A1(n541), .A2(n79), .ZN(n576) );
  XNOR2_X1 U680 ( .A(n77), .B(n48), .ZN(product[13]) );
  NOR2_X1 U681 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U682 ( .A1(n29), .A2(n350), .B1(n349), .B2(n534), .ZN(n275) );
  OAI22_X1 U683 ( .A1(n29), .A2(n346), .B1(n345), .B2(n534), .ZN(n271) );
  OAI22_X1 U684 ( .A1(n29), .A2(n347), .B1(n346), .B2(n534), .ZN(n272) );
  OAI22_X1 U685 ( .A1(n29), .A2(n348), .B1(n347), .B2(n534), .ZN(n273) );
  OAI22_X1 U686 ( .A1(n29), .A2(n349), .B1(n348), .B2(n534), .ZN(n274) );
  OAI22_X1 U687 ( .A1(n29), .A2(n592), .B1(n353), .B2(n534), .ZN(n254) );
  OAI22_X1 U688 ( .A1(n29), .A2(n351), .B1(n350), .B2(n534), .ZN(n276) );
  OAI22_X1 U689 ( .A1(n29), .A2(n352), .B1(n351), .B2(n534), .ZN(n277) );
  NAND2_X1 U690 ( .A1(n135), .A2(n114), .ZN(n58) );
  INV_X1 U691 ( .A(n1), .ZN(n582) );
  OR2_X1 U692 ( .A1(n577), .A2(n539), .ZN(n409) );
  XNOR2_X1 U693 ( .A(n55), .B(n517), .ZN(product[6]) );
  AOI21_X1 U694 ( .B1(n566), .B2(n104), .A(n549), .ZN(n99) );
  NAND2_X1 U695 ( .A1(n328), .A2(n314), .ZN(n119) );
  OAI21_X1 U696 ( .B1(n87), .B2(n85), .A(n86), .ZN(n84) );
  NAND2_X1 U697 ( .A1(n151), .A2(n139), .ZN(n62) );
  XNOR2_X1 U698 ( .A(n583), .B(n420), .ZN(n386) );
  XNOR2_X1 U699 ( .A(n583), .B(n577), .ZN(n391) );
  XNOR2_X1 U700 ( .A(n583), .B(n424), .ZN(n390) );
  XNOR2_X1 U701 ( .A(n583), .B(n422), .ZN(n388) );
  XNOR2_X1 U702 ( .A(n583), .B(n421), .ZN(n387) );
  XNOR2_X1 U703 ( .A(n583), .B(n423), .ZN(n389) );
  XNOR2_X1 U704 ( .A(n70), .B(n47), .ZN(product[14]) );
  INV_X1 U705 ( .A(n88), .ZN(n87) );
  XNOR2_X1 U706 ( .A(n553), .B(n53), .ZN(product[8]) );
  OAI22_X1 U707 ( .A1(n493), .A2(n358), .B1(n357), .B2(n573), .ZN(n282) );
  OAI22_X1 U708 ( .A1(n492), .A2(n356), .B1(n355), .B2(n573), .ZN(n280) );
  OAI22_X1 U709 ( .A1(n492), .A2(n360), .B1(n359), .B2(n573), .ZN(n284) );
  OAI22_X1 U710 ( .A1(n492), .A2(n357), .B1(n356), .B2(n573), .ZN(n281) );
  OAI22_X1 U711 ( .A1(n492), .A2(n361), .B1(n573), .B2(n360), .ZN(n285) );
  OAI22_X1 U712 ( .A1(n493), .A2(n362), .B1(n361), .B2(n573), .ZN(n286) );
  OAI22_X1 U713 ( .A1(n493), .A2(n590), .B1(n364), .B2(n573), .ZN(n255) );
  OAI22_X1 U714 ( .A1(n23), .A2(n359), .B1(n358), .B2(n573), .ZN(n283) );
  OAI22_X1 U715 ( .A1(n493), .A2(n355), .B1(n354), .B2(n573), .ZN(n279) );
  XNOR2_X1 U716 ( .A(n587), .B(n423), .ZN(n374) );
  XNOR2_X1 U717 ( .A(n587), .B(n419), .ZN(n370) );
  XNOR2_X1 U718 ( .A(n587), .B(n420), .ZN(n371) );
  OAI22_X1 U719 ( .A1(n23), .A2(n363), .B1(n362), .B2(n573), .ZN(n287) );
  XNOR2_X1 U720 ( .A(n587), .B(n422), .ZN(n373) );
  XNOR2_X1 U721 ( .A(n587), .B(n421), .ZN(n372) );
  XNOR2_X1 U722 ( .A(n587), .B(n424), .ZN(n375) );
  INV_X1 U723 ( .A(n21), .ZN(n243) );
  NOR2_X1 U724 ( .A1(n218), .A2(n223), .ZN(n97) );
  OAI22_X1 U725 ( .A1(n537), .A2(n370), .B1(n369), .B2(n575), .ZN(n293) );
  OAI22_X1 U726 ( .A1(n538), .A2(n367), .B1(n366), .B2(n575), .ZN(n290) );
  OAI22_X1 U727 ( .A1(n537), .A2(n368), .B1(n367), .B2(n575), .ZN(n291) );
  OAI22_X1 U728 ( .A1(n538), .A2(n369), .B1(n368), .B2(n575), .ZN(n292) );
  OAI22_X1 U729 ( .A1(n538), .A2(n371), .B1(n370), .B2(n575), .ZN(n294) );
  OAI22_X1 U730 ( .A1(n536), .A2(n372), .B1(n371), .B2(n575), .ZN(n295) );
  OAI22_X1 U731 ( .A1(n537), .A2(n375), .B1(n374), .B2(n575), .ZN(n298) );
  OAI22_X1 U732 ( .A1(n537), .A2(n373), .B1(n372), .B2(n575), .ZN(n296) );
  OAI22_X1 U733 ( .A1(n538), .A2(n366), .B1(n365), .B2(n575), .ZN(n289) );
  OAI22_X1 U734 ( .A1(n537), .A2(n374), .B1(n373), .B2(n575), .ZN(n297) );
  INV_X1 U735 ( .A(n575), .ZN(n245) );
  OAI22_X1 U736 ( .A1(n538), .A2(n376), .B1(n375), .B2(n575), .ZN(n299) );
  OAI22_X1 U737 ( .A1(n536), .A2(n535), .B1(n377), .B2(n575), .ZN(n256) );
  NAND2_X1 U738 ( .A1(n232), .A2(n233), .ZN(n111) );
  OAI21_X1 U739 ( .B1(n64), .B2(n500), .A(n65), .ZN(n63) );
  OAI21_X1 U740 ( .B1(n45), .B2(n78), .A(n79), .ZN(n77) );
  OAI21_X1 U741 ( .B1(n557), .B2(n71), .A(n72), .ZN(n70) );
  XNOR2_X1 U742 ( .A(n581), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U743 ( .A(n580), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U744 ( .A(n580), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U745 ( .A(n580), .B(n418), .ZN(n401) );
  XNOR2_X1 U746 ( .A(n581), .B(n577), .ZN(n408) );
  XNOR2_X1 U747 ( .A(n580), .B(n422), .ZN(n405) );
  XNOR2_X1 U748 ( .A(n580), .B(n420), .ZN(n403) );
  XNOR2_X1 U749 ( .A(n580), .B(n421), .ZN(n404) );
  XNOR2_X1 U750 ( .A(n580), .B(n419), .ZN(n402) );
  XNOR2_X1 U751 ( .A(n580), .B(n424), .ZN(n407) );
  XNOR2_X1 U752 ( .A(n580), .B(n423), .ZN(n406) );
  XOR2_X1 U753 ( .A(n56), .B(n507), .Z(product[5]) );
  XOR2_X1 U754 ( .A(n58), .B(n115), .Z(product[3]) );
  OAI22_X1 U755 ( .A1(n558), .A2(n395), .B1(n394), .B2(n533), .ZN(n316) );
  OAI22_X1 U756 ( .A1(n558), .A2(n394), .B1(n393), .B2(n533), .ZN(n315) );
  OAI22_X1 U757 ( .A1(n558), .A2(n396), .B1(n395), .B2(n533), .ZN(n317) );
  OAI22_X1 U758 ( .A1(n558), .A2(n397), .B1(n396), .B2(n533), .ZN(n318) );
  OAI22_X1 U759 ( .A1(n6), .A2(n398), .B1(n397), .B2(n533), .ZN(n319) );
  OAI22_X1 U760 ( .A1(n6), .A2(n400), .B1(n399), .B2(n533), .ZN(n321) );
  OAI22_X1 U761 ( .A1(n558), .A2(n399), .B1(n398), .B2(n579), .ZN(n320) );
  OAI22_X1 U762 ( .A1(n558), .A2(n401), .B1(n400), .B2(n533), .ZN(n322) );
  OAI22_X1 U763 ( .A1(n558), .A2(n402), .B1(n401), .B2(n579), .ZN(n323) );
  NAND2_X1 U764 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI22_X1 U765 ( .A1(n6), .A2(n404), .B1(n403), .B2(n533), .ZN(n325) );
  OAI22_X1 U766 ( .A1(n6), .A2(n403), .B1(n402), .B2(n579), .ZN(n324) );
  OAI22_X1 U767 ( .A1(n6), .A2(n406), .B1(n405), .B2(n533), .ZN(n327) );
  OAI22_X1 U768 ( .A1(n6), .A2(n405), .B1(n404), .B2(n533), .ZN(n326) );
  OAI22_X1 U769 ( .A1(n558), .A2(n407), .B1(n406), .B2(n533), .ZN(n328) );
  OAI22_X1 U770 ( .A1(n558), .A2(n408), .B1(n407), .B2(n533), .ZN(n329) );
  OAI22_X1 U771 ( .A1(n558), .A2(n539), .B1(n409), .B2(n533), .ZN(n258) );
  OAI22_X1 U772 ( .A1(n491), .A2(n379), .B1(n378), .B2(n508), .ZN(n301) );
  OAI22_X1 U773 ( .A1(n531), .A2(n380), .B1(n379), .B2(n574), .ZN(n302) );
  OAI22_X1 U774 ( .A1(n531), .A2(n385), .B1(n384), .B2(n508), .ZN(n307) );
  OAI22_X1 U775 ( .A1(n555), .A2(n382), .B1(n381), .B2(n574), .ZN(n304) );
  OAI22_X1 U776 ( .A1(n531), .A2(n381), .B1(n380), .B2(n574), .ZN(n303) );
  NAND2_X1 U777 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U778 ( .A1(n555), .A2(n383), .B1(n382), .B2(n574), .ZN(n305) );
  OAI22_X1 U779 ( .A1(n555), .A2(n384), .B1(n383), .B2(n574), .ZN(n306) );
  OAI22_X1 U780 ( .A1(n532), .A2(n386), .B1(n385), .B2(n574), .ZN(n308) );
  OAI22_X1 U781 ( .A1(n531), .A2(n387), .B1(n386), .B2(n574), .ZN(n309) );
  OAI22_X1 U782 ( .A1(n491), .A2(n529), .B1(n392), .B2(n508), .ZN(n257) );
  OAI22_X1 U783 ( .A1(n532), .A2(n389), .B1(n388), .B2(n574), .ZN(n311) );
  OAI22_X1 U784 ( .A1(n556), .A2(n388), .B1(n574), .B2(n387), .ZN(n310) );
  OAI22_X1 U785 ( .A1(n531), .A2(n390), .B1(n389), .B2(n574), .ZN(n312) );
  INV_X1 U786 ( .A(n574), .ZN(n247) );
  OAI22_X1 U787 ( .A1(n532), .A2(n391), .B1(n390), .B2(n574), .ZN(n313) );
  BUF_X4 U788 ( .A(n43), .Z(n577) );
  INV_X1 U789 ( .A(n31), .ZN(n594) );
  INV_X1 U790 ( .A(n596), .ZN(n595) );
  INV_X1 U791 ( .A(n36), .ZN(n596) );
  INV_X1 U792 ( .A(n598), .ZN(n597) );
  INV_X1 U793 ( .A(n40), .ZN(n598) );
  XOR2_X1 U794 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U795 ( .A(n289), .B(n279), .Z(n146) );
  XOR2_X1 U796 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_10_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n5, n8, n9, n10, n11, n12, n13, n14, n15, n16, n19, n20, n22,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n38,
         n39, n40, n44, n45, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n65, n67, n68, n69, n70, n71, n73, n75, n76,
         n77, n78, n79, n81, n83, n84, n86, n90, n91, n94, n95, n96, n98, n100,
         n157, n158, n159, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178;

  OR2_X2 U122 ( .A1(A[10]), .A2(B[10]), .ZN(n177) );
  NOR2_X2 U123 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  OR2_X1 U124 ( .A1(A[14]), .A2(B[14]), .ZN(n157) );
  OR2_X1 U125 ( .A1(n25), .A2(n28), .ZN(n158) );
  OR2_X1 U126 ( .A1(A[15]), .A2(B[15]), .ZN(n159) );
  AND2_X1 U127 ( .A1(n172), .A2(n86), .ZN(SUM[0]) );
  XNOR2_X1 U128 ( .A(n45), .B(n161), .ZN(SUM[10]) );
  AND2_X1 U129 ( .A1(n177), .A2(n44), .ZN(n161) );
  XNOR2_X1 U130 ( .A(n165), .B(n162), .ZN(SUM[11]) );
  AND2_X1 U131 ( .A1(n91), .A2(n36), .ZN(n162) );
  OR2_X2 U132 ( .A1(A[9]), .A2(B[9]), .ZN(n174) );
  NOR2_X1 U133 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  AOI21_X1 U134 ( .B1(n38), .B2(n30), .A(n31), .ZN(n163) );
  OR2_X1 U135 ( .A1(A[13]), .A2(B[13]), .ZN(n164) );
  INV_X1 U136 ( .A(n38), .ZN(n165) );
  AND2_X1 U137 ( .A1(A[9]), .A2(B[9]), .ZN(n166) );
  NOR2_X1 U138 ( .A1(A[14]), .A2(B[14]), .ZN(n167) );
  NOR2_X1 U139 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  NOR2_X1 U140 ( .A1(A[12]), .A2(B[12]), .ZN(n168) );
  NOR2_X1 U141 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  XNOR2_X1 U142 ( .A(n171), .B(n169), .ZN(SUM[13]) );
  AND2_X1 U143 ( .A1(n164), .A2(n29), .ZN(n169) );
  NOR2_X1 U144 ( .A1(A[8]), .A2(B[8]), .ZN(n170) );
  AOI21_X1 U145 ( .B1(n38), .B2(n30), .A(n31), .ZN(n171) );
  NOR2_X1 U146 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  OR2_X1 U147 ( .A1(A[0]), .A2(B[0]), .ZN(n172) );
  INV_X1 U148 ( .A(n60), .ZN(n59) );
  INV_X1 U149 ( .A(n51), .ZN(n50) );
  AOI21_X1 U150 ( .B1(n176), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U151 ( .A(n75), .ZN(n73) );
  OAI21_X1 U152 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  OAI21_X1 U153 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  OAI21_X1 U154 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  AOI21_X1 U155 ( .B1(n173), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U156 ( .A(n67), .ZN(n65) );
  AOI21_X1 U157 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  AOI21_X1 U158 ( .B1(n50), .B2(n174), .A(n166), .ZN(n45) );
  INV_X1 U159 ( .A(n86), .ZN(n84) );
  OAI21_X1 U160 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  AOI21_X1 U161 ( .B1(n175), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U162 ( .A(n83), .ZN(n81) );
  NAND2_X1 U163 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U164 ( .A(n57), .ZN(n95) );
  NAND2_X1 U165 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U166 ( .A(n69), .ZN(n98) );
  NAND2_X1 U167 ( .A1(n173), .A2(n67), .ZN(n12) );
  NAND2_X1 U168 ( .A1(n94), .A2(n55), .ZN(n9) );
  NAND2_X1 U169 ( .A1(n174), .A2(n49), .ZN(n8) );
  NAND2_X1 U170 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U171 ( .A(n77), .ZN(n100) );
  NAND2_X1 U172 ( .A1(n176), .A2(n75), .ZN(n14) );
  NAND2_X1 U173 ( .A1(n175), .A2(n83), .ZN(n16) );
  NAND2_X1 U174 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U175 ( .A(n61), .ZN(n96) );
  XNOR2_X1 U176 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XNOR2_X1 U177 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XOR2_X1 U178 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XNOR2_X1 U179 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  XOR2_X1 U180 ( .A(n13), .B(n71), .Z(SUM[4]) );
  XNOR2_X1 U181 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  XNOR2_X1 U182 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  OR2_X1 U183 ( .A1(A[5]), .A2(B[5]), .ZN(n173) );
  NOR2_X1 U184 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  NOR2_X1 U185 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NOR2_X1 U186 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NAND2_X1 U187 ( .A1(n157), .A2(n26), .ZN(n3) );
  NAND2_X1 U188 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  NOR2_X1 U189 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NAND2_X1 U190 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  NAND2_X1 U191 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  NAND2_X1 U192 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U193 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  OR2_X1 U194 ( .A1(A[1]), .A2(B[1]), .ZN(n175) );
  NAND2_X1 U195 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NAND2_X1 U196 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U197 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U198 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  NAND2_X1 U199 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  OR2_X1 U200 ( .A1(A[3]), .A2(B[3]), .ZN(n176) );
  XOR2_X1 U201 ( .A(n15), .B(n79), .Z(SUM[2]) );
  NAND2_X1 U202 ( .A1(n159), .A2(n19), .ZN(n2) );
  INV_X1 U203 ( .A(n178), .ZN(n44) );
  OAI21_X1 U204 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  NOR2_X1 U205 ( .A1(n170), .A2(n57), .ZN(n52) );
  INV_X1 U206 ( .A(n170), .ZN(n94) );
  NAND2_X1 U207 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  NAND2_X1 U208 ( .A1(n90), .A2(n33), .ZN(n5) );
  INV_X1 U209 ( .A(n168), .ZN(n90) );
  INV_X1 U210 ( .A(n24), .ZN(n22) );
  NAND2_X1 U211 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  AOI21_X1 U212 ( .B1(n177), .B2(n166), .A(n178), .ZN(n40) );
  XOR2_X1 U213 ( .A(n11), .B(n63), .Z(SUM[6]) );
  NAND2_X1 U214 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U215 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  AND2_X1 U216 ( .A1(A[10]), .A2(B[10]), .ZN(n178) );
  OAI21_X1 U217 ( .B1(n167), .B2(n29), .A(n26), .ZN(n24) );
  OAI21_X1 U218 ( .B1(n32), .B2(n36), .A(n33), .ZN(n31) );
  NAND2_X1 U219 ( .A1(A[15]), .A2(B[15]), .ZN(n19) );
  OAI21_X1 U220 ( .B1(n165), .B2(n35), .A(n36), .ZN(n34) );
  INV_X1 U221 ( .A(n35), .ZN(n91) );
  NOR2_X1 U222 ( .A1(n168), .A2(n35), .ZN(n30) );
  OAI21_X1 U223 ( .B1(n39), .B2(n51), .A(n40), .ZN(n38) );
  XNOR2_X1 U224 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  XNOR2_X1 U225 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  NAND2_X1 U226 ( .A1(n177), .A2(n174), .ZN(n39) );
  XNOR2_X1 U227 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  OAI21_X1 U228 ( .B1(n163), .B2(n158), .A(n22), .ZN(n20) );
  OAI21_X1 U229 ( .B1(n163), .B2(n28), .A(n29), .ZN(n27) );
endmodule


module datapath_M16_N8_T16_P16_10 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n22), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n228), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n229), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n230), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n231), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n232), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n233), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n234), .CK(clk), .Q(n34) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n235), .CK(clk), .Q(n35) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n236), .CK(clk), .Q(n36) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n237), .CK(clk), .Q(n37) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n238), .CK(clk), .Q(n38) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n239), .CK(clk), .Q(n39) );
  DFF_X1 \f_reg[0]  ( .D(n167), .CK(clk), .Q(n65), .QN(n217) );
  DFF_X1 \f_reg[1]  ( .D(n166), .CK(clk), .Q(n63), .QN(n218) );
  DFF_X1 \f_reg[2]  ( .D(n114), .CK(clk), .Q(n61), .QN(n219) );
  DFF_X1 \f_reg[3]  ( .D(n113), .CK(clk), .Q(f[3]), .QN(n69) );
  DFF_X1 \data_out_reg[15]  ( .D(n169), .CK(clk), .Q(data_out[15]), .QN(n200)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n170), .CK(clk), .Q(data_out[14]), .QN(n199)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n171), .CK(clk), .Q(data_out[13]), .QN(n198)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n172), .CK(clk), .Q(data_out[12]), .QN(n197)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n173), .CK(clk), .Q(data_out[11]), .QN(n196)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n174), .CK(clk), .Q(data_out[10]), .QN(n195)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n175), .CK(clk), .Q(data_out[9]), .QN(n194) );
  DFF_X1 \data_out_reg[8]  ( .D(n176), .CK(clk), .Q(data_out[8]), .QN(n193) );
  DFF_X1 \data_out_reg[7]  ( .D(n177), .CK(clk), .Q(data_out[7]), .QN(n192) );
  DFF_X1 \data_out_reg[6]  ( .D(n178), .CK(clk), .Q(data_out[6]), .QN(n191) );
  DFF_X1 \data_out_reg[5]  ( .D(n179), .CK(clk), .Q(data_out[5]), .QN(n190) );
  DFF_X1 \data_out_reg[4]  ( .D(n180), .CK(clk), .Q(data_out[4]), .QN(n189) );
  DFF_X1 \data_out_reg[3]  ( .D(n181), .CK(clk), .Q(data_out[3]), .QN(n188) );
  DFF_X1 \data_out_reg[2]  ( .D(n182), .CK(clk), .Q(data_out[2]), .QN(n187) );
  DFF_X1 \data_out_reg[1]  ( .D(n183), .CK(clk), .Q(data_out[1]), .QN(n186) );
  DFF_X1 \data_out_reg[0]  ( .D(n184), .CK(clk), .Q(data_out[0]), .QN(n185) );
  datapath_M16_N8_T16_P16_10_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_10_DW01_add_2 add_262 ( .A({n207, n206, n205, n204, 
        n203, n202, n216, n215, n214, n213, n212, n211, n210, n209, n208, n201}), .B({f[15], n48, n49, n50, n51, n53, f[9:3], n61, n63, n65}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X2 delay_reg ( .D(n168), .CK(clk), .Q(n15), .QN(n244) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n243), .CK(clk), .Q(n44) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n242), .CK(clk), .Q(n42) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n241), .CK(clk), .Q(n41) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n240), .CK(clk), .Q(n40) );
  DFF_X1 \f_reg[4]  ( .D(n112), .CK(clk), .Q(f[4]), .QN(n70) );
  DFF_X1 \f_reg[5]  ( .D(n111), .CK(clk), .Q(f[5]), .QN(n71) );
  DFF_X1 \f_reg[6]  ( .D(n102), .CK(clk), .Q(f[6]), .QN(n72) );
  DFF_X1 \f_reg[7]  ( .D(n85), .CK(clk), .Q(f[7]), .QN(n220) );
  DFF_X1 \f_reg[8]  ( .D(n83), .CK(clk), .Q(f[8]), .QN(n221) );
  DFF_X1 \f_reg[9]  ( .D(n82), .CK(clk), .Q(f[9]), .QN(n222) );
  DFF_X1 \f_reg[10]  ( .D(n81), .CK(clk), .Q(n53), .QN(n223) );
  DFF_X1 \f_reg[15]  ( .D(n10), .CK(clk), .Q(f[15]), .QN(n77) );
  DFF_X1 \f_reg[14]  ( .D(n11), .CK(clk), .Q(n48), .QN(n227) );
  DFF_X1 \f_reg[11]  ( .D(n80), .CK(clk), .Q(n51), .QN(n224) );
  DFF_X1 \f_reg[12]  ( .D(n6), .CK(clk), .Q(n50), .QN(n225) );
  DFF_X1 \f_reg[13]  ( .D(n1), .CK(clk), .Q(n49), .QN(n226) );
  AND2_X1 U3 ( .A1(n47), .A2(n23), .ZN(n19) );
  NAND3_X1 U4 ( .A1(n4), .A2(n2), .A3(n5), .ZN(n1) );
  NAND2_X1 U5 ( .A1(data_out_b[13]), .A2(n21), .ZN(n2) );
  NAND2_X1 U6 ( .A1(adder[13]), .A2(n19), .ZN(n4) );
  NAND2_X1 U8 ( .A1(n67), .A2(n49), .ZN(n5) );
  NAND3_X1 U9 ( .A1(n7), .A2(n8), .A3(n9), .ZN(n6) );
  MUX2_X1 U10 ( .A(N39), .B(n33), .S(n15), .Z(n202) );
  MUX2_X2 U11 ( .A(n34), .B(N38), .S(n244), .Z(n216) );
  MUX2_X2 U12 ( .A(N41), .B(n29), .S(n15), .Z(n204) );
  NAND2_X1 U13 ( .A1(data_out_b[12]), .A2(n21), .ZN(n7) );
  NAND2_X1 U14 ( .A1(adder[12]), .A2(n19), .ZN(n8) );
  NAND2_X1 U15 ( .A1(n67), .A2(n50), .ZN(n9) );
  NAND3_X1 U16 ( .A1(n13), .A2(n12), .A3(n14), .ZN(n10) );
  NAND3_X1 U17 ( .A1(n17), .A2(n16), .A3(n18), .ZN(n11) );
  MUX2_X2 U18 ( .A(n28), .B(N42), .S(n244), .Z(n205) );
  MUX2_X2 U19 ( .A(n35), .B(N37), .S(n244), .Z(n215) );
  NAND2_X1 U20 ( .A1(data_out_b[15]), .A2(n21), .ZN(n12) );
  NAND2_X1 U21 ( .A1(adder[15]), .A2(n19), .ZN(n13) );
  NAND2_X1 U22 ( .A1(n67), .A2(f[15]), .ZN(n14) );
  MUX2_X2 U23 ( .A(n27), .B(N43), .S(n244), .Z(n206) );
  MUX2_X2 U24 ( .A(n32), .B(N40), .S(n244), .Z(n203) );
  NAND2_X1 U25 ( .A1(data_out_b[14]), .A2(n21), .ZN(n16) );
  NAND2_X1 U26 ( .A1(adder[14]), .A2(n19), .ZN(n17) );
  NAND2_X1 U27 ( .A1(n67), .A2(n48), .ZN(n18) );
  INV_X1 U28 ( .A(n23), .ZN(n21) );
  NAND2_X1 U29 ( .A1(n168), .A2(n20), .ZN(n246) );
  INV_X1 U30 ( .A(n47), .ZN(n67) );
  INV_X1 U31 ( .A(clear_acc), .ZN(n23) );
  INV_X1 U32 ( .A(n25), .ZN(n43) );
  OAI22_X1 U33 ( .A1(n188), .A2(n246), .B1(n69), .B2(n245), .ZN(n181) );
  OAI22_X1 U34 ( .A1(n189), .A2(n246), .B1(n70), .B2(n245), .ZN(n180) );
  OAI22_X1 U35 ( .A1(n190), .A2(n246), .B1(n71), .B2(n245), .ZN(n179) );
  OAI22_X1 U36 ( .A1(n191), .A2(n246), .B1(n72), .B2(n245), .ZN(n178) );
  OAI22_X1 U37 ( .A1(n192), .A2(n246), .B1(n220), .B2(n245), .ZN(n177) );
  OAI22_X1 U38 ( .A1(n193), .A2(n246), .B1(n221), .B2(n245), .ZN(n176) );
  OAI22_X1 U39 ( .A1(n194), .A2(n246), .B1(n222), .B2(n245), .ZN(n175) );
  INV_X1 U40 ( .A(wr_en_y), .ZN(n20) );
  INV_X1 U41 ( .A(n23), .ZN(n22) );
  INV_X1 U42 ( .A(m_ready), .ZN(n24) );
  NAND2_X1 U43 ( .A1(m_valid), .A2(n24), .ZN(n45) );
  OAI21_X1 U44 ( .B1(sel[4]), .B2(n79), .A(n45), .ZN(n168) );
  NAND2_X1 U45 ( .A1(clear_acc_delay), .A2(n244), .ZN(n25) );
  MUX2_X1 U46 ( .A(n26), .B(N44), .S(n43), .Z(n228) );
  MUX2_X1 U47 ( .A(n26), .B(N44), .S(n244), .Z(n207) );
  MUX2_X1 U48 ( .A(n27), .B(N43), .S(n43), .Z(n229) );
  MUX2_X1 U49 ( .A(n28), .B(N42), .S(n43), .Z(n230) );
  MUX2_X1 U50 ( .A(n29), .B(N41), .S(n43), .Z(n231) );
  MUX2_X1 U51 ( .A(n32), .B(N40), .S(n43), .Z(n232) );
  MUX2_X1 U52 ( .A(n33), .B(N39), .S(n43), .Z(n233) );
  MUX2_X1 U53 ( .A(n34), .B(N38), .S(n43), .Z(n234) );
  MUX2_X1 U54 ( .A(n35), .B(N37), .S(n43), .Z(n235) );
  MUX2_X1 U55 ( .A(n36), .B(N36), .S(n43), .Z(n236) );
  MUX2_X1 U56 ( .A(n36), .B(N36), .S(n244), .Z(n214) );
  MUX2_X1 U57 ( .A(n37), .B(N35), .S(n43), .Z(n237) );
  MUX2_X1 U58 ( .A(n37), .B(N35), .S(n244), .Z(n213) );
  MUX2_X1 U59 ( .A(n38), .B(N34), .S(n43), .Z(n238) );
  MUX2_X1 U60 ( .A(n38), .B(N34), .S(n244), .Z(n212) );
  MUX2_X1 U61 ( .A(n39), .B(N33), .S(n43), .Z(n239) );
  MUX2_X1 U62 ( .A(n39), .B(N33), .S(n244), .Z(n211) );
  MUX2_X1 U63 ( .A(n40), .B(N32), .S(n43), .Z(n240) );
  MUX2_X1 U64 ( .A(n40), .B(N32), .S(n244), .Z(n210) );
  MUX2_X1 U65 ( .A(n41), .B(N31), .S(n43), .Z(n241) );
  MUX2_X1 U66 ( .A(n41), .B(N31), .S(n244), .Z(n209) );
  MUX2_X1 U67 ( .A(n42), .B(N30), .S(n43), .Z(n242) );
  MUX2_X1 U68 ( .A(n42), .B(N30), .S(n244), .Z(n208) );
  MUX2_X1 U69 ( .A(n44), .B(N29), .S(n43), .Z(n243) );
  MUX2_X1 U70 ( .A(n44), .B(N29), .S(n244), .Z(n201) );
  INV_X1 U71 ( .A(n45), .ZN(n46) );
  OAI21_X1 U72 ( .B1(n46), .B2(n15), .A(n23), .ZN(n47) );
  AOI222_X1 U73 ( .A1(data_out_b[11]), .A2(n21), .B1(adder[11]), .B2(n19), 
        .C1(n67), .C2(n51), .ZN(n52) );
  INV_X1 U74 ( .A(n52), .ZN(n80) );
  AOI222_X1 U75 ( .A1(data_out_b[10]), .A2(n21), .B1(adder[10]), .B2(n19), 
        .C1(n67), .C2(n53), .ZN(n54) );
  INV_X1 U76 ( .A(n54), .ZN(n81) );
  AOI222_X1 U77 ( .A1(data_out_b[8]), .A2(n21), .B1(adder[8]), .B2(n19), .C1(
        n67), .C2(f[8]), .ZN(n55) );
  INV_X1 U78 ( .A(n55), .ZN(n83) );
  AOI222_X1 U79 ( .A1(data_out_b[7]), .A2(n21), .B1(adder[7]), .B2(n19), .C1(
        n67), .C2(f[7]), .ZN(n56) );
  INV_X1 U80 ( .A(n56), .ZN(n85) );
  AOI222_X1 U81 ( .A1(data_out_b[6]), .A2(n21), .B1(adder[6]), .B2(n19), .C1(
        n67), .C2(f[6]), .ZN(n57) );
  INV_X1 U82 ( .A(n57), .ZN(n102) );
  AOI222_X1 U83 ( .A1(data_out_b[5]), .A2(n21), .B1(adder[5]), .B2(n19), .C1(
        n67), .C2(f[5]), .ZN(n58) );
  INV_X1 U84 ( .A(n58), .ZN(n111) );
  AOI222_X1 U85 ( .A1(data_out_b[4]), .A2(n21), .B1(adder[4]), .B2(n19), .C1(
        n67), .C2(f[4]), .ZN(n59) );
  INV_X1 U86 ( .A(n59), .ZN(n112) );
  AOI222_X1 U87 ( .A1(data_out_b[3]), .A2(n21), .B1(adder[3]), .B2(n19), .C1(
        n67), .C2(f[3]), .ZN(n60) );
  INV_X1 U88 ( .A(n60), .ZN(n113) );
  AOI222_X1 U89 ( .A1(data_out_b[2]), .A2(n22), .B1(adder[2]), .B2(n19), .C1(
        n67), .C2(n61), .ZN(n62) );
  INV_X1 U90 ( .A(n62), .ZN(n114) );
  AOI222_X1 U91 ( .A1(data_out_b[1]), .A2(n22), .B1(adder[1]), .B2(n19), .C1(
        n67), .C2(n63), .ZN(n64) );
  INV_X1 U92 ( .A(n64), .ZN(n166) );
  AOI222_X1 U93 ( .A1(data_out_b[0]), .A2(n22), .B1(adder[0]), .B2(n19), .C1(
        n67), .C2(n65), .ZN(n66) );
  INV_X1 U94 ( .A(n66), .ZN(n167) );
  AOI222_X1 U95 ( .A1(data_out_b[9]), .A2(n22), .B1(adder[9]), .B2(n19), .C1(
        n67), .C2(f[9]), .ZN(n68) );
  INV_X1 U96 ( .A(n68), .ZN(n82) );
  NOR4_X1 U97 ( .A1(n51), .A2(n50), .A3(n49), .A4(n48), .ZN(n76) );
  NOR4_X1 U98 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n53), .ZN(n75) );
  NAND4_X1 U99 ( .A1(n72), .A2(n71), .A3(n70), .A4(n69), .ZN(n73) );
  NOR4_X1 U100 ( .A1(n73), .A2(n65), .A3(n63), .A4(n61), .ZN(n74) );
  NAND3_X1 U101 ( .A1(n76), .A2(n75), .A3(n74), .ZN(n78) );
  NAND3_X1 U102 ( .A1(wr_en_y), .A2(n78), .A3(n77), .ZN(n245) );
  OAI22_X1 U103 ( .A1(n185), .A2(n246), .B1(n217), .B2(n245), .ZN(n184) );
  OAI22_X1 U104 ( .A1(n186), .A2(n246), .B1(n218), .B2(n245), .ZN(n183) );
  OAI22_X1 U105 ( .A1(n187), .A2(n246), .B1(n219), .B2(n245), .ZN(n182) );
  OAI22_X1 U106 ( .A1(n195), .A2(n246), .B1(n223), .B2(n245), .ZN(n174) );
  OAI22_X1 U107 ( .A1(n196), .A2(n246), .B1(n224), .B2(n245), .ZN(n173) );
  OAI22_X1 U108 ( .A1(n197), .A2(n246), .B1(n225), .B2(n245), .ZN(n172) );
  OAI22_X1 U109 ( .A1(n198), .A2(n246), .B1(n226), .B2(n245), .ZN(n171) );
  OAI22_X1 U110 ( .A1(n199), .A2(n246), .B1(n227), .B2(n245), .ZN(n170) );
  OAI22_X1 U111 ( .A1(n200), .A2(n246), .B1(n77), .B2(n245), .ZN(n169) );
  AND4_X1 U112 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n79)
         );
endmodule


module datapath_M16_N8_T16_P16_9_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n27, n29, n31,
         n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50, n51,
         n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n93, n95, n96, n97, n98, n99, n103,
         n104, n105, n106, n107, n109, n111, n112, n113, n114, n115, n117,
         n119, n120, n122, n125, n128, n133, n135, n139, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n237, n241, n245, n247, n249, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n418, n419, n420, n421, n422, n423, n424, n426,
         n427, n428, n429, n433, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U148 ( .A(n265), .B(n144), .Z(n145) );
  XOR2_X1 U150 ( .A(n271), .B(n146), .Z(n147) );
  XOR2_X1 U152 ( .A(n301), .B(n148), .Z(n149) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U161 ( .A(n177), .B(n168), .CI(n166), .CO(n163), .S(n164) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n273), .B(n281), .CI(n267), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n292), .CI(n274), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n283), .B(n253), .CI(n305), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n319), .B(n269), .CO(n193), .S(n194) );
  FA_X1 U178 ( .A(n207), .B(n209), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n284), .B(n276), .CI(n294), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n320), .B(n270), .CI(n306), .CO(n201), .S(n202) );
  FA_X1 U181 ( .A(n208), .B(n213), .CI(n206), .CO(n203), .S(n204) );
  FA_X1 U182 ( .A(n215), .B(n307), .CI(n210), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n254), .B(n285), .CI(n295), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n296), .B(n286), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n255), .B(n309), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n287), .B(n323), .CO(n221), .S(n222) );
  FA_X1 U192 ( .A(n324), .B(n288), .CI(n310), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n311), .B(n325), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n326), .B(n300), .CI(n312), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  CLKBUF_X1 U414 ( .A(n554), .Z(n545) );
  XOR2_X1 U415 ( .A(n589), .B(a[6]), .Z(n528) );
  XOR2_X1 U416 ( .A(n13), .B(a[6]), .Z(n559) );
  BUF_X2 U417 ( .A(n522), .Z(n490) );
  INV_X1 U418 ( .A(n241), .ZN(n491) );
  NAND2_X1 U419 ( .A1(n429), .A2(n27), .ZN(n492) );
  BUF_X1 U420 ( .A(n27), .Z(n542) );
  NOR2_X1 U421 ( .A1(n164), .A2(n175), .ZN(n493) );
  NOR2_X1 U422 ( .A1(n164), .A2(n175), .ZN(n494) );
  NOR2_X1 U423 ( .A1(n164), .A2(n175), .ZN(n75) );
  XNOR2_X1 U424 ( .A(n31), .B(a[12]), .ZN(n37) );
  INV_X1 U425 ( .A(n499), .ZN(n552) );
  NAND2_X1 U426 ( .A1(n429), .A2(n27), .ZN(n29) );
  NOR2_X1 U427 ( .A1(n196), .A2(n203), .ZN(n85) );
  OR2_X1 U428 ( .A1(n509), .A2(n195), .ZN(n495) );
  OR2_X1 U429 ( .A1(n223), .A2(n218), .ZN(n496) );
  OR2_X1 U430 ( .A1(n329), .A2(n258), .ZN(n497) );
  INV_X1 U431 ( .A(n516), .ZN(n498) );
  XNOR2_X1 U432 ( .A(n498), .B(n54), .ZN(product[7]) );
  CLKBUF_X1 U433 ( .A(n9), .Z(n541) );
  XNOR2_X1 U434 ( .A(n25), .B(a[10]), .ZN(n499) );
  CLKBUF_X1 U435 ( .A(n95), .Z(n500) );
  CLKBUF_X1 U436 ( .A(n9), .Z(n574) );
  NAND2_X1 U437 ( .A1(n564), .A2(n16), .ZN(n501) );
  NAND2_X1 U438 ( .A1(n564), .A2(n16), .ZN(n502) );
  NAND2_X1 U439 ( .A1(n564), .A2(n16), .ZN(n18) );
  CLKBUF_X1 U440 ( .A(n580), .Z(n503) );
  BUF_X4 U441 ( .A(n580), .Z(n504) );
  INV_X1 U442 ( .A(n581), .ZN(n580) );
  INV_X1 U443 ( .A(n535), .ZN(n505) );
  XOR2_X1 U444 ( .A(n545), .B(n506), .Z(product[9]) );
  NAND2_X1 U445 ( .A1(n90), .A2(n544), .ZN(n506) );
  CLKBUF_X1 U446 ( .A(n107), .Z(n507) );
  CLKBUF_X1 U447 ( .A(n587), .Z(n534) );
  CLKBUF_X1 U448 ( .A(n562), .Z(n517) );
  BUF_X1 U449 ( .A(n83), .Z(n508) );
  CLKBUF_X1 U450 ( .A(n186), .Z(n509) );
  BUF_X1 U451 ( .A(n12), .Z(n558) );
  XNOR2_X1 U452 ( .A(n198), .B(n510), .ZN(n196) );
  XNOR2_X1 U453 ( .A(n205), .B(n200), .ZN(n510) );
  XOR2_X1 U454 ( .A(n229), .B(n298), .Z(n511) );
  XOR2_X1 U455 ( .A(n226), .B(n511), .Z(n224) );
  NAND2_X1 U456 ( .A1(n226), .A2(n229), .ZN(n512) );
  NAND2_X1 U457 ( .A1(n226), .A2(n298), .ZN(n513) );
  NAND2_X1 U458 ( .A1(n229), .A2(n298), .ZN(n514) );
  NAND3_X1 U459 ( .A1(n512), .A2(n513), .A3(n514), .ZN(n223) );
  NOR2_X1 U460 ( .A1(n228), .A2(n231), .ZN(n515) );
  NOR2_X1 U461 ( .A1(n228), .A2(n231), .ZN(n105) );
  AOI21_X1 U462 ( .B1(n104), .B2(n570), .A(n518), .ZN(n516) );
  OR2_X2 U463 ( .A1(n224), .A2(n227), .ZN(n570) );
  AND2_X1 U464 ( .A1(n224), .A2(n227), .ZN(n518) );
  XNOR2_X1 U465 ( .A(n583), .B(n422), .ZN(n519) );
  XNOR2_X1 U466 ( .A(n582), .B(a[4]), .ZN(n520) );
  NOR2_X1 U467 ( .A1(n186), .A2(n195), .ZN(n521) );
  NOR2_X1 U468 ( .A1(n186), .A2(n195), .ZN(n82) );
  XNOR2_X1 U469 ( .A(n582), .B(a[4]), .ZN(n522) );
  BUF_X1 U470 ( .A(n579), .Z(n523) );
  INV_X1 U471 ( .A(n530), .ZN(n524) );
  CLKBUF_X1 U472 ( .A(n560), .Z(n525) );
  BUF_X2 U473 ( .A(n522), .Z(n555) );
  XNOR2_X1 U474 ( .A(n45), .B(n526), .ZN(product[12]) );
  AND2_X1 U475 ( .A1(n531), .A2(n79), .ZN(n526) );
  INV_X1 U476 ( .A(n587), .ZN(n527) );
  OR2_X2 U477 ( .A1(n528), .A2(n559), .ZN(n23) );
  INV_X1 U478 ( .A(n503), .ZN(n529) );
  INV_X1 U479 ( .A(n590), .ZN(n530) );
  OR2_X1 U480 ( .A1(n176), .A2(n185), .ZN(n531) );
  XOR2_X1 U481 ( .A(n579), .B(n249), .Z(n532) );
  INV_X1 U482 ( .A(n559), .ZN(n21) );
  XNOR2_X1 U483 ( .A(n584), .B(a[2]), .ZN(n563) );
  CLKBUF_X1 U484 ( .A(n112), .Z(n533) );
  INV_X1 U485 ( .A(n589), .ZN(n535) );
  INV_X1 U486 ( .A(n589), .ZN(n536) );
  INV_X1 U487 ( .A(n589), .ZN(n588) );
  BUF_X2 U488 ( .A(n499), .Z(n537) );
  INV_X1 U489 ( .A(n584), .ZN(n538) );
  BUF_X2 U490 ( .A(n578), .Z(n539) );
  INV_X1 U491 ( .A(n583), .ZN(n540) );
  XOR2_X1 U492 ( .A(n581), .B(a[2]), .Z(n9) );
  XNOR2_X1 U493 ( .A(n588), .B(a[8]), .ZN(n27) );
  INV_X1 U494 ( .A(n591), .ZN(n543) );
  OR2_X1 U495 ( .A1(n204), .A2(n211), .ZN(n544) );
  INV_X1 U496 ( .A(n584), .ZN(n582) );
  INV_X2 U497 ( .A(n584), .ZN(n583) );
  OAI21_X1 U498 ( .B1(n515), .B2(n107), .A(n106), .ZN(n546) );
  XNOR2_X1 U499 ( .A(n534), .B(a[6]), .ZN(n547) );
  NAND2_X1 U500 ( .A1(n198), .A2(n205), .ZN(n548) );
  NAND2_X1 U501 ( .A1(n198), .A2(n200), .ZN(n549) );
  NAND2_X1 U502 ( .A1(n205), .A2(n200), .ZN(n550) );
  NAND3_X1 U503 ( .A1(n548), .A2(n549), .A3(n550), .ZN(n195) );
  AOI21_X1 U504 ( .B1(n104), .B2(n570), .A(n518), .ZN(n551) );
  BUF_X1 U505 ( .A(n12), .Z(n556) );
  INV_X1 U506 ( .A(n581), .ZN(n579) );
  OAI21_X1 U507 ( .B1(n99), .B2(n97), .A(n98), .ZN(n553) );
  OAI21_X1 U508 ( .B1(n551), .B2(n97), .A(n98), .ZN(n96) );
  AOI21_X1 U509 ( .B1(n96), .B2(n566), .A(n93), .ZN(n554) );
  BUF_X1 U510 ( .A(n12), .Z(n557) );
  AOI21_X1 U511 ( .B1(n88), .B2(n80), .A(n81), .ZN(n560) );
  NAND2_X1 U512 ( .A1(n532), .A2(n578), .ZN(n561) );
  NAND2_X1 U513 ( .A1(n532), .A2(n578), .ZN(n562) );
  NAND2_X1 U514 ( .A1(n563), .A2(n9), .ZN(n12) );
  XOR2_X1 U515 ( .A(n585), .B(a[4]), .Z(n564) );
  BUF_X1 U516 ( .A(n43), .Z(n576) );
  AOI21_X1 U517 ( .B1(n74), .B2(n565), .A(n67), .ZN(n65) );
  INV_X1 U518 ( .A(n69), .ZN(n67) );
  NAND2_X1 U519 ( .A1(n565), .A2(n69), .ZN(n47) );
  INV_X1 U520 ( .A(n73), .ZN(n71) );
  NAND2_X1 U521 ( .A1(n73), .A2(n565), .ZN(n64) );
  INV_X1 U522 ( .A(n74), .ZN(n72) );
  AOI21_X1 U523 ( .B1(n88), .B2(n80), .A(n81), .ZN(n45) );
  AOI21_X1 U524 ( .B1(n553), .B2(n566), .A(n93), .ZN(n91) );
  INV_X1 U525 ( .A(n95), .ZN(n93) );
  OR2_X1 U526 ( .A1(n152), .A2(n163), .ZN(n565) );
  NAND2_X1 U527 ( .A1(n125), .A2(n76), .ZN(n48) );
  INV_X1 U528 ( .A(n494), .ZN(n125) );
  NAND2_X1 U529 ( .A1(n495), .A2(n508), .ZN(n50) );
  OAI21_X1 U530 ( .B1(n493), .B2(n79), .A(n76), .ZN(n74) );
  NAND2_X1 U531 ( .A1(n128), .A2(n86), .ZN(n51) );
  INV_X1 U532 ( .A(n85), .ZN(n128) );
  NOR2_X1 U533 ( .A1(n75), .A2(n78), .ZN(n73) );
  NAND2_X1 U534 ( .A1(n152), .A2(n163), .ZN(n69) );
  NAND2_X1 U535 ( .A1(n566), .A2(n500), .ZN(n53) );
  OAI21_X1 U536 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  NAND2_X1 U537 ( .A1(n133), .A2(n106), .ZN(n56) );
  INV_X1 U538 ( .A(n515), .ZN(n133) );
  NAND2_X1 U539 ( .A1(n496), .A2(n98), .ZN(n54) );
  NOR2_X1 U540 ( .A1(n176), .A2(n185), .ZN(n78) );
  AOI21_X1 U541 ( .B1(n567), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U542 ( .A(n119), .ZN(n117) );
  INV_X1 U543 ( .A(n122), .ZN(n120) );
  XNOR2_X1 U544 ( .A(n55), .B(n546), .ZN(product[6]) );
  XNOR2_X1 U545 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U546 ( .A1(n567), .A2(n119), .ZN(n59) );
  NAND2_X1 U547 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U548 ( .A1(n164), .A2(n175), .ZN(n76) );
  OR2_X1 U549 ( .A1(n212), .A2(n217), .ZN(n566) );
  NAND2_X1 U550 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U551 ( .A1(n186), .A2(n195), .ZN(n83) );
  NAND2_X1 U552 ( .A1(n204), .A2(n211), .ZN(n90) );
  NAND2_X1 U553 ( .A1(n212), .A2(n217), .ZN(n95) );
  INV_X1 U554 ( .A(n111), .ZN(n109) );
  XNOR2_X1 U555 ( .A(n57), .B(n533), .ZN(product[4]) );
  NAND2_X1 U556 ( .A1(n569), .A2(n111), .ZN(n57) );
  NAND2_X1 U557 ( .A1(n135), .A2(n114), .ZN(n58) );
  INV_X1 U558 ( .A(n113), .ZN(n135) );
  INV_X1 U559 ( .A(n587), .ZN(n585) );
  NOR2_X1 U560 ( .A1(n218), .A2(n223), .ZN(n97) );
  OR2_X1 U561 ( .A1(n328), .A2(n314), .ZN(n567) );
  OR2_X1 U562 ( .A1(n151), .A2(n139), .ZN(n568) );
  XNOR2_X1 U563 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U564 ( .A1(n568), .A2(n62), .ZN(n46) );
  NAND2_X1 U565 ( .A1(n218), .A2(n223), .ZN(n98) );
  NAND2_X1 U566 ( .A1(n228), .A2(n231), .ZN(n106) );
  INV_X1 U567 ( .A(n37), .ZN(n237) );
  OR2_X1 U568 ( .A1(n232), .A2(n233), .ZN(n569) );
  INV_X1 U569 ( .A(n41), .ZN(n235) );
  NAND2_X1 U570 ( .A1(n224), .A2(n227), .ZN(n103) );
  AND2_X1 U571 ( .A1(n497), .A2(n122), .ZN(product[1]) );
  XNOR2_X1 U572 ( .A(n592), .B(a[14]), .ZN(n41) );
  INV_X1 U573 ( .A(n249), .ZN(n578) );
  AND2_X1 U574 ( .A1(n577), .A2(n241), .ZN(n278) );
  OR2_X1 U575 ( .A1(n576), .A2(n540), .ZN(n392) );
  XNOR2_X1 U576 ( .A(n536), .B(n576), .ZN(n363) );
  OR2_X1 U577 ( .A1(n576), .A2(n534), .ZN(n377) );
  XOR2_X1 U578 ( .A(n31), .B(a[10]), .Z(n428) );
  XNOR2_X1 U579 ( .A(n530), .B(n576), .ZN(n352) );
  OAI22_X1 U580 ( .A1(n39), .A2(n336), .B1(n37), .B2(n335), .ZN(n263) );
  OAI22_X1 U581 ( .A1(n39), .A2(n593), .B1(n337), .B2(n37), .ZN(n252) );
  OR2_X1 U582 ( .A1(n576), .A2(n593), .ZN(n337) );
  OAI22_X1 U583 ( .A1(n42), .A2(n595), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U584 ( .A1(n576), .A2(n595), .ZN(n332) );
  XNOR2_X1 U585 ( .A(n543), .B(n576), .ZN(n343) );
  NAND2_X1 U586 ( .A1(n433), .A2(n578), .ZN(n6) );
  AND2_X1 U587 ( .A1(n577), .A2(n245), .ZN(n300) );
  XOR2_X1 U588 ( .A(n25), .B(a[8]), .Z(n429) );
  XOR2_X1 U589 ( .A(n315), .B(n261), .Z(n150) );
  XNOR2_X1 U590 ( .A(n155), .B(n572), .ZN(n139) );
  XNOR2_X1 U591 ( .A(n153), .B(n141), .ZN(n572) );
  XNOR2_X1 U592 ( .A(n157), .B(n573), .ZN(n141) );
  XNOR2_X1 U593 ( .A(n145), .B(n143), .ZN(n573) );
  XNOR2_X1 U594 ( .A(n592), .B(n576), .ZN(n336) );
  NAND2_X1 U595 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U596 ( .A(n592), .B(a[12]), .Z(n427) );
  XNOR2_X1 U597 ( .A(n586), .B(n576), .ZN(n376) );
  AND2_X1 U598 ( .A1(n577), .A2(n237), .ZN(n264) );
  AND2_X1 U599 ( .A1(n577), .A2(n235), .ZN(n260) );
  OAI22_X1 U600 ( .A1(n39), .A2(n335), .B1(n37), .B2(n334), .ZN(n262) );
  AND2_X1 U601 ( .A1(n577), .A2(n547), .ZN(n288) );
  AND2_X1 U602 ( .A1(n577), .A2(n552), .ZN(n270) );
  INV_X1 U603 ( .A(n25), .ZN(n590) );
  INV_X1 U604 ( .A(n13), .ZN(n587) );
  NAND2_X1 U605 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U606 ( .A(n594), .B(a[14]), .Z(n426) );
  INV_X1 U607 ( .A(n7), .ZN(n584) );
  AND2_X1 U608 ( .A1(n577), .A2(n247), .ZN(n314) );
  AND2_X1 U609 ( .A1(n577), .A2(n249), .ZN(product[0]) );
  OR2_X1 U610 ( .A1(n576), .A2(n524), .ZN(n353) );
  OR2_X1 U611 ( .A1(n576), .A2(n591), .ZN(n344) );
  OR2_X1 U612 ( .A1(n576), .A2(n505), .ZN(n364) );
  XNOR2_X1 U613 ( .A(n535), .B(b[9]), .ZN(n354) );
  OAI22_X1 U614 ( .A1(n39), .A2(n334), .B1(n37), .B2(n333), .ZN(n261) );
  XNOR2_X1 U615 ( .A(n592), .B(n422), .ZN(n333) );
  XNOR2_X1 U616 ( .A(n586), .B(b[11]), .ZN(n365) );
  XNOR2_X1 U617 ( .A(n592), .B(n424), .ZN(n335) );
  XNOR2_X1 U618 ( .A(n592), .B(n423), .ZN(n334) );
  OAI22_X1 U619 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U620 ( .A(n594), .B(n424), .ZN(n330) );
  XNOR2_X1 U621 ( .A(n594), .B(n576), .ZN(n331) );
  XNOR2_X1 U622 ( .A(n530), .B(n418), .ZN(n345) );
  XNOR2_X1 U623 ( .A(n543), .B(n420), .ZN(n338) );
  XNOR2_X1 U624 ( .A(n583), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U625 ( .A(n31), .B(n424), .ZN(n342) );
  XNOR2_X1 U626 ( .A(n530), .B(n424), .ZN(n351) );
  XNOR2_X1 U627 ( .A(n535), .B(n424), .ZN(n362) );
  XNOR2_X1 U628 ( .A(n543), .B(n423), .ZN(n341) );
  XNOR2_X1 U629 ( .A(n543), .B(n422), .ZN(n340) );
  XNOR2_X1 U630 ( .A(n543), .B(n421), .ZN(n339) );
  XNOR2_X1 U631 ( .A(n583), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U632 ( .A(n583), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U633 ( .A(n583), .B(n418), .ZN(n384) );
  XNOR2_X1 U634 ( .A(n538), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U635 ( .A(n538), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U636 ( .A(n538), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U637 ( .A(n583), .B(n419), .ZN(n385) );
  XNOR2_X1 U638 ( .A(n586), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U639 ( .A(n586), .B(n418), .ZN(n369) );
  XNOR2_X1 U640 ( .A(n586), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U641 ( .A(n586), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U642 ( .A(n536), .B(n423), .ZN(n361) );
  XNOR2_X1 U643 ( .A(n535), .B(n422), .ZN(n360) );
  XNOR2_X1 U644 ( .A(n530), .B(n422), .ZN(n349) );
  XNOR2_X1 U645 ( .A(n530), .B(n423), .ZN(n350) );
  XNOR2_X1 U646 ( .A(n504), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U647 ( .A(n504), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U648 ( .A(n504), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U649 ( .A(n504), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U650 ( .A(n535), .B(n420), .ZN(n358) );
  XNOR2_X1 U651 ( .A(n530), .B(n420), .ZN(n347) );
  XNOR2_X1 U652 ( .A(n536), .B(n421), .ZN(n359) );
  XNOR2_X1 U653 ( .A(n530), .B(n421), .ZN(n348) );
  XNOR2_X1 U654 ( .A(n535), .B(n418), .ZN(n356) );
  XNOR2_X1 U655 ( .A(n536), .B(n419), .ZN(n357) );
  XNOR2_X1 U656 ( .A(n530), .B(n419), .ZN(n346) );
  XNOR2_X1 U657 ( .A(n536), .B(b[8]), .ZN(n355) );
  XNOR2_X1 U658 ( .A(n504), .B(b[15]), .ZN(n393) );
  BUF_X1 U659 ( .A(n43), .Z(n577) );
  OAI22_X1 U660 ( .A1(n34), .A2(n339), .B1(n338), .B2(n537), .ZN(n265) );
  OAI22_X1 U661 ( .A1(n34), .A2(n340), .B1(n339), .B2(n537), .ZN(n266) );
  OAI22_X1 U662 ( .A1(n34), .A2(n341), .B1(n340), .B2(n537), .ZN(n267) );
  OAI22_X1 U663 ( .A1(n34), .A2(n342), .B1(n341), .B2(n537), .ZN(n268) );
  OAI22_X1 U664 ( .A1(n34), .A2(n343), .B1(n342), .B2(n537), .ZN(n269) );
  OAI22_X1 U665 ( .A1(n34), .A2(n591), .B1(n344), .B2(n537), .ZN(n253) );
  NAND2_X1 U666 ( .A1(n428), .A2(n499), .ZN(n34) );
  XNOR2_X1 U667 ( .A(n582), .B(a[4]), .ZN(n16) );
  OAI21_X1 U668 ( .B1(n89), .B2(n554), .A(n90), .ZN(n575) );
  XNOR2_X1 U669 ( .A(n575), .B(n51), .ZN(product[10]) );
  OAI21_X1 U670 ( .B1(n91), .B2(n89), .A(n90), .ZN(n88) );
  OAI22_X1 U671 ( .A1(n23), .A2(n358), .B1(n357), .B2(n21), .ZN(n282) );
  OAI22_X1 U672 ( .A1(n23), .A2(n356), .B1(n355), .B2(n21), .ZN(n280) );
  OAI22_X1 U673 ( .A1(n23), .A2(n360), .B1(n359), .B2(n21), .ZN(n284) );
  OAI22_X1 U674 ( .A1(n23), .A2(n362), .B1(n361), .B2(n21), .ZN(n286) );
  OAI22_X1 U675 ( .A1(n23), .A2(n357), .B1(n356), .B2(n21), .ZN(n281) );
  OAI22_X1 U676 ( .A1(n23), .A2(n505), .B1(n364), .B2(n21), .ZN(n255) );
  OAI22_X1 U677 ( .A1(n23), .A2(n363), .B1(n362), .B2(n21), .ZN(n287) );
  OAI22_X1 U678 ( .A1(n23), .A2(n361), .B1(n360), .B2(n21), .ZN(n285) );
  OAI22_X1 U679 ( .A1(n23), .A2(n359), .B1(n358), .B2(n21), .ZN(n283) );
  OAI22_X1 U680 ( .A1(n23), .A2(n355), .B1(n354), .B2(n21), .ZN(n279) );
  INV_X1 U681 ( .A(n19), .ZN(n589) );
  XNOR2_X1 U682 ( .A(n77), .B(n48), .ZN(product[13]) );
  NAND2_X1 U683 ( .A1(n570), .A2(n103), .ZN(n55) );
  XNOR2_X1 U684 ( .A(n84), .B(n50), .ZN(product[11]) );
  NOR2_X1 U685 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U686 ( .A1(n492), .A2(n346), .B1(n345), .B2(n542), .ZN(n271) );
  OAI22_X1 U687 ( .A1(n29), .A2(n347), .B1(n346), .B2(n542), .ZN(n272) );
  OAI22_X1 U688 ( .A1(n29), .A2(n348), .B1(n347), .B2(n542), .ZN(n273) );
  OAI22_X1 U689 ( .A1(n492), .A2(n350), .B1(n349), .B2(n542), .ZN(n275) );
  OAI22_X1 U690 ( .A1(n29), .A2(n351), .B1(n350), .B2(n491), .ZN(n276) );
  OAI22_X1 U691 ( .A1(n492), .A2(n524), .B1(n353), .B2(n542), .ZN(n254) );
  OAI22_X1 U692 ( .A1(n29), .A2(n349), .B1(n348), .B2(n542), .ZN(n274) );
  INV_X1 U693 ( .A(n27), .ZN(n241) );
  OAI22_X1 U694 ( .A1(n492), .A2(n352), .B1(n351), .B2(n542), .ZN(n277) );
  AOI21_X1 U695 ( .B1(n569), .B2(n112), .A(n109), .ZN(n107) );
  XNOR2_X1 U696 ( .A(n527), .B(n419), .ZN(n370) );
  XNOR2_X1 U697 ( .A(n585), .B(n420), .ZN(n371) );
  XNOR2_X1 U698 ( .A(n527), .B(n424), .ZN(n375) );
  XNOR2_X1 U699 ( .A(n527), .B(n423), .ZN(n374) );
  XNOR2_X1 U700 ( .A(n527), .B(n422), .ZN(n373) );
  XNOR2_X1 U701 ( .A(n527), .B(n421), .ZN(n372) );
  INV_X1 U702 ( .A(n1), .ZN(n581) );
  OR2_X1 U703 ( .A1(n576), .A2(n529), .ZN(n409) );
  AOI21_X1 U704 ( .B1(n570), .B2(n546), .A(n518), .ZN(n99) );
  OAI21_X1 U705 ( .B1(n107), .B2(n105), .A(n106), .ZN(n104) );
  XNOR2_X1 U706 ( .A(n70), .B(n47), .ZN(product[14]) );
  OAI21_X1 U707 ( .B1(n521), .B2(n86), .A(n83), .ZN(n81) );
  NOR2_X1 U708 ( .A1(n82), .A2(n85), .ZN(n80) );
  OAI21_X1 U709 ( .B1(n87), .B2(n85), .A(n86), .ZN(n84) );
  NAND2_X1 U710 ( .A1(n151), .A2(n139), .ZN(n62) );
  OAI22_X1 U711 ( .A1(n502), .A2(n370), .B1(n369), .B2(n555), .ZN(n293) );
  OAI22_X1 U712 ( .A1(n501), .A2(n367), .B1(n366), .B2(n490), .ZN(n290) );
  OAI22_X1 U713 ( .A1(n502), .A2(n375), .B1(n374), .B2(n555), .ZN(n298) );
  OAI22_X1 U714 ( .A1(n501), .A2(n373), .B1(n372), .B2(n490), .ZN(n296) );
  OAI22_X1 U715 ( .A1(n501), .A2(n372), .B1(n371), .B2(n555), .ZN(n295) );
  OAI22_X1 U716 ( .A1(n501), .A2(n368), .B1(n367), .B2(n490), .ZN(n291) );
  OAI22_X1 U717 ( .A1(n18), .A2(n374), .B1(n373), .B2(n555), .ZN(n297) );
  OAI22_X1 U718 ( .A1(n502), .A2(n534), .B1(n377), .B2(n555), .ZN(n256) );
  OAI22_X1 U719 ( .A1(n18), .A2(n369), .B1(n368), .B2(n555), .ZN(n292) );
  OAI22_X1 U720 ( .A1(n501), .A2(n376), .B1(n375), .B2(n490), .ZN(n299) );
  OAI22_X1 U721 ( .A1(n502), .A2(n371), .B1(n370), .B2(n520), .ZN(n294) );
  OAI22_X1 U722 ( .A1(n18), .A2(n366), .B1(n365), .B2(n490), .ZN(n289) );
  XNOR2_X1 U723 ( .A(n538), .B(n420), .ZN(n386) );
  XNOR2_X1 U724 ( .A(n583), .B(n576), .ZN(n391) );
  INV_X1 U725 ( .A(n520), .ZN(n245) );
  XNOR2_X1 U726 ( .A(n583), .B(n422), .ZN(n388) );
  XNOR2_X1 U727 ( .A(n583), .B(n423), .ZN(n389) );
  XNOR2_X1 U728 ( .A(n538), .B(n424), .ZN(n390) );
  XNOR2_X1 U729 ( .A(n538), .B(n421), .ZN(n387) );
  XOR2_X1 U730 ( .A(n56), .B(n507), .Z(product[5]) );
  XNOR2_X1 U731 ( .A(n504), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U732 ( .A(n504), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U733 ( .A(n504), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U734 ( .A(n503), .B(n418), .ZN(n401) );
  XNOR2_X1 U735 ( .A(n523), .B(n420), .ZN(n403) );
  XNOR2_X1 U736 ( .A(n523), .B(n419), .ZN(n402) );
  XNOR2_X1 U737 ( .A(n504), .B(n422), .ZN(n405) );
  XNOR2_X1 U738 ( .A(n503), .B(n421), .ZN(n404) );
  XNOR2_X1 U739 ( .A(n504), .B(n423), .ZN(n406) );
  XNOR2_X1 U740 ( .A(n504), .B(n576), .ZN(n408) );
  XNOR2_X1 U741 ( .A(n504), .B(n424), .ZN(n407) );
  XOR2_X1 U742 ( .A(n579), .B(n249), .Z(n433) );
  NAND2_X1 U743 ( .A1(n232), .A2(n233), .ZN(n111) );
  INV_X1 U744 ( .A(n575), .ZN(n87) );
  NAND2_X1 U745 ( .A1(n328), .A2(n314), .ZN(n119) );
  NOR2_X1 U746 ( .A1(n234), .A2(n257), .ZN(n113) );
  OAI21_X1 U747 ( .B1(n64), .B2(n525), .A(n65), .ZN(n63) );
  OAI21_X1 U748 ( .B1(n560), .B2(n71), .A(n72), .ZN(n70) );
  OAI21_X1 U749 ( .B1(n560), .B2(n78), .A(n79), .ZN(n77) );
  XNOR2_X1 U750 ( .A(n553), .B(n53), .ZN(product[8]) );
  XOR2_X1 U751 ( .A(n58), .B(n115), .Z(product[3]) );
  OAI22_X1 U752 ( .A1(n517), .A2(n395), .B1(n394), .B2(n539), .ZN(n316) );
  OAI22_X1 U753 ( .A1(n517), .A2(n394), .B1(n393), .B2(n539), .ZN(n315) );
  OAI22_X1 U754 ( .A1(n562), .A2(n396), .B1(n395), .B2(n539), .ZN(n317) );
  OAI22_X1 U755 ( .A1(n562), .A2(n397), .B1(n396), .B2(n539), .ZN(n318) );
  OAI22_X1 U756 ( .A1(n561), .A2(n398), .B1(n397), .B2(n539), .ZN(n319) );
  OAI22_X1 U757 ( .A1(n562), .A2(n400), .B1(n399), .B2(n539), .ZN(n321) );
  OAI22_X1 U758 ( .A1(n561), .A2(n399), .B1(n398), .B2(n539), .ZN(n320) );
  OAI22_X1 U759 ( .A1(n561), .A2(n401), .B1(n400), .B2(n539), .ZN(n322) );
  OAI22_X1 U760 ( .A1(n561), .A2(n402), .B1(n401), .B2(n539), .ZN(n323) );
  NAND2_X1 U761 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI22_X1 U762 ( .A1(n404), .A2(n6), .B1(n403), .B2(n578), .ZN(n325) );
  OAI22_X1 U763 ( .A1(n6), .A2(n403), .B1(n402), .B2(n578), .ZN(n324) );
  OAI22_X1 U764 ( .A1(n562), .A2(n406), .B1(n405), .B2(n578), .ZN(n327) );
  OAI22_X1 U765 ( .A1(n6), .A2(n405), .B1(n404), .B2(n578), .ZN(n326) );
  OAI22_X1 U766 ( .A1(n562), .A2(n407), .B1(n406), .B2(n539), .ZN(n328) );
  OAI22_X1 U767 ( .A1(n562), .A2(n408), .B1(n407), .B2(n539), .ZN(n329) );
  OAI22_X1 U768 ( .A1(n562), .A2(n529), .B1(n409), .B2(n578), .ZN(n258) );
  OAI22_X1 U769 ( .A1(n557), .A2(n379), .B1(n378), .B2(n541), .ZN(n301) );
  OAI22_X1 U770 ( .A1(n558), .A2(n380), .B1(n379), .B2(n541), .ZN(n302) );
  OAI22_X1 U771 ( .A1(n558), .A2(n385), .B1(n384), .B2(n541), .ZN(n307) );
  OAI22_X1 U772 ( .A1(n558), .A2(n382), .B1(n381), .B2(n541), .ZN(n304) );
  OAI22_X1 U773 ( .A1(n557), .A2(n381), .B1(n380), .B2(n541), .ZN(n303) );
  NAND2_X1 U774 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U775 ( .A1(n556), .A2(n383), .B1(n382), .B2(n574), .ZN(n305) );
  OAI22_X1 U776 ( .A1(n558), .A2(n384), .B1(n383), .B2(n574), .ZN(n306) );
  OAI22_X1 U777 ( .A1(n558), .A2(n386), .B1(n385), .B2(n541), .ZN(n308) );
  OAI22_X1 U778 ( .A1(n557), .A2(n387), .B1(n386), .B2(n541), .ZN(n309) );
  OAI22_X1 U779 ( .A1(n557), .A2(n540), .B1(n392), .B2(n541), .ZN(n257) );
  OAI22_X1 U780 ( .A1(n556), .A2(n389), .B1(n519), .B2(n574), .ZN(n311) );
  OAI22_X1 U781 ( .A1(n557), .A2(n388), .B1(n387), .B2(n574), .ZN(n310) );
  OAI22_X1 U782 ( .A1(n556), .A2(n390), .B1(n389), .B2(n574), .ZN(n312) );
  INV_X1 U783 ( .A(n541), .ZN(n247) );
  OAI22_X1 U784 ( .A1(n558), .A2(n391), .B1(n390), .B2(n574), .ZN(n313) );
  INV_X1 U785 ( .A(n587), .ZN(n586) );
  INV_X1 U786 ( .A(n31), .ZN(n591) );
  INV_X1 U787 ( .A(n593), .ZN(n592) );
  INV_X1 U788 ( .A(n36), .ZN(n593) );
  INV_X1 U789 ( .A(n595), .ZN(n594) );
  INV_X1 U790 ( .A(n40), .ZN(n595) );
  XOR2_X1 U791 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U792 ( .A(n289), .B(n279), .Z(n146) );
  XOR2_X1 U793 ( .A(n149), .B(n147), .Z(n144) );
  XOR2_X1 U794 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_9_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n8, n9, n10, n11, n12, n13, n14, n15, n16, n19, n20,
         n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n44, n45, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n65, n67, n68, n69, n70, n71, n73,
         n75, n76, n77, n78, n79, n81, n83, n84, n86, n88, n89, n90, n94, n95,
         n96, n98, n100, n157, n158, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179;

  BUF_X1 U122 ( .A(n38), .Z(n157) );
  OR2_X2 U123 ( .A1(A[10]), .A2(B[10]), .ZN(n178) );
  NOR2_X1 U124 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  OR2_X1 U125 ( .A1(A[15]), .A2(B[15]), .ZN(n158) );
  AND2_X1 U126 ( .A1(n174), .A2(n86), .ZN(SUM[0]) );
  NOR2_X1 U127 ( .A1(A[8]), .A2(B[8]), .ZN(n160) );
  NOR2_X1 U128 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  XNOR2_X1 U129 ( .A(n45), .B(n161), .ZN(SUM[10]) );
  AND2_X1 U130 ( .A1(n178), .A2(n44), .ZN(n161) );
  XNOR2_X1 U131 ( .A(n37), .B(n162), .ZN(SUM[11]) );
  AND2_X1 U132 ( .A1(n163), .A2(n36), .ZN(n162) );
  OR2_X1 U133 ( .A1(A[11]), .A2(B[11]), .ZN(n163) );
  OR2_X1 U134 ( .A1(n25), .A2(n28), .ZN(n164) );
  AND2_X1 U135 ( .A1(A[9]), .A2(B[9]), .ZN(n165) );
  INV_X1 U136 ( .A(n167), .ZN(n44) );
  OAI21_X1 U137 ( .B1(n168), .B2(n36), .A(n33), .ZN(n166) );
  AND2_X1 U138 ( .A1(A[10]), .A2(B[10]), .ZN(n167) );
  NOR2_X1 U139 ( .A1(A[12]), .A2(B[12]), .ZN(n168) );
  NOR2_X1 U140 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  INV_X1 U141 ( .A(n163), .ZN(n169) );
  BUF_X1 U142 ( .A(n38), .Z(n170) );
  NOR2_X1 U143 ( .A1(A[14]), .A2(B[14]), .ZN(n171) );
  NOR2_X1 U144 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  AOI21_X1 U145 ( .B1(n170), .B2(n30), .A(n166), .ZN(n172) );
  AOI21_X1 U146 ( .B1(n157), .B2(n30), .A(n31), .ZN(n173) );
  OR2_X1 U147 ( .A1(A[0]), .A2(B[0]), .ZN(n174) );
  INV_X1 U148 ( .A(n60), .ZN(n59) );
  INV_X1 U149 ( .A(n51), .ZN(n50) );
  INV_X1 U150 ( .A(n157), .ZN(n37) );
  AOI21_X1 U151 ( .B1(n178), .B2(n165), .A(n167), .ZN(n40) );
  AOI21_X1 U152 ( .B1(n176), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U153 ( .A(n75), .ZN(n73) );
  AOI21_X1 U154 ( .B1(n177), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U155 ( .A(n83), .ZN(n81) );
  AOI21_X1 U156 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  OAI21_X1 U157 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  AOI21_X1 U158 ( .B1(n179), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U159 ( .A(n67), .ZN(n65) );
  INV_X1 U160 ( .A(n24), .ZN(n22) );
  OAI21_X1 U161 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  AOI21_X1 U162 ( .B1(n50), .B2(n175), .A(n165), .ZN(n45) );
  NAND2_X1 U163 ( .A1(n94), .A2(n55), .ZN(n9) );
  INV_X1 U164 ( .A(n86), .ZN(n84) );
  OAI21_X1 U165 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  NAND2_X1 U166 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U167 ( .A(n69), .ZN(n98) );
  INV_X1 U168 ( .A(n168), .ZN(n90) );
  INV_X1 U169 ( .A(n28), .ZN(n89) );
  NAND2_X1 U170 ( .A1(n175), .A2(n49), .ZN(n8) );
  NAND2_X1 U171 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U172 ( .A(n57), .ZN(n95) );
  NAND2_X1 U173 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U174 ( .A(n77), .ZN(n100) );
  NAND2_X1 U175 ( .A1(n179), .A2(n67), .ZN(n12) );
  NAND2_X1 U176 ( .A1(n176), .A2(n75), .ZN(n14) );
  NAND2_X1 U177 ( .A1(n177), .A2(n83), .ZN(n16) );
  NAND2_X1 U178 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U179 ( .A(n61), .ZN(n96) );
  XNOR2_X1 U180 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  XNOR2_X1 U181 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  XOR2_X1 U182 ( .A(n15), .B(n79), .Z(SUM[2]) );
  NAND2_X1 U183 ( .A1(n89), .A2(n29), .ZN(n4) );
  NAND2_X1 U184 ( .A1(n90), .A2(n33), .ZN(n5) );
  NOR2_X1 U185 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  OR2_X1 U186 ( .A1(A[9]), .A2(B[9]), .ZN(n175) );
  NOR2_X1 U187 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NOR2_X1 U188 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NAND2_X1 U189 ( .A1(n88), .A2(n26), .ZN(n3) );
  OR2_X1 U190 ( .A1(A[3]), .A2(B[3]), .ZN(n176) );
  OR2_X1 U191 ( .A1(A[1]), .A2(B[1]), .ZN(n177) );
  NAND2_X1 U192 ( .A1(n158), .A2(n19), .ZN(n2) );
  NAND2_X1 U193 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  XNOR2_X1 U194 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  NOR2_X1 U195 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NAND2_X1 U196 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  OR2_X1 U197 ( .A1(A[5]), .A2(B[5]), .ZN(n179) );
  NAND2_X1 U198 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U199 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  NAND2_X1 U200 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U201 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NAND2_X1 U202 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U203 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U204 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  NAND2_X1 U205 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  XNOR2_X1 U206 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XOR2_X1 U207 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XOR2_X1 U208 ( .A(n13), .B(n71), .Z(SUM[4]) );
  XNOR2_X1 U209 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  XOR2_X1 U210 ( .A(n11), .B(n63), .Z(SUM[6]) );
  OAI21_X1 U211 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  NAND2_X1 U212 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  NAND2_X1 U213 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  OAI21_X1 U214 ( .B1(n32), .B2(n36), .A(n33), .ZN(n31) );
  NAND2_X1 U215 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  OAI21_X1 U216 ( .B1(n39), .B2(n51), .A(n40), .ZN(n38) );
  NAND2_X1 U217 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  INV_X1 U218 ( .A(n25), .ZN(n88) );
  OAI21_X1 U219 ( .B1(n171), .B2(n29), .A(n26), .ZN(n24) );
  INV_X1 U220 ( .A(n160), .ZN(n94) );
  NOR2_X1 U221 ( .A1(n160), .A2(n57), .ZN(n52) );
  OAI21_X1 U222 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  NAND2_X1 U223 ( .A1(n178), .A2(n175), .ZN(n39) );
  NAND2_X1 U224 ( .A1(A[15]), .A2(B[15]), .ZN(n19) );
  OAI21_X1 U225 ( .B1(n37), .B2(n169), .A(n36), .ZN(n34) );
  NOR2_X1 U226 ( .A1(n35), .A2(n32), .ZN(n30) );
  NOR2_X1 U227 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  XNOR2_X1 U228 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  XNOR2_X1 U229 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  XNOR2_X1 U230 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  XOR2_X1 U231 ( .A(n172), .B(n4), .Z(SUM[13]) );
  OAI21_X1 U232 ( .B1(n173), .B2(n28), .A(n29), .ZN(n27) );
  OAI21_X1 U233 ( .B1(n172), .B2(n164), .A(n22), .ZN(n20) );
endmodule


module datapath_M16_N8_T16_P16_9 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n21), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n229), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n230), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n231), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n232), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n233), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n234), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n235), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n236), .CK(clk), .Q(n34) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n237), .CK(clk), .Q(n35) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n238), .CK(clk), .Q(n36) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n239), .CK(clk), .Q(n37) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n240), .CK(clk), .Q(n38) );
  DFF_X1 \f_reg[0]  ( .D(n168), .CK(clk), .Q(n65), .QN(n218) );
  DFF_X1 \f_reg[1]  ( .D(n167), .CK(clk), .Q(n63), .QN(n219) );
  DFF_X1 \f_reg[2]  ( .D(n166), .CK(clk), .Q(n61), .QN(n220) );
  DFF_X1 \f_reg[3]  ( .D(n114), .CK(clk), .Q(f[3]), .QN(n69) );
  DFF_X1 \data_out_reg[15]  ( .D(n170), .CK(clk), .Q(data_out[15]), .QN(n201)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n171), .CK(clk), .Q(data_out[14]), .QN(n200)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n172), .CK(clk), .Q(data_out[13]), .QN(n199)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n173), .CK(clk), .Q(data_out[12]), .QN(n198)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n174), .CK(clk), .Q(data_out[11]), .QN(n197)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n175), .CK(clk), .Q(data_out[10]), .QN(n196)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n176), .CK(clk), .Q(data_out[9]), .QN(n195) );
  DFF_X1 \data_out_reg[8]  ( .D(n177), .CK(clk), .Q(data_out[8]), .QN(n194) );
  DFF_X1 \data_out_reg[7]  ( .D(n178), .CK(clk), .Q(data_out[7]), .QN(n193) );
  DFF_X1 \data_out_reg[6]  ( .D(n179), .CK(clk), .Q(data_out[6]), .QN(n192) );
  DFF_X1 \data_out_reg[5]  ( .D(n180), .CK(clk), .Q(data_out[5]), .QN(n191) );
  DFF_X1 \data_out_reg[4]  ( .D(n181), .CK(clk), .Q(data_out[4]), .QN(n190) );
  DFF_X1 \data_out_reg[3]  ( .D(n182), .CK(clk), .Q(data_out[3]), .QN(n189) );
  DFF_X1 \data_out_reg[2]  ( .D(n183), .CK(clk), .Q(data_out[2]), .QN(n188) );
  DFF_X1 \data_out_reg[1]  ( .D(n184), .CK(clk), .Q(data_out[1]), .QN(n187) );
  DFF_X1 \data_out_reg[0]  ( .D(n185), .CK(clk), .Q(data_out[0]), .QN(n186) );
  datapath_M16_N8_T16_P16_9_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_9_DW01_add_2 add_262 ( .A({n208, n207, n206, n205, 
        n204, n203, n217, n216, n215, n214, n213, n212, n211, n210, n209, n202}), .B({f[15], n47, n48, n50, n51, n53, f[9:3], n61, n63, n65}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n244), .CK(clk), .Q(n43) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n243), .CK(clk), .Q(n41) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n242), .CK(clk), .Q(n40) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n241), .CK(clk), .Q(n39) );
  DFF_X1 \f_reg[4]  ( .D(n113), .CK(clk), .Q(f[4]), .QN(n70) );
  DFF_X1 \f_reg[5]  ( .D(n112), .CK(clk), .Q(f[5]), .QN(n71) );
  DFF_X1 \f_reg[6]  ( .D(n111), .CK(clk), .Q(f[6]), .QN(n72) );
  DFF_X1 \f_reg[7]  ( .D(n102), .CK(clk), .Q(f[7]), .QN(n221) );
  DFF_X1 \f_reg[8]  ( .D(n85), .CK(clk), .Q(f[8]), .QN(n222) );
  DFF_X1 \f_reg[9]  ( .D(n83), .CK(clk), .Q(f[9]), .QN(n223) );
  DFF_X1 \f_reg[10]  ( .D(n82), .CK(clk), .Q(n53), .QN(n224) );
  DFF_X1 \f_reg[11]  ( .D(n81), .CK(clk), .Q(n51), .QN(n225) );
  DFF_X1 \f_reg[12]  ( .D(n2), .CK(clk), .Q(n50), .QN(n226) );
  DFF_X1 \f_reg[15]  ( .D(n7), .CK(clk), .Q(f[15]), .QN(n77) );
  DFF_X1 \f_reg[13]  ( .D(n80), .CK(clk), .Q(n48), .QN(n227) );
  DFF_X2 delay_reg ( .D(n169), .CK(clk), .Q(n5), .QN(n245) );
  DFF_X2 \f_reg[14]  ( .D(n4), .CK(clk), .Q(n47), .QN(n228) );
  MUX2_X2 U3 ( .A(N39), .B(n32), .S(n5), .Z(n203) );
  AND2_X1 U4 ( .A1(n46), .A2(n22), .ZN(n17) );
  AND2_X1 U5 ( .A1(n16), .A2(n14), .ZN(n1) );
  MUX2_X2 U6 ( .A(n29), .B(N40), .S(n245), .Z(n204) );
  NAND3_X1 U8 ( .A1(n9), .A2(n8), .A3(n10), .ZN(n2) );
  MUX2_X2 U9 ( .A(n34), .B(N37), .S(n245), .Z(n216) );
  NAND3_X1 U10 ( .A1(n12), .A2(n11), .A3(n13), .ZN(n4) );
  MUX2_X2 U11 ( .A(n26), .B(N43), .S(n245), .Z(n207) );
  CLKBUF_X1 U12 ( .A(N38), .Z(n6) );
  NAND2_X1 U13 ( .A1(n15), .A2(n1), .ZN(n7) );
  MUX2_X2 U14 ( .A(n28), .B(N41), .S(n245), .Z(n205) );
  MUX2_X2 U15 ( .A(n27), .B(N42), .S(n245), .Z(n206) );
  NAND2_X1 U16 ( .A1(data_out_b[12]), .A2(n20), .ZN(n8) );
  NAND2_X1 U17 ( .A1(adder[12]), .A2(n17), .ZN(n9) );
  NAND2_X1 U18 ( .A1(n67), .A2(n50), .ZN(n10) );
  NAND2_X1 U19 ( .A1(data_out_b[14]), .A2(n20), .ZN(n11) );
  NAND2_X1 U20 ( .A1(adder[14]), .A2(n17), .ZN(n12) );
  NAND2_X1 U21 ( .A1(n67), .A2(n47), .ZN(n13) );
  NAND2_X1 U22 ( .A1(data_out_b[15]), .A2(n20), .ZN(n14) );
  NAND2_X1 U23 ( .A1(adder[15]), .A2(n17), .ZN(n15) );
  NAND2_X1 U24 ( .A1(n67), .A2(f[15]), .ZN(n16) );
  INV_X1 U25 ( .A(n22), .ZN(n20) );
  NAND2_X1 U26 ( .A1(n169), .A2(n19), .ZN(n247) );
  INV_X1 U27 ( .A(n46), .ZN(n67) );
  INV_X1 U28 ( .A(clear_acc), .ZN(n22) );
  OAI22_X1 U29 ( .A1(n189), .A2(n247), .B1(n69), .B2(n246), .ZN(n182) );
  OAI22_X1 U30 ( .A1(n190), .A2(n247), .B1(n70), .B2(n246), .ZN(n181) );
  OAI22_X1 U31 ( .A1(n191), .A2(n247), .B1(n71), .B2(n246), .ZN(n180) );
  OAI22_X1 U32 ( .A1(n192), .A2(n247), .B1(n72), .B2(n246), .ZN(n179) );
  OAI22_X1 U33 ( .A1(n193), .A2(n247), .B1(n221), .B2(n246), .ZN(n178) );
  OAI22_X1 U34 ( .A1(n194), .A2(n247), .B1(n222), .B2(n246), .ZN(n177) );
  OAI22_X1 U35 ( .A1(n195), .A2(n247), .B1(n223), .B2(n246), .ZN(n176) );
  INV_X1 U36 ( .A(n24), .ZN(n42) );
  CLKBUF_X1 U37 ( .A(N39), .Z(n18) );
  INV_X1 U38 ( .A(wr_en_y), .ZN(n19) );
  INV_X1 U39 ( .A(n22), .ZN(n21) );
  INV_X1 U40 ( .A(m_ready), .ZN(n23) );
  NAND2_X1 U41 ( .A1(m_valid), .A2(n23), .ZN(n44) );
  OAI21_X1 U42 ( .B1(sel[4]), .B2(n79), .A(n44), .ZN(n169) );
  NAND2_X1 U43 ( .A1(clear_acc_delay), .A2(n245), .ZN(n24) );
  MUX2_X1 U44 ( .A(n25), .B(N44), .S(n42), .Z(n229) );
  MUX2_X1 U45 ( .A(n25), .B(N44), .S(n245), .Z(n208) );
  MUX2_X1 U46 ( .A(n26), .B(N43), .S(n42), .Z(n230) );
  MUX2_X1 U47 ( .A(n27), .B(N42), .S(n42), .Z(n231) );
  MUX2_X1 U48 ( .A(n28), .B(N41), .S(n42), .Z(n232) );
  MUX2_X1 U49 ( .A(n29), .B(N40), .S(n42), .Z(n233) );
  MUX2_X1 U50 ( .A(n32), .B(n18), .S(n42), .Z(n234) );
  MUX2_X1 U51 ( .A(n33), .B(n6), .S(n42), .Z(n235) );
  MUX2_X1 U52 ( .A(n33), .B(N38), .S(n245), .Z(n217) );
  MUX2_X1 U53 ( .A(n34), .B(N37), .S(n42), .Z(n236) );
  MUX2_X1 U54 ( .A(n35), .B(N36), .S(n42), .Z(n237) );
  MUX2_X1 U55 ( .A(n35), .B(N36), .S(n245), .Z(n215) );
  MUX2_X1 U56 ( .A(n36), .B(N35), .S(n42), .Z(n238) );
  MUX2_X1 U57 ( .A(n36), .B(N35), .S(n245), .Z(n214) );
  MUX2_X1 U58 ( .A(n37), .B(N34), .S(n42), .Z(n239) );
  MUX2_X1 U59 ( .A(n37), .B(N34), .S(n245), .Z(n213) );
  MUX2_X1 U60 ( .A(n38), .B(N33), .S(n42), .Z(n240) );
  MUX2_X1 U61 ( .A(n38), .B(N33), .S(n245), .Z(n212) );
  MUX2_X1 U62 ( .A(n39), .B(N32), .S(n42), .Z(n241) );
  MUX2_X1 U63 ( .A(n39), .B(N32), .S(n245), .Z(n211) );
  MUX2_X1 U64 ( .A(n40), .B(N31), .S(n42), .Z(n242) );
  MUX2_X1 U65 ( .A(n40), .B(N31), .S(n245), .Z(n210) );
  MUX2_X1 U66 ( .A(n41), .B(N30), .S(n42), .Z(n243) );
  MUX2_X1 U67 ( .A(n41), .B(N30), .S(n245), .Z(n209) );
  MUX2_X1 U68 ( .A(n43), .B(N29), .S(n42), .Z(n244) );
  MUX2_X1 U69 ( .A(n43), .B(N29), .S(n245), .Z(n202) );
  INV_X1 U70 ( .A(n44), .ZN(n45) );
  OAI21_X1 U71 ( .B1(n45), .B2(n5), .A(n22), .ZN(n46) );
  AOI222_X1 U72 ( .A1(data_out_b[13]), .A2(n20), .B1(adder[13]), .B2(n17), 
        .C1(n67), .C2(n48), .ZN(n49) );
  INV_X1 U73 ( .A(n49), .ZN(n80) );
  AOI222_X1 U74 ( .A1(data_out_b[11]), .A2(n20), .B1(adder[11]), .B2(n17), 
        .C1(n67), .C2(n51), .ZN(n52) );
  INV_X1 U75 ( .A(n52), .ZN(n81) );
  AOI222_X1 U76 ( .A1(data_out_b[10]), .A2(n20), .B1(adder[10]), .B2(n17), 
        .C1(n67), .C2(n53), .ZN(n54) );
  INV_X1 U77 ( .A(n54), .ZN(n82) );
  AOI222_X1 U78 ( .A1(data_out_b[8]), .A2(n20), .B1(adder[8]), .B2(n17), .C1(
        n67), .C2(f[8]), .ZN(n55) );
  INV_X1 U79 ( .A(n55), .ZN(n85) );
  AOI222_X1 U80 ( .A1(data_out_b[7]), .A2(n20), .B1(adder[7]), .B2(n17), .C1(
        n67), .C2(f[7]), .ZN(n56) );
  INV_X1 U81 ( .A(n56), .ZN(n102) );
  AOI222_X1 U82 ( .A1(data_out_b[6]), .A2(n20), .B1(adder[6]), .B2(n17), .C1(
        n67), .C2(f[6]), .ZN(n57) );
  INV_X1 U83 ( .A(n57), .ZN(n111) );
  AOI222_X1 U84 ( .A1(data_out_b[5]), .A2(n20), .B1(adder[5]), .B2(n17), .C1(
        n67), .C2(f[5]), .ZN(n58) );
  INV_X1 U85 ( .A(n58), .ZN(n112) );
  AOI222_X1 U86 ( .A1(data_out_b[4]), .A2(n20), .B1(adder[4]), .B2(n17), .C1(
        n67), .C2(f[4]), .ZN(n59) );
  INV_X1 U87 ( .A(n59), .ZN(n113) );
  AOI222_X1 U88 ( .A1(data_out_b[3]), .A2(n20), .B1(adder[3]), .B2(n17), .C1(
        n67), .C2(f[3]), .ZN(n60) );
  INV_X1 U89 ( .A(n60), .ZN(n114) );
  AOI222_X1 U90 ( .A1(data_out_b[2]), .A2(n21), .B1(adder[2]), .B2(n17), .C1(
        n67), .C2(n61), .ZN(n62) );
  INV_X1 U91 ( .A(n62), .ZN(n166) );
  AOI222_X1 U92 ( .A1(data_out_b[1]), .A2(n21), .B1(adder[1]), .B2(n17), .C1(
        n67), .C2(n63), .ZN(n64) );
  INV_X1 U93 ( .A(n64), .ZN(n167) );
  AOI222_X1 U94 ( .A1(data_out_b[0]), .A2(n21), .B1(adder[0]), .B2(n17), .C1(
        n67), .C2(n65), .ZN(n66) );
  INV_X1 U95 ( .A(n66), .ZN(n168) );
  AOI222_X1 U96 ( .A1(data_out_b[9]), .A2(n21), .B1(adder[9]), .B2(n17), .C1(
        n67), .C2(f[9]), .ZN(n68) );
  INV_X1 U97 ( .A(n68), .ZN(n83) );
  NOR4_X1 U98 ( .A1(n51), .A2(n50), .A3(n48), .A4(n47), .ZN(n76) );
  NOR4_X1 U99 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n53), .ZN(n75) );
  NAND4_X1 U100 ( .A1(n72), .A2(n71), .A3(n70), .A4(n69), .ZN(n73) );
  NOR4_X1 U101 ( .A1(n73), .A2(n65), .A3(n63), .A4(n61), .ZN(n74) );
  NAND3_X1 U102 ( .A1(n76), .A2(n75), .A3(n74), .ZN(n78) );
  NAND3_X1 U103 ( .A1(wr_en_y), .A2(n78), .A3(n77), .ZN(n246) );
  OAI22_X1 U104 ( .A1(n186), .A2(n247), .B1(n218), .B2(n246), .ZN(n185) );
  OAI22_X1 U105 ( .A1(n187), .A2(n247), .B1(n219), .B2(n246), .ZN(n184) );
  OAI22_X1 U106 ( .A1(n188), .A2(n247), .B1(n220), .B2(n246), .ZN(n183) );
  OAI22_X1 U107 ( .A1(n196), .A2(n247), .B1(n224), .B2(n246), .ZN(n175) );
  OAI22_X1 U108 ( .A1(n197), .A2(n247), .B1(n225), .B2(n246), .ZN(n174) );
  OAI22_X1 U109 ( .A1(n198), .A2(n247), .B1(n226), .B2(n246), .ZN(n173) );
  OAI22_X1 U110 ( .A1(n199), .A2(n247), .B1(n227), .B2(n246), .ZN(n172) );
  OAI22_X1 U111 ( .A1(n200), .A2(n247), .B1(n228), .B2(n246), .ZN(n171) );
  OAI22_X1 U112 ( .A1(n201), .A2(n247), .B1(n77), .B2(n246), .ZN(n170) );
  AND4_X1 U113 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n79)
         );
endmodule


module datapath_M16_N8_T16_P16_8_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n27, n29, n31,
         n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50, n53,
         n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n93, n95, n96, n97, n98, n99, n103,
         n104, n105, n106, n107, n111, n113, n114, n115, n117, n119, n120,
         n122, n127, n128, n131, n133, n135, n139, n141, n142, n143, n145,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n237, n245, n247, n249, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n418,
         n419, n420, n421, n422, n423, n424, n426, n427, n428, n429, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U152 ( .A(n301), .B(n148), .Z(n149) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U161 ( .A(n177), .B(n168), .CI(n166), .CO(n163), .S(n164) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n292), .CI(n274), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n304), .B(n264), .CI(n318), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n305), .B(n253), .CI(n283), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n319), .B(n269), .CO(n193), .S(n194) );
  FA_X1 U179 ( .A(n284), .B(n294), .CI(n276), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n306), .B(n270), .CI(n320), .CO(n201), .S(n202) );
  FA_X1 U181 ( .A(n208), .B(n213), .CI(n206), .CO(n203), .S(n204) );
  FA_X1 U182 ( .A(n210), .B(n307), .CI(n215), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n254), .B(n285), .CI(n295), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n255), .B(n309), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n287), .B(n323), .CO(n221), .S(n222) );
  FA_X1 U191 ( .A(n229), .B(n298), .CI(n226), .CO(n223), .S(n224) );
  FA_X1 U192 ( .A(n288), .B(n310), .CI(n324), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n325), .B(n311), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n326), .B(n300), .CI(n312), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n327), .B(n313), .CO(n233), .S(n234) );
  XNOR2_X1 U414 ( .A(n582), .B(a[4]), .ZN(n556) );
  XNOR2_X1 U415 ( .A(n271), .B(n490), .ZN(n147) );
  XNOR2_X1 U416 ( .A(n289), .B(n279), .ZN(n490) );
  XNOR2_X1 U417 ( .A(n45), .B(n491), .ZN(product[12]) );
  AND2_X1 U418 ( .A1(n504), .A2(n79), .ZN(n491) );
  BUF_X1 U419 ( .A(n546), .Z(n492) );
  AOI21_X1 U420 ( .B1(n562), .B2(n120), .A(n117), .ZN(n115) );
  BUF_X1 U421 ( .A(n107), .Z(n493) );
  AND2_X1 U422 ( .A1(n224), .A2(n227), .ZN(n547) );
  AND2_X1 U423 ( .A1(n232), .A2(n233), .ZN(n508) );
  NAND2_X1 U424 ( .A1(n428), .A2(n494), .ZN(n34) );
  NOR2_X1 U425 ( .A1(n196), .A2(n203), .ZN(n85) );
  INV_X1 U426 ( .A(n508), .ZN(n111) );
  XOR2_X1 U427 ( .A(n586), .B(a[10]), .Z(n494) );
  OR2_X1 U428 ( .A1(n164), .A2(n175), .ZN(n495) );
  OR2_X1 U429 ( .A1(n329), .A2(n258), .ZN(n496) );
  OR2_X2 U430 ( .A1(n536), .A2(n249), .ZN(n6) );
  AOI21_X1 U431 ( .B1(n564), .B2(n570), .A(n508), .ZN(n107) );
  NOR2_X1 U432 ( .A1(n164), .A2(n175), .ZN(n497) );
  NOR2_X1 U433 ( .A1(n164), .A2(n175), .ZN(n75) );
  BUF_X2 U434 ( .A(n575), .Z(n498) );
  XNOR2_X1 U435 ( .A(n265), .B(n499), .ZN(n145) );
  XNOR2_X1 U436 ( .A(n149), .B(n147), .ZN(n499) );
  BUF_X1 U437 ( .A(n9), .Z(n500) );
  CLKBUF_X3 U438 ( .A(n16), .Z(n569) );
  OR2_X2 U439 ( .A1(n501), .A2(n558), .ZN(n23) );
  XOR2_X1 U440 ( .A(n584), .B(a[6]), .Z(n501) );
  INV_X1 U441 ( .A(n515), .ZN(n502) );
  INV_X1 U442 ( .A(n579), .ZN(n578) );
  INV_X2 U443 ( .A(n579), .ZN(n577) );
  XNOR2_X1 U444 ( .A(n535), .B(n503), .ZN(product[9]) );
  AND2_X1 U445 ( .A1(n522), .A2(n90), .ZN(n503) );
  XNOR2_X1 U446 ( .A(n588), .B(a[10]), .ZN(n428) );
  XNOR2_X2 U447 ( .A(n587), .B(a[12]), .ZN(n37) );
  OR2_X1 U448 ( .A1(n176), .A2(n185), .ZN(n504) );
  AOI21_X1 U449 ( .B1(n80), .B2(n551), .A(n81), .ZN(n505) );
  INV_X1 U450 ( .A(n523), .ZN(n506) );
  XNOR2_X1 U451 ( .A(n574), .B(a[2]), .ZN(n507) );
  BUF_X2 U452 ( .A(n575), .Z(n510) );
  BUF_X2 U453 ( .A(n575), .Z(n511) );
  INV_X1 U454 ( .A(n580), .ZN(n509) );
  INV_X1 U455 ( .A(n576), .ZN(n575) );
  XOR2_X1 U456 ( .A(n579), .B(a[4]), .Z(n512) );
  NOR2_X1 U457 ( .A1(n186), .A2(n195), .ZN(n513) );
  NOR2_X1 U458 ( .A1(n186), .A2(n195), .ZN(n82) );
  INV_X1 U459 ( .A(n548), .ZN(n514) );
  INV_X1 U460 ( .A(n548), .ZN(n27) );
  INV_X1 U461 ( .A(n586), .ZN(n515) );
  OAI21_X1 U462 ( .B1(n513), .B2(n86), .A(n83), .ZN(n516) );
  INV_X1 U463 ( .A(n568), .ZN(n517) );
  CLKBUF_X3 U464 ( .A(n574), .Z(n568) );
  INV_X1 U465 ( .A(n583), .ZN(n518) );
  INV_X1 U466 ( .A(n586), .ZN(n519) );
  INV_X1 U467 ( .A(n586), .ZN(n585) );
  INV_X1 U468 ( .A(n582), .ZN(n520) );
  XNOR2_X1 U469 ( .A(n198), .B(n521), .ZN(n196) );
  XNOR2_X1 U470 ( .A(n205), .B(n200), .ZN(n521) );
  OR2_X1 U471 ( .A1(n204), .A2(n211), .ZN(n522) );
  BUF_X2 U472 ( .A(n494), .Z(n523) );
  XNOR2_X1 U473 ( .A(n579), .B(a[2]), .ZN(n555) );
  INV_X1 U474 ( .A(n558), .ZN(n21) );
  XNOR2_X1 U475 ( .A(n510), .B(a[2]), .ZN(n524) );
  INV_X1 U476 ( .A(n577), .ZN(n525) );
  INV_X1 U477 ( .A(n588), .ZN(n526) );
  INV_X1 U478 ( .A(n588), .ZN(n527) );
  NAND2_X1 U479 ( .A1(n533), .A2(n500), .ZN(n528) );
  XNOR2_X1 U480 ( .A(n529), .B(n202), .ZN(n198) );
  XNOR2_X1 U481 ( .A(n207), .B(n209), .ZN(n529) );
  OR2_X2 U482 ( .A1(n536), .A2(n249), .ZN(n531) );
  XNOR2_X1 U483 ( .A(n574), .B(a[2]), .ZN(n537) );
  INV_X1 U484 ( .A(n584), .ZN(n530) );
  INV_X1 U485 ( .A(n584), .ZN(n583) );
  XOR2_X1 U486 ( .A(n579), .B(a[4]), .Z(n16) );
  XNOR2_X1 U487 ( .A(n511), .B(a[2]), .ZN(n532) );
  XNOR2_X1 U488 ( .A(n498), .B(a[2]), .ZN(n553) );
  BUF_X1 U489 ( .A(n555), .Z(n533) );
  NAND2_X1 U490 ( .A1(n556), .A2(n512), .ZN(n534) );
  XOR2_X1 U491 ( .A(n576), .B(a[2]), .Z(n9) );
  CLKBUF_X1 U492 ( .A(n91), .Z(n535) );
  XNOR2_X1 U493 ( .A(n574), .B(n249), .ZN(n536) );
  NAND2_X1 U494 ( .A1(n207), .A2(n209), .ZN(n538) );
  NAND2_X1 U495 ( .A1(n207), .A2(n202), .ZN(n539) );
  NAND2_X1 U496 ( .A1(n209), .A2(n202), .ZN(n540) );
  NAND3_X1 U497 ( .A1(n538), .A2(n539), .A3(n540), .ZN(n197) );
  NAND2_X1 U498 ( .A1(n205), .A2(n200), .ZN(n541) );
  NAND2_X1 U499 ( .A1(n205), .A2(n198), .ZN(n542) );
  NAND2_X1 U500 ( .A1(n200), .A2(n198), .ZN(n543) );
  NAND3_X1 U501 ( .A1(n541), .A2(n542), .A3(n543), .ZN(n195) );
  NOR2_X1 U502 ( .A1(n228), .A2(n231), .ZN(n544) );
  NOR2_X1 U503 ( .A1(n228), .A2(n231), .ZN(n105) );
  INV_X1 U504 ( .A(n547), .ZN(n103) );
  NAND2_X1 U505 ( .A1(n555), .A2(n9), .ZN(n545) );
  OAI21_X1 U506 ( .B1(n544), .B2(n107), .A(n106), .ZN(n546) );
  XNOR2_X1 U507 ( .A(n584), .B(a[8]), .ZN(n548) );
  AOI21_X1 U508 ( .B1(n565), .B2(n546), .A(n547), .ZN(n549) );
  AOI21_X1 U509 ( .B1(n565), .B2(n104), .A(n547), .ZN(n99) );
  NAND2_X2 U510 ( .A1(n429), .A2(n27), .ZN(n29) );
  OAI21_X1 U511 ( .B1(n549), .B2(n97), .A(n98), .ZN(n550) );
  AOI21_X1 U512 ( .B1(n96), .B2(n560), .A(n93), .ZN(n91) );
  OAI21_X1 U513 ( .B1(n91), .B2(n89), .A(n90), .ZN(n551) );
  INV_X1 U514 ( .A(n249), .ZN(n552) );
  INV_X1 U515 ( .A(n582), .ZN(n580) );
  NAND2_X1 U516 ( .A1(n533), .A2(n9), .ZN(n554) );
  NAND2_X1 U517 ( .A1(n533), .A2(n500), .ZN(n12) );
  NAND2_X1 U518 ( .A1(n556), .A2(n16), .ZN(n18) );
  BUF_X1 U519 ( .A(n43), .Z(n572) );
  AOI21_X1 U520 ( .B1(n80), .B2(n551), .A(n516), .ZN(n557) );
  XNOR2_X1 U521 ( .A(n582), .B(a[6]), .ZN(n558) );
  NAND2_X1 U522 ( .A1(n559), .A2(n69), .ZN(n47) );
  INV_X1 U523 ( .A(n73), .ZN(n71) );
  AOI21_X1 U524 ( .B1(n74), .B2(n559), .A(n67), .ZN(n65) );
  INV_X1 U525 ( .A(n69), .ZN(n67) );
  INV_X1 U526 ( .A(n74), .ZN(n72) );
  INV_X1 U527 ( .A(n95), .ZN(n93) );
  AOI21_X1 U528 ( .B1(n551), .B2(n80), .A(n81), .ZN(n45) );
  NOR2_X1 U529 ( .A1(n82), .A2(n85), .ZN(n80) );
  OAI21_X1 U530 ( .B1(n82), .B2(n86), .A(n83), .ZN(n81) );
  NAND2_X1 U531 ( .A1(n127), .A2(n83), .ZN(n50) );
  INV_X1 U532 ( .A(n513), .ZN(n127) );
  OR2_X1 U533 ( .A1(n152), .A2(n163), .ZN(n559) );
  OAI21_X1 U534 ( .B1(n91), .B2(n89), .A(n90), .ZN(n88) );
  NAND2_X1 U535 ( .A1(n495), .A2(n76), .ZN(n48) );
  NAND2_X1 U536 ( .A1(n560), .A2(n95), .ZN(n53) );
  OAI21_X1 U537 ( .B1(n497), .B2(n79), .A(n76), .ZN(n74) );
  INV_X1 U538 ( .A(n85), .ZN(n128) );
  NOR2_X1 U539 ( .A1(n75), .A2(n78), .ZN(n73) );
  NAND2_X1 U540 ( .A1(n152), .A2(n163), .ZN(n69) );
  NAND2_X1 U541 ( .A1(n131), .A2(n98), .ZN(n54) );
  INV_X1 U542 ( .A(n97), .ZN(n131) );
  NOR2_X1 U543 ( .A1(n176), .A2(n185), .ZN(n78) );
  OAI21_X1 U544 ( .B1(n107), .B2(n105), .A(n106), .ZN(n104) );
  INV_X1 U545 ( .A(n119), .ZN(n117) );
  XNOR2_X1 U546 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U547 ( .A1(n563), .A2(n62), .ZN(n46) );
  NAND2_X1 U548 ( .A1(n73), .A2(n559), .ZN(n64) );
  INV_X1 U549 ( .A(n122), .ZN(n120) );
  XNOR2_X1 U550 ( .A(n57), .B(n570), .ZN(product[4]) );
  NAND2_X1 U551 ( .A1(n564), .A2(n111), .ZN(n57) );
  NAND2_X1 U552 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U553 ( .A1(n186), .A2(n195), .ZN(n83) );
  NAND2_X1 U554 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U555 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U556 ( .A1(n212), .A2(n217), .ZN(n95) );
  NAND2_X1 U557 ( .A1(n204), .A2(n211), .ZN(n90) );
  OR2_X1 U558 ( .A1(n212), .A2(n217), .ZN(n560) );
  NAND2_X1 U559 ( .A1(n135), .A2(n114), .ZN(n58) );
  INV_X1 U560 ( .A(n113), .ZN(n135) );
  XNOR2_X1 U561 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U562 ( .A1(n562), .A2(n119), .ZN(n59) );
  NAND2_X1 U563 ( .A1(n133), .A2(n106), .ZN(n56) );
  INV_X1 U564 ( .A(n544), .ZN(n133) );
  INV_X1 U565 ( .A(n588), .ZN(n587) );
  AND2_X1 U566 ( .A1(n496), .A2(n122), .ZN(product[1]) );
  OR2_X1 U567 ( .A1(n328), .A2(n314), .ZN(n562) );
  NOR2_X1 U568 ( .A1(n234), .A2(n257), .ZN(n113) );
  OR2_X1 U569 ( .A1(n151), .A2(n139), .ZN(n563) );
  NOR2_X1 U570 ( .A1(n218), .A2(n223), .ZN(n97) );
  NAND2_X1 U571 ( .A1(n228), .A2(n231), .ZN(n106) );
  OR2_X1 U572 ( .A1(n232), .A2(n233), .ZN(n564) );
  NAND2_X1 U573 ( .A1(n218), .A2(n223), .ZN(n98) );
  INV_X1 U574 ( .A(n37), .ZN(n237) );
  INV_X1 U575 ( .A(n41), .ZN(n235) );
  OR2_X1 U576 ( .A1(n224), .A2(n227), .ZN(n565) );
  OR2_X1 U577 ( .A1(n572), .A2(n525), .ZN(n392) );
  OAI22_X1 U578 ( .A1(n531), .A2(n406), .B1(n405), .B2(n552), .ZN(n327) );
  XNOR2_X1 U579 ( .A(n589), .B(a[14]), .ZN(n41) );
  XNOR2_X1 U580 ( .A(n581), .B(n572), .ZN(n376) );
  OAI22_X1 U581 ( .A1(n531), .A2(n400), .B1(n399), .B2(n552), .ZN(n321) );
  XNOR2_X1 U582 ( .A(n585), .B(n572), .ZN(n352) );
  OAI22_X1 U583 ( .A1(n531), .A2(n408), .B1(n407), .B2(n552), .ZN(n329) );
  OAI22_X1 U584 ( .A1(n42), .A2(n592), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U585 ( .A1(n572), .A2(n592), .ZN(n332) );
  OAI22_X1 U586 ( .A1(n531), .A2(n398), .B1(n397), .B2(n552), .ZN(n319) );
  OAI22_X1 U587 ( .A1(n6), .A2(n404), .B1(n403), .B2(n552), .ZN(n325) );
  XOR2_X1 U588 ( .A(n585), .B(a[8]), .Z(n429) );
  XNOR2_X1 U589 ( .A(n155), .B(n566), .ZN(n139) );
  XNOR2_X1 U590 ( .A(n153), .B(n141), .ZN(n566) );
  XNOR2_X1 U591 ( .A(n567), .B(n157), .ZN(n141) );
  XNOR2_X1 U592 ( .A(n145), .B(n143), .ZN(n567) );
  XOR2_X1 U593 ( .A(n315), .B(n261), .Z(n150) );
  OAI22_X1 U594 ( .A1(n39), .A2(n334), .B1(n37), .B2(n333), .ZN(n261) );
  AND2_X1 U595 ( .A1(n573), .A2(n245), .ZN(n300) );
  OAI22_X1 U596 ( .A1(n6), .A2(n405), .B1(n404), .B2(n552), .ZN(n326) );
  XNOR2_X1 U597 ( .A(n589), .B(n572), .ZN(n336) );
  OAI22_X1 U598 ( .A1(n39), .A2(n336), .B1(n37), .B2(n335), .ZN(n263) );
  AND2_X1 U599 ( .A1(n573), .A2(n237), .ZN(n264) );
  OAI22_X1 U600 ( .A1(n531), .A2(n397), .B1(n396), .B2(n552), .ZN(n318) );
  AND2_X1 U601 ( .A1(n573), .A2(n506), .ZN(n270) );
  OAI22_X1 U602 ( .A1(n531), .A2(n399), .B1(n398), .B2(n552), .ZN(n320) );
  AND2_X1 U603 ( .A1(n573), .A2(n558), .ZN(n288) );
  OAI22_X1 U604 ( .A1(n6), .A2(n403), .B1(n402), .B2(n552), .ZN(n324) );
  AND2_X1 U605 ( .A1(n573), .A2(n235), .ZN(n260) );
  OAI22_X1 U606 ( .A1(n39), .A2(n335), .B1(n37), .B2(n334), .ZN(n262) );
  OAI22_X1 U607 ( .A1(n531), .A2(n395), .B1(n394), .B2(n552), .ZN(n316) );
  NAND2_X1 U608 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U609 ( .A(n589), .B(a[12]), .Z(n427) );
  INV_X1 U610 ( .A(n25), .ZN(n586) );
  AND2_X1 U611 ( .A1(n573), .A2(n548), .ZN(n278) );
  OAI22_X1 U612 ( .A1(n531), .A2(n401), .B1(n400), .B2(n552), .ZN(n322) );
  INV_X1 U613 ( .A(n13), .ZN(n582) );
  NAND2_X1 U614 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U615 ( .A(n591), .B(a[14]), .Z(n426) );
  INV_X1 U616 ( .A(n7), .ZN(n579) );
  OAI22_X1 U617 ( .A1(n6), .A2(n402), .B1(n401), .B2(n552), .ZN(n323) );
  XNOR2_X1 U618 ( .A(n530), .B(n572), .ZN(n363) );
  OAI22_X1 U619 ( .A1(n39), .A2(n590), .B1(n337), .B2(n37), .ZN(n252) );
  OAI22_X1 U620 ( .A1(n531), .A2(n396), .B1(n395), .B2(n552), .ZN(n317) );
  OR2_X1 U621 ( .A1(n572), .A2(n590), .ZN(n337) );
  AND2_X1 U622 ( .A1(n573), .A2(n247), .ZN(n314) );
  AND2_X1 U623 ( .A1(n573), .A2(n249), .ZN(product[0]) );
  OR2_X1 U624 ( .A1(n572), .A2(n588), .ZN(n344) );
  OR2_X1 U625 ( .A1(n572), .A2(n502), .ZN(n353) );
  OR2_X1 U626 ( .A1(n572), .A2(n518), .ZN(n364) );
  OR2_X1 U627 ( .A1(n572), .A2(n509), .ZN(n377) );
  XNOR2_X1 U628 ( .A(n530), .B(b[9]), .ZN(n354) );
  XNOR2_X1 U629 ( .A(n581), .B(b[11]), .ZN(n365) );
  OAI22_X1 U630 ( .A1(n531), .A2(n394), .B1(n393), .B2(n552), .ZN(n315) );
  XNOR2_X1 U631 ( .A(n511), .B(b[15]), .ZN(n393) );
  XNOR2_X1 U632 ( .A(n589), .B(n424), .ZN(n335) );
  XNOR2_X1 U633 ( .A(n589), .B(n423), .ZN(n334) );
  OAI22_X1 U634 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U635 ( .A(n591), .B(n424), .ZN(n330) );
  XNOR2_X1 U636 ( .A(n591), .B(n572), .ZN(n331) );
  XNOR2_X1 U637 ( .A(n498), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U638 ( .A(n510), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U639 ( .A(n511), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U640 ( .A(n498), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U641 ( .A(n519), .B(n418), .ZN(n345) );
  XNOR2_X1 U642 ( .A(n526), .B(n420), .ZN(n338) );
  XNOR2_X1 U643 ( .A(n577), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U644 ( .A(n578), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U645 ( .A(n578), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U646 ( .A(n577), .B(n418), .ZN(n384) );
  XNOR2_X1 U647 ( .A(n577), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U648 ( .A(n577), .B(n419), .ZN(n385) );
  XNOR2_X1 U649 ( .A(n577), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U650 ( .A(n577), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U651 ( .A(n585), .B(n424), .ZN(n351) );
  XNOR2_X1 U652 ( .A(n583), .B(n424), .ZN(n362) );
  XNOR2_X1 U653 ( .A(n581), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U654 ( .A(n581), .B(n418), .ZN(n369) );
  XNOR2_X1 U655 ( .A(n581), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U656 ( .A(n581), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U657 ( .A(n589), .B(n422), .ZN(n333) );
  XNOR2_X1 U658 ( .A(n515), .B(n423), .ZN(n350) );
  XNOR2_X1 U659 ( .A(n530), .B(n423), .ZN(n361) );
  XNOR2_X1 U660 ( .A(n583), .B(n422), .ZN(n360) );
  XNOR2_X1 U661 ( .A(n519), .B(n422), .ZN(n349) );
  XNOR2_X1 U662 ( .A(n583), .B(n421), .ZN(n359) );
  XNOR2_X1 U663 ( .A(n583), .B(n420), .ZN(n358) );
  XNOR2_X1 U664 ( .A(n515), .B(n421), .ZN(n348) );
  XNOR2_X1 U665 ( .A(n519), .B(n420), .ZN(n347) );
  XNOR2_X1 U666 ( .A(n527), .B(n421), .ZN(n339) );
  XNOR2_X1 U667 ( .A(n530), .B(n418), .ZN(n356) );
  XNOR2_X1 U668 ( .A(n530), .B(n419), .ZN(n357) );
  XNOR2_X1 U669 ( .A(n519), .B(n419), .ZN(n346) );
  XNOR2_X1 U670 ( .A(n530), .B(b[8]), .ZN(n355) );
  BUF_X1 U671 ( .A(n43), .Z(n573) );
  INV_X1 U672 ( .A(n576), .ZN(n574) );
  XNOR2_X1 U673 ( .A(n527), .B(n424), .ZN(n342) );
  XNOR2_X1 U674 ( .A(n526), .B(n422), .ZN(n340) );
  XNOR2_X1 U675 ( .A(n527), .B(n423), .ZN(n341) );
  XNOR2_X1 U676 ( .A(n526), .B(n572), .ZN(n343) );
  NAND2_X1 U677 ( .A1(n328), .A2(n314), .ZN(n119) );
  OAI22_X1 U678 ( .A1(n531), .A2(n407), .B1(n406), .B2(n552), .ZN(n328) );
  OAI22_X1 U679 ( .A1(n34), .A2(n339), .B1(n338), .B2(n523), .ZN(n265) );
  OAI22_X1 U680 ( .A1(n34), .A2(n340), .B1(n339), .B2(n523), .ZN(n266) );
  OAI22_X1 U681 ( .A1(n34), .A2(n342), .B1(n341), .B2(n523), .ZN(n268) );
  OAI22_X1 U682 ( .A1(n34), .A2(n341), .B1(n340), .B2(n523), .ZN(n267) );
  OAI22_X1 U683 ( .A1(n34), .A2(n343), .B1(n342), .B2(n523), .ZN(n269) );
  OAI22_X1 U684 ( .A1(n34), .A2(n588), .B1(n344), .B2(n523), .ZN(n253) );
  XNOR2_X1 U685 ( .A(n520), .B(n424), .ZN(n375) );
  XNOR2_X1 U686 ( .A(n580), .B(n419), .ZN(n370) );
  XNOR2_X1 U687 ( .A(n580), .B(n420), .ZN(n371) );
  XNOR2_X1 U688 ( .A(n520), .B(n423), .ZN(n374) );
  XNOR2_X1 U689 ( .A(n520), .B(n422), .ZN(n373) );
  XNOR2_X1 U690 ( .A(n520), .B(n421), .ZN(n372) );
  INV_X1 U691 ( .A(n19), .ZN(n584) );
  OAI21_X1 U692 ( .B1(n113), .B2(n115), .A(n114), .ZN(n570) );
  NOR2_X1 U693 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U694 ( .A1(n29), .A2(n346), .B1(n345), .B2(n514), .ZN(n271) );
  OAI22_X1 U695 ( .A1(n29), .A2(n350), .B1(n349), .B2(n514), .ZN(n275) );
  OAI22_X1 U696 ( .A1(n29), .A2(n347), .B1(n346), .B2(n514), .ZN(n272) );
  OAI22_X1 U697 ( .A1(n29), .A2(n349), .B1(n348), .B2(n514), .ZN(n274) );
  OAI22_X1 U698 ( .A1(n29), .A2(n348), .B1(n347), .B2(n514), .ZN(n273) );
  OAI22_X1 U699 ( .A1(n29), .A2(n502), .B1(n353), .B2(n514), .ZN(n254) );
  OAI22_X1 U700 ( .A1(n29), .A2(n351), .B1(n350), .B2(n514), .ZN(n276) );
  OAI22_X1 U701 ( .A1(n29), .A2(n352), .B1(n351), .B2(n514), .ZN(n277) );
  XNOR2_X1 U702 ( .A(n77), .B(n48), .ZN(product[13]) );
  NAND2_X1 U703 ( .A1(n565), .A2(n103), .ZN(n55) );
  XNOR2_X1 U704 ( .A(n87), .B(n571), .ZN(product[10]) );
  AND2_X1 U705 ( .A1(n128), .A2(n86), .ZN(n571) );
  XNOR2_X1 U706 ( .A(n70), .B(n47), .ZN(product[14]) );
  NAND2_X1 U707 ( .A1(n151), .A2(n139), .ZN(n62) );
  INV_X1 U708 ( .A(n1), .ZN(n576) );
  OR2_X1 U709 ( .A1(n572), .A2(n517), .ZN(n409) );
  XNOR2_X1 U710 ( .A(n84), .B(n50), .ZN(product[11]) );
  XOR2_X1 U711 ( .A(n58), .B(n115), .Z(product[3]) );
  OAI21_X1 U712 ( .B1(n87), .B2(n85), .A(n86), .ZN(n84) );
  XNOR2_X1 U713 ( .A(n550), .B(n53), .ZN(product[8]) );
  OAI22_X1 U714 ( .A1(n23), .A2(n356), .B1(n355), .B2(n21), .ZN(n280) );
  OAI22_X1 U715 ( .A1(n23), .A2(n358), .B1(n357), .B2(n21), .ZN(n282) );
  OAI22_X1 U716 ( .A1(n23), .A2(n362), .B1(n361), .B2(n21), .ZN(n286) );
  OAI22_X1 U717 ( .A1(n23), .A2(n360), .B1(n359), .B2(n21), .ZN(n284) );
  OAI22_X1 U718 ( .A1(n23), .A2(n361), .B1(n360), .B2(n21), .ZN(n285) );
  OAI22_X1 U719 ( .A1(n23), .A2(n518), .B1(n364), .B2(n21), .ZN(n255) );
  OAI22_X1 U720 ( .A1(n23), .A2(n357), .B1(n356), .B2(n21), .ZN(n281) );
  OAI22_X1 U721 ( .A1(n23), .A2(n355), .B1(n354), .B2(n21), .ZN(n279) );
  OAI22_X1 U722 ( .A1(n23), .A2(n363), .B1(n362), .B2(n21), .ZN(n287) );
  OAI22_X1 U723 ( .A1(n23), .A2(n359), .B1(n358), .B2(n21), .ZN(n283) );
  OAI21_X1 U724 ( .B1(n99), .B2(n97), .A(n98), .ZN(n96) );
  XOR2_X1 U725 ( .A(n549), .B(n54), .Z(product[7]) );
  XNOR2_X1 U726 ( .A(n55), .B(n492), .ZN(product[6]) );
  INV_X1 U727 ( .A(n88), .ZN(n87) );
  OAI22_X1 U728 ( .A1(n534), .A2(n370), .B1(n369), .B2(n569), .ZN(n293) );
  OAI22_X1 U729 ( .A1(n18), .A2(n367), .B1(n366), .B2(n569), .ZN(n290) );
  OAI22_X1 U730 ( .A1(n534), .A2(n375), .B1(n374), .B2(n569), .ZN(n298) );
  OAI22_X1 U731 ( .A1(n534), .A2(n372), .B1(n371), .B2(n569), .ZN(n295) );
  OAI22_X1 U732 ( .A1(n534), .A2(n368), .B1(n367), .B2(n569), .ZN(n291) );
  OAI22_X1 U733 ( .A1(n18), .A2(n373), .B1(n372), .B2(n569), .ZN(n296) );
  OAI22_X1 U734 ( .A1(n18), .A2(n369), .B1(n368), .B2(n569), .ZN(n292) );
  OAI22_X1 U735 ( .A1(n18), .A2(n371), .B1(n370), .B2(n569), .ZN(n294) );
  OAI22_X1 U736 ( .A1(n18), .A2(n374), .B1(n373), .B2(n569), .ZN(n297) );
  OAI22_X1 U737 ( .A1(n534), .A2(n509), .B1(n377), .B2(n569), .ZN(n256) );
  OAI22_X1 U738 ( .A1(n18), .A2(n376), .B1(n375), .B2(n569), .ZN(n299) );
  OAI22_X1 U739 ( .A1(n534), .A2(n366), .B1(n365), .B2(n569), .ZN(n289) );
  XNOR2_X1 U740 ( .A(n577), .B(n420), .ZN(n386) );
  INV_X1 U741 ( .A(n512), .ZN(n245) );
  XNOR2_X1 U742 ( .A(n578), .B(n422), .ZN(n388) );
  XNOR2_X1 U743 ( .A(n578), .B(n421), .ZN(n387) );
  XNOR2_X1 U744 ( .A(n577), .B(n572), .ZN(n391) );
  XNOR2_X1 U745 ( .A(n577), .B(n423), .ZN(n389) );
  XNOR2_X1 U746 ( .A(n577), .B(n424), .ZN(n390) );
  OAI21_X1 U747 ( .B1(n64), .B2(n557), .A(n65), .ZN(n63) );
  OAI21_X1 U748 ( .B1(n505), .B2(n78), .A(n79), .ZN(n77) );
  OAI21_X1 U749 ( .B1(n557), .B2(n71), .A(n72), .ZN(n70) );
  XNOR2_X1 U750 ( .A(n568), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U751 ( .A(n511), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U752 ( .A(n511), .B(n418), .ZN(n401) );
  XNOR2_X1 U753 ( .A(n510), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U754 ( .A(n498), .B(n422), .ZN(n405) );
  XNOR2_X1 U755 ( .A(n510), .B(n421), .ZN(n404) );
  XNOR2_X1 U756 ( .A(n568), .B(n572), .ZN(n408) );
  XNOR2_X1 U757 ( .A(n510), .B(n419), .ZN(n402) );
  XNOR2_X1 U758 ( .A(n498), .B(n420), .ZN(n403) );
  XNOR2_X1 U759 ( .A(n568), .B(n424), .ZN(n407) );
  XNOR2_X1 U760 ( .A(n568), .B(n423), .ZN(n406) );
  XOR2_X1 U761 ( .A(n56), .B(n493), .Z(product[5]) );
  NAND2_X1 U762 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI22_X1 U763 ( .A1(n531), .A2(n517), .B1(n409), .B2(n552), .ZN(n258) );
  OAI22_X1 U764 ( .A1(n528), .A2(n379), .B1(n378), .B2(n537), .ZN(n301) );
  OAI22_X1 U765 ( .A1(n12), .A2(n380), .B1(n379), .B2(n507), .ZN(n302) );
  OAI22_X1 U766 ( .A1(n12), .A2(n385), .B1(n384), .B2(n537), .ZN(n307) );
  OAI22_X1 U767 ( .A1(n554), .A2(n382), .B1(n381), .B2(n532), .ZN(n304) );
  OAI22_X1 U768 ( .A1(n554), .A2(n381), .B1(n380), .B2(n537), .ZN(n303) );
  NAND2_X1 U769 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U770 ( .A1(n545), .A2(n383), .B1(n524), .B2(n382), .ZN(n305) );
  OAI22_X1 U771 ( .A1(n545), .A2(n384), .B1(n383), .B2(n532), .ZN(n306) );
  OAI22_X1 U772 ( .A1(n12), .A2(n386), .B1(n385), .B2(n507), .ZN(n308) );
  OAI22_X1 U773 ( .A1(n528), .A2(n387), .B1(n386), .B2(n537), .ZN(n309) );
  OAI22_X1 U774 ( .A1(n554), .A2(n525), .B1(n392), .B2(n532), .ZN(n257) );
  OAI22_X1 U775 ( .A1(n545), .A2(n389), .B1(n507), .B2(n388), .ZN(n311) );
  OAI22_X1 U776 ( .A1(n545), .A2(n388), .B1(n553), .B2(n387), .ZN(n310) );
  OAI22_X1 U777 ( .A1(n545), .A2(n390), .B1(n389), .B2(n537), .ZN(n312) );
  INV_X1 U778 ( .A(n524), .ZN(n247) );
  OAI22_X1 U779 ( .A1(n528), .A2(n391), .B1(n390), .B2(n507), .ZN(n313) );
  INV_X1 U780 ( .A(n582), .ZN(n581) );
  INV_X1 U781 ( .A(n31), .ZN(n588) );
  INV_X1 U782 ( .A(n590), .ZN(n589) );
  INV_X1 U783 ( .A(n36), .ZN(n590) );
  INV_X1 U784 ( .A(n592), .ZN(n591) );
  INV_X1 U785 ( .A(n40), .ZN(n592) );
  XOR2_X1 U786 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U787 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_8_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n18,
         n20, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n44, n45, n47, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n65, n67, n68, n69, n70,
         n71, n73, n75, n76, n77, n78, n79, n81, n83, n84, n86, n89, n90, n94,
         n95, n96, n98, n100, n157, n158, n159, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183;

  OR2_X2 U122 ( .A1(n18), .A2(n180), .ZN(n2) );
  NOR2_X2 U123 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  NOR2_X1 U124 ( .A1(A[8]), .A2(B[8]), .ZN(n157) );
  NOR2_X1 U125 ( .A1(A[8]), .A2(B[8]), .ZN(n158) );
  NOR2_X1 U126 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  AOI21_X1 U127 ( .B1(n52), .B2(n60), .A(n53), .ZN(n159) );
  AOI21_X1 U128 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  NOR2_X1 U129 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  AND2_X1 U130 ( .A1(n175), .A2(n86), .ZN(SUM[0]) );
  OR2_X1 U131 ( .A1(A[11]), .A2(B[11]), .ZN(n161) );
  XNOR2_X1 U132 ( .A(n37), .B(n162), .ZN(SUM[11]) );
  AND2_X1 U133 ( .A1(n161), .A2(n36), .ZN(n162) );
  BUF_X1 U134 ( .A(n26), .Z(n163) );
  NOR2_X1 U135 ( .A1(A[14]), .A2(B[14]), .ZN(n164) );
  CLKBUF_X1 U136 ( .A(n36), .Z(n165) );
  OR2_X1 U137 ( .A1(A[10]), .A2(B[10]), .ZN(n166) );
  OR2_X1 U138 ( .A1(A[10]), .A2(B[10]), .ZN(n182) );
  OAI21_X1 U139 ( .B1(n39), .B2(n51), .A(n40), .ZN(n167) );
  OAI21_X1 U140 ( .B1(n39), .B2(n51), .A(n40), .ZN(n38) );
  NOR2_X1 U141 ( .A1(n32), .A2(n35), .ZN(n168) );
  AOI21_X1 U142 ( .B1(n167), .B2(n30), .A(n31), .ZN(n169) );
  OAI21_X1 U143 ( .B1(n32), .B2(n36), .A(n33), .ZN(n170) );
  NOR2_X1 U144 ( .A1(A[12]), .A2(B[12]), .ZN(n171) );
  OR2_X1 U145 ( .A1(A[14]), .A2(B[14]), .ZN(n172) );
  AOI21_X1 U146 ( .B1(n38), .B2(n30), .A(n31), .ZN(n173) );
  AOI21_X1 U147 ( .B1(n38), .B2(n168), .A(n170), .ZN(n174) );
  INV_X1 U148 ( .A(n24), .ZN(n22) );
  OR2_X1 U149 ( .A1(A[0]), .A2(B[0]), .ZN(n175) );
  INV_X1 U150 ( .A(n60), .ZN(n59) );
  INV_X1 U151 ( .A(n159), .ZN(n50) );
  INV_X1 U152 ( .A(n167), .ZN(n37) );
  OAI21_X1 U153 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  AOI21_X1 U154 ( .B1(n177), .B2(n76), .A(n73), .ZN(n71) );
  AOI21_X1 U155 ( .B1(n179), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U156 ( .A(n83), .ZN(n81) );
  AOI21_X1 U157 ( .B1(n181), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U158 ( .A(n67), .ZN(n65) );
  OR2_X1 U159 ( .A1(n25), .A2(n28), .ZN(n176) );
  OAI21_X1 U160 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  AOI21_X1 U161 ( .B1(n50), .B2(n178), .A(n47), .ZN(n45) );
  NAND2_X1 U162 ( .A1(n94), .A2(n55), .ZN(n9) );
  INV_X1 U163 ( .A(n86), .ZN(n84) );
  OAI21_X1 U164 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  INV_X1 U165 ( .A(n49), .ZN(n47) );
  INV_X1 U166 ( .A(n28), .ZN(n89) );
  NAND2_X1 U167 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U168 ( .A(n57), .ZN(n95) );
  NAND2_X1 U169 ( .A1(n178), .A2(n49), .ZN(n8) );
  NAND2_X1 U170 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U171 ( .A(n77), .ZN(n100) );
  NAND2_X1 U172 ( .A1(n181), .A2(n67), .ZN(n12) );
  NAND2_X1 U173 ( .A1(n179), .A2(n83), .ZN(n16) );
  NAND2_X1 U174 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U175 ( .A(n69), .ZN(n98) );
  NAND2_X1 U176 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U177 ( .A(n61), .ZN(n96) );
  INV_X1 U178 ( .A(n183), .ZN(n44) );
  NAND2_X1 U179 ( .A1(n89), .A2(n29), .ZN(n4) );
  NAND2_X1 U180 ( .A1(n90), .A2(n33), .ZN(n5) );
  NOR2_X1 U181 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  OR2_X1 U182 ( .A1(A[3]), .A2(B[3]), .ZN(n177) );
  NOR2_X1 U183 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  OR2_X1 U184 ( .A1(A[9]), .A2(B[9]), .ZN(n178) );
  NOR2_X1 U185 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NAND2_X1 U186 ( .A1(n172), .A2(n163), .ZN(n3) );
  XOR2_X1 U187 ( .A(n7), .B(n45), .Z(SUM[10]) );
  NAND2_X1 U188 ( .A1(n44), .A2(n182), .ZN(n7) );
  OR2_X1 U189 ( .A1(A[1]), .A2(B[1]), .ZN(n179) );
  AND2_X1 U190 ( .A1(A[15]), .A2(B[15]), .ZN(n180) );
  NOR2_X1 U191 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NAND2_X1 U192 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  XNOR2_X1 U193 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XNOR2_X1 U194 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NOR2_X1 U195 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NAND2_X1 U196 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  OR2_X1 U197 ( .A1(A[5]), .A2(B[5]), .ZN(n181) );
  NAND2_X1 U198 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  NAND2_X1 U199 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  NAND2_X1 U200 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U201 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U202 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U203 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U204 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  NAND2_X1 U205 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  NAND2_X1 U206 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  XNOR2_X1 U207 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XOR2_X1 U208 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XNOR2_X1 U209 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  XNOR2_X1 U210 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  XOR2_X1 U211 ( .A(n15), .B(n79), .Z(SUM[2]) );
  XOR2_X1 U212 ( .A(n13), .B(n71), .Z(SUM[4]) );
  INV_X1 U213 ( .A(n75), .ZN(n73) );
  NAND2_X1 U214 ( .A1(n177), .A2(n75), .ZN(n14) );
  INV_X1 U215 ( .A(n158), .ZN(n94) );
  NOR2_X1 U216 ( .A1(n157), .A2(n57), .ZN(n52) );
  OAI21_X1 U217 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  NAND2_X1 U218 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  NAND2_X1 U219 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  NOR2_X1 U220 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  AND2_X1 U221 ( .A1(A[10]), .A2(B[10]), .ZN(n183) );
  XNOR2_X1 U222 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  INV_X1 U223 ( .A(n32), .ZN(n90) );
  OAI21_X1 U224 ( .B1(n171), .B2(n36), .A(n33), .ZN(n31) );
  XNOR2_X1 U225 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  NAND2_X1 U226 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  XOR2_X1 U227 ( .A(n11), .B(n63), .Z(SUM[6]) );
  OAI21_X1 U228 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  OAI21_X1 U229 ( .B1(n37), .B2(n35), .A(n165), .ZN(n34) );
  NOR2_X1 U230 ( .A1(n171), .A2(n35), .ZN(n30) );
  OAI21_X1 U231 ( .B1(n164), .B2(n29), .A(n26), .ZN(n24) );
  NOR2_X1 U232 ( .A1(A[15]), .A2(B[15]), .ZN(n18) );
  NAND2_X1 U233 ( .A1(n182), .A2(n178), .ZN(n39) );
  AOI21_X1 U234 ( .B1(n166), .B2(n47), .A(n183), .ZN(n40) );
  XNOR2_X1 U235 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  XOR2_X1 U236 ( .A(n173), .B(n4), .Z(SUM[13]) );
  OAI21_X1 U237 ( .B1(n169), .B2(n28), .A(n29), .ZN(n27) );
  OAI21_X1 U238 ( .B1(n174), .B2(n176), .A(n22), .ZN(n20) );
endmodule


module datapath_M16_N8_T16_P16_8 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n19), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n227), .CK(clk), .Q(n23) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n228), .CK(clk), .Q(n24) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n229), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n230), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n231), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n232), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n233), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n234), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n235), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n236), .CK(clk), .Q(n34) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n237), .CK(clk), .Q(n35) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n238), .CK(clk), .Q(n36) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n239), .CK(clk), .Q(n37) );
  DFF_X1 \f_reg[0]  ( .D(n166), .CK(clk), .Q(n63), .QN(n216) );
  DFF_X1 \f_reg[1]  ( .D(n114), .CK(clk), .Q(n61), .QN(n217) );
  DFF_X1 \f_reg[2]  ( .D(n113), .CK(clk), .Q(n59), .QN(n218) );
  DFF_X1 \data_out_reg[15]  ( .D(n168), .CK(clk), .Q(data_out[15]), .QN(n199)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n169), .CK(clk), .Q(data_out[14]), .QN(n198)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n170), .CK(clk), .Q(data_out[13]), .QN(n197)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n171), .CK(clk), .Q(data_out[12]), .QN(n196)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n172), .CK(clk), .Q(data_out[11]), .QN(n195)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n173), .CK(clk), .Q(data_out[10]), .QN(n194)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n174), .CK(clk), .Q(data_out[9]), .QN(n193) );
  DFF_X1 \data_out_reg[8]  ( .D(n175), .CK(clk), .Q(data_out[8]), .QN(n192) );
  DFF_X1 \data_out_reg[7]  ( .D(n176), .CK(clk), .Q(data_out[7]), .QN(n191) );
  DFF_X1 \data_out_reg[6]  ( .D(n177), .CK(clk), .Q(data_out[6]), .QN(n190) );
  DFF_X1 \data_out_reg[5]  ( .D(n178), .CK(clk), .Q(data_out[5]), .QN(n189) );
  DFF_X1 \data_out_reg[4]  ( .D(n179), .CK(clk), .Q(data_out[4]), .QN(n188) );
  DFF_X1 \data_out_reg[3]  ( .D(n180), .CK(clk), .Q(data_out[3]), .QN(n187) );
  DFF_X1 \data_out_reg[2]  ( .D(n181), .CK(clk), .Q(data_out[2]), .QN(n186) );
  DFF_X1 \data_out_reg[1]  ( .D(n182), .CK(clk), .Q(data_out[1]), .QN(n185) );
  DFF_X1 \data_out_reg[0]  ( .D(n183), .CK(clk), .Q(data_out[0]), .QN(n184) );
  datapath_M16_N8_T16_P16_8_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_8_DW01_add_2 add_262 ( .A({n206, n205, n204, n203, 
        n202, n201, n215, n214, n213, n212, n211, n210, n209, n208, n207, n200}), .B({f[15], n45, n46, n48, n49, n51, f[9:3], n59, n61, n63}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X2 delay_reg ( .D(n167), .CK(clk), .Q(n5), .QN(n243) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n242), .CK(clk), .Q(n41) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n241), .CK(clk), .Q(n39) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n240), .CK(clk), .Q(n38) );
  DFF_X1 \f_reg[3]  ( .D(n112), .CK(clk), .Q(f[3]), .QN(n67) );
  DFF_X1 \f_reg[4]  ( .D(n111), .CK(clk), .Q(f[4]), .QN(n68) );
  DFF_X1 \f_reg[5]  ( .D(n102), .CK(clk), .Q(f[5]), .QN(n69) );
  DFF_X1 \f_reg[6]  ( .D(n85), .CK(clk), .Q(f[6]), .QN(n70) );
  DFF_X1 \f_reg[7]  ( .D(n83), .CK(clk), .Q(f[7]), .QN(n219) );
  DFF_X1 \f_reg[8]  ( .D(n82), .CK(clk), .Q(f[8]), .QN(n220) );
  DFF_X1 \f_reg[9]  ( .D(n81), .CK(clk), .Q(f[9]), .QN(n221) );
  DFF_X1 \f_reg[10]  ( .D(n80), .CK(clk), .Q(n51), .QN(n222) );
  DFF_X1 \f_reg[11]  ( .D(n79), .CK(clk), .Q(n49), .QN(n223) );
  DFF_X1 \f_reg[12]  ( .D(n4), .CK(clk), .Q(n48), .QN(n224) );
  DFF_X1 \f_reg[14]  ( .D(n7), .CK(clk), .Q(n45), .QN(n226) );
  DFF_X1 \f_reg[15]  ( .D(n6), .CK(clk), .Q(f[15]), .QN(n75) );
  DFF_X1 \f_reg[13]  ( .D(n78), .CK(clk), .Q(n46), .QN(n225) );
  AND2_X1 U3 ( .A1(n44), .A2(n20), .ZN(n17) );
  AND2_X1 U4 ( .A1(n13), .A2(n11), .ZN(n1) );
  AND2_X1 U5 ( .A1(n16), .A2(n14), .ZN(n2) );
  MUX2_X2 U6 ( .A(n32), .B(N37), .S(n243), .Z(n214) );
  NAND2_X1 U8 ( .A1(n12), .A2(n1), .ZN(n6) );
  MUX2_X2 U9 ( .A(n27), .B(N40), .S(n243), .Z(n202) );
  MUX2_X2 U10 ( .A(n26), .B(N41), .S(n243), .Z(n203) );
  MUX2_X2 U11 ( .A(n24), .B(N43), .S(n243), .Z(n205) );
  NAND2_X1 U12 ( .A1(n15), .A2(n2), .ZN(n7) );
  NAND3_X1 U13 ( .A1(n9), .A2(n8), .A3(n10), .ZN(n4) );
  MUX2_X2 U14 ( .A(N39), .B(n28), .S(n5), .Z(n201) );
  NAND2_X1 U15 ( .A1(data_out_b[12]), .A2(n19), .ZN(n8) );
  NAND2_X1 U16 ( .A1(adder[12]), .A2(n17), .ZN(n9) );
  NAND2_X1 U17 ( .A1(n65), .A2(n48), .ZN(n10) );
  NAND2_X1 U18 ( .A1(data_out_b[15]), .A2(n19), .ZN(n11) );
  NAND2_X1 U19 ( .A1(adder[15]), .A2(n17), .ZN(n12) );
  NAND2_X1 U20 ( .A1(n65), .A2(f[15]), .ZN(n13) );
  NAND2_X1 U21 ( .A1(data_out_b[14]), .A2(n19), .ZN(n14) );
  NAND2_X1 U22 ( .A1(adder[14]), .A2(n17), .ZN(n15) );
  NAND2_X1 U23 ( .A1(n65), .A2(n45), .ZN(n16) );
  INV_X1 U24 ( .A(n20), .ZN(n19) );
  NAND2_X1 U25 ( .A1(n167), .A2(n18), .ZN(n245) );
  INV_X1 U26 ( .A(n44), .ZN(n65) );
  INV_X1 U27 ( .A(clear_acc), .ZN(n20) );
  OAI22_X1 U28 ( .A1(n187), .A2(n245), .B1(n67), .B2(n244), .ZN(n180) );
  OAI22_X1 U29 ( .A1(n188), .A2(n245), .B1(n68), .B2(n244), .ZN(n179) );
  OAI22_X1 U30 ( .A1(n189), .A2(n245), .B1(n69), .B2(n244), .ZN(n178) );
  OAI22_X1 U31 ( .A1(n190), .A2(n245), .B1(n70), .B2(n244), .ZN(n177) );
  OAI22_X1 U32 ( .A1(n191), .A2(n245), .B1(n219), .B2(n244), .ZN(n176) );
  OAI22_X1 U33 ( .A1(n192), .A2(n245), .B1(n220), .B2(n244), .ZN(n175) );
  OAI22_X1 U34 ( .A1(n193), .A2(n245), .B1(n221), .B2(n244), .ZN(n174) );
  INV_X1 U35 ( .A(n22), .ZN(n40) );
  MUX2_X1 U36 ( .A(n23), .B(N44), .S(n243), .Z(n206) );
  INV_X1 U37 ( .A(wr_en_y), .ZN(n18) );
  INV_X1 U38 ( .A(m_ready), .ZN(n21) );
  NAND2_X1 U39 ( .A1(m_valid), .A2(n21), .ZN(n42) );
  OAI21_X1 U40 ( .B1(sel[4]), .B2(n77), .A(n42), .ZN(n167) );
  NAND2_X1 U41 ( .A1(clear_acc_delay), .A2(n243), .ZN(n22) );
  MUX2_X1 U42 ( .A(n23), .B(N44), .S(n40), .Z(n227) );
  MUX2_X1 U43 ( .A(n24), .B(N43), .S(n40), .Z(n228) );
  MUX2_X1 U44 ( .A(n25), .B(N42), .S(n40), .Z(n229) );
  MUX2_X1 U45 ( .A(n25), .B(N42), .S(n243), .Z(n204) );
  MUX2_X1 U46 ( .A(n26), .B(N41), .S(n40), .Z(n230) );
  MUX2_X1 U47 ( .A(n27), .B(N40), .S(n40), .Z(n231) );
  MUX2_X1 U48 ( .A(n28), .B(N39), .S(n40), .Z(n232) );
  MUX2_X1 U49 ( .A(n29), .B(N38), .S(n40), .Z(n233) );
  MUX2_X1 U50 ( .A(n29), .B(N38), .S(n243), .Z(n215) );
  MUX2_X1 U51 ( .A(n32), .B(N37), .S(n40), .Z(n234) );
  MUX2_X1 U52 ( .A(n33), .B(N36), .S(n40), .Z(n235) );
  MUX2_X1 U53 ( .A(n33), .B(N36), .S(n243), .Z(n213) );
  MUX2_X1 U54 ( .A(n34), .B(N35), .S(n40), .Z(n236) );
  MUX2_X1 U55 ( .A(n34), .B(N35), .S(n243), .Z(n212) );
  MUX2_X1 U56 ( .A(n35), .B(N34), .S(n40), .Z(n237) );
  MUX2_X1 U57 ( .A(n35), .B(N34), .S(n243), .Z(n211) );
  MUX2_X1 U58 ( .A(n36), .B(N33), .S(n40), .Z(n238) );
  MUX2_X1 U59 ( .A(n36), .B(N33), .S(n243), .Z(n210) );
  MUX2_X1 U60 ( .A(n37), .B(N32), .S(n40), .Z(n239) );
  MUX2_X1 U61 ( .A(n37), .B(N32), .S(n243), .Z(n209) );
  MUX2_X1 U62 ( .A(n38), .B(N31), .S(n40), .Z(n240) );
  MUX2_X1 U63 ( .A(n38), .B(N31), .S(n243), .Z(n208) );
  MUX2_X1 U64 ( .A(n39), .B(N30), .S(n40), .Z(n241) );
  MUX2_X1 U65 ( .A(n39), .B(N30), .S(n243), .Z(n207) );
  MUX2_X1 U66 ( .A(n41), .B(N29), .S(n40), .Z(n242) );
  MUX2_X1 U67 ( .A(n41), .B(N29), .S(n243), .Z(n200) );
  INV_X1 U68 ( .A(n42), .ZN(n43) );
  OAI21_X1 U69 ( .B1(n43), .B2(n5), .A(n20), .ZN(n44) );
  AOI222_X1 U70 ( .A1(data_out_b[13]), .A2(n19), .B1(adder[13]), .B2(n17), 
        .C1(n65), .C2(n46), .ZN(n47) );
  INV_X1 U71 ( .A(n47), .ZN(n78) );
  AOI222_X1 U72 ( .A1(data_out_b[11]), .A2(n19), .B1(adder[11]), .B2(n17), 
        .C1(n65), .C2(n49), .ZN(n50) );
  INV_X1 U73 ( .A(n50), .ZN(n79) );
  AOI222_X1 U74 ( .A1(data_out_b[10]), .A2(n19), .B1(adder[10]), .B2(n17), 
        .C1(n65), .C2(n51), .ZN(n52) );
  INV_X1 U75 ( .A(n52), .ZN(n80) );
  AOI222_X1 U76 ( .A1(data_out_b[8]), .A2(n19), .B1(adder[8]), .B2(n17), .C1(
        n65), .C2(f[8]), .ZN(n53) );
  INV_X1 U77 ( .A(n53), .ZN(n82) );
  AOI222_X1 U78 ( .A1(data_out_b[7]), .A2(n19), .B1(adder[7]), .B2(n17), .C1(
        n65), .C2(f[7]), .ZN(n54) );
  INV_X1 U79 ( .A(n54), .ZN(n83) );
  AOI222_X1 U80 ( .A1(data_out_b[6]), .A2(n19), .B1(adder[6]), .B2(n17), .C1(
        n65), .C2(f[6]), .ZN(n55) );
  INV_X1 U81 ( .A(n55), .ZN(n85) );
  AOI222_X1 U82 ( .A1(data_out_b[5]), .A2(n19), .B1(adder[5]), .B2(n17), .C1(
        n65), .C2(f[5]), .ZN(n56) );
  INV_X1 U83 ( .A(n56), .ZN(n102) );
  AOI222_X1 U84 ( .A1(data_out_b[4]), .A2(n19), .B1(adder[4]), .B2(n17), .C1(
        n65), .C2(f[4]), .ZN(n57) );
  INV_X1 U85 ( .A(n57), .ZN(n111) );
  AOI222_X1 U86 ( .A1(data_out_b[3]), .A2(n19), .B1(adder[3]), .B2(n17), .C1(
        n65), .C2(f[3]), .ZN(n58) );
  INV_X1 U87 ( .A(n58), .ZN(n112) );
  AOI222_X1 U88 ( .A1(data_out_b[2]), .A2(n19), .B1(adder[2]), .B2(n17), .C1(
        n65), .C2(n59), .ZN(n60) );
  INV_X1 U89 ( .A(n60), .ZN(n113) );
  AOI222_X1 U90 ( .A1(data_out_b[1]), .A2(n19), .B1(adder[1]), .B2(n17), .C1(
        n65), .C2(n61), .ZN(n62) );
  INV_X1 U91 ( .A(n62), .ZN(n114) );
  AOI222_X1 U92 ( .A1(data_out_b[0]), .A2(n19), .B1(adder[0]), .B2(n17), .C1(
        n65), .C2(n63), .ZN(n64) );
  INV_X1 U93 ( .A(n64), .ZN(n166) );
  AOI222_X1 U94 ( .A1(data_out_b[9]), .A2(n19), .B1(adder[9]), .B2(n17), .C1(
        n65), .C2(f[9]), .ZN(n66) );
  INV_X1 U95 ( .A(n66), .ZN(n81) );
  NOR4_X1 U96 ( .A1(n49), .A2(n48), .A3(n46), .A4(n45), .ZN(n74) );
  NOR4_X1 U97 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n51), .ZN(n73) );
  NAND4_X1 U98 ( .A1(n70), .A2(n69), .A3(n68), .A4(n67), .ZN(n71) );
  NOR4_X1 U99 ( .A1(n71), .A2(n63), .A3(n61), .A4(n59), .ZN(n72) );
  NAND3_X1 U100 ( .A1(n74), .A2(n73), .A3(n72), .ZN(n76) );
  NAND3_X1 U101 ( .A1(wr_en_y), .A2(n76), .A3(n75), .ZN(n244) );
  OAI22_X1 U102 ( .A1(n184), .A2(n245), .B1(n216), .B2(n244), .ZN(n183) );
  OAI22_X1 U103 ( .A1(n185), .A2(n245), .B1(n217), .B2(n244), .ZN(n182) );
  OAI22_X1 U104 ( .A1(n186), .A2(n245), .B1(n218), .B2(n244), .ZN(n181) );
  OAI22_X1 U105 ( .A1(n194), .A2(n245), .B1(n222), .B2(n244), .ZN(n173) );
  OAI22_X1 U106 ( .A1(n195), .A2(n245), .B1(n223), .B2(n244), .ZN(n172) );
  OAI22_X1 U107 ( .A1(n196), .A2(n245), .B1(n224), .B2(n244), .ZN(n171) );
  OAI22_X1 U108 ( .A1(n197), .A2(n245), .B1(n225), .B2(n244), .ZN(n170) );
  OAI22_X1 U109 ( .A1(n198), .A2(n245), .B1(n226), .B2(n244), .ZN(n169) );
  OAI22_X1 U110 ( .A1(n199), .A2(n245), .B1(n75), .B2(n244), .ZN(n168) );
  AND4_X1 U111 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n77)
         );
endmodule


module datapath_M16_N8_T16_P16_7_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n27, n29, n31,
         n32, n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50,
         n52, n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n93, n95, n96, n97, n98, n99,
         n101, n103, n104, n105, n106, n111, n112, n113, n114, n115, n117,
         n119, n120, n122, n127, n131, n133, n135, n139, n141, n142, n143,
         n144, n145, n146, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n237, n239, n241, n243, n245, n247, n249, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n418, n419, n420, n421, n422, n423, n424,
         n426, n427, n428, n429, n430, n431, n432, n433, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U148 ( .A(n265), .B(n144), .Z(n145) );
  XOR2_X1 U152 ( .A(n301), .B(n148), .Z(n149) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U161 ( .A(n177), .B(n168), .CI(n166), .CO(n163), .S(n164) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n274), .CI(n292), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n253), .B(n283), .CI(n305), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n269), .B(n319), .CO(n193), .S(n194) );
  FA_X1 U177 ( .A(n205), .B(n200), .CI(n198), .CO(n195), .S(n196) );
  FA_X1 U178 ( .A(n207), .B(n209), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n276), .B(n284), .CI(n294), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n320), .B(n270), .CI(n306), .CO(n201), .S(n202) );
  FA_X1 U181 ( .A(n208), .B(n213), .CI(n206), .CO(n203), .S(n204) );
  FA_X1 U182 ( .A(n215), .B(n307), .CI(n210), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n254), .B(n285), .CI(n295), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n255), .B(n309), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n287), .B(n323), .CO(n221), .S(n222) );
  FA_X1 U191 ( .A(n229), .B(n298), .CI(n226), .CO(n223), .S(n224) );
  FA_X1 U192 ( .A(n324), .B(n288), .CI(n310), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n325), .B(n311), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n326), .B(n300), .CI(n312), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  CLKBUF_X1 U414 ( .A(n21), .Z(n559) );
  BUF_X1 U415 ( .A(n115), .Z(n490) );
  BUF_X1 U416 ( .A(n112), .Z(n491) );
  BUF_X1 U417 ( .A(n575), .Z(n513) );
  BUF_X2 U418 ( .A(n21), .Z(n560) );
  NOR2_X2 U419 ( .A1(n186), .A2(n195), .ZN(n82) );
  AND2_X1 U420 ( .A1(n232), .A2(n233), .ZN(n549) );
  OR2_X1 U421 ( .A1(n164), .A2(n175), .ZN(n492) );
  OR2_X1 U422 ( .A1(n329), .A2(n258), .ZN(n493) );
  INV_X1 U423 ( .A(n584), .ZN(n582) );
  OR2_X2 U424 ( .A1(n224), .A2(n227), .ZN(n568) );
  INV_X1 U425 ( .A(n501), .ZN(n494) );
  CLKBUF_X1 U426 ( .A(n579), .Z(n501) );
  INV_X1 U427 ( .A(n501), .ZN(n578) );
  BUF_X1 U428 ( .A(n542), .Z(n550) );
  INV_X2 U429 ( .A(n249), .ZN(n552) );
  XNOR2_X1 U430 ( .A(n188), .B(n495), .ZN(n186) );
  XNOR2_X1 U431 ( .A(n197), .B(n190), .ZN(n495) );
  BUF_X1 U432 ( .A(n561), .Z(n496) );
  INV_X1 U433 ( .A(n583), .ZN(n497) );
  CLKBUF_X1 U434 ( .A(n86), .Z(n498) );
  XOR2_X1 U435 ( .A(n582), .B(a[4]), .Z(n499) );
  XOR2_X1 U436 ( .A(n582), .B(a[4]), .Z(n500) );
  CLKBUF_X1 U437 ( .A(n561), .Z(n502) );
  NAND2_X1 U438 ( .A1(n188), .A2(n197), .ZN(n503) );
  NAND2_X1 U439 ( .A1(n188), .A2(n190), .ZN(n504) );
  NAND2_X1 U440 ( .A1(n197), .A2(n190), .ZN(n505) );
  NAND3_X1 U441 ( .A1(n503), .A2(n504), .A3(n505), .ZN(n185) );
  NOR2_X1 U442 ( .A1(n164), .A2(n175), .ZN(n506) );
  XNOR2_X1 U443 ( .A(n507), .B(a[6]), .ZN(n430) );
  INV_X1 U444 ( .A(n585), .ZN(n507) );
  NOR2_X1 U445 ( .A1(n164), .A2(n175), .ZN(n75) );
  AND2_X1 U446 ( .A1(n224), .A2(n227), .ZN(n101) );
  OAI21_X1 U447 ( .B1(n91), .B2(n89), .A(n90), .ZN(n508) );
  BUF_X1 U448 ( .A(n27), .Z(n509) );
  XNOR2_X1 U449 ( .A(n585), .B(a[8]), .ZN(n27) );
  NOR2_X1 U450 ( .A1(n228), .A2(n231), .ZN(n510) );
  BUF_X2 U451 ( .A(n16), .Z(n553) );
  XNOR2_X1 U452 ( .A(n579), .B(a[2]), .ZN(n511) );
  INV_X1 U453 ( .A(n511), .ZN(n9) );
  BUF_X2 U454 ( .A(n9), .Z(n515) );
  BUF_X2 U455 ( .A(n574), .Z(n512) );
  NAND2_X2 U456 ( .A1(n428), .A2(n32), .ZN(n34) );
  CLKBUF_X1 U457 ( .A(n9), .Z(n514) );
  BUF_X1 U458 ( .A(n9), .Z(n516) );
  NAND2_X1 U459 ( .A1(n552), .A2(n433), .ZN(n517) );
  AOI21_X1 U460 ( .B1(n568), .B2(n104), .A(n101), .ZN(n518) );
  OR2_X1 U461 ( .A1(n204), .A2(n211), .ZN(n519) );
  INV_X1 U462 ( .A(n581), .ZN(n520) );
  XNOR2_X1 U463 ( .A(n539), .B(n521), .ZN(product[12]) );
  AND2_X1 U464 ( .A1(n525), .A2(n79), .ZN(n521) );
  XNOR2_X1 U465 ( .A(n88), .B(n522), .ZN(product[10]) );
  NAND2_X1 U466 ( .A1(n538), .A2(n86), .ZN(n522) );
  AOI21_X1 U467 ( .B1(n567), .B2(n112), .A(n549), .ZN(n523) );
  XNOR2_X1 U468 ( .A(n149), .B(n524), .ZN(n144) );
  XNOR2_X1 U469 ( .A(n271), .B(n146), .ZN(n524) );
  OR2_X1 U470 ( .A1(n176), .A2(n185), .ZN(n525) );
  XOR2_X1 U471 ( .A(n557), .B(a[6]), .Z(n526) );
  INV_X1 U472 ( .A(n575), .ZN(n527) );
  INV_X1 U473 ( .A(n590), .ZN(n528) );
  INV_X1 U474 ( .A(n590), .ZN(n529) );
  BUF_X1 U475 ( .A(n37), .Z(n530) );
  INV_X1 U476 ( .A(n588), .ZN(n531) );
  INV_X1 U477 ( .A(n588), .ZN(n532) );
  INV_X1 U478 ( .A(n588), .ZN(n587) );
  INV_X1 U479 ( .A(n580), .ZN(n533) );
  INV_X2 U480 ( .A(n581), .ZN(n580) );
  NAND2_X1 U481 ( .A1(n526), .A2(n573), .ZN(n534) );
  NAND2_X1 U482 ( .A1(n526), .A2(n573), .ZN(n535) );
  NAND2_X1 U483 ( .A1(n430), .A2(n573), .ZN(n23) );
  INV_X1 U484 ( .A(n241), .ZN(n536) );
  OAI21_X1 U485 ( .B1(n510), .B2(n523), .A(n106), .ZN(n537) );
  OR2_X1 U486 ( .A1(n196), .A2(n203), .ZN(n538) );
  AOI21_X1 U487 ( .B1(n547), .B2(n80), .A(n81), .ZN(n539) );
  AOI21_X1 U488 ( .B1(n547), .B2(n80), .A(n81), .ZN(n45) );
  AOI21_X1 U489 ( .B1(n568), .B2(n104), .A(n101), .ZN(n540) );
  CLKBUF_X1 U490 ( .A(n85), .Z(n541) );
  OAI21_X1 U491 ( .B1(n99), .B2(n97), .A(n98), .ZN(n542) );
  CLKBUF_X1 U492 ( .A(n523), .Z(n543) );
  XOR2_X1 U493 ( .A(n574), .B(n249), .Z(n544) );
  NAND2_X1 U494 ( .A1(n499), .A2(n572), .ZN(n545) );
  NAND2_X1 U495 ( .A1(n500), .A2(n572), .ZN(n546) );
  NAND2_X1 U496 ( .A1(n431), .A2(n572), .ZN(n18) );
  INV_X1 U497 ( .A(n579), .ZN(n574) );
  OAI21_X1 U498 ( .B1(n548), .B2(n89), .A(n90), .ZN(n547) );
  AOI21_X1 U499 ( .B1(n542), .B2(n564), .A(n93), .ZN(n548) );
  INV_X1 U500 ( .A(n549), .ZN(n111) );
  BUF_X1 U501 ( .A(n16), .Z(n572) );
  XOR2_X1 U502 ( .A(n584), .B(a[6]), .Z(n21) );
  BUF_X1 U503 ( .A(n21), .Z(n573) );
  XNOR2_X1 U504 ( .A(n581), .B(a[2]), .ZN(n432) );
  INV_X1 U505 ( .A(n249), .ZN(n551) );
  NAND2_X2 U506 ( .A1(n429), .A2(n27), .ZN(n29) );
  INV_X1 U507 ( .A(n579), .ZN(n575) );
  XNOR2_X1 U508 ( .A(n587), .B(a[10]), .ZN(n554) );
  NAND2_X1 U509 ( .A1(n432), .A2(n9), .ZN(n555) );
  NAND2_X1 U510 ( .A1(n432), .A2(n9), .ZN(n556) );
  INV_X1 U511 ( .A(n586), .ZN(n557) );
  INV_X1 U512 ( .A(n586), .ZN(n558) );
  NAND2_X1 U513 ( .A1(n544), .A2(n551), .ZN(n561) );
  NAND2_X1 U514 ( .A1(n544), .A2(n552), .ZN(n562) );
  NAND2_X1 U515 ( .A1(n563), .A2(n69), .ZN(n47) );
  INV_X1 U516 ( .A(n73), .ZN(n71) );
  AOI21_X1 U517 ( .B1(n74), .B2(n563), .A(n67), .ZN(n65) );
  INV_X1 U518 ( .A(n69), .ZN(n67) );
  INV_X1 U519 ( .A(n74), .ZN(n72) );
  INV_X1 U520 ( .A(n95), .ZN(n93) );
  NAND2_X1 U521 ( .A1(n492), .A2(n76), .ZN(n48) );
  NAND2_X1 U522 ( .A1(n519), .A2(n90), .ZN(n52) );
  OR2_X1 U523 ( .A1(n152), .A2(n163), .ZN(n563) );
  OAI21_X1 U524 ( .B1(n91), .B2(n89), .A(n90), .ZN(n88) );
  OAI21_X1 U525 ( .B1(n506), .B2(n79), .A(n76), .ZN(n74) );
  NOR2_X1 U526 ( .A1(n75), .A2(n78), .ZN(n73) );
  XNOR2_X1 U527 ( .A(n84), .B(n50), .ZN(product[11]) );
  NAND2_X1 U528 ( .A1(n127), .A2(n83), .ZN(n50) );
  NAND2_X1 U529 ( .A1(n152), .A2(n163), .ZN(n69) );
  NAND2_X1 U530 ( .A1(n564), .A2(n95), .ZN(n53) );
  OAI21_X1 U531 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  NAND2_X1 U532 ( .A1(n131), .A2(n98), .ZN(n54) );
  INV_X1 U533 ( .A(n97), .ZN(n131) );
  AOI21_X1 U534 ( .B1(n565), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U535 ( .A(n119), .ZN(n117) );
  NOR2_X1 U536 ( .A1(n176), .A2(n185), .ZN(n78) );
  NAND2_X1 U537 ( .A1(n568), .A2(n103), .ZN(n55) );
  XOR2_X1 U538 ( .A(n58), .B(n490), .Z(product[3]) );
  INV_X1 U539 ( .A(n113), .ZN(n135) );
  NOR2_X1 U540 ( .A1(n196), .A2(n203), .ZN(n85) );
  XNOR2_X1 U541 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U542 ( .A1(n565), .A2(n119), .ZN(n59) );
  XNOR2_X1 U543 ( .A(n57), .B(n491), .ZN(product[4]) );
  NAND2_X1 U544 ( .A1(n567), .A2(n111), .ZN(n57) );
  NAND2_X1 U545 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U546 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U547 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U548 ( .A1(n212), .A2(n217), .ZN(n95) );
  OR2_X1 U549 ( .A1(n212), .A2(n217), .ZN(n564) );
  NAND2_X1 U550 ( .A1(n566), .A2(n62), .ZN(n46) );
  NAND2_X1 U551 ( .A1(n73), .A2(n563), .ZN(n64) );
  NAND2_X1 U552 ( .A1(n133), .A2(n106), .ZN(n56) );
  INV_X1 U553 ( .A(n105), .ZN(n133) );
  INV_X1 U554 ( .A(n590), .ZN(n589) );
  INV_X1 U555 ( .A(n586), .ZN(n585) );
  OR2_X1 U556 ( .A1(n328), .A2(n314), .ZN(n565) );
  OR2_X1 U557 ( .A1(n151), .A2(n139), .ZN(n566) );
  NOR2_X1 U558 ( .A1(n234), .A2(n257), .ZN(n113) );
  NOR2_X1 U559 ( .A1(n228), .A2(n231), .ZN(n105) );
  NOR2_X1 U560 ( .A1(n218), .A2(n223), .ZN(n97) );
  OR2_X1 U561 ( .A1(n232), .A2(n233), .ZN(n567) );
  NAND2_X1 U562 ( .A1(n218), .A2(n223), .ZN(n98) );
  NAND2_X1 U563 ( .A1(n228), .A2(n231), .ZN(n106) );
  INV_X1 U564 ( .A(n37), .ZN(n237) );
  INV_X1 U565 ( .A(n41), .ZN(n235) );
  AND2_X1 U566 ( .A1(n493), .A2(n122), .ZN(product[1]) );
  XNOR2_X1 U567 ( .A(n528), .B(a[12]), .ZN(n37) );
  OR2_X1 U568 ( .A1(n43), .A2(n533), .ZN(n392) );
  XNOR2_X1 U569 ( .A(n591), .B(a[14]), .ZN(n41) );
  XNOR2_X1 U570 ( .A(n587), .B(a[10]), .ZN(n32) );
  AND2_X1 U571 ( .A1(n577), .A2(n243), .ZN(n288) );
  XNOR2_X1 U572 ( .A(n512), .B(n43), .ZN(n408) );
  NAND2_X1 U573 ( .A1(n432), .A2(n9), .ZN(n12) );
  XNOR2_X1 U574 ( .A(n557), .B(n43), .ZN(n363) );
  XNOR2_X1 U575 ( .A(n520), .B(n43), .ZN(n391) );
  OAI22_X1 U576 ( .A1(n39), .A2(n336), .B1(n530), .B2(n335), .ZN(n263) );
  XNOR2_X1 U577 ( .A(n583), .B(n43), .ZN(n376) );
  AND2_X1 U578 ( .A1(n577), .A2(n245), .ZN(n300) );
  OAI22_X1 U579 ( .A1(n42), .A2(n594), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U580 ( .A1(n43), .A2(n594), .ZN(n332) );
  XOR2_X1 U581 ( .A(n531), .B(a[8]), .Z(n429) );
  XOR2_X1 U582 ( .A(n315), .B(n261), .Z(n150) );
  OAI22_X1 U583 ( .A1(n39), .A2(n334), .B1(n530), .B2(n333), .ZN(n261) );
  XNOR2_X1 U584 ( .A(n155), .B(n570), .ZN(n139) );
  XNOR2_X1 U585 ( .A(n153), .B(n141), .ZN(n570) );
  XNOR2_X1 U586 ( .A(n157), .B(n571), .ZN(n141) );
  XNOR2_X1 U587 ( .A(n145), .B(n143), .ZN(n571) );
  NAND2_X1 U588 ( .A1(n433), .A2(n552), .ZN(n6) );
  XOR2_X1 U589 ( .A(n574), .B(n249), .Z(n433) );
  XNOR2_X1 U590 ( .A(n591), .B(n43), .ZN(n336) );
  AND2_X1 U591 ( .A1(n577), .A2(n241), .ZN(n278) );
  AND2_X1 U592 ( .A1(n577), .A2(n237), .ZN(n264) );
  AND2_X1 U593 ( .A1(n577), .A2(n239), .ZN(n270) );
  AND2_X1 U594 ( .A1(n577), .A2(n235), .ZN(n260) );
  OAI22_X1 U595 ( .A1(n39), .A2(n335), .B1(n530), .B2(n334), .ZN(n262) );
  NAND2_X1 U596 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U597 ( .A(n591), .B(a[12]), .Z(n427) );
  INV_X1 U598 ( .A(n25), .ZN(n588) );
  XNOR2_X1 U599 ( .A(n531), .B(n43), .ZN(n352) );
  NAND2_X1 U600 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U601 ( .A(n593), .B(a[14]), .Z(n426) );
  OAI22_X1 U602 ( .A1(n39), .A2(n592), .B1(n337), .B2(n530), .ZN(n252) );
  OR2_X1 U603 ( .A1(n43), .A2(n592), .ZN(n337) );
  AND2_X1 U604 ( .A1(n577), .A2(n247), .ZN(n314) );
  AND2_X1 U605 ( .A1(n577), .A2(n249), .ZN(product[0]) );
  OR2_X1 U606 ( .A1(n43), .A2(n590), .ZN(n344) );
  OR2_X1 U607 ( .A1(n43), .A2(n588), .ZN(n353) );
  OR2_X1 U608 ( .A1(n43), .A2(n507), .ZN(n364) );
  OR2_X1 U609 ( .A1(n43), .A2(n497), .ZN(n377) );
  XNOR2_X1 U610 ( .A(n512), .B(b[15]), .ZN(n393) );
  XNOR2_X1 U611 ( .A(n558), .B(b[9]), .ZN(n354) );
  XNOR2_X1 U612 ( .A(n583), .B(b[11]), .ZN(n365) );
  XNOR2_X1 U613 ( .A(n591), .B(n424), .ZN(n335) );
  XNOR2_X1 U614 ( .A(n591), .B(n423), .ZN(n334) );
  OAI22_X1 U615 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U616 ( .A(n593), .B(n424), .ZN(n330) );
  XNOR2_X1 U617 ( .A(n593), .B(n43), .ZN(n331) );
  XNOR2_X1 U618 ( .A(n531), .B(n418), .ZN(n345) );
  XNOR2_X1 U619 ( .A(n580), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U620 ( .A(n528), .B(n420), .ZN(n338) );
  XNOR2_X1 U621 ( .A(n520), .B(n424), .ZN(n390) );
  XNOR2_X1 U622 ( .A(n578), .B(n424), .ZN(n407) );
  XNOR2_X1 U623 ( .A(n558), .B(n424), .ZN(n362) );
  XNOR2_X1 U624 ( .A(n532), .B(n424), .ZN(n351) );
  XNOR2_X1 U625 ( .A(n580), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U626 ( .A(n580), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U627 ( .A(n580), .B(n418), .ZN(n384) );
  XNOR2_X1 U628 ( .A(n580), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U629 ( .A(n580), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U630 ( .A(n580), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U631 ( .A(n580), .B(n419), .ZN(n385) );
  XNOR2_X1 U632 ( .A(n512), .B(n422), .ZN(n405) );
  XNOR2_X1 U633 ( .A(n520), .B(n422), .ZN(n388) );
  XNOR2_X1 U634 ( .A(n520), .B(n423), .ZN(n389) );
  XNOR2_X1 U635 ( .A(n513), .B(n423), .ZN(n406) );
  XNOR2_X1 U636 ( .A(n532), .B(n422), .ZN(n349) );
  XNOR2_X1 U637 ( .A(n558), .B(n423), .ZN(n361) );
  XNOR2_X1 U638 ( .A(n558), .B(n422), .ZN(n360) );
  XNOR2_X1 U639 ( .A(n531), .B(n423), .ZN(n350) );
  XNOR2_X1 U640 ( .A(n591), .B(n422), .ZN(n333) );
  XNOR2_X1 U641 ( .A(n575), .B(n419), .ZN(n402) );
  XNOR2_X1 U642 ( .A(n575), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U643 ( .A(n578), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U644 ( .A(n494), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U645 ( .A(n558), .B(n420), .ZN(n358) );
  XNOR2_X1 U646 ( .A(n575), .B(n420), .ZN(n403) );
  XNOR2_X1 U647 ( .A(n531), .B(n420), .ZN(n347) );
  XNOR2_X1 U648 ( .A(n520), .B(n420), .ZN(n386) );
  XNOR2_X1 U649 ( .A(n583), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U650 ( .A(n583), .B(n418), .ZN(n369) );
  XNOR2_X1 U651 ( .A(n583), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U652 ( .A(n583), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U653 ( .A(n578), .B(n421), .ZN(n404) );
  XNOR2_X1 U654 ( .A(n494), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U655 ( .A(n520), .B(n421), .ZN(n387) );
  XNOR2_X1 U656 ( .A(n557), .B(n421), .ZN(n359) );
  XNOR2_X1 U657 ( .A(n532), .B(n421), .ZN(n348) );
  XNOR2_X1 U658 ( .A(n589), .B(n421), .ZN(n339) );
  XNOR2_X1 U659 ( .A(n578), .B(n418), .ZN(n401) );
  XNOR2_X1 U660 ( .A(n557), .B(n418), .ZN(n356) );
  XNOR2_X1 U661 ( .A(n557), .B(n419), .ZN(n357) );
  XNOR2_X1 U662 ( .A(n532), .B(n419), .ZN(n346) );
  XNOR2_X1 U663 ( .A(n558), .B(b[8]), .ZN(n355) );
  XNOR2_X1 U664 ( .A(n512), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U665 ( .A(n513), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U666 ( .A(n494), .B(b[12]), .ZN(n396) );
  BUF_X1 U667 ( .A(n43), .Z(n577) );
  INV_X1 U668 ( .A(n13), .ZN(n584) );
  XOR2_X1 U669 ( .A(n589), .B(a[10]), .Z(n428) );
  XNOR2_X1 U670 ( .A(n529), .B(n424), .ZN(n342) );
  XNOR2_X1 U671 ( .A(n589), .B(n423), .ZN(n341) );
  XNOR2_X1 U672 ( .A(n528), .B(n43), .ZN(n343) );
  XNOR2_X1 U673 ( .A(n529), .B(n422), .ZN(n340) );
  XNOR2_X1 U674 ( .A(n7), .B(a[4]), .ZN(n16) );
  NAND2_X1 U675 ( .A1(n328), .A2(n314), .ZN(n119) );
  XNOR2_X1 U676 ( .A(n77), .B(n48), .ZN(product[13]) );
  INV_X1 U677 ( .A(n82), .ZN(n127) );
  NOR2_X1 U678 ( .A1(n82), .A2(n85), .ZN(n80) );
  OAI21_X1 U679 ( .B1(n86), .B2(n82), .A(n83), .ZN(n81) );
  NAND2_X1 U680 ( .A1(n186), .A2(n195), .ZN(n83) );
  OAI22_X1 U681 ( .A1(n34), .A2(n339), .B1(n338), .B2(n554), .ZN(n265) );
  OAI22_X1 U682 ( .A1(n34), .A2(n340), .B1(n339), .B2(n554), .ZN(n266) );
  OAI22_X1 U683 ( .A1(n34), .A2(n341), .B1(n340), .B2(n554), .ZN(n267) );
  OAI22_X1 U684 ( .A1(n34), .A2(n342), .B1(n341), .B2(n554), .ZN(n268) );
  OAI22_X1 U685 ( .A1(n34), .A2(n343), .B1(n342), .B2(n554), .ZN(n269) );
  INV_X1 U686 ( .A(n32), .ZN(n239) );
  OAI22_X1 U687 ( .A1(n34), .A2(n590), .B1(n344), .B2(n554), .ZN(n253) );
  INV_X1 U688 ( .A(n19), .ZN(n586) );
  NAND2_X1 U689 ( .A1(n204), .A2(n211), .ZN(n90) );
  NOR2_X1 U690 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U691 ( .A1(n29), .A2(n346), .B1(n345), .B2(n536), .ZN(n271) );
  OAI22_X1 U692 ( .A1(n29), .A2(n350), .B1(n349), .B2(n536), .ZN(n275) );
  OAI22_X1 U693 ( .A1(n29), .A2(n347), .B1(n346), .B2(n536), .ZN(n272) );
  OAI22_X1 U694 ( .A1(n29), .A2(n348), .B1(n347), .B2(n536), .ZN(n273) );
  OAI22_X1 U695 ( .A1(n29), .A2(n349), .B1(n348), .B2(n509), .ZN(n274) );
  OAI22_X1 U696 ( .A1(n29), .A2(n588), .B1(n353), .B2(n509), .ZN(n254) );
  OAI22_X1 U697 ( .A1(n29), .A2(n351), .B1(n350), .B2(n509), .ZN(n276) );
  INV_X1 U698 ( .A(n27), .ZN(n241) );
  OAI22_X1 U699 ( .A1(n29), .A2(n352), .B1(n351), .B2(n509), .ZN(n277) );
  XNOR2_X1 U700 ( .A(n583), .B(n424), .ZN(n375) );
  XNOR2_X1 U701 ( .A(n583), .B(n423), .ZN(n374) );
  XNOR2_X1 U702 ( .A(n582), .B(n422), .ZN(n373) );
  XNOR2_X1 U703 ( .A(n583), .B(n421), .ZN(n372) );
  XNOR2_X1 U704 ( .A(n583), .B(n419), .ZN(n370) );
  XNOR2_X1 U705 ( .A(n582), .B(n420), .ZN(n371) );
  XOR2_X1 U706 ( .A(n582), .B(a[4]), .Z(n431) );
  INV_X1 U707 ( .A(n1), .ZN(n579) );
  XNOR2_X1 U708 ( .A(n63), .B(n46), .ZN(product[15]) );
  INV_X1 U709 ( .A(n7), .ZN(n581) );
  CLKBUF_X1 U710 ( .A(n537), .Z(n576) );
  XNOR2_X1 U711 ( .A(n55), .B(n576), .ZN(product[6]) );
  NAND2_X1 U712 ( .A1(n224), .A2(n227), .ZN(n103) );
  OAI21_X1 U713 ( .B1(n105), .B2(n523), .A(n106), .ZN(n104) );
  XNOR2_X1 U714 ( .A(n70), .B(n47), .ZN(product[14]) );
  OAI22_X1 U715 ( .A1(n535), .A2(n358), .B1(n357), .B2(n560), .ZN(n282) );
  OAI22_X1 U716 ( .A1(n535), .A2(n362), .B1(n361), .B2(n560), .ZN(n286) );
  OAI22_X1 U717 ( .A1(n534), .A2(n356), .B1(n355), .B2(n560), .ZN(n280) );
  OAI22_X1 U718 ( .A1(n534), .A2(n507), .B1(n364), .B2(n560), .ZN(n255) );
  OAI22_X1 U719 ( .A1(n535), .A2(n360), .B1(n359), .B2(n560), .ZN(n284) );
  OAI22_X1 U720 ( .A1(n535), .A2(n361), .B1(n360), .B2(n560), .ZN(n285) );
  OAI22_X1 U721 ( .A1(n534), .A2(n355), .B1(n354), .B2(n560), .ZN(n279) );
  OAI22_X1 U722 ( .A1(n534), .A2(n357), .B1(n356), .B2(n560), .ZN(n281) );
  OAI22_X1 U723 ( .A1(n23), .A2(n363), .B1(n362), .B2(n560), .ZN(n287) );
  OAI22_X1 U724 ( .A1(n23), .A2(n359), .B1(n358), .B2(n560), .ZN(n283) );
  INV_X1 U725 ( .A(n559), .ZN(n243) );
  OAI21_X1 U726 ( .B1(n87), .B2(n541), .A(n498), .ZN(n84) );
  NAND2_X1 U727 ( .A1(n135), .A2(n114), .ZN(n58) );
  INV_X1 U728 ( .A(n508), .ZN(n87) );
  XOR2_X1 U729 ( .A(n56), .B(n543), .Z(product[5]) );
  OR2_X1 U730 ( .A1(n43), .A2(n527), .ZN(n409) );
  OAI21_X1 U731 ( .B1(n64), .B2(n45), .A(n65), .ZN(n63) );
  NAND2_X1 U732 ( .A1(n151), .A2(n139), .ZN(n62) );
  OAI22_X1 U733 ( .A1(n546), .A2(n370), .B1(n369), .B2(n553), .ZN(n293) );
  OAI22_X1 U734 ( .A1(n18), .A2(n367), .B1(n366), .B2(n553), .ZN(n290) );
  OAI22_X1 U735 ( .A1(n546), .A2(n375), .B1(n374), .B2(n553), .ZN(n298) );
  OAI22_X1 U736 ( .A1(n546), .A2(n373), .B1(n372), .B2(n553), .ZN(n296) );
  OAI22_X1 U737 ( .A1(n545), .A2(n368), .B1(n367), .B2(n553), .ZN(n291) );
  OAI22_X1 U738 ( .A1(n545), .A2(n372), .B1(n553), .B2(n371), .ZN(n295) );
  OAI22_X1 U739 ( .A1(n18), .A2(n369), .B1(n368), .B2(n553), .ZN(n292) );
  OAI22_X1 U740 ( .A1(n18), .A2(n376), .B1(n375), .B2(n553), .ZN(n299) );
  OAI22_X1 U741 ( .A1(n546), .A2(n497), .B1(n377), .B2(n553), .ZN(n256) );
  OAI22_X1 U742 ( .A1(n545), .A2(n374), .B1(n572), .B2(n373), .ZN(n297) );
  OAI22_X1 U743 ( .A1(n546), .A2(n371), .B1(n370), .B2(n553), .ZN(n294) );
  OAI22_X1 U744 ( .A1(n18), .A2(n366), .B1(n365), .B2(n553), .ZN(n289) );
  INV_X1 U745 ( .A(n572), .ZN(n245) );
  OAI21_X1 U746 ( .B1(n71), .B2(n539), .A(n72), .ZN(n70) );
  OAI21_X1 U747 ( .B1(n45), .B2(n78), .A(n79), .ZN(n77) );
  XOR2_X1 U748 ( .A(n548), .B(n52), .Z(product[9]) );
  XNOR2_X1 U749 ( .A(n550), .B(n53), .ZN(product[8]) );
  AOI21_X1 U750 ( .B1(n96), .B2(n564), .A(n93), .ZN(n91) );
  OAI22_X1 U751 ( .A1(n496), .A2(n395), .B1(n394), .B2(n551), .ZN(n316) );
  OAI22_X1 U752 ( .A1(n517), .A2(n394), .B1(n393), .B2(n552), .ZN(n315) );
  OAI22_X1 U753 ( .A1(n502), .A2(n396), .B1(n395), .B2(n551), .ZN(n317) );
  OAI22_X1 U754 ( .A1(n517), .A2(n397), .B1(n396), .B2(n552), .ZN(n318) );
  OAI22_X1 U755 ( .A1(n561), .A2(n398), .B1(n397), .B2(n551), .ZN(n319) );
  OAI22_X1 U756 ( .A1(n517), .A2(n400), .B1(n399), .B2(n551), .ZN(n321) );
  OAI22_X1 U757 ( .A1(n562), .A2(n401), .B1(n400), .B2(n552), .ZN(n322) );
  OAI22_X1 U758 ( .A1(n562), .A2(n399), .B1(n398), .B2(n552), .ZN(n320) );
  OAI22_X1 U759 ( .A1(n6), .A2(n402), .B1(n401), .B2(n552), .ZN(n323) );
  OAI22_X1 U760 ( .A1(n562), .A2(n404), .B1(n403), .B2(n552), .ZN(n325) );
  OAI22_X1 U761 ( .A1(n6), .A2(n403), .B1(n402), .B2(n552), .ZN(n324) );
  OAI22_X1 U762 ( .A1(n561), .A2(n406), .B1(n405), .B2(n552), .ZN(n327) );
  OAI22_X1 U763 ( .A1(n561), .A2(n405), .B1(n404), .B2(n551), .ZN(n326) );
  OAI22_X1 U764 ( .A1(n496), .A2(n407), .B1(n406), .B2(n551), .ZN(n328) );
  OAI22_X1 U765 ( .A1(n562), .A2(n408), .B1(n407), .B2(n551), .ZN(n329) );
  INV_X1 U766 ( .A(n122), .ZN(n120) );
  NAND2_X1 U767 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI21_X1 U768 ( .B1(n540), .B2(n97), .A(n98), .ZN(n96) );
  AOI21_X1 U769 ( .B1(n568), .B2(n537), .A(n101), .ZN(n99) );
  OAI22_X1 U770 ( .A1(n517), .A2(n527), .B1(n409), .B2(n551), .ZN(n258) );
  XOR2_X1 U771 ( .A(n518), .B(n54), .Z(product[7]) );
  OAI22_X1 U772 ( .A1(n555), .A2(n379), .B1(n378), .B2(n515), .ZN(n301) );
  OAI22_X1 U773 ( .A1(n556), .A2(n380), .B1(n379), .B2(n516), .ZN(n302) );
  OAI22_X1 U774 ( .A1(n555), .A2(n385), .B1(n384), .B2(n516), .ZN(n307) );
  OAI22_X1 U775 ( .A1(n556), .A2(n382), .B1(n381), .B2(n515), .ZN(n304) );
  OAI22_X1 U776 ( .A1(n555), .A2(n381), .B1(n380), .B2(n515), .ZN(n303) );
  NAND2_X1 U777 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U778 ( .A1(n555), .A2(n383), .B1(n382), .B2(n515), .ZN(n305) );
  OAI22_X1 U779 ( .A1(n556), .A2(n384), .B1(n383), .B2(n516), .ZN(n306) );
  OAI22_X1 U780 ( .A1(n555), .A2(n386), .B1(n385), .B2(n515), .ZN(n308) );
  OAI22_X1 U781 ( .A1(n556), .A2(n387), .B1(n386), .B2(n516), .ZN(n309) );
  OAI22_X1 U782 ( .A1(n12), .A2(n533), .B1(n392), .B2(n516), .ZN(n257) );
  OAI22_X1 U783 ( .A1(n12), .A2(n389), .B1(n388), .B2(n514), .ZN(n311) );
  OAI22_X1 U784 ( .A1(n12), .A2(n388), .B1(n387), .B2(n514), .ZN(n310) );
  OAI22_X1 U785 ( .A1(n556), .A2(n390), .B1(n389), .B2(n516), .ZN(n312) );
  INV_X1 U786 ( .A(n515), .ZN(n247) );
  OAI22_X1 U787 ( .A1(n555), .A2(n391), .B1(n390), .B2(n515), .ZN(n313) );
  INV_X1 U788 ( .A(n584), .ZN(n583) );
  INV_X1 U789 ( .A(n31), .ZN(n590) );
  INV_X1 U790 ( .A(n592), .ZN(n591) );
  INV_X1 U791 ( .A(n36), .ZN(n592) );
  INV_X1 U792 ( .A(n594), .ZN(n593) );
  INV_X1 U793 ( .A(n40), .ZN(n594) );
  XOR2_X1 U794 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U795 ( .A(n289), .B(n279), .Z(n146) );
  XOR2_X1 U796 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_7_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16, n19,
         n20, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n44, n45, n47, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n65, n67, n68, n69, n70,
         n71, n73, n75, n76, n77, n78, n79, n81, n83, n84, n86, n88, n89, n91,
         n94, n95, n96, n98, n100, n157, n158, n159, n160, n161, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180;

  OAI21_X1 U122 ( .B1(n39), .B2(n51), .A(n40), .ZN(n157) );
  BUF_X1 U123 ( .A(n33), .Z(n158) );
  AOI21_X1 U124 ( .B1(n52), .B2(n60), .A(n53), .ZN(n159) );
  AND2_X1 U125 ( .A1(A[10]), .A2(B[10]), .ZN(n167) );
  INV_X1 U126 ( .A(n167), .ZN(n44) );
  OR2_X1 U127 ( .A1(n166), .A2(B[12]), .ZN(n160) );
  OR2_X1 U128 ( .A1(A[15]), .A2(B[15]), .ZN(n161) );
  AND2_X1 U129 ( .A1(n174), .A2(n86), .ZN(SUM[0]) );
  XNOR2_X1 U130 ( .A(n45), .B(n163), .ZN(SUM[10]) );
  AND2_X1 U131 ( .A1(n179), .A2(n44), .ZN(n163) );
  XNOR2_X1 U132 ( .A(n157), .B(n6), .ZN(SUM[11]) );
  CLKBUF_X1 U133 ( .A(n47), .Z(n164) );
  AOI21_X1 U134 ( .B1(n179), .B2(n47), .A(n167), .ZN(n165) );
  OR2_X2 U135 ( .A1(A[10]), .A2(B[10]), .ZN(n179) );
  CLKBUF_X1 U136 ( .A(A[12]), .Z(n166) );
  OAI21_X1 U137 ( .B1(n39), .B2(n51), .A(n40), .ZN(n168) );
  NOR2_X1 U138 ( .A1(A[8]), .A2(B[8]), .ZN(n169) );
  NOR2_X1 U139 ( .A1(A[12]), .A2(B[12]), .ZN(n170) );
  NOR2_X1 U140 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  NOR2_X1 U141 ( .A1(A[14]), .A2(B[14]), .ZN(n171) );
  AOI21_X1 U142 ( .B1(n168), .B2(n30), .A(n31), .ZN(n172) );
  AOI21_X1 U143 ( .B1(n157), .B2(n30), .A(n31), .ZN(n173) );
  INV_X1 U144 ( .A(n24), .ZN(n22) );
  OR2_X1 U145 ( .A1(A[0]), .A2(B[0]), .ZN(n174) );
  INV_X1 U146 ( .A(n159), .ZN(n50) );
  AOI21_X1 U147 ( .B1(n178), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U148 ( .A(n83), .ZN(n81) );
  AOI21_X1 U149 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  OAI21_X1 U150 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  AOI21_X1 U151 ( .B1(n180), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U152 ( .A(n67), .ZN(n65) );
  OR2_X1 U153 ( .A1(n171), .A2(n28), .ZN(n175) );
  OAI21_X1 U154 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  AOI21_X1 U155 ( .B1(n50), .B2(n176), .A(n164), .ZN(n45) );
  OAI21_X1 U156 ( .B1(n25), .B2(n29), .A(n26), .ZN(n24) );
  NAND2_X1 U157 ( .A1(n94), .A2(n55), .ZN(n9) );
  INV_X1 U158 ( .A(n86), .ZN(n84) );
  OAI21_X1 U159 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  INV_X1 U160 ( .A(n49), .ZN(n47) );
  AOI21_X1 U161 ( .B1(n177), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U162 ( .A(n75), .ZN(n73) );
  INV_X1 U163 ( .A(n28), .ZN(n89) );
  NAND2_X1 U164 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U165 ( .A(n69), .ZN(n98) );
  NAND2_X1 U166 ( .A1(n176), .A2(n49), .ZN(n8) );
  NAND2_X1 U167 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U168 ( .A(n57), .ZN(n95) );
  NAND2_X1 U169 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U170 ( .A(n77), .ZN(n100) );
  NAND2_X1 U171 ( .A1(n180), .A2(n67), .ZN(n12) );
  NAND2_X1 U172 ( .A1(n177), .A2(n75), .ZN(n14) );
  NAND2_X1 U173 ( .A1(n178), .A2(n83), .ZN(n16) );
  NAND2_X1 U174 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U175 ( .A(n61), .ZN(n96) );
  XNOR2_X1 U176 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  XOR2_X1 U177 ( .A(n13), .B(n71), .Z(SUM[4]) );
  XNOR2_X1 U178 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  XNOR2_X1 U179 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NAND2_X1 U180 ( .A1(n88), .A2(n26), .ZN(n3) );
  NAND2_X1 U181 ( .A1(n160), .A2(n158), .ZN(n5) );
  NAND2_X1 U182 ( .A1(n91), .A2(n36), .ZN(n6) );
  NOR2_X1 U183 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  NOR2_X1 U184 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  NOR2_X1 U185 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  NAND2_X1 U186 ( .A1(n89), .A2(n29), .ZN(n4) );
  NOR2_X1 U187 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  OR2_X1 U188 ( .A1(A[9]), .A2(B[9]), .ZN(n176) );
  NOR2_X1 U189 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NOR2_X1 U190 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  OR2_X1 U191 ( .A1(A[3]), .A2(B[3]), .ZN(n177) );
  OR2_X1 U192 ( .A1(A[1]), .A2(B[1]), .ZN(n178) );
  XNOR2_X1 U193 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  NOR2_X1 U194 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NAND2_X1 U195 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  NAND2_X1 U196 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U197 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  OR2_X1 U198 ( .A1(A[5]), .A2(B[5]), .ZN(n180) );
  NAND2_X1 U199 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NAND2_X1 U200 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U201 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U202 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U203 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  NAND2_X1 U204 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  NAND2_X1 U205 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  NAND2_X1 U206 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  XNOR2_X1 U207 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XOR2_X1 U208 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XOR2_X1 U209 ( .A(n15), .B(n79), .Z(SUM[2]) );
  NAND2_X1 U210 ( .A1(n161), .A2(n19), .ZN(n2) );
  NAND2_X1 U211 ( .A1(A[15]), .A2(B[15]), .ZN(n19) );
  NAND2_X1 U212 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  INV_X1 U213 ( .A(n169), .ZN(n94) );
  NOR2_X1 U214 ( .A1(n169), .A2(n57), .ZN(n52) );
  OAI21_X1 U215 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  NAND2_X1 U216 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  INV_X1 U217 ( .A(n38), .ZN(n37) );
  INV_X1 U218 ( .A(n60), .ZN(n59) );
  NAND2_X1 U219 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  INV_X1 U220 ( .A(n171), .ZN(n88) );
  OAI21_X1 U221 ( .B1(n170), .B2(n36), .A(n33), .ZN(n31) );
  OAI21_X1 U222 ( .B1(n39), .B2(n159), .A(n165), .ZN(n38) );
  XOR2_X1 U223 ( .A(n11), .B(n63), .Z(SUM[6]) );
  OAI21_X1 U224 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  INV_X1 U225 ( .A(n35), .ZN(n91) );
  OAI21_X1 U226 ( .B1(n37), .B2(n35), .A(n36), .ZN(n34) );
  NOR2_X1 U227 ( .A1(n32), .A2(n35), .ZN(n30) );
  NOR2_X1 U228 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  AOI21_X1 U229 ( .B1(n179), .B2(n47), .A(n167), .ZN(n40) );
  XNOR2_X1 U230 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  XNOR2_X1 U231 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  NAND2_X1 U232 ( .A1(n179), .A2(n176), .ZN(n39) );
  XNOR2_X1 U233 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  XOR2_X1 U234 ( .A(n172), .B(n4), .Z(SUM[13]) );
  OAI21_X1 U235 ( .B1(n173), .B2(n28), .A(n29), .ZN(n27) );
  OAI21_X1 U236 ( .B1(n172), .B2(n175), .A(n22), .ZN(n20) );
endmodule


module datapath_M16_N8_T16_P16_7 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n20), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n226), .CK(clk), .Q(n23) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n227), .CK(clk), .Q(n24) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n228), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n229), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n230), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n231), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n232), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n233), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n234), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n235), .CK(clk), .Q(n34) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n236), .CK(clk), .Q(n35) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n237), .CK(clk), .Q(n36) );
  DFF_X1 \f_reg[0]  ( .D(n114), .CK(clk), .Q(n62), .QN(n215) );
  DFF_X1 \f_reg[1]  ( .D(n113), .CK(clk), .Q(n60), .QN(n216) );
  DFF_X1 \f_reg[2]  ( .D(n112), .CK(clk), .Q(n58), .QN(n217) );
  DFF_X1 \f_reg[3]  ( .D(n111), .CK(clk), .Q(f[3]), .QN(n66) );
  DFF_X1 \data_out_reg[15]  ( .D(n167), .CK(clk), .Q(data_out[15]), .QN(n198)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n168), .CK(clk), .Q(data_out[14]), .QN(n197)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n169), .CK(clk), .Q(data_out[13]), .QN(n196)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n170), .CK(clk), .Q(data_out[12]), .QN(n195)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n171), .CK(clk), .Q(data_out[11]), .QN(n194)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n172), .CK(clk), .Q(data_out[10]), .QN(n193)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n173), .CK(clk), .Q(data_out[9]), .QN(n192) );
  DFF_X1 \data_out_reg[8]  ( .D(n174), .CK(clk), .Q(data_out[8]), .QN(n191) );
  DFF_X1 \data_out_reg[7]  ( .D(n175), .CK(clk), .Q(data_out[7]), .QN(n190) );
  DFF_X1 \data_out_reg[6]  ( .D(n176), .CK(clk), .Q(data_out[6]), .QN(n189) );
  DFF_X1 \data_out_reg[5]  ( .D(n177), .CK(clk), .Q(data_out[5]), .QN(n188) );
  DFF_X1 \data_out_reg[4]  ( .D(n178), .CK(clk), .Q(data_out[4]), .QN(n187) );
  DFF_X1 \data_out_reg[3]  ( .D(n179), .CK(clk), .Q(data_out[3]), .QN(n186) );
  DFF_X1 \data_out_reg[2]  ( .D(n180), .CK(clk), .Q(data_out[2]), .QN(n185) );
  DFF_X1 \data_out_reg[1]  ( .D(n181), .CK(clk), .Q(data_out[1]), .QN(n184) );
  DFF_X1 \data_out_reg[0]  ( .D(n182), .CK(clk), .Q(data_out[0]), .QN(n183) );
  datapath_M16_N8_T16_P16_7_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_7_DW01_add_2 add_262 ( .A({n205, n204, n203, n202, 
        n201, n200, n214, n213, n212, n211, n210, n209, n208, n207, n206, n199}), .B({f[15], n44, n45, n47, n48, n50, f[9:3], n58, n60, n62}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X1 delay_reg ( .D(n166), .CK(clk), .Q(n7), .QN(n242) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n241), .CK(clk), .Q(n40) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n240), .CK(clk), .Q(n39) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n239), .CK(clk), .Q(n38) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n238), .CK(clk), .Q(n37) );
  DFF_X1 \f_reg[4]  ( .D(n102), .CK(clk), .Q(f[4]), .QN(n67) );
  DFF_X1 \f_reg[5]  ( .D(n85), .CK(clk), .Q(f[5]), .QN(n68) );
  DFF_X1 \f_reg[6]  ( .D(n83), .CK(clk), .Q(f[6]), .QN(n69) );
  DFF_X1 \f_reg[7]  ( .D(n82), .CK(clk), .Q(f[7]), .QN(n218) );
  DFF_X1 \f_reg[8]  ( .D(n81), .CK(clk), .Q(f[8]), .QN(n219) );
  DFF_X1 \f_reg[9]  ( .D(n80), .CK(clk), .Q(f[9]), .QN(n220) );
  DFF_X1 \f_reg[10]  ( .D(n79), .CK(clk), .Q(n50), .QN(n221) );
  DFF_X1 \f_reg[11]  ( .D(n78), .CK(clk), .Q(n48), .QN(n222) );
  DFF_X1 \f_reg[14]  ( .D(n6), .CK(clk), .Q(n44), .QN(n225) );
  DFF_X1 \f_reg[12]  ( .D(n4), .CK(clk), .Q(n47), .QN(n223) );
  DFF_X1 \f_reg[15]  ( .D(n8), .CK(clk), .Q(f[15]), .QN(n74) );
  DFF_X1 \f_reg[13]  ( .D(n77), .CK(clk), .Q(n45), .QN(n224) );
  AND2_X1 U3 ( .A1(n43), .A2(n21), .ZN(n18) );
  AND2_X1 U4 ( .A1(clear_acc_delay), .A2(n242), .ZN(n1) );
  AND2_X1 U5 ( .A1(n14), .A2(n12), .ZN(n2) );
  NAND3_X1 U6 ( .A1(n10), .A2(n9), .A3(n11), .ZN(n4) );
  MUX2_X1 U8 ( .A(N39), .B(n28), .S(n7), .Z(n200) );
  NAND2_X1 U9 ( .A1(n13), .A2(n2), .ZN(n8) );
  CLKBUF_X1 U10 ( .A(N41), .Z(n5) );
  MUX2_X2 U11 ( .A(n32), .B(N37), .S(n242), .Z(n213) );
  MUX2_X2 U12 ( .A(n26), .B(N41), .S(n242), .Z(n202) );
  MUX2_X2 U13 ( .A(n24), .B(N43), .S(n242), .Z(n204) );
  NAND3_X1 U14 ( .A1(n16), .A2(n15), .A3(n17), .ZN(n6) );
  NAND2_X1 U15 ( .A1(data_out_b[12]), .A2(n20), .ZN(n9) );
  NAND2_X1 U16 ( .A1(adder[12]), .A2(n18), .ZN(n10) );
  NAND2_X1 U17 ( .A1(n64), .A2(n47), .ZN(n11) );
  NAND2_X1 U18 ( .A1(data_out_b[15]), .A2(n20), .ZN(n12) );
  NAND2_X1 U19 ( .A1(adder[15]), .A2(n18), .ZN(n13) );
  NAND2_X1 U20 ( .A1(n64), .A2(f[15]), .ZN(n14) );
  NAND2_X1 U21 ( .A1(data_out_b[14]), .A2(n20), .ZN(n15) );
  NAND2_X1 U22 ( .A1(adder[14]), .A2(n18), .ZN(n16) );
  NAND2_X1 U23 ( .A1(n64), .A2(n44), .ZN(n17) );
  INV_X1 U24 ( .A(n21), .ZN(n20) );
  NAND2_X1 U25 ( .A1(n166), .A2(n19), .ZN(n244) );
  INV_X1 U26 ( .A(n43), .ZN(n64) );
  INV_X1 U27 ( .A(clear_acc), .ZN(n21) );
  OAI22_X1 U28 ( .A1(n186), .A2(n244), .B1(n66), .B2(n243), .ZN(n179) );
  OAI22_X1 U29 ( .A1(n187), .A2(n244), .B1(n67), .B2(n243), .ZN(n178) );
  OAI22_X1 U30 ( .A1(n188), .A2(n244), .B1(n68), .B2(n243), .ZN(n177) );
  OAI22_X1 U31 ( .A1(n189), .A2(n244), .B1(n69), .B2(n243), .ZN(n176) );
  OAI22_X1 U32 ( .A1(n190), .A2(n244), .B1(n218), .B2(n243), .ZN(n175) );
  OAI22_X1 U33 ( .A1(n191), .A2(n244), .B1(n219), .B2(n243), .ZN(n174) );
  OAI22_X1 U34 ( .A1(n192), .A2(n244), .B1(n220), .B2(n243), .ZN(n173) );
  MUX2_X1 U35 ( .A(n25), .B(N42), .S(n242), .Z(n203) );
  INV_X1 U36 ( .A(wr_en_y), .ZN(n19) );
  INV_X1 U37 ( .A(m_ready), .ZN(n22) );
  NAND2_X1 U38 ( .A1(m_valid), .A2(n22), .ZN(n41) );
  OAI21_X1 U39 ( .B1(sel[4]), .B2(n76), .A(n41), .ZN(n166) );
  MUX2_X1 U40 ( .A(n23), .B(N44), .S(n1), .Z(n226) );
  MUX2_X1 U41 ( .A(n23), .B(N44), .S(n242), .Z(n205) );
  MUX2_X1 U42 ( .A(n24), .B(N43), .S(n1), .Z(n227) );
  MUX2_X1 U43 ( .A(n25), .B(N42), .S(n1), .Z(n228) );
  MUX2_X1 U44 ( .A(n26), .B(n5), .S(n1), .Z(n229) );
  MUX2_X1 U45 ( .A(n27), .B(N40), .S(n1), .Z(n230) );
  MUX2_X1 U46 ( .A(n27), .B(N40), .S(n242), .Z(n201) );
  MUX2_X1 U47 ( .A(n28), .B(N39), .S(n1), .Z(n231) );
  MUX2_X1 U48 ( .A(n29), .B(N38), .S(n1), .Z(n232) );
  MUX2_X1 U49 ( .A(n29), .B(N38), .S(n242), .Z(n214) );
  MUX2_X1 U50 ( .A(n32), .B(N37), .S(n1), .Z(n233) );
  MUX2_X1 U51 ( .A(n33), .B(N36), .S(n1), .Z(n234) );
  MUX2_X1 U52 ( .A(n33), .B(N36), .S(n242), .Z(n212) );
  MUX2_X1 U53 ( .A(n34), .B(N35), .S(n1), .Z(n235) );
  MUX2_X1 U54 ( .A(n34), .B(N35), .S(n242), .Z(n211) );
  MUX2_X1 U55 ( .A(n35), .B(N34), .S(n1), .Z(n236) );
  MUX2_X1 U56 ( .A(n35), .B(N34), .S(n242), .Z(n210) );
  MUX2_X1 U57 ( .A(n36), .B(N33), .S(n1), .Z(n237) );
  MUX2_X1 U58 ( .A(n36), .B(N33), .S(n242), .Z(n209) );
  MUX2_X1 U59 ( .A(n37), .B(N32), .S(n1), .Z(n238) );
  MUX2_X1 U60 ( .A(n37), .B(N32), .S(n242), .Z(n208) );
  MUX2_X1 U61 ( .A(n38), .B(N31), .S(n1), .Z(n239) );
  MUX2_X1 U62 ( .A(n38), .B(N31), .S(n242), .Z(n207) );
  MUX2_X1 U63 ( .A(n39), .B(N30), .S(n1), .Z(n240) );
  MUX2_X1 U64 ( .A(n39), .B(N30), .S(n242), .Z(n206) );
  MUX2_X1 U65 ( .A(n40), .B(N29), .S(n1), .Z(n241) );
  MUX2_X1 U66 ( .A(n40), .B(N29), .S(n242), .Z(n199) );
  INV_X1 U67 ( .A(n41), .ZN(n42) );
  OAI21_X1 U68 ( .B1(n42), .B2(n7), .A(n21), .ZN(n43) );
  AOI222_X1 U69 ( .A1(data_out_b[13]), .A2(n20), .B1(adder[13]), .B2(n18), 
        .C1(n64), .C2(n45), .ZN(n46) );
  INV_X1 U70 ( .A(n46), .ZN(n77) );
  AOI222_X1 U71 ( .A1(data_out_b[11]), .A2(n20), .B1(adder[11]), .B2(n18), 
        .C1(n64), .C2(n48), .ZN(n49) );
  INV_X1 U72 ( .A(n49), .ZN(n78) );
  AOI222_X1 U73 ( .A1(data_out_b[10]), .A2(n20), .B1(adder[10]), .B2(n18), 
        .C1(n64), .C2(n50), .ZN(n51) );
  INV_X1 U74 ( .A(n51), .ZN(n79) );
  AOI222_X1 U75 ( .A1(data_out_b[8]), .A2(n20), .B1(adder[8]), .B2(n18), .C1(
        n64), .C2(f[8]), .ZN(n52) );
  INV_X1 U76 ( .A(n52), .ZN(n81) );
  AOI222_X1 U77 ( .A1(data_out_b[7]), .A2(n20), .B1(adder[7]), .B2(n18), .C1(
        n64), .C2(f[7]), .ZN(n53) );
  INV_X1 U78 ( .A(n53), .ZN(n82) );
  AOI222_X1 U79 ( .A1(data_out_b[6]), .A2(n20), .B1(adder[6]), .B2(n18), .C1(
        n64), .C2(f[6]), .ZN(n54) );
  INV_X1 U80 ( .A(n54), .ZN(n83) );
  AOI222_X1 U81 ( .A1(data_out_b[5]), .A2(n20), .B1(adder[5]), .B2(n18), .C1(
        n64), .C2(f[5]), .ZN(n55) );
  INV_X1 U82 ( .A(n55), .ZN(n85) );
  AOI222_X1 U83 ( .A1(data_out_b[4]), .A2(n20), .B1(adder[4]), .B2(n18), .C1(
        n64), .C2(f[4]), .ZN(n56) );
  INV_X1 U84 ( .A(n56), .ZN(n102) );
  AOI222_X1 U85 ( .A1(data_out_b[3]), .A2(n20), .B1(adder[3]), .B2(n18), .C1(
        n64), .C2(f[3]), .ZN(n57) );
  INV_X1 U86 ( .A(n57), .ZN(n111) );
  AOI222_X1 U87 ( .A1(data_out_b[2]), .A2(n20), .B1(adder[2]), .B2(n18), .C1(
        n64), .C2(n58), .ZN(n59) );
  INV_X1 U88 ( .A(n59), .ZN(n112) );
  AOI222_X1 U89 ( .A1(data_out_b[1]), .A2(n20), .B1(adder[1]), .B2(n18), .C1(
        n64), .C2(n60), .ZN(n61) );
  INV_X1 U90 ( .A(n61), .ZN(n113) );
  AOI222_X1 U91 ( .A1(data_out_b[0]), .A2(n20), .B1(adder[0]), .B2(n18), .C1(
        n64), .C2(n62), .ZN(n63) );
  INV_X1 U92 ( .A(n63), .ZN(n114) );
  AOI222_X1 U93 ( .A1(data_out_b[9]), .A2(n20), .B1(adder[9]), .B2(n18), .C1(
        n64), .C2(f[9]), .ZN(n65) );
  INV_X1 U94 ( .A(n65), .ZN(n80) );
  NOR4_X1 U95 ( .A1(n48), .A2(n47), .A3(n45), .A4(n44), .ZN(n73) );
  NOR4_X1 U96 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n50), .ZN(n72) );
  NAND4_X1 U97 ( .A1(n69), .A2(n68), .A3(n67), .A4(n66), .ZN(n70) );
  NOR4_X1 U98 ( .A1(n70), .A2(n62), .A3(n60), .A4(n58), .ZN(n71) );
  NAND3_X1 U99 ( .A1(n73), .A2(n72), .A3(n71), .ZN(n75) );
  NAND3_X1 U100 ( .A1(wr_en_y), .A2(n75), .A3(n74), .ZN(n243) );
  OAI22_X1 U101 ( .A1(n183), .A2(n244), .B1(n215), .B2(n243), .ZN(n182) );
  OAI22_X1 U102 ( .A1(n184), .A2(n244), .B1(n216), .B2(n243), .ZN(n181) );
  OAI22_X1 U103 ( .A1(n185), .A2(n244), .B1(n217), .B2(n243), .ZN(n180) );
  OAI22_X1 U104 ( .A1(n193), .A2(n244), .B1(n221), .B2(n243), .ZN(n172) );
  OAI22_X1 U105 ( .A1(n194), .A2(n244), .B1(n222), .B2(n243), .ZN(n171) );
  OAI22_X1 U106 ( .A1(n195), .A2(n244), .B1(n223), .B2(n243), .ZN(n170) );
  OAI22_X1 U107 ( .A1(n196), .A2(n244), .B1(n224), .B2(n243), .ZN(n169) );
  OAI22_X1 U108 ( .A1(n197), .A2(n244), .B1(n225), .B2(n243), .ZN(n168) );
  OAI22_X1 U109 ( .A1(n198), .A2(n244), .B1(n74), .B2(n243), .ZN(n167) );
  AND4_X1 U110 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n76)
         );
endmodule


module datapath_M16_N8_T16_P16_6_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n27, n29, n31,
         n32, n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50,
         n51, n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67, n69,
         n70, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n93, n95, n96, n97, n98, n99, n103,
         n104, n105, n106, n107, n109, n111, n112, n113, n114, n115, n117,
         n119, n120, n122, n127, n131, n133, n135, n139, n141, n142, n143,
         n144, n145, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n239, n243, n245, n247, n249, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n418, n419, n420, n421, n422, n423, n424, n426, n427,
         n428, n429, n430, n433, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U148 ( .A(n265), .B(n144), .Z(n145) );
  XOR2_X1 U152 ( .A(n301), .B(n148), .Z(n149) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n272), .CI(n302), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U161 ( .A(n177), .B(n168), .CI(n166), .CO(n163), .S(n164) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n263), .B(n303), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n274), .CI(n292), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n253), .B(n283), .CI(n305), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n269), .B(n319), .CO(n193), .S(n194) );
  FA_X1 U177 ( .A(n205), .B(n200), .CI(n198), .CO(n195), .S(n196) );
  FA_X1 U178 ( .A(n209), .B(n207), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n276), .B(n294), .CI(n284), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n320), .B(n270), .CI(n306), .CO(n201), .S(n202) );
  FA_X1 U181 ( .A(n208), .B(n213), .CI(n206), .CO(n203), .S(n204) );
  FA_X1 U182 ( .A(n210), .B(n307), .CI(n215), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n285), .B(n254), .CI(n295), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n309), .B(n255), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n323), .B(n287), .CO(n221), .S(n222) );
  FA_X1 U191 ( .A(n229), .B(n298), .CI(n226), .CO(n223), .S(n224) );
  FA_X1 U192 ( .A(n324), .B(n288), .CI(n310), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n311), .B(n325), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n326), .B(n300), .CI(n312), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  INV_X1 U414 ( .A(n27), .ZN(n490) );
  BUF_X1 U415 ( .A(n19), .Z(n537) );
  NAND2_X2 U416 ( .A1(n433), .A2(n566), .ZN(n550) );
  OR2_X1 U417 ( .A1(n329), .A2(n258), .ZN(n491) );
  BUF_X1 U418 ( .A(n89), .Z(n498) );
  OAI21_X1 U419 ( .B1(n113), .B2(n115), .A(n114), .ZN(n492) );
  BUF_X1 U420 ( .A(n546), .Z(n493) );
  CLKBUF_X1 U421 ( .A(n546), .Z(n494) );
  CLKBUF_X1 U422 ( .A(n429), .Z(n495) );
  INV_X1 U423 ( .A(n502), .ZN(n27) );
  INV_X1 U424 ( .A(n502), .ZN(n518) );
  OR2_X1 U425 ( .A1(n196), .A2(n203), .ZN(n496) );
  INV_X1 U426 ( .A(n569), .ZN(n568) );
  XNOR2_X1 U427 ( .A(n577), .B(a[10]), .ZN(n497) );
  INV_X2 U428 ( .A(n497), .ZN(n32) );
  XNOR2_X1 U429 ( .A(n91), .B(n499), .ZN(product[9]) );
  AND2_X1 U430 ( .A1(n515), .A2(n90), .ZN(n499) );
  INV_X1 U431 ( .A(n538), .ZN(n500) );
  INV_X1 U432 ( .A(n577), .ZN(n527) );
  CLKBUF_X3 U433 ( .A(n9), .Z(n523) );
  BUF_X2 U434 ( .A(n21), .Z(n547) );
  INV_X1 U435 ( .A(n571), .ZN(n501) );
  INV_X2 U436 ( .A(n572), .ZN(n571) );
  XNOR2_X1 U437 ( .A(n575), .B(a[8]), .ZN(n502) );
  INV_X1 U438 ( .A(n567), .ZN(n503) );
  INV_X1 U439 ( .A(n1), .ZN(n569) );
  XOR2_X1 U440 ( .A(n581), .B(a[14]), .Z(n41) );
  XNOR2_X1 U441 ( .A(n271), .B(n504), .ZN(n147) );
  XNOR2_X1 U442 ( .A(n289), .B(n279), .ZN(n504) );
  OR2_X2 U443 ( .A1(n224), .A2(n227), .ZN(n559) );
  CLKBUF_X1 U444 ( .A(n86), .Z(n505) );
  BUF_X1 U445 ( .A(n76), .Z(n506) );
  INV_X1 U446 ( .A(n496), .ZN(n507) );
  NAND2_X1 U447 ( .A1(n27), .A2(n429), .ZN(n508) );
  NAND2_X1 U448 ( .A1(n495), .A2(n27), .ZN(n29) );
  XNOR2_X1 U449 ( .A(n570), .B(a[4]), .ZN(n509) );
  OAI21_X1 U450 ( .B1(n105), .B2(n107), .A(n106), .ZN(n104) );
  INV_X1 U451 ( .A(n574), .ZN(n573) );
  XNOR2_X1 U452 ( .A(n575), .B(a[6]), .ZN(n430) );
  INV_X1 U453 ( .A(n532), .ZN(n103) );
  XNOR2_X1 U454 ( .A(n45), .B(n510), .ZN(product[12]) );
  AND2_X1 U455 ( .A1(n530), .A2(n79), .ZN(n510) );
  INV_X1 U456 ( .A(n572), .ZN(n511) );
  CLKBUF_X1 U457 ( .A(n12), .Z(n512) );
  INV_X1 U458 ( .A(n527), .ZN(n513) );
  BUF_X1 U459 ( .A(n21), .Z(n546) );
  INV_X1 U460 ( .A(n569), .ZN(n567) );
  OR2_X1 U461 ( .A1(n75), .A2(n78), .ZN(n514) );
  INV_X1 U462 ( .A(n520), .ZN(n37) );
  OR2_X1 U463 ( .A1(n204), .A2(n211), .ZN(n515) );
  BUF_X1 U464 ( .A(n9), .Z(n563) );
  CLKBUF_X1 U465 ( .A(n164), .Z(n516) );
  BUF_X2 U466 ( .A(n509), .Z(n517) );
  INV_X1 U467 ( .A(n574), .ZN(n519) );
  BUF_X1 U468 ( .A(n18), .Z(n521) );
  XNOR2_X1 U469 ( .A(n572), .B(a[2]), .ZN(n552) );
  XNOR2_X1 U470 ( .A(n579), .B(a[12]), .ZN(n520) );
  INV_X1 U471 ( .A(n579), .ZN(n578) );
  XNOR2_X1 U472 ( .A(n579), .B(a[10]), .ZN(n428) );
  BUF_X2 U473 ( .A(n18), .Z(n522) );
  NAND2_X1 U474 ( .A1(n430), .A2(n547), .ZN(n524) );
  NAND2_X1 U475 ( .A1(n430), .A2(n547), .ZN(n525) );
  NAND2_X1 U476 ( .A1(n430), .A2(n547), .ZN(n23) );
  NAND2_X1 U477 ( .A1(n553), .A2(n16), .ZN(n18) );
  INV_X1 U478 ( .A(n519), .ZN(n526) );
  INV_X1 U479 ( .A(n577), .ZN(n576) );
  CLKBUF_X1 U480 ( .A(n521), .Z(n528) );
  NOR2_X1 U481 ( .A1(n164), .A2(n175), .ZN(n529) );
  OR2_X1 U482 ( .A1(n176), .A2(n185), .ZN(n530) );
  AOI21_X1 U483 ( .B1(n104), .B2(n559), .A(n532), .ZN(n531) );
  AND2_X1 U484 ( .A1(n224), .A2(n227), .ZN(n532) );
  NOR2_X1 U485 ( .A1(n186), .A2(n195), .ZN(n533) );
  NAND2_X1 U486 ( .A1(n428), .A2(n32), .ZN(n534) );
  NOR2_X1 U487 ( .A1(n186), .A2(n195), .ZN(n82) );
  CLKBUF_X1 U488 ( .A(n45), .Z(n535) );
  OR2_X1 U489 ( .A1(n516), .A2(n175), .ZN(n536) );
  NOR2_X1 U490 ( .A1(n164), .A2(n175), .ZN(n75) );
  INV_X1 U491 ( .A(n566), .ZN(n538) );
  INV_X1 U492 ( .A(n538), .ZN(n539) );
  INV_X1 U493 ( .A(n572), .ZN(n570) );
  CLKBUF_X1 U494 ( .A(n104), .Z(n540) );
  AOI21_X1 U495 ( .B1(n556), .B2(n492), .A(n109), .ZN(n541) );
  XOR2_X1 U496 ( .A(n574), .B(a[6]), .Z(n21) );
  XOR2_X1 U497 ( .A(n569), .B(a[2]), .Z(n9) );
  XNOR2_X1 U498 ( .A(n569), .B(n249), .ZN(n433) );
  XNOR2_X1 U499 ( .A(n88), .B(n51), .ZN(product[10]) );
  OAI21_X1 U500 ( .B1(n99), .B2(n97), .A(n98), .ZN(n542) );
  CLKBUF_X1 U501 ( .A(n517), .Z(n543) );
  OAI21_X1 U502 ( .B1(n531), .B2(n97), .A(n98), .ZN(n96) );
  AOI21_X1 U503 ( .B1(n542), .B2(n555), .A(n93), .ZN(n544) );
  AOI21_X1 U504 ( .B1(n542), .B2(n555), .A(n93), .ZN(n545) );
  NAND2_X1 U505 ( .A1(n552), .A2(n9), .ZN(n548) );
  AOI21_X1 U506 ( .B1(n80), .B2(n564), .A(n81), .ZN(n549) );
  NAND2_X1 U507 ( .A1(n433), .A2(n566), .ZN(n551) );
  NAND2_X1 U508 ( .A1(n552), .A2(n9), .ZN(n12) );
  XOR2_X1 U509 ( .A(n519), .B(a[4]), .Z(n553) );
  XNOR2_X1 U510 ( .A(n70), .B(n47), .ZN(product[14]) );
  NAND2_X1 U511 ( .A1(n554), .A2(n69), .ZN(n47) );
  INV_X1 U512 ( .A(n74), .ZN(n72) );
  AOI21_X1 U513 ( .B1(n74), .B2(n554), .A(n67), .ZN(n65) );
  INV_X1 U514 ( .A(n69), .ZN(n67) );
  INV_X1 U515 ( .A(n95), .ZN(n93) );
  OR2_X1 U516 ( .A1(n152), .A2(n163), .ZN(n554) );
  NAND2_X1 U517 ( .A1(n496), .A2(n86), .ZN(n51) );
  NAND2_X1 U518 ( .A1(n555), .A2(n95), .ZN(n53) );
  OAI21_X1 U519 ( .B1(n529), .B2(n79), .A(n76), .ZN(n74) );
  NAND2_X1 U520 ( .A1(n127), .A2(n83), .ZN(n50) );
  INV_X1 U521 ( .A(n533), .ZN(n127) );
  NAND2_X1 U522 ( .A1(n536), .A2(n506), .ZN(n48) );
  NOR2_X1 U523 ( .A1(n75), .A2(n78), .ZN(n73) );
  AOI21_X1 U524 ( .B1(n80), .B2(n564), .A(n81), .ZN(n45) );
  NOR2_X1 U525 ( .A1(n533), .A2(n85), .ZN(n80) );
  OAI21_X1 U526 ( .B1(n82), .B2(n86), .A(n83), .ZN(n81) );
  NAND2_X1 U527 ( .A1(n152), .A2(n163), .ZN(n69) );
  OAI21_X1 U528 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  AOI21_X1 U529 ( .B1(n556), .B2(n112), .A(n109), .ZN(n107) );
  INV_X1 U530 ( .A(n111), .ZN(n109) );
  AOI21_X1 U531 ( .B1(n559), .B2(n104), .A(n532), .ZN(n99) );
  NAND2_X1 U532 ( .A1(n135), .A2(n114), .ZN(n58) );
  INV_X1 U533 ( .A(n113), .ZN(n135) );
  NAND2_X1 U534 ( .A1(n133), .A2(n106), .ZN(n56) );
  INV_X1 U535 ( .A(n105), .ZN(n133) );
  NAND2_X1 U536 ( .A1(n131), .A2(n98), .ZN(n54) );
  INV_X1 U537 ( .A(n97), .ZN(n131) );
  NOR2_X1 U538 ( .A1(n176), .A2(n185), .ZN(n78) );
  NOR2_X1 U539 ( .A1(n196), .A2(n203), .ZN(n85) );
  AOI21_X1 U540 ( .B1(n557), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U541 ( .A(n119), .ZN(n117) );
  INV_X1 U542 ( .A(n122), .ZN(n120) );
  XNOR2_X1 U543 ( .A(n55), .B(n540), .ZN(product[6]) );
  NAND2_X1 U544 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U545 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U546 ( .A1(n186), .A2(n195), .ZN(n83) );
  NAND2_X1 U547 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U548 ( .A1(n204), .A2(n211), .ZN(n90) );
  NAND2_X1 U549 ( .A1(n212), .A2(n217), .ZN(n95) );
  OR2_X1 U550 ( .A1(n212), .A2(n217), .ZN(n555) );
  XNOR2_X1 U551 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U552 ( .A1(n557), .A2(n119), .ZN(n59) );
  XNOR2_X1 U553 ( .A(n57), .B(n492), .ZN(product[4]) );
  NAND2_X1 U554 ( .A1(n556), .A2(n111), .ZN(n57) );
  XNOR2_X1 U555 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U556 ( .A1(n558), .A2(n62), .ZN(n46) );
  NAND2_X1 U557 ( .A1(n73), .A2(n554), .ZN(n64) );
  OR2_X1 U558 ( .A1(n232), .A2(n233), .ZN(n556) );
  NOR2_X1 U559 ( .A1(n228), .A2(n231), .ZN(n105) );
  NOR2_X1 U560 ( .A1(n234), .A2(n257), .ZN(n113) );
  NOR2_X1 U561 ( .A1(n218), .A2(n223), .ZN(n97) );
  OR2_X1 U562 ( .A1(n328), .A2(n314), .ZN(n557) );
  NAND2_X1 U563 ( .A1(n218), .A2(n223), .ZN(n98) );
  NAND2_X1 U564 ( .A1(n228), .A2(n231), .ZN(n106) );
  INV_X1 U565 ( .A(n41), .ZN(n235) );
  OR2_X1 U566 ( .A1(n151), .A2(n139), .ZN(n558) );
  AND2_X1 U567 ( .A1(n491), .A2(n122), .ZN(product[1]) );
  INV_X1 U568 ( .A(n249), .ZN(n566) );
  OR2_X1 U569 ( .A1(n43), .A2(n501), .ZN(n392) );
  AND2_X1 U570 ( .A1(n565), .A2(n490), .ZN(n278) );
  XNOR2_X1 U571 ( .A(n537), .B(n43), .ZN(n363) );
  AND2_X1 U572 ( .A1(n565), .A2(n243), .ZN(n288) );
  AND2_X1 U573 ( .A1(n565), .A2(n239), .ZN(n270) );
  AND2_X1 U574 ( .A1(n565), .A2(n235), .ZN(n260) );
  OAI22_X1 U575 ( .A1(n39), .A2(n335), .B1(n37), .B2(n334), .ZN(n262) );
  OAI22_X1 U576 ( .A1(n39), .A2(n336), .B1(n37), .B2(n335), .ZN(n263) );
  XNOR2_X1 U577 ( .A(n527), .B(n43), .ZN(n352) );
  XNOR2_X1 U578 ( .A(n155), .B(n561), .ZN(n139) );
  XNOR2_X1 U579 ( .A(n153), .B(n141), .ZN(n561) );
  XNOR2_X1 U580 ( .A(n157), .B(n562), .ZN(n141) );
  XNOR2_X1 U581 ( .A(n145), .B(n143), .ZN(n562) );
  OAI22_X1 U582 ( .A1(n42), .A2(n583), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U583 ( .A1(n43), .A2(n583), .ZN(n332) );
  XNOR2_X1 U584 ( .A(n573), .B(n43), .ZN(n376) );
  XOR2_X1 U585 ( .A(n576), .B(a[8]), .Z(n429) );
  XOR2_X1 U586 ( .A(n315), .B(n261), .Z(n150) );
  OAI22_X1 U587 ( .A1(n39), .A2(n334), .B1(n37), .B2(n333), .ZN(n261) );
  XNOR2_X1 U588 ( .A(n580), .B(n43), .ZN(n336) );
  AND2_X1 U589 ( .A1(n565), .A2(n520), .ZN(n264) );
  AND2_X1 U590 ( .A1(n565), .A2(n245), .ZN(n300) );
  NAND2_X1 U591 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U592 ( .A(n580), .B(a[12]), .Z(n427) );
  INV_X1 U593 ( .A(n25), .ZN(n577) );
  NAND2_X1 U594 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U595 ( .A(n582), .B(a[14]), .Z(n426) );
  INV_X1 U596 ( .A(n13), .ZN(n574) );
  INV_X1 U597 ( .A(n7), .ZN(n572) );
  OAI22_X1 U598 ( .A1(n39), .A2(n581), .B1(n337), .B2(n37), .ZN(n252) );
  OR2_X1 U599 ( .A1(n43), .A2(n581), .ZN(n337) );
  AND2_X1 U600 ( .A1(n565), .A2(n247), .ZN(n314) );
  AND2_X1 U601 ( .A1(n565), .A2(n249), .ZN(product[0]) );
  OR2_X1 U602 ( .A1(n43), .A2(n579), .ZN(n344) );
  OR2_X1 U603 ( .A1(n43), .A2(n513), .ZN(n353) );
  OR2_X1 U604 ( .A1(n43), .A2(n575), .ZN(n364) );
  OR2_X1 U605 ( .A1(n565), .A2(n526), .ZN(n377) );
  XNOR2_X1 U606 ( .A(n568), .B(b[15]), .ZN(n393) );
  XNOR2_X1 U607 ( .A(n537), .B(b[9]), .ZN(n354) );
  XNOR2_X1 U608 ( .A(n573), .B(b[11]), .ZN(n365) );
  XNOR2_X1 U609 ( .A(n580), .B(n424), .ZN(n335) );
  XNOR2_X1 U610 ( .A(n580), .B(n423), .ZN(n334) );
  OAI22_X1 U611 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U612 ( .A(n582), .B(n424), .ZN(n330) );
  XNOR2_X1 U613 ( .A(n582), .B(n43), .ZN(n331) );
  XNOR2_X1 U614 ( .A(n527), .B(n418), .ZN(n345) );
  XNOR2_X1 U615 ( .A(n578), .B(n420), .ZN(n338) );
  XNOR2_X1 U616 ( .A(n571), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U617 ( .A(n511), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U618 ( .A(n511), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U619 ( .A(n571), .B(n418), .ZN(n384) );
  XNOR2_X1 U620 ( .A(n511), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U621 ( .A(n571), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U622 ( .A(n571), .B(n419), .ZN(n385) );
  XNOR2_X1 U623 ( .A(n571), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U624 ( .A(n576), .B(n424), .ZN(n351) );
  XNOR2_X1 U625 ( .A(n537), .B(n424), .ZN(n362) );
  XNOR2_X1 U626 ( .A(n573), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U627 ( .A(n573), .B(n418), .ZN(n369) );
  XNOR2_X1 U628 ( .A(n573), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U629 ( .A(n573), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U630 ( .A(n580), .B(n422), .ZN(n333) );
  XNOR2_X1 U631 ( .A(n527), .B(n423), .ZN(n350) );
  XNOR2_X1 U632 ( .A(n576), .B(n422), .ZN(n349) );
  XNOR2_X1 U633 ( .A(n537), .B(n423), .ZN(n361) );
  XNOR2_X1 U634 ( .A(n537), .B(n422), .ZN(n360) );
  XNOR2_X1 U635 ( .A(n568), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U636 ( .A(n568), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U637 ( .A(n568), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U638 ( .A(n568), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U639 ( .A(n537), .B(n420), .ZN(n358) );
  XNOR2_X1 U640 ( .A(n527), .B(n420), .ZN(n347) );
  XNOR2_X1 U641 ( .A(n537), .B(n421), .ZN(n359) );
  XNOR2_X1 U642 ( .A(n576), .B(n421), .ZN(n348) );
  XNOR2_X1 U643 ( .A(n578), .B(n421), .ZN(n339) );
  XNOR2_X1 U644 ( .A(n537), .B(n418), .ZN(n356) );
  XNOR2_X1 U645 ( .A(n537), .B(n419), .ZN(n357) );
  XNOR2_X1 U646 ( .A(n527), .B(n419), .ZN(n346) );
  XNOR2_X1 U647 ( .A(n537), .B(b[8]), .ZN(n355) );
  BUF_X1 U648 ( .A(n43), .Z(n565) );
  XNOR2_X1 U649 ( .A(n578), .B(n424), .ZN(n342) );
  XNOR2_X1 U650 ( .A(n578), .B(n423), .ZN(n341) );
  XNOR2_X1 U651 ( .A(n578), .B(n43), .ZN(n343) );
  XNOR2_X1 U652 ( .A(n578), .B(n422), .ZN(n340) );
  XNOR2_X1 U653 ( .A(n570), .B(a[4]), .ZN(n16) );
  OAI22_X1 U654 ( .A1(n534), .A2(n339), .B1(n338), .B2(n32), .ZN(n265) );
  OAI22_X1 U655 ( .A1(n34), .A2(n340), .B1(n339), .B2(n32), .ZN(n266) );
  OAI22_X1 U656 ( .A1(n34), .A2(n341), .B1(n340), .B2(n32), .ZN(n267) );
  OAI22_X1 U657 ( .A1(n534), .A2(n342), .B1(n341), .B2(n32), .ZN(n268) );
  OAI22_X1 U658 ( .A1(n534), .A2(n343), .B1(n342), .B2(n32), .ZN(n269) );
  INV_X1 U659 ( .A(n32), .ZN(n239) );
  OAI22_X1 U660 ( .A1(n34), .A2(n579), .B1(n344), .B2(n32), .ZN(n253) );
  NAND2_X1 U661 ( .A1(n428), .A2(n32), .ZN(n34) );
  NAND2_X1 U662 ( .A1(n328), .A2(n314), .ZN(n119) );
  NAND2_X1 U663 ( .A1(n559), .A2(n103), .ZN(n55) );
  INV_X1 U664 ( .A(n19), .ZN(n575) );
  XNOR2_X1 U665 ( .A(n77), .B(n48), .ZN(product[13]) );
  NOR2_X1 U666 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U667 ( .A1(n508), .A2(n346), .B1(n345), .B2(n518), .ZN(n271) );
  OAI22_X1 U668 ( .A1(n508), .A2(n350), .B1(n349), .B2(n518), .ZN(n275) );
  OAI22_X1 U669 ( .A1(n508), .A2(n347), .B1(n346), .B2(n518), .ZN(n272) );
  OAI22_X1 U670 ( .A1(n508), .A2(n348), .B1(n347), .B2(n518), .ZN(n273) );
  OAI22_X1 U671 ( .A1(n29), .A2(n513), .B1(n353), .B2(n518), .ZN(n254) );
  OAI22_X1 U672 ( .A1(n29), .A2(n349), .B1(n348), .B2(n518), .ZN(n274) );
  OAI22_X1 U673 ( .A1(n29), .A2(n351), .B1(n350), .B2(n518), .ZN(n276) );
  OAI22_X1 U674 ( .A1(n508), .A2(n352), .B1(n351), .B2(n518), .ZN(n277) );
  OAI21_X1 U675 ( .B1(n545), .B2(n498), .A(n90), .ZN(n564) );
  OAI21_X1 U676 ( .B1(n544), .B2(n89), .A(n90), .ZN(n88) );
  XNOR2_X1 U677 ( .A(n84), .B(n50), .ZN(product[11]) );
  NAND2_X1 U678 ( .A1(n151), .A2(n139), .ZN(n62) );
  OAI21_X1 U679 ( .B1(n87), .B2(n507), .A(n505), .ZN(n84) );
  AOI21_X1 U680 ( .B1(n96), .B2(n555), .A(n93), .ZN(n91) );
  XNOR2_X1 U681 ( .A(n96), .B(n53), .ZN(product[8]) );
  OR2_X1 U682 ( .A1(n565), .A2(n503), .ZN(n409) );
  INV_X1 U683 ( .A(n88), .ZN(n87) );
  OAI22_X1 U684 ( .A1(n525), .A2(n358), .B1(n357), .B2(n493), .ZN(n282) );
  OAI22_X1 U685 ( .A1(n524), .A2(n356), .B1(n355), .B2(n494), .ZN(n280) );
  OAI22_X1 U686 ( .A1(n525), .A2(n360), .B1(n359), .B2(n493), .ZN(n284) );
  OAI22_X1 U687 ( .A1(n524), .A2(n362), .B1(n361), .B2(n494), .ZN(n286) );
  OAI22_X1 U688 ( .A1(n525), .A2(n357), .B1(n356), .B2(n494), .ZN(n281) );
  OAI22_X1 U689 ( .A1(n525), .A2(n361), .B1(n360), .B2(n493), .ZN(n285) );
  OAI22_X1 U690 ( .A1(n524), .A2(n575), .B1(n364), .B2(n493), .ZN(n255) );
  OAI22_X1 U691 ( .A1(n23), .A2(n359), .B1(n358), .B2(n547), .ZN(n283) );
  OAI22_X1 U692 ( .A1(n23), .A2(n363), .B1(n362), .B2(n546), .ZN(n287) );
  XNOR2_X1 U693 ( .A(n573), .B(n424), .ZN(n375) );
  XNOR2_X1 U694 ( .A(n573), .B(n421), .ZN(n372) );
  XNOR2_X1 U695 ( .A(n573), .B(n419), .ZN(n370) );
  XNOR2_X1 U696 ( .A(n573), .B(n420), .ZN(n371) );
  OAI22_X1 U697 ( .A1(n524), .A2(n355), .B1(n354), .B2(n494), .ZN(n279) );
  XNOR2_X1 U698 ( .A(n519), .B(n423), .ZN(n374) );
  XNOR2_X1 U699 ( .A(n519), .B(n422), .ZN(n373) );
  INV_X1 U700 ( .A(n547), .ZN(n243) );
  XOR2_X1 U701 ( .A(n531), .B(n54), .Z(product[7]) );
  OAI22_X1 U702 ( .A1(n528), .A2(n370), .B1(n369), .B2(n543), .ZN(n293) );
  OAI22_X1 U703 ( .A1(n528), .A2(n367), .B1(n366), .B2(n543), .ZN(n290) );
  OAI22_X1 U704 ( .A1(n522), .A2(n368), .B1(n367), .B2(n517), .ZN(n291) );
  OAI22_X1 U705 ( .A1(n522), .A2(n369), .B1(n368), .B2(n517), .ZN(n292) );
  OAI22_X1 U706 ( .A1(n522), .A2(n372), .B1(n371), .B2(n517), .ZN(n295) );
  OAI22_X1 U707 ( .A1(n521), .A2(n371), .B1(n370), .B2(n517), .ZN(n294) );
  OAI22_X1 U708 ( .A1(n528), .A2(n375), .B1(n374), .B2(n517), .ZN(n298) );
  OAI22_X1 U709 ( .A1(n522), .A2(n373), .B1(n372), .B2(n517), .ZN(n296) );
  OAI22_X1 U710 ( .A1(n521), .A2(n366), .B1(n365), .B2(n517), .ZN(n289) );
  OAI22_X1 U711 ( .A1(n522), .A2(n374), .B1(n373), .B2(n517), .ZN(n297) );
  OAI22_X1 U712 ( .A1(n522), .A2(n526), .B1(n377), .B2(n517), .ZN(n256) );
  OAI22_X1 U713 ( .A1(n522), .A2(n376), .B1(n375), .B2(n517), .ZN(n299) );
  XNOR2_X1 U714 ( .A(n511), .B(n420), .ZN(n386) );
  INV_X1 U715 ( .A(n509), .ZN(n245) );
  XNOR2_X1 U716 ( .A(n571), .B(n43), .ZN(n391) );
  XNOR2_X1 U717 ( .A(n571), .B(n422), .ZN(n388) );
  XNOR2_X1 U718 ( .A(n511), .B(n423), .ZN(n389) );
  XNOR2_X1 U719 ( .A(n511), .B(n424), .ZN(n390) );
  XNOR2_X1 U720 ( .A(n571), .B(n421), .ZN(n387) );
  OAI21_X1 U721 ( .B1(n64), .B2(n535), .A(n65), .ZN(n63) );
  OAI21_X1 U722 ( .B1(n549), .B2(n78), .A(n79), .ZN(n77) );
  OAI21_X1 U723 ( .B1(n549), .B2(n514), .A(n72), .ZN(n70) );
  NAND2_X1 U724 ( .A1(n232), .A2(n233), .ZN(n111) );
  XNOR2_X1 U725 ( .A(n567), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U726 ( .A(n568), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U727 ( .A(n567), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U728 ( .A(n567), .B(n418), .ZN(n401) );
  XNOR2_X1 U729 ( .A(n568), .B(n43), .ZN(n408) );
  XNOR2_X1 U730 ( .A(n568), .B(n422), .ZN(n405) );
  XNOR2_X1 U731 ( .A(n567), .B(n421), .ZN(n404) );
  XNOR2_X1 U732 ( .A(n567), .B(n420), .ZN(n403) );
  XNOR2_X1 U733 ( .A(n567), .B(n419), .ZN(n402) );
  XNOR2_X1 U734 ( .A(n568), .B(n424), .ZN(n407) );
  XNOR2_X1 U735 ( .A(n568), .B(n423), .ZN(n406) );
  XOR2_X1 U736 ( .A(n56), .B(n541), .Z(product[5]) );
  XOR2_X1 U737 ( .A(n58), .B(n115), .Z(product[3]) );
  OAI22_X1 U738 ( .A1(n550), .A2(n395), .B1(n394), .B2(n500), .ZN(n316) );
  OAI22_X1 U739 ( .A1(n551), .A2(n394), .B1(n393), .B2(n539), .ZN(n315) );
  OAI22_X1 U740 ( .A1(n550), .A2(n396), .B1(n395), .B2(n500), .ZN(n317) );
  OAI22_X1 U741 ( .A1(n550), .A2(n397), .B1(n396), .B2(n539), .ZN(n318) );
  OAI22_X1 U742 ( .A1(n550), .A2(n398), .B1(n397), .B2(n500), .ZN(n319) );
  OAI22_X1 U743 ( .A1(n551), .A2(n400), .B1(n399), .B2(n500), .ZN(n321) );
  OAI22_X1 U744 ( .A1(n399), .A2(n550), .B1(n398), .B2(n500), .ZN(n320) );
  OAI22_X1 U745 ( .A1(n550), .A2(n401), .B1(n400), .B2(n539), .ZN(n322) );
  OAI22_X1 U746 ( .A1(n550), .A2(n402), .B1(n401), .B2(n539), .ZN(n323) );
  NAND2_X1 U747 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI22_X1 U748 ( .A1(n551), .A2(n404), .B1(n403), .B2(n539), .ZN(n325) );
  OAI22_X1 U749 ( .A1(n403), .A2(n551), .B1(n402), .B2(n500), .ZN(n324) );
  OAI22_X1 U750 ( .A1(n550), .A2(n406), .B1(n405), .B2(n500), .ZN(n327) );
  OAI22_X1 U751 ( .A1(n550), .A2(n405), .B1(n404), .B2(n539), .ZN(n326) );
  OAI22_X1 U752 ( .A1(n551), .A2(n407), .B1(n406), .B2(n500), .ZN(n328) );
  OAI22_X1 U753 ( .A1(n551), .A2(n408), .B1(n407), .B2(n539), .ZN(n329) );
  OAI22_X1 U754 ( .A1(n550), .A2(n503), .B1(n409), .B2(n539), .ZN(n258) );
  OAI22_X1 U755 ( .A1(n512), .A2(n379), .B1(n378), .B2(n523), .ZN(n301) );
  OAI22_X1 U756 ( .A1(n512), .A2(n380), .B1(n379), .B2(n523), .ZN(n302) );
  OAI22_X1 U757 ( .A1(n512), .A2(n385), .B1(n384), .B2(n523), .ZN(n307) );
  OAI22_X1 U758 ( .A1(n12), .A2(n382), .B1(n381), .B2(n523), .ZN(n304) );
  OAI22_X1 U759 ( .A1(n12), .A2(n381), .B1(n380), .B2(n523), .ZN(n303) );
  NAND2_X1 U760 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U761 ( .A1(n548), .A2(n383), .B1(n563), .B2(n382), .ZN(n305) );
  OAI22_X1 U762 ( .A1(n548), .A2(n384), .B1(n563), .B2(n383), .ZN(n306) );
  OAI22_X1 U763 ( .A1(n12), .A2(n386), .B1(n385), .B2(n523), .ZN(n308) );
  OAI22_X1 U764 ( .A1(n12), .A2(n387), .B1(n386), .B2(n523), .ZN(n309) );
  OAI22_X1 U765 ( .A1(n512), .A2(n501), .B1(n392), .B2(n523), .ZN(n257) );
  OAI22_X1 U766 ( .A1(n548), .A2(n389), .B1(n388), .B2(n563), .ZN(n311) );
  OAI22_X1 U767 ( .A1(n548), .A2(n388), .B1(n387), .B2(n563), .ZN(n310) );
  OAI22_X1 U768 ( .A1(n12), .A2(n390), .B1(n389), .B2(n523), .ZN(n312) );
  INV_X1 U769 ( .A(n523), .ZN(n247) );
  OAI22_X1 U770 ( .A1(n12), .A2(n391), .B1(n390), .B2(n523), .ZN(n313) );
  INV_X1 U771 ( .A(n31), .ZN(n579) );
  INV_X1 U772 ( .A(n581), .ZN(n580) );
  INV_X1 U773 ( .A(n36), .ZN(n581) );
  INV_X1 U774 ( .A(n583), .ZN(n582) );
  INV_X1 U775 ( .A(n40), .ZN(n583) );
  XOR2_X1 U776 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U777 ( .A(n149), .B(n147), .Z(n144) );
  XOR2_X1 U778 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_6_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n20, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n44, n45, n47, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65, n67, n68, n69,
         n70, n71, n73, n75, n76, n77, n78, n79, n81, n83, n84, n86, n89, n90,
         n94, n95, n96, n98, n100, n157, n158, n159, n160, n161, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180;

  CLKBUF_X1 U122 ( .A(n37), .Z(n157) );
  BUF_X1 U123 ( .A(n168), .Z(n158) );
  XNOR2_X1 U124 ( .A(n157), .B(n159), .ZN(SUM[11]) );
  AND2_X1 U125 ( .A1(n161), .A2(n160), .ZN(n159) );
  NAND2_X1 U126 ( .A1(A[11]), .A2(B[11]), .ZN(n160) );
  OR2_X1 U127 ( .A1(A[11]), .A2(B[11]), .ZN(n161) );
  BUF_X1 U128 ( .A(n35), .Z(n164) );
  AND2_X1 U129 ( .A1(n172), .A2(n86), .ZN(SUM[0]) );
  NOR2_X1 U130 ( .A1(A[14]), .A2(B[14]), .ZN(n163) );
  NOR2_X1 U131 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  CLKBUF_X1 U132 ( .A(n180), .Z(n165) );
  OR2_X1 U133 ( .A1(A[14]), .A2(B[14]), .ZN(n166) );
  NOR2_X1 U134 ( .A1(A[12]), .A2(B[12]), .ZN(n167) );
  NOR2_X1 U135 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  OR2_X1 U136 ( .A1(A[10]), .A2(B[10]), .ZN(n168) );
  OR2_X1 U137 ( .A1(A[10]), .A2(B[10]), .ZN(n179) );
  NOR2_X1 U138 ( .A1(A[8]), .A2(B[8]), .ZN(n169) );
  OAI21_X1 U139 ( .B1(n167), .B2(n36), .A(n33), .ZN(n170) );
  AOI21_X1 U140 ( .B1(n38), .B2(n30), .A(n31), .ZN(n171) );
  OR2_X1 U141 ( .A1(A[0]), .A2(B[0]), .ZN(n172) );
  INV_X1 U142 ( .A(n51), .ZN(n50) );
  INV_X1 U143 ( .A(n67), .ZN(n65) );
  AOI21_X1 U144 ( .B1(n30), .B2(n38), .A(n170), .ZN(n1) );
  AOI21_X1 U145 ( .B1(n175), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U146 ( .A(n83), .ZN(n81) );
  OAI21_X1 U147 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  OR2_X1 U148 ( .A1(n25), .A2(n28), .ZN(n173) );
  AOI21_X1 U149 ( .B1(n50), .B2(n177), .A(n47), .ZN(n45) );
  OAI21_X1 U150 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  INV_X1 U151 ( .A(n86), .ZN(n84) );
  OAI21_X1 U152 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  AOI21_X1 U153 ( .B1(n174), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U154 ( .A(n75), .ZN(n73) );
  NAND2_X1 U155 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U156 ( .A(n69), .ZN(n98) );
  NAND2_X1 U157 ( .A1(n94), .A2(n55), .ZN(n9) );
  INV_X1 U158 ( .A(n169), .ZN(n94) );
  NAND2_X1 U159 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U160 ( .A(n57), .ZN(n95) );
  NAND2_X1 U161 ( .A1(n177), .A2(n49), .ZN(n8) );
  NAND2_X1 U162 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U163 ( .A(n77), .ZN(n100) );
  NAND2_X1 U164 ( .A1(n178), .A2(n67), .ZN(n12) );
  NAND2_X1 U165 ( .A1(n174), .A2(n75), .ZN(n14) );
  NAND2_X1 U166 ( .A1(n175), .A2(n83), .ZN(n16) );
  NAND2_X1 U167 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U168 ( .A(n61), .ZN(n96) );
  XNOR2_X1 U169 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  XNOR2_X1 U170 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  XNOR2_X1 U171 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NAND2_X1 U172 ( .A1(n89), .A2(n29), .ZN(n4) );
  XOR2_X1 U173 ( .A(n7), .B(n45), .Z(SUM[10]) );
  NOR2_X1 U174 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  NOR2_X1 U175 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  NOR2_X1 U176 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  NOR2_X1 U177 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NOR2_X1 U178 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  XOR2_X1 U179 ( .A(n59), .B(n10), .Z(SUM[7]) );
  OR2_X1 U180 ( .A1(A[3]), .A2(B[3]), .ZN(n174) );
  OR2_X1 U181 ( .A1(A[1]), .A2(B[1]), .ZN(n175) );
  OR2_X1 U182 ( .A1(n18), .A2(n176), .ZN(n2) );
  AND2_X1 U183 ( .A1(A[15]), .A2(B[15]), .ZN(n176) );
  XNOR2_X1 U184 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  NAND2_X1 U185 ( .A1(n90), .A2(n33), .ZN(n5) );
  XNOR2_X1 U186 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  NOR2_X1 U187 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NAND2_X1 U188 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  NAND2_X1 U189 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  NAND2_X1 U190 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  OR2_X1 U191 ( .A1(A[9]), .A2(B[9]), .ZN(n177) );
  NAND2_X1 U192 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NAND2_X1 U193 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U194 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U195 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  OR2_X1 U196 ( .A1(A[5]), .A2(B[5]), .ZN(n178) );
  NAND2_X1 U197 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  NAND2_X1 U198 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  NAND2_X1 U199 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  NAND2_X1 U200 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  XNOR2_X1 U201 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XOR2_X1 U202 ( .A(n13), .B(n71), .Z(SUM[4]) );
  XOR2_X1 U203 ( .A(n15), .B(n79), .Z(SUM[2]) );
  INV_X1 U204 ( .A(n38), .ZN(n37) );
  INV_X1 U205 ( .A(n165), .ZN(n44) );
  INV_X1 U206 ( .A(n49), .ZN(n47) );
  INV_X1 U207 ( .A(n60), .ZN(n59) );
  AOI21_X1 U208 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  AOI21_X1 U209 ( .B1(n179), .B2(n47), .A(n180), .ZN(n40) );
  NAND2_X1 U210 ( .A1(n166), .A2(n26), .ZN(n3) );
  NAND2_X1 U211 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  NOR2_X1 U212 ( .A1(n169), .A2(n57), .ZN(n52) );
  OAI21_X1 U213 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  INV_X1 U214 ( .A(n24), .ZN(n22) );
  AND2_X1 U215 ( .A1(A[10]), .A2(B[10]), .ZN(n180) );
  INV_X1 U216 ( .A(n28), .ZN(n89) );
  NOR2_X1 U217 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  XOR2_X1 U218 ( .A(n11), .B(n63), .Z(SUM[6]) );
  OAI21_X1 U219 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  AOI21_X1 U220 ( .B1(n178), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U221 ( .A(n167), .ZN(n90) );
  OAI21_X1 U222 ( .B1(n32), .B2(n36), .A(n33), .ZN(n31) );
  NAND2_X1 U223 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  XNOR2_X1 U224 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  NAND2_X1 U225 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  OAI21_X1 U226 ( .B1(n163), .B2(n29), .A(n26), .ZN(n24) );
  NOR2_X1 U227 ( .A1(A[15]), .A2(B[15]), .ZN(n18) );
  OAI21_X1 U228 ( .B1(n37), .B2(n164), .A(n160), .ZN(n34) );
  NOR2_X1 U229 ( .A1(n35), .A2(n32), .ZN(n30) );
  OAI21_X1 U230 ( .B1(n39), .B2(n51), .A(n40), .ZN(n38) );
  NAND2_X1 U231 ( .A1(n44), .A2(n158), .ZN(n7) );
  NAND2_X1 U232 ( .A1(n168), .A2(n177), .ZN(n39) );
  XNOR2_X1 U233 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  XOR2_X1 U234 ( .A(n1), .B(n4), .Z(SUM[13]) );
  OAI21_X1 U235 ( .B1(n173), .B2(n1), .A(n22), .ZN(n20) );
  OAI21_X1 U236 ( .B1(n171), .B2(n28), .A(n29), .ZN(n27) );
endmodule


module datapath_M16_N8_T16_P16_6 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n16), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n227), .CK(clk), .Q(n20) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n228), .CK(clk), .Q(n21) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n229), .CK(clk), .Q(n22) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n230), .CK(clk), .Q(n23) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n231), .CK(clk), .Q(n24) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n232), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n233), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n234), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n235), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n236), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n237), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n238), .CK(clk), .Q(n33) );
  DFF_X1 \f_reg[0]  ( .D(n166), .CK(clk), .Q(n61), .QN(n216) );
  DFF_X1 \f_reg[1]  ( .D(n114), .CK(clk), .Q(n59), .QN(n217) );
  DFF_X1 \f_reg[2]  ( .D(n113), .CK(clk), .Q(n57), .QN(n218) );
  DFF_X1 \data_out_reg[15]  ( .D(n168), .CK(clk), .Q(data_out[15]), .QN(n199)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n169), .CK(clk), .Q(data_out[14]), .QN(n198)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n170), .CK(clk), .Q(data_out[13]), .QN(n197)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n171), .CK(clk), .Q(data_out[12]), .QN(n196)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n172), .CK(clk), .Q(data_out[11]), .QN(n195)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n173), .CK(clk), .Q(data_out[10]), .QN(n194)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n174), .CK(clk), .Q(data_out[9]), .QN(n193) );
  DFF_X1 \data_out_reg[8]  ( .D(n175), .CK(clk), .Q(data_out[8]), .QN(n192) );
  DFF_X1 \data_out_reg[7]  ( .D(n176), .CK(clk), .Q(data_out[7]), .QN(n191) );
  DFF_X1 \data_out_reg[6]  ( .D(n177), .CK(clk), .Q(data_out[6]), .QN(n190) );
  DFF_X1 \data_out_reg[5]  ( .D(n178), .CK(clk), .Q(data_out[5]), .QN(n189) );
  DFF_X1 \data_out_reg[4]  ( .D(n179), .CK(clk), .Q(data_out[4]), .QN(n188) );
  DFF_X1 \data_out_reg[3]  ( .D(n180), .CK(clk), .Q(data_out[3]), .QN(n187) );
  DFF_X1 \data_out_reg[2]  ( .D(n181), .CK(clk), .Q(data_out[2]), .QN(n186) );
  DFF_X1 \data_out_reg[1]  ( .D(n182), .CK(clk), .Q(data_out[1]), .QN(n185) );
  DFF_X1 \data_out_reg[0]  ( .D(n183), .CK(clk), .Q(data_out[0]), .QN(n184) );
  datapath_M16_N8_T16_P16_6_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_6_DW01_add_2 add_262 ( .A({n206, n205, n204, n203, 
        n202, n201, n215, n214, n213, n212, n211, n210, n209, n208, n207, n200}), .B({f[15], n42, n43, n45, n47, n49, f[9:3], n57, n59, n61}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X2 delay_reg ( .D(n167), .CK(clk), .Q(n9), .QN(n243) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n242), .CK(clk), .Q(n38) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n241), .CK(clk), .Q(n36) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n240), .CK(clk), .Q(n35) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n239), .CK(clk), .Q(n34) );
  DFF_X1 \f_reg[3]  ( .D(n112), .CK(clk), .Q(f[3]), .QN(n65) );
  DFF_X1 \f_reg[4]  ( .D(n111), .CK(clk), .Q(f[4]), .QN(n66) );
  DFF_X1 \f_reg[5]  ( .D(n102), .CK(clk), .Q(f[5]), .QN(n67) );
  DFF_X1 \f_reg[6]  ( .D(n85), .CK(clk), .Q(f[6]), .QN(n68) );
  DFF_X1 \f_reg[7]  ( .D(n83), .CK(clk), .Q(f[7]), .QN(n219) );
  DFF_X1 \f_reg[8]  ( .D(n82), .CK(clk), .Q(f[8]), .QN(n220) );
  DFF_X1 \f_reg[9]  ( .D(n81), .CK(clk), .Q(f[9]), .QN(n221) );
  DFF_X1 \f_reg[10]  ( .D(n80), .CK(clk), .Q(n49), .QN(n222) );
  DFF_X1 \f_reg[13]  ( .D(n77), .CK(clk), .Q(n43), .QN(n225) );
  DFF_X1 \f_reg[11]  ( .D(n79), .CK(clk), .Q(n47), .QN(n223) );
  DFF_X1 \f_reg[12]  ( .D(n78), .CK(clk), .Q(n45), .QN(n224) );
  DFF_X1 \f_reg[15]  ( .D(n8), .CK(clk), .Q(f[15]), .QN(n73) );
  DFF_X2 \f_reg[14]  ( .D(n76), .CK(clk), .Q(n42), .QN(n226) );
  NAND2_X1 U3 ( .A1(data_out_b[13]), .A2(n16), .ZN(n1) );
  NAND2_X1 U4 ( .A1(adder[13]), .A2(n13), .ZN(n2) );
  NAND2_X2 U5 ( .A1(n63), .A2(n43), .ZN(n4) );
  AND3_X1 U6 ( .A1(n1), .A2(n2), .A3(n4), .ZN(n44) );
  AND2_X4 U8 ( .A1(n41), .A2(n17), .ZN(n13) );
  OAI222_X1 U9 ( .A1(n5), .A2(n17), .B1(n6), .B2(n7), .C1(n226), .C2(n41), 
        .ZN(n76) );
  INV_X1 U10 ( .A(data_out_b[14]), .ZN(n5) );
  INV_X1 U11 ( .A(adder[14]), .ZN(n6) );
  INV_X1 U12 ( .A(n13), .ZN(n7) );
  MUX2_X2 U13 ( .A(n24), .B(N40), .S(n243), .Z(n202) );
  NAND3_X1 U14 ( .A1(n11), .A2(n10), .A3(n12), .ZN(n8) );
  MUX2_X2 U15 ( .A(N39), .B(n25), .S(n9), .Z(n201) );
  MUX2_X2 U16 ( .A(n27), .B(N37), .S(n243), .Z(n214) );
  MUX2_X2 U17 ( .A(N43), .B(n21), .S(n9), .Z(n205) );
  MUX2_X2 U18 ( .A(n23), .B(N41), .S(n243), .Z(n203) );
  NAND2_X1 U19 ( .A1(data_out_b[15]), .A2(n16), .ZN(n10) );
  NAND2_X1 U20 ( .A1(adder[15]), .A2(n13), .ZN(n11) );
  NAND2_X1 U21 ( .A1(n63), .A2(f[15]), .ZN(n12) );
  NAND2_X1 U22 ( .A1(n167), .A2(n15), .ZN(n245) );
  INV_X1 U23 ( .A(n41), .ZN(n63) );
  INV_X1 U24 ( .A(clear_acc), .ZN(n17) );
  INV_X1 U25 ( .A(n19), .ZN(n37) );
  OAI22_X1 U26 ( .A1(n187), .A2(n245), .B1(n65), .B2(n244), .ZN(n180) );
  OAI22_X1 U27 ( .A1(n188), .A2(n245), .B1(n66), .B2(n244), .ZN(n179) );
  OAI22_X1 U28 ( .A1(n189), .A2(n245), .B1(n67), .B2(n244), .ZN(n178) );
  OAI22_X1 U29 ( .A1(n190), .A2(n245), .B1(n68), .B2(n244), .ZN(n177) );
  OAI22_X1 U30 ( .A1(n191), .A2(n245), .B1(n219), .B2(n244), .ZN(n176) );
  OAI22_X1 U31 ( .A1(n192), .A2(n245), .B1(n220), .B2(n244), .ZN(n175) );
  OAI22_X1 U32 ( .A1(n193), .A2(n245), .B1(n221), .B2(n244), .ZN(n174) );
  MUX2_X1 U33 ( .A(n20), .B(N44), .S(n243), .Z(n206) );
  CLKBUF_X1 U34 ( .A(N39), .Z(n14) );
  INV_X1 U35 ( .A(wr_en_y), .ZN(n15) );
  INV_X1 U36 ( .A(n17), .ZN(n16) );
  INV_X1 U37 ( .A(m_ready), .ZN(n18) );
  NAND2_X1 U38 ( .A1(m_valid), .A2(n18), .ZN(n39) );
  OAI21_X1 U39 ( .B1(sel[4]), .B2(n75), .A(n39), .ZN(n167) );
  NAND2_X1 U40 ( .A1(clear_acc_delay), .A2(n243), .ZN(n19) );
  MUX2_X1 U41 ( .A(n20), .B(N44), .S(n37), .Z(n227) );
  MUX2_X1 U42 ( .A(n21), .B(N43), .S(n37), .Z(n228) );
  MUX2_X1 U43 ( .A(n22), .B(N42), .S(n37), .Z(n229) );
  MUX2_X1 U44 ( .A(n22), .B(N42), .S(n243), .Z(n204) );
  MUX2_X1 U45 ( .A(n23), .B(N41), .S(n37), .Z(n230) );
  MUX2_X1 U46 ( .A(n24), .B(N40), .S(n37), .Z(n231) );
  MUX2_X1 U47 ( .A(n25), .B(n14), .S(n37), .Z(n232) );
  MUX2_X1 U48 ( .A(n26), .B(N38), .S(n37), .Z(n233) );
  MUX2_X1 U49 ( .A(n26), .B(N38), .S(n243), .Z(n215) );
  MUX2_X1 U50 ( .A(n27), .B(N37), .S(n37), .Z(n234) );
  MUX2_X1 U51 ( .A(n28), .B(N36), .S(n37), .Z(n235) );
  MUX2_X1 U52 ( .A(n28), .B(N36), .S(n243), .Z(n213) );
  MUX2_X1 U53 ( .A(n29), .B(N35), .S(n37), .Z(n236) );
  MUX2_X1 U54 ( .A(n29), .B(N35), .S(n243), .Z(n212) );
  MUX2_X1 U55 ( .A(n32), .B(N34), .S(n37), .Z(n237) );
  MUX2_X1 U56 ( .A(n32), .B(N34), .S(n243), .Z(n211) );
  MUX2_X1 U57 ( .A(n33), .B(N33), .S(n37), .Z(n238) );
  MUX2_X1 U58 ( .A(n33), .B(N33), .S(n243), .Z(n210) );
  MUX2_X1 U59 ( .A(n34), .B(N32), .S(n37), .Z(n239) );
  MUX2_X1 U60 ( .A(n34), .B(N32), .S(n243), .Z(n209) );
  MUX2_X1 U61 ( .A(n35), .B(N31), .S(n37), .Z(n240) );
  MUX2_X1 U62 ( .A(n35), .B(N31), .S(n243), .Z(n208) );
  MUX2_X1 U63 ( .A(n36), .B(N30), .S(n37), .Z(n241) );
  MUX2_X1 U64 ( .A(n36), .B(N30), .S(n243), .Z(n207) );
  MUX2_X1 U65 ( .A(n38), .B(N29), .S(n37), .Z(n242) );
  MUX2_X1 U66 ( .A(n38), .B(N29), .S(n243), .Z(n200) );
  INV_X1 U67 ( .A(n39), .ZN(n40) );
  OAI21_X1 U68 ( .B1(n40), .B2(n9), .A(n17), .ZN(n41) );
  INV_X1 U69 ( .A(n44), .ZN(n77) );
  AOI222_X1 U70 ( .A1(data_out_b[12]), .A2(n16), .B1(adder[12]), .B2(n13), 
        .C1(n63), .C2(n45), .ZN(n46) );
  INV_X1 U71 ( .A(n46), .ZN(n78) );
  AOI222_X1 U72 ( .A1(data_out_b[11]), .A2(n16), .B1(adder[11]), .B2(n13), 
        .C1(n63), .C2(n47), .ZN(n48) );
  INV_X1 U73 ( .A(n48), .ZN(n79) );
  AOI222_X1 U74 ( .A1(data_out_b[10]), .A2(n16), .B1(adder[10]), .B2(n13), 
        .C1(n63), .C2(n49), .ZN(n50) );
  INV_X1 U75 ( .A(n50), .ZN(n80) );
  AOI222_X1 U76 ( .A1(data_out_b[8]), .A2(n16), .B1(adder[8]), .B2(n13), .C1(
        n63), .C2(f[8]), .ZN(n51) );
  INV_X1 U77 ( .A(n51), .ZN(n82) );
  AOI222_X1 U78 ( .A1(data_out_b[7]), .A2(n16), .B1(adder[7]), .B2(n13), .C1(
        n63), .C2(f[7]), .ZN(n52) );
  INV_X1 U79 ( .A(n52), .ZN(n83) );
  AOI222_X1 U80 ( .A1(data_out_b[6]), .A2(n16), .B1(adder[6]), .B2(n13), .C1(
        n63), .C2(f[6]), .ZN(n53) );
  INV_X1 U81 ( .A(n53), .ZN(n85) );
  AOI222_X1 U82 ( .A1(data_out_b[5]), .A2(n16), .B1(adder[5]), .B2(n13), .C1(
        n63), .C2(f[5]), .ZN(n54) );
  INV_X1 U83 ( .A(n54), .ZN(n102) );
  AOI222_X1 U84 ( .A1(data_out_b[4]), .A2(n16), .B1(adder[4]), .B2(n13), .C1(
        n63), .C2(f[4]), .ZN(n55) );
  INV_X1 U85 ( .A(n55), .ZN(n111) );
  AOI222_X1 U86 ( .A1(data_out_b[3]), .A2(n16), .B1(adder[3]), .B2(n13), .C1(
        n63), .C2(f[3]), .ZN(n56) );
  INV_X1 U87 ( .A(n56), .ZN(n112) );
  AOI222_X1 U88 ( .A1(data_out_b[2]), .A2(n16), .B1(adder[2]), .B2(n13), .C1(
        n63), .C2(n57), .ZN(n58) );
  INV_X1 U89 ( .A(n58), .ZN(n113) );
  AOI222_X1 U90 ( .A1(data_out_b[1]), .A2(n16), .B1(adder[1]), .B2(n13), .C1(
        n63), .C2(n59), .ZN(n60) );
  INV_X1 U91 ( .A(n60), .ZN(n114) );
  AOI222_X1 U92 ( .A1(data_out_b[0]), .A2(n16), .B1(adder[0]), .B2(n13), .C1(
        n63), .C2(n61), .ZN(n62) );
  INV_X1 U93 ( .A(n62), .ZN(n166) );
  AOI222_X1 U94 ( .A1(data_out_b[9]), .A2(n16), .B1(adder[9]), .B2(n13), .C1(
        n63), .C2(f[9]), .ZN(n64) );
  INV_X1 U95 ( .A(n64), .ZN(n81) );
  NOR4_X1 U96 ( .A1(n47), .A2(n45), .A3(n43), .A4(n42), .ZN(n72) );
  NOR4_X1 U97 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n49), .ZN(n71) );
  NAND4_X1 U98 ( .A1(n68), .A2(n67), .A3(n66), .A4(n65), .ZN(n69) );
  NOR4_X1 U99 ( .A1(n69), .A2(n61), .A3(n59), .A4(n57), .ZN(n70) );
  NAND3_X1 U100 ( .A1(n72), .A2(n71), .A3(n70), .ZN(n74) );
  NAND3_X1 U101 ( .A1(wr_en_y), .A2(n74), .A3(n73), .ZN(n244) );
  OAI22_X1 U102 ( .A1(n184), .A2(n245), .B1(n216), .B2(n244), .ZN(n183) );
  OAI22_X1 U103 ( .A1(n185), .A2(n245), .B1(n217), .B2(n244), .ZN(n182) );
  OAI22_X1 U104 ( .A1(n186), .A2(n245), .B1(n218), .B2(n244), .ZN(n181) );
  OAI22_X1 U105 ( .A1(n194), .A2(n245), .B1(n222), .B2(n244), .ZN(n173) );
  OAI22_X1 U106 ( .A1(n195), .A2(n245), .B1(n223), .B2(n244), .ZN(n172) );
  OAI22_X1 U107 ( .A1(n196), .A2(n245), .B1(n224), .B2(n244), .ZN(n171) );
  OAI22_X1 U108 ( .A1(n197), .A2(n245), .B1(n225), .B2(n244), .ZN(n170) );
  OAI22_X1 U109 ( .A1(n198), .A2(n245), .B1(n226), .B2(n244), .ZN(n169) );
  OAI22_X1 U110 ( .A1(n199), .A2(n245), .B1(n73), .B2(n244), .ZN(n168) );
  AND4_X1 U111 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n75)
         );
endmodule


module datapath_M16_N8_T16_P16_5_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n27, n29, n31,
         n32, n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50,
         n52, n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n93, n95, n96, n97, n98, n99,
         n105, n106, n107, n111, n112, n113, n114, n115, n117, n119, n120,
         n122, n125, n127, n131, n135, n139, n141, n142, n144, n147, n148,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n237, n241,
         n243, n245, n247, n249, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n418, n419,
         n420, n421, n422, n423, n424, n426, n427, n429, n431, n432, n433,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U161 ( .A(n177), .B(n168), .CI(n166), .CO(n163), .S(n164) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n292), .CI(n274), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n304), .B(n264), .CI(n318), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n201), .B(n199), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n253), .B(n283), .CI(n305), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n319), .B(n269), .CO(n193), .S(n194) );
  FA_X1 U178 ( .A(n207), .B(n209), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n276), .B(n284), .CI(n294), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n320), .B(n270), .CI(n306), .CO(n201), .S(n202) );
  FA_X1 U181 ( .A(n208), .B(n213), .CI(n206), .CO(n203), .S(n204) );
  FA_X1 U182 ( .A(n215), .B(n307), .CI(n210), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n254), .B(n285), .CI(n295), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n321), .B(n277), .CO(n209), .S(n210) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  HA_X1 U190 ( .A(n323), .B(n287), .CO(n221), .S(n222) );
  FA_X1 U192 ( .A(n324), .B(n288), .CI(n310), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n311), .B(n325), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n312), .B(n326), .CI(n300), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n327), .B(n313), .CO(n233), .S(n234) );
  INV_X2 U414 ( .A(n598), .ZN(n597) );
  AND2_X1 U415 ( .A1(n232), .A2(n233), .ZN(n545) );
  BUF_X2 U416 ( .A(n21), .Z(n587) );
  INV_X1 U417 ( .A(n545), .ZN(n111) );
  OR2_X1 U418 ( .A1(n329), .A2(n258), .ZN(n490) );
  BUF_X1 U419 ( .A(n9), .Z(n588) );
  BUF_X2 U420 ( .A(n9), .Z(n557) );
  XOR2_X1 U421 ( .A(n607), .B(a[10]), .Z(n525) );
  AND2_X1 U422 ( .A1(n224), .A2(n227), .ZN(n565) );
  OR2_X2 U423 ( .A1(n224), .A2(n227), .ZN(n579) );
  XNOR2_X1 U424 ( .A(n594), .B(n420), .ZN(n403) );
  XOR2_X1 U425 ( .A(n25), .B(a[10]), .Z(n563) );
  INV_X1 U426 ( .A(n601), .ZN(n491) );
  INV_X1 U427 ( .A(n601), .ZN(n599) );
  NAND2_X1 U428 ( .A1(n429), .A2(n503), .ZN(n492) );
  NAND2_X1 U429 ( .A1(n429), .A2(n503), .ZN(n493) );
  NAND2_X1 U430 ( .A1(n429), .A2(n503), .ZN(n29) );
  XNOR2_X1 U431 ( .A(n198), .B(n494), .ZN(n196) );
  XNOR2_X1 U432 ( .A(n205), .B(n200), .ZN(n494) );
  OR2_X1 U433 ( .A1(n176), .A2(n185), .ZN(n495) );
  XNOR2_X1 U434 ( .A(n7), .B(a[4]), .ZN(n496) );
  CLKBUF_X1 U435 ( .A(n514), .Z(n497) );
  XNOR2_X1 U436 ( .A(n593), .B(n592), .ZN(n433) );
  AOI21_X1 U437 ( .B1(n579), .B2(n497), .A(n565), .ZN(n498) );
  XNOR2_X1 U438 ( .A(n88), .B(n499), .ZN(product[10]) );
  NAND2_X1 U439 ( .A1(n538), .A2(n86), .ZN(n499) );
  OAI21_X1 U440 ( .B1(n89), .B2(n91), .A(n90), .ZN(n500) );
  XNOR2_X1 U441 ( .A(n501), .B(n502), .ZN(n583) );
  XNOR2_X1 U442 ( .A(n265), .B(n144), .ZN(n501) );
  XNOR2_X1 U443 ( .A(n161), .B(n142), .ZN(n502) );
  BUF_X1 U444 ( .A(n515), .Z(n572) );
  XNOR2_X1 U445 ( .A(n602), .B(a[8]), .ZN(n503) );
  BUF_X1 U446 ( .A(n75), .Z(n504) );
  INV_X1 U447 ( .A(n597), .ZN(n505) );
  XNOR2_X1 U448 ( .A(n226), .B(n506), .ZN(n224) );
  XNOR2_X1 U449 ( .A(n229), .B(n298), .ZN(n506) );
  XNOR2_X1 U450 ( .A(n605), .B(a[8]), .ZN(n429) );
  BUF_X1 U451 ( .A(n298), .Z(n507) );
  CLKBUF_X1 U452 ( .A(n544), .Z(n534) );
  NOR2_X1 U453 ( .A1(n164), .A2(n175), .ZN(n508) );
  NOR2_X1 U454 ( .A1(n164), .A2(n175), .ZN(n75) );
  INV_X1 U455 ( .A(n528), .ZN(n509) );
  XNOR2_X1 U456 ( .A(n510), .B(n147), .ZN(n144) );
  XNOR2_X1 U457 ( .A(n301), .B(n148), .ZN(n510) );
  XNOR2_X1 U458 ( .A(n603), .B(a[6]), .ZN(n574) );
  INV_X1 U459 ( .A(n600), .ZN(n511) );
  INV_X1 U460 ( .A(n605), .ZN(n512) );
  INV_X1 U461 ( .A(n605), .ZN(n604) );
  CLKBUF_X1 U462 ( .A(n74), .Z(n513) );
  OAI21_X1 U463 ( .B1(n107), .B2(n105), .A(n106), .ZN(n514) );
  INV_X1 U464 ( .A(n595), .ZN(n515) );
  INV_X1 U465 ( .A(n595), .ZN(n594) );
  CLKBUF_X1 U466 ( .A(n515), .Z(n586) );
  OR2_X1 U467 ( .A1(n228), .A2(n231), .ZN(n516) );
  NAND2_X1 U468 ( .A1(n431), .A2(n16), .ZN(n517) );
  NAND2_X1 U469 ( .A1(n431), .A2(n16), .ZN(n518) );
  NAND2_X1 U470 ( .A1(n431), .A2(n16), .ZN(n18) );
  XNOR2_X1 U471 ( .A(n214), .B(n519), .ZN(n212) );
  XNOR2_X1 U472 ( .A(n216), .B(n219), .ZN(n519) );
  XOR2_X1 U473 ( .A(n601), .B(a[6]), .Z(n520) );
  CLKBUF_X1 U474 ( .A(n96), .Z(n521) );
  XNOR2_X1 U475 ( .A(n271), .B(n522), .ZN(n147) );
  XNOR2_X1 U476 ( .A(n289), .B(n279), .ZN(n522) );
  BUF_X2 U477 ( .A(n27), .Z(n523) );
  XNOR2_X1 U478 ( .A(n602), .B(a[8]), .ZN(n27) );
  OR2_X1 U479 ( .A1(n211), .A2(n204), .ZN(n524) );
  OR2_X2 U480 ( .A1(n525), .A2(n563), .ZN(n34) );
  INV_X1 U481 ( .A(n563), .ZN(n32) );
  CLKBUF_X1 U482 ( .A(n107), .Z(n526) );
  INV_X1 U483 ( .A(n607), .ZN(n527) );
  INV_X1 U484 ( .A(n607), .ZN(n528) );
  INV_X1 U485 ( .A(n237), .ZN(n529) );
  NAND2_X1 U486 ( .A1(n574), .A2(n520), .ZN(n530) );
  INV_X2 U487 ( .A(n249), .ZN(n531) );
  BUF_X1 U488 ( .A(n571), .Z(n532) );
  BUF_X2 U489 ( .A(n571), .Z(n533) );
  NAND2_X1 U490 ( .A1(n433), .A2(n531), .ZN(n571) );
  INV_X1 U491 ( .A(n598), .ZN(n596) );
  NAND2_X1 U492 ( .A1(n198), .A2(n205), .ZN(n535) );
  NAND2_X1 U493 ( .A1(n198), .A2(n200), .ZN(n536) );
  NAND2_X1 U494 ( .A1(n205), .A2(n200), .ZN(n537) );
  NAND3_X1 U495 ( .A1(n535), .A2(n536), .A3(n537), .ZN(n195) );
  OR2_X1 U496 ( .A1(n196), .A2(n203), .ZN(n538) );
  NOR2_X1 U497 ( .A1(n196), .A2(n203), .ZN(n85) );
  XNOR2_X1 U498 ( .A(n539), .B(n297), .ZN(n220) );
  XNOR2_X1 U499 ( .A(n255), .B(n309), .ZN(n539) );
  XNOR2_X1 U500 ( .A(n540), .B(n220), .ZN(n218) );
  XNOR2_X1 U501 ( .A(n225), .B(n222), .ZN(n540) );
  NAND2_X1 U502 ( .A1(n214), .A2(n216), .ZN(n541) );
  NAND2_X1 U503 ( .A1(n214), .A2(n219), .ZN(n542) );
  NAND2_X1 U504 ( .A1(n216), .A2(n219), .ZN(n543) );
  NAND3_X1 U505 ( .A1(n541), .A2(n542), .A3(n543), .ZN(n211) );
  NOR2_X1 U506 ( .A1(n186), .A2(n195), .ZN(n544) );
  NOR2_X1 U507 ( .A1(n186), .A2(n195), .ZN(n82) );
  NAND2_X1 U508 ( .A1(n255), .A2(n309), .ZN(n546) );
  NAND2_X1 U509 ( .A1(n255), .A2(n297), .ZN(n547) );
  NAND2_X1 U510 ( .A1(n309), .A2(n297), .ZN(n548) );
  NAND3_X1 U511 ( .A1(n546), .A2(n547), .A3(n548), .ZN(n219) );
  NAND2_X1 U512 ( .A1(n225), .A2(n222), .ZN(n549) );
  NAND2_X1 U513 ( .A1(n225), .A2(n220), .ZN(n550) );
  NAND2_X1 U514 ( .A1(n222), .A2(n220), .ZN(n551) );
  NAND3_X1 U515 ( .A1(n549), .A2(n550), .A3(n551), .ZN(n217) );
  CLKBUF_X1 U516 ( .A(n112), .Z(n552) );
  CLKBUF_X1 U517 ( .A(n115), .Z(n553) );
  NAND2_X1 U518 ( .A1(n226), .A2(n229), .ZN(n554) );
  NAND2_X1 U519 ( .A1(n226), .A2(n507), .ZN(n555) );
  NAND2_X1 U520 ( .A1(n229), .A2(n507), .ZN(n556) );
  NAND3_X1 U521 ( .A1(n554), .A2(n555), .A3(n556), .ZN(n223) );
  AND2_X1 U522 ( .A1(n569), .A2(n570), .ZN(n558) );
  AND2_X1 U523 ( .A1(n570), .A2(n569), .ZN(n559) );
  AND2_X1 U524 ( .A1(n570), .A2(n569), .ZN(n45) );
  INV_X1 U525 ( .A(n603), .ZN(n560) );
  INV_X1 U526 ( .A(n603), .ZN(n561) );
  INV_X1 U527 ( .A(n603), .ZN(n602) );
  BUF_X2 U528 ( .A(n496), .Z(n562) );
  NAND2_X1 U529 ( .A1(n224), .A2(n227), .ZN(n564) );
  CLKBUF_X1 U530 ( .A(n515), .Z(n573) );
  XNOR2_X1 U531 ( .A(n598), .B(a[2]), .ZN(n432) );
  XOR2_X1 U532 ( .A(n601), .B(a[6]), .Z(n21) );
  XNOR2_X1 U533 ( .A(n593), .B(a[2]), .ZN(n566) );
  CLKBUF_X1 U534 ( .A(n91), .Z(n567) );
  XNOR2_X1 U535 ( .A(n558), .B(n568), .ZN(product[12]) );
  AND2_X1 U536 ( .A1(n495), .A2(n79), .ZN(n568) );
  BUF_X1 U537 ( .A(n12), .Z(n584) );
  NAND2_X1 U538 ( .A1(n500), .A2(n80), .ZN(n569) );
  INV_X1 U539 ( .A(n81), .ZN(n570) );
  NAND2_X1 U540 ( .A1(n531), .A2(n433), .ZN(n6) );
  NAND2_X1 U541 ( .A1(n574), .A2(n520), .ZN(n23) );
  XNOR2_X1 U542 ( .A(n70), .B(n47), .ZN(product[14]) );
  NAND2_X1 U543 ( .A1(n575), .A2(n69), .ZN(n47) );
  INV_X1 U544 ( .A(n73), .ZN(n71) );
  AOI21_X1 U545 ( .B1(n513), .B2(n575), .A(n67), .ZN(n65) );
  INV_X1 U546 ( .A(n69), .ZN(n67) );
  NAND2_X1 U547 ( .A1(n73), .A2(n575), .ZN(n64) );
  INV_X1 U548 ( .A(n74), .ZN(n72) );
  INV_X1 U549 ( .A(n95), .ZN(n93) );
  NOR2_X1 U550 ( .A1(n82), .A2(n85), .ZN(n80) );
  OAI21_X1 U551 ( .B1(n544), .B2(n86), .A(n83), .ZN(n81) );
  NAND2_X1 U552 ( .A1(n524), .A2(n90), .ZN(n52) );
  OR2_X2 U553 ( .A1(n152), .A2(n163), .ZN(n575) );
  OAI21_X1 U554 ( .B1(n89), .B2(n91), .A(n90), .ZN(n88) );
  NAND2_X1 U555 ( .A1(n125), .A2(n76), .ZN(n48) );
  INV_X1 U556 ( .A(n504), .ZN(n125) );
  NAND2_X1 U557 ( .A1(n576), .A2(n95), .ZN(n53) );
  OAI21_X1 U558 ( .B1(n508), .B2(n79), .A(n76), .ZN(n74) );
  NOR2_X1 U559 ( .A1(n75), .A2(n78), .ZN(n73) );
  XNOR2_X1 U560 ( .A(n84), .B(n50), .ZN(product[11]) );
  NAND2_X1 U561 ( .A1(n127), .A2(n83), .ZN(n50) );
  INV_X1 U562 ( .A(n534), .ZN(n127) );
  NAND2_X1 U563 ( .A1(n152), .A2(n163), .ZN(n69) );
  OAI21_X1 U564 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  NAND2_X1 U565 ( .A1(n135), .A2(n114), .ZN(n58) );
  INV_X1 U566 ( .A(n113), .ZN(n135) );
  NAND2_X1 U567 ( .A1(n106), .A2(n516), .ZN(n56) );
  NAND2_X1 U568 ( .A1(n131), .A2(n98), .ZN(n54) );
  INV_X1 U569 ( .A(n97), .ZN(n131) );
  NOR2_X1 U570 ( .A1(n176), .A2(n185), .ZN(n78) );
  NAND2_X1 U571 ( .A1(n579), .A2(n564), .ZN(n55) );
  AOI21_X1 U572 ( .B1(n578), .B2(n112), .A(n545), .ZN(n107) );
  AOI21_X1 U573 ( .B1(n577), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U574 ( .A(n119), .ZN(n117) );
  INV_X1 U575 ( .A(n122), .ZN(n120) );
  XNOR2_X1 U576 ( .A(n57), .B(n552), .ZN(product[4]) );
  NAND2_X1 U577 ( .A1(n578), .A2(n111), .ZN(n57) );
  NAND2_X1 U578 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U579 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U580 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U581 ( .A1(n186), .A2(n195), .ZN(n83) );
  NAND2_X1 U582 ( .A1(n212), .A2(n217), .ZN(n95) );
  OR2_X1 U583 ( .A1(n212), .A2(n217), .ZN(n576) );
  XNOR2_X1 U584 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U585 ( .A1(n577), .A2(n119), .ZN(n59) );
  OR2_X1 U586 ( .A1(n328), .A2(n314), .ZN(n577) );
  NOR2_X1 U587 ( .A1(n228), .A2(n231), .ZN(n105) );
  OR2_X1 U588 ( .A1(n232), .A2(n233), .ZN(n578) );
  XNOR2_X1 U589 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U590 ( .A1(n580), .A2(n62), .ZN(n46) );
  NOR2_X1 U591 ( .A1(n218), .A2(n223), .ZN(n97) );
  NAND2_X1 U592 ( .A1(n228), .A2(n231), .ZN(n106) );
  NAND2_X1 U593 ( .A1(n218), .A2(n223), .ZN(n98) );
  INV_X1 U594 ( .A(n37), .ZN(n237) );
  INV_X1 U595 ( .A(n41), .ZN(n235) );
  OR2_X1 U596 ( .A1(n139), .A2(n151), .ZN(n580) );
  AND2_X1 U597 ( .A1(n490), .A2(n122), .ZN(product[1]) );
  XNOR2_X1 U598 ( .A(n527), .B(a[12]), .ZN(n37) );
  XNOR2_X1 U599 ( .A(n608), .B(a[14]), .ZN(n41) );
  INV_X1 U600 ( .A(n249), .ZN(n592) );
  OR2_X1 U601 ( .A1(n590), .A2(n505), .ZN(n392) );
  XNOR2_X1 U602 ( .A(n560), .B(n590), .ZN(n363) );
  XNOR2_X1 U603 ( .A(n600), .B(n590), .ZN(n376) );
  OAI22_X1 U604 ( .A1(n39), .A2(n609), .B1(n337), .B2(n529), .ZN(n252) );
  OR2_X1 U605 ( .A1(n590), .A2(n609), .ZN(n337) );
  OAI22_X1 U606 ( .A1(n42), .A2(n611), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U607 ( .A1(n590), .A2(n611), .ZN(n332) );
  XNOR2_X1 U608 ( .A(n606), .B(n590), .ZN(n343) );
  AND2_X1 U609 ( .A1(n591), .A2(n245), .ZN(n300) );
  XOR2_X1 U610 ( .A(n315), .B(n261), .Z(n150) );
  XNOR2_X1 U611 ( .A(n155), .B(n582), .ZN(n139) );
  XNOR2_X1 U612 ( .A(n153), .B(n141), .ZN(n582) );
  XNOR2_X1 U613 ( .A(n157), .B(n583), .ZN(n141) );
  XNOR2_X1 U614 ( .A(n608), .B(n590), .ZN(n336) );
  NAND2_X1 U615 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U616 ( .A(n608), .B(a[12]), .Z(n427) );
  AND2_X1 U617 ( .A1(n591), .A2(n241), .ZN(n278) );
  AND2_X1 U618 ( .A1(n591), .A2(n237), .ZN(n264) );
  OAI22_X1 U619 ( .A1(n39), .A2(n336), .B1(n529), .B2(n335), .ZN(n263) );
  AND2_X1 U620 ( .A1(n591), .A2(n563), .ZN(n270) );
  AND2_X1 U621 ( .A1(n591), .A2(n243), .ZN(n288) );
  AND2_X1 U622 ( .A1(n591), .A2(n235), .ZN(n260) );
  OAI22_X1 U623 ( .A1(n39), .A2(n335), .B1(n529), .B2(n334), .ZN(n262) );
  INV_X1 U624 ( .A(n25), .ZN(n605) );
  XNOR2_X1 U625 ( .A(n512), .B(n590), .ZN(n352) );
  NAND2_X1 U626 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U627 ( .A(n610), .B(a[14]), .Z(n426) );
  INV_X1 U628 ( .A(n13), .ZN(n601) );
  AND2_X1 U629 ( .A1(n591), .A2(n247), .ZN(n314) );
  AND2_X1 U630 ( .A1(n591), .A2(n249), .ZN(product[0]) );
  OR2_X1 U631 ( .A1(n590), .A2(n509), .ZN(n344) );
  OR2_X1 U632 ( .A1(n590), .A2(n605), .ZN(n353) );
  OR2_X1 U633 ( .A1(n590), .A2(n603), .ZN(n364) );
  OR2_X1 U634 ( .A1(n590), .A2(n511), .ZN(n377) );
  XNOR2_X1 U635 ( .A(n560), .B(b[9]), .ZN(n354) );
  OAI22_X1 U636 ( .A1(n39), .A2(n334), .B1(n529), .B2(n333), .ZN(n261) );
  XNOR2_X1 U637 ( .A(n608), .B(n422), .ZN(n333) );
  XNOR2_X1 U638 ( .A(n600), .B(b[11]), .ZN(n365) );
  XNOR2_X1 U639 ( .A(n608), .B(n424), .ZN(n335) );
  XNOR2_X1 U640 ( .A(n608), .B(n423), .ZN(n334) );
  OAI22_X1 U641 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U642 ( .A(n610), .B(n424), .ZN(n330) );
  XNOR2_X1 U643 ( .A(n610), .B(n590), .ZN(n331) );
  XNOR2_X1 U644 ( .A(n512), .B(n418), .ZN(n345) );
  XNOR2_X1 U645 ( .A(n527), .B(n420), .ZN(n338) );
  XNOR2_X1 U646 ( .A(n596), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U647 ( .A(n528), .B(n424), .ZN(n342) );
  XNOR2_X1 U648 ( .A(n604), .B(n424), .ZN(n351) );
  XNOR2_X1 U649 ( .A(n560), .B(n424), .ZN(n362) );
  XNOR2_X1 U650 ( .A(n527), .B(n422), .ZN(n340) );
  XNOR2_X1 U651 ( .A(n528), .B(n423), .ZN(n341) );
  XNOR2_X1 U652 ( .A(n606), .B(n421), .ZN(n339) );
  XNOR2_X1 U653 ( .A(n596), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U654 ( .A(n596), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U655 ( .A(n596), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U656 ( .A(n597), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U657 ( .A(n597), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U658 ( .A(n597), .B(n418), .ZN(n384) );
  XNOR2_X1 U659 ( .A(n596), .B(n419), .ZN(n385) );
  XNOR2_X1 U660 ( .A(n600), .B(n418), .ZN(n369) );
  XNOR2_X1 U661 ( .A(n600), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U662 ( .A(n600), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U663 ( .A(n600), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U664 ( .A(n512), .B(n422), .ZN(n349) );
  XNOR2_X1 U665 ( .A(n604), .B(n423), .ZN(n350) );
  XNOR2_X1 U666 ( .A(n561), .B(n422), .ZN(n360) );
  XNOR2_X1 U667 ( .A(n561), .B(n423), .ZN(n361) );
  XNOR2_X1 U668 ( .A(n594), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U669 ( .A(n515), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U670 ( .A(n594), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U671 ( .A(n515), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U672 ( .A(n560), .B(n420), .ZN(n358) );
  XNOR2_X1 U673 ( .A(n604), .B(n420), .ZN(n347) );
  XNOR2_X1 U674 ( .A(n512), .B(n421), .ZN(n348) );
  XNOR2_X1 U675 ( .A(n561), .B(n421), .ZN(n359) );
  XNOR2_X1 U676 ( .A(n561), .B(n418), .ZN(n356) );
  XNOR2_X1 U677 ( .A(n560), .B(n419), .ZN(n357) );
  XNOR2_X1 U678 ( .A(n512), .B(n419), .ZN(n346) );
  XNOR2_X1 U679 ( .A(n561), .B(b[8]), .ZN(n355) );
  XNOR2_X1 U680 ( .A(n594), .B(b[15]), .ZN(n393) );
  BUF_X1 U681 ( .A(n43), .Z(n591) );
  BUF_X2 U682 ( .A(n12), .Z(n585) );
  NAND2_X1 U683 ( .A1(n566), .A2(n432), .ZN(n12) );
  INV_X1 U684 ( .A(n7), .ZN(n598) );
  INV_X1 U685 ( .A(n595), .ZN(n593) );
  XNOR2_X1 U686 ( .A(n7), .B(a[4]), .ZN(n16) );
  OAI22_X1 U687 ( .A1(n34), .A2(n339), .B1(n338), .B2(n32), .ZN(n265) );
  OAI22_X1 U688 ( .A1(n34), .A2(n340), .B1(n339), .B2(n32), .ZN(n266) );
  OAI22_X1 U689 ( .A1(n34), .A2(n341), .B1(n340), .B2(n32), .ZN(n267) );
  OAI22_X1 U690 ( .A1(n34), .A2(n342), .B1(n341), .B2(n32), .ZN(n268) );
  OAI22_X1 U691 ( .A1(n34), .A2(n343), .B1(n342), .B2(n32), .ZN(n269) );
  OAI22_X1 U692 ( .A1(n34), .A2(n509), .B1(n344), .B2(n32), .ZN(n253) );
  XNOR2_X1 U693 ( .A(n593), .B(a[2]), .ZN(n9) );
  XNOR2_X1 U694 ( .A(n77), .B(n48), .ZN(product[13]) );
  INV_X1 U695 ( .A(n19), .ZN(n603) );
  NAND2_X1 U696 ( .A1(n204), .A2(n211), .ZN(n90) );
  NOR2_X1 U697 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U698 ( .A1(n492), .A2(n346), .B1(n345), .B2(n523), .ZN(n271) );
  OAI22_X1 U699 ( .A1(n492), .A2(n350), .B1(n349), .B2(n523), .ZN(n275) );
  OAI22_X1 U700 ( .A1(n493), .A2(n347), .B1(n346), .B2(n523), .ZN(n272) );
  OAI22_X1 U701 ( .A1(n493), .A2(n348), .B1(n347), .B2(n523), .ZN(n273) );
  OAI22_X1 U702 ( .A1(n492), .A2(n349), .B1(n348), .B2(n523), .ZN(n274) );
  OAI22_X1 U703 ( .A1(n29), .A2(n351), .B1(n350), .B2(n523), .ZN(n276) );
  OAI22_X1 U704 ( .A1(n493), .A2(n605), .B1(n353), .B2(n523), .ZN(n254) );
  INV_X1 U705 ( .A(n503), .ZN(n241) );
  OAI22_X1 U706 ( .A1(n29), .A2(n352), .B1(n351), .B2(n523), .ZN(n277) );
  OAI21_X1 U707 ( .B1(n87), .B2(n85), .A(n86), .ZN(n84) );
  INV_X1 U708 ( .A(n88), .ZN(n87) );
  INV_X1 U709 ( .A(n594), .ZN(n589) );
  OR2_X1 U710 ( .A1(n590), .A2(n589), .ZN(n409) );
  INV_X1 U711 ( .A(n1), .ZN(n595) );
  OAI22_X1 U712 ( .A1(n530), .A2(n358), .B1(n357), .B2(n587), .ZN(n282) );
  OAI22_X1 U713 ( .A1(n23), .A2(n356), .B1(n355), .B2(n587), .ZN(n280) );
  OAI22_X1 U714 ( .A1(n23), .A2(n357), .B1(n356), .B2(n587), .ZN(n281) );
  OAI22_X1 U715 ( .A1(n530), .A2(n360), .B1(n359), .B2(n587), .ZN(n284) );
  OAI22_X1 U716 ( .A1(n530), .A2(n362), .B1(n361), .B2(n587), .ZN(n286) );
  OAI22_X1 U717 ( .A1(n530), .A2(n355), .B1(n354), .B2(n587), .ZN(n279) );
  OAI22_X1 U718 ( .A1(n23), .A2(n361), .B1(n360), .B2(n587), .ZN(n285) );
  OAI22_X1 U719 ( .A1(n530), .A2(n603), .B1(n364), .B2(n587), .ZN(n255) );
  OAI22_X1 U720 ( .A1(n23), .A2(n359), .B1(n358), .B2(n587), .ZN(n283) );
  XNOR2_X1 U721 ( .A(n491), .B(n424), .ZN(n375) );
  OAI22_X1 U722 ( .A1(n23), .A2(n363), .B1(n362), .B2(n587), .ZN(n287) );
  XNOR2_X1 U723 ( .A(n599), .B(n419), .ZN(n370) );
  XNOR2_X1 U724 ( .A(n599), .B(n420), .ZN(n371) );
  XNOR2_X1 U725 ( .A(n491), .B(n421), .ZN(n372) );
  XNOR2_X1 U726 ( .A(n491), .B(n423), .ZN(n374) );
  INV_X1 U727 ( .A(n587), .ZN(n243) );
  XNOR2_X1 U728 ( .A(n491), .B(n422), .ZN(n373) );
  XOR2_X1 U729 ( .A(n599), .B(a[4]), .Z(n431) );
  XNOR2_X1 U730 ( .A(n515), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U731 ( .A(n572), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U732 ( .A(n573), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U733 ( .A(n586), .B(n418), .ZN(n401) );
  XNOR2_X1 U734 ( .A(n573), .B(n423), .ZN(n406) );
  XNOR2_X1 U735 ( .A(n594), .B(n421), .ZN(n404) );
  XNOR2_X1 U736 ( .A(n586), .B(n422), .ZN(n405) );
  XNOR2_X1 U737 ( .A(n594), .B(n590), .ZN(n408) );
  XNOR2_X1 U738 ( .A(n572), .B(n419), .ZN(n402) );
  XNOR2_X1 U739 ( .A(n572), .B(n424), .ZN(n407) );
  OAI21_X1 U740 ( .B1(n99), .B2(n97), .A(n98), .ZN(n96) );
  XNOR2_X1 U741 ( .A(n497), .B(n55), .ZN(product[6]) );
  AOI21_X1 U742 ( .B1(n514), .B2(n579), .A(n565), .ZN(n99) );
  NAND2_X1 U743 ( .A1(n139), .A2(n151), .ZN(n62) );
  OAI22_X1 U744 ( .A1(n517), .A2(n370), .B1(n369), .B2(n562), .ZN(n293) );
  OAI22_X1 U745 ( .A1(n518), .A2(n367), .B1(n366), .B2(n562), .ZN(n290) );
  OAI22_X1 U746 ( .A1(n517), .A2(n375), .B1(n374), .B2(n562), .ZN(n298) );
  OAI22_X1 U747 ( .A1(n18), .A2(n368), .B1(n367), .B2(n562), .ZN(n291) );
  OAI22_X1 U748 ( .A1(n517), .A2(n373), .B1(n372), .B2(n562), .ZN(n296) );
  OAI22_X1 U749 ( .A1(n18), .A2(n369), .B1(n368), .B2(n562), .ZN(n292) );
  OAI22_X1 U750 ( .A1(n518), .A2(n372), .B1(n371), .B2(n562), .ZN(n295) );
  OAI22_X1 U751 ( .A1(n518), .A2(n371), .B1(n370), .B2(n562), .ZN(n294) );
  OAI22_X1 U752 ( .A1(n517), .A2(n374), .B1(n373), .B2(n562), .ZN(n297) );
  OAI22_X1 U753 ( .A1(n517), .A2(n376), .B1(n375), .B2(n562), .ZN(n299) );
  OAI22_X1 U754 ( .A1(n517), .A2(n511), .B1(n377), .B2(n562), .ZN(n256) );
  OAI22_X1 U755 ( .A1(n518), .A2(n366), .B1(n365), .B2(n562), .ZN(n289) );
  XNOR2_X1 U756 ( .A(n596), .B(n420), .ZN(n386) );
  XNOR2_X1 U757 ( .A(n597), .B(n590), .ZN(n391) );
  INV_X1 U758 ( .A(n16), .ZN(n245) );
  XNOR2_X1 U759 ( .A(n597), .B(n422), .ZN(n388) );
  XNOR2_X1 U760 ( .A(n597), .B(n421), .ZN(n387) );
  XNOR2_X1 U761 ( .A(n597), .B(n424), .ZN(n390) );
  XNOR2_X1 U762 ( .A(n596), .B(n423), .ZN(n389) );
  XOR2_X1 U763 ( .A(n56), .B(n526), .Z(product[5]) );
  NAND2_X1 U764 ( .A1(n328), .A2(n314), .ZN(n119) );
  NOR2_X1 U765 ( .A1(n234), .A2(n257), .ZN(n113) );
  OAI21_X1 U766 ( .B1(n64), .B2(n559), .A(n65), .ZN(n63) );
  OAI21_X1 U767 ( .B1(n559), .B2(n71), .A(n72), .ZN(n70) );
  OAI21_X1 U768 ( .B1(n45), .B2(n78), .A(n79), .ZN(n77) );
  XOR2_X1 U769 ( .A(n567), .B(n52), .Z(product[9]) );
  XNOR2_X1 U770 ( .A(n521), .B(n53), .ZN(product[8]) );
  AOI21_X1 U771 ( .B1(n96), .B2(n576), .A(n93), .ZN(n91) );
  XOR2_X1 U772 ( .A(n58), .B(n553), .Z(product[3]) );
  OAI22_X1 U773 ( .A1(n533), .A2(n395), .B1(n394), .B2(n531), .ZN(n316) );
  OAI22_X1 U774 ( .A1(n532), .A2(n394), .B1(n393), .B2(n531), .ZN(n315) );
  OAI22_X1 U775 ( .A1(n532), .A2(n396), .B1(n395), .B2(n531), .ZN(n317) );
  OAI22_X1 U776 ( .A1(n532), .A2(n397), .B1(n396), .B2(n531), .ZN(n318) );
  OAI22_X1 U777 ( .A1(n533), .A2(n398), .B1(n397), .B2(n531), .ZN(n319) );
  OAI22_X1 U778 ( .A1(n533), .A2(n400), .B1(n399), .B2(n531), .ZN(n321) );
  OAI22_X1 U779 ( .A1(n6), .A2(n399), .B1(n398), .B2(n531), .ZN(n320) );
  OAI22_X1 U780 ( .A1(n533), .A2(n401), .B1(n400), .B2(n531), .ZN(n322) );
  OAI22_X1 U781 ( .A1(n532), .A2(n402), .B1(n401), .B2(n531), .ZN(n323) );
  NAND2_X1 U782 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI22_X1 U783 ( .A1(n6), .A2(n404), .B1(n403), .B2(n531), .ZN(n325) );
  OAI22_X1 U784 ( .A1(n6), .A2(n403), .B1(n402), .B2(n531), .ZN(n324) );
  OAI22_X1 U785 ( .A1(n533), .A2(n406), .B1(n405), .B2(n531), .ZN(n327) );
  OAI22_X1 U786 ( .A1(n6), .A2(n405), .B1(n404), .B2(n531), .ZN(n326) );
  OAI22_X1 U787 ( .A1(n532), .A2(n407), .B1(n406), .B2(n531), .ZN(n328) );
  OAI22_X1 U788 ( .A1(n532), .A2(n408), .B1(n407), .B2(n531), .ZN(n329) );
  OAI22_X1 U789 ( .A1(n532), .A2(n589), .B1(n409), .B2(n531), .ZN(n258) );
  XOR2_X1 U790 ( .A(n498), .B(n54), .Z(product[7]) );
  OAI22_X1 U791 ( .A1(n585), .A2(n379), .B1(n378), .B2(n588), .ZN(n301) );
  OAI22_X1 U792 ( .A1(n585), .A2(n380), .B1(n379), .B2(n557), .ZN(n302) );
  OAI22_X1 U793 ( .A1(n585), .A2(n385), .B1(n384), .B2(n557), .ZN(n307) );
  OAI22_X1 U794 ( .A1(n585), .A2(n382), .B1(n381), .B2(n557), .ZN(n304) );
  OAI22_X1 U795 ( .A1(n585), .A2(n381), .B1(n380), .B2(n557), .ZN(n303) );
  NAND2_X1 U796 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U797 ( .A1(n584), .A2(n383), .B1(n382), .B2(n557), .ZN(n305) );
  OAI22_X1 U798 ( .A1(n585), .A2(n384), .B1(n383), .B2(n588), .ZN(n306) );
  OAI22_X1 U799 ( .A1(n585), .A2(n386), .B1(n385), .B2(n557), .ZN(n308) );
  OAI22_X1 U800 ( .A1(n585), .A2(n387), .B1(n386), .B2(n557), .ZN(n309) );
  OAI22_X1 U801 ( .A1(n585), .A2(n505), .B1(n392), .B2(n557), .ZN(n257) );
  OAI22_X1 U802 ( .A1(n584), .A2(n389), .B1(n388), .B2(n588), .ZN(n311) );
  OAI22_X1 U803 ( .A1(n585), .A2(n388), .B1(n387), .B2(n557), .ZN(n310) );
  OAI22_X1 U804 ( .A1(n584), .A2(n390), .B1(n389), .B2(n588), .ZN(n312) );
  INV_X1 U805 ( .A(n557), .ZN(n247) );
  OAI22_X1 U806 ( .A1(n585), .A2(n391), .B1(n390), .B2(n557), .ZN(n313) );
  BUF_X4 U807 ( .A(n43), .Z(n590) );
  INV_X1 U808 ( .A(n601), .ZN(n600) );
  INV_X1 U809 ( .A(n607), .ZN(n606) );
  INV_X1 U810 ( .A(n31), .ZN(n607) );
  INV_X1 U811 ( .A(n609), .ZN(n608) );
  INV_X1 U812 ( .A(n36), .ZN(n609) );
  INV_X1 U813 ( .A(n611), .ZN(n610) );
  INV_X1 U814 ( .A(n40), .ZN(n611) );
  XOR2_X1 U815 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U816 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_5_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n5, n8, n9, n10, n11, n12, n13, n14, n15, n16, n19, n20,
         n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n44, n45, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n65, n67, n68, n69, n70, n71, n73,
         n75, n76, n77, n78, n79, n81, n83, n84, n86, n90, n91, n94, n95, n96,
         n98, n100, n157, n158, n159, n160, n161, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  AOI21_X1 U122 ( .B1(n52), .B2(n60), .A(n53), .ZN(n157) );
  INV_X1 U123 ( .A(n91), .ZN(n158) );
  XNOR2_X1 U124 ( .A(n37), .B(n159), .ZN(SUM[11]) );
  AND2_X1 U125 ( .A1(n91), .A2(n36), .ZN(n159) );
  OR2_X1 U126 ( .A1(n25), .A2(n28), .ZN(n160) );
  OR2_X1 U127 ( .A1(A[15]), .A2(B[15]), .ZN(n161) );
  AND2_X1 U128 ( .A1(n174), .A2(n86), .ZN(SUM[0]) );
  NOR2_X2 U129 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  AOI21_X1 U130 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  XNOR2_X1 U131 ( .A(n45), .B(n163), .ZN(SUM[10]) );
  AND2_X1 U132 ( .A1(n165), .A2(n44), .ZN(n163) );
  AOI21_X1 U133 ( .B1(n179), .B2(n68), .A(n65), .ZN(n164) );
  OR2_X1 U134 ( .A1(A[10]), .A2(B[10]), .ZN(n165) );
  OR2_X1 U135 ( .A1(A[10]), .A2(B[10]), .ZN(n178) );
  XNOR2_X1 U136 ( .A(n166), .B(n1), .ZN(SUM[13]) );
  AND2_X1 U137 ( .A1(n171), .A2(n29), .ZN(n166) );
  AND2_X1 U138 ( .A1(A[9]), .A2(B[9]), .ZN(n167) );
  INV_X1 U139 ( .A(n169), .ZN(n44) );
  BUF_X1 U140 ( .A(n33), .Z(n168) );
  AND2_X1 U141 ( .A1(A[10]), .A2(B[10]), .ZN(n169) );
  NOR2_X1 U142 ( .A1(A[14]), .A2(B[14]), .ZN(n170) );
  OR2_X1 U143 ( .A1(A[13]), .A2(B[13]), .ZN(n171) );
  NOR2_X1 U144 ( .A1(A[12]), .A2(B[12]), .ZN(n172) );
  AOI21_X1 U145 ( .B1(n38), .B2(n30), .A(n31), .ZN(n173) );
  OR2_X1 U146 ( .A1(A[0]), .A2(B[0]), .ZN(n174) );
  INV_X1 U147 ( .A(n60), .ZN(n59) );
  INV_X1 U148 ( .A(n157), .ZN(n50) );
  OAI21_X1 U149 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  AOI21_X1 U150 ( .B1(n38), .B2(n30), .A(n31), .ZN(n1) );
  AOI21_X1 U151 ( .B1(n179), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U152 ( .A(n67), .ZN(n65) );
  AOI21_X1 U153 ( .B1(n177), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U154 ( .A(n83), .ZN(n81) );
  OAI21_X1 U155 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  INV_X1 U156 ( .A(n24), .ZN(n22) );
  OAI21_X1 U157 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  AOI21_X1 U158 ( .B1(n50), .B2(n175), .A(n167), .ZN(n45) );
  INV_X1 U159 ( .A(n86), .ZN(n84) );
  OAI21_X1 U160 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  AOI21_X1 U161 ( .B1(n176), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U162 ( .A(n75), .ZN(n73) );
  NAND2_X1 U163 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U164 ( .A(n69), .ZN(n98) );
  NAND2_X1 U165 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U166 ( .A(n61), .ZN(n96) );
  INV_X1 U167 ( .A(n172), .ZN(n90) );
  NAND2_X1 U168 ( .A1(n175), .A2(n49), .ZN(n8) );
  NAND2_X1 U169 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U170 ( .A(n57), .ZN(n95) );
  NAND2_X1 U171 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U172 ( .A(n77), .ZN(n100) );
  NAND2_X1 U173 ( .A1(n94), .A2(n55), .ZN(n9) );
  INV_X1 U174 ( .A(n54), .ZN(n94) );
  NAND2_X1 U175 ( .A1(n179), .A2(n67), .ZN(n12) );
  NAND2_X1 U176 ( .A1(n176), .A2(n75), .ZN(n14) );
  NAND2_X1 U177 ( .A1(n177), .A2(n83), .ZN(n16) );
  XOR2_X1 U178 ( .A(n13), .B(n71), .Z(SUM[4]) );
  XOR2_X1 U179 ( .A(n15), .B(n79), .Z(SUM[2]) );
  NAND2_X1 U180 ( .A1(n90), .A2(n168), .ZN(n5) );
  NOR2_X1 U181 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  NOR2_X1 U182 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  NOR2_X1 U183 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  OR2_X1 U184 ( .A1(A[9]), .A2(B[9]), .ZN(n175) );
  NOR2_X1 U185 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NOR2_X1 U186 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NAND2_X1 U187 ( .A1(n180), .A2(n26), .ZN(n3) );
  OR2_X1 U188 ( .A1(A[3]), .A2(B[3]), .ZN(n176) );
  OR2_X1 U189 ( .A1(A[1]), .A2(B[1]), .ZN(n177) );
  NOR2_X1 U190 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NOR2_X1 U191 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  NAND2_X1 U192 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  XNOR2_X1 U193 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XNOR2_X1 U194 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XNOR2_X1 U195 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  XNOR2_X1 U196 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NAND2_X1 U197 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  OR2_X1 U198 ( .A1(A[5]), .A2(B[5]), .ZN(n179) );
  NAND2_X1 U199 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U200 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  NAND2_X1 U201 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NAND2_X1 U202 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U203 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U204 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U205 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  NAND2_X1 U206 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  XOR2_X1 U207 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XNOR2_X1 U208 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  NAND2_X1 U209 ( .A1(n161), .A2(n19), .ZN(n2) );
  XOR2_X1 U210 ( .A(n11), .B(n164), .Z(SUM[6]) );
  NOR2_X1 U211 ( .A1(n54), .A2(n57), .ZN(n52) );
  OAI21_X1 U212 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  OR2_X1 U213 ( .A1(A[14]), .A2(B[14]), .ZN(n180) );
  NAND2_X1 U214 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  NAND2_X1 U215 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  AOI21_X1 U216 ( .B1(n178), .B2(n167), .A(n169), .ZN(n40) );
  NAND2_X1 U217 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  INV_X1 U218 ( .A(n38), .ZN(n37) );
  OAI21_X1 U219 ( .B1(n170), .B2(n29), .A(n26), .ZN(n24) );
  NOR2_X1 U220 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  OAI21_X1 U221 ( .B1(n36), .B2(n32), .A(n33), .ZN(n31) );
  NAND2_X1 U222 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  INV_X1 U223 ( .A(n35), .ZN(n91) );
  OAI21_X1 U224 ( .B1(n37), .B2(n158), .A(n36), .ZN(n34) );
  NOR2_X1 U225 ( .A1(n172), .A2(n35), .ZN(n30) );
  NAND2_X1 U226 ( .A1(A[15]), .A2(B[15]), .ZN(n19) );
  OAI21_X1 U227 ( .B1(n39), .B2(n51), .A(n40), .ZN(n38) );
  NAND2_X1 U228 ( .A1(n165), .A2(n175), .ZN(n39) );
  XNOR2_X1 U229 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  XNOR2_X1 U230 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  XNOR2_X1 U231 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  OAI21_X1 U232 ( .B1(n173), .B2(n28), .A(n29), .ZN(n27) );
  OAI21_X1 U233 ( .B1(n173), .B2(n160), .A(n22), .ZN(n20) );
endmodule


module datapath_M16_N8_T16_P16_5 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n18), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n226), .CK(clk), .Q(n22) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n227), .CK(clk), .Q(n23) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n228), .CK(clk), .Q(n24) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n229), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n230), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n231), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n232), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n233), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n234), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n235), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n236), .CK(clk), .Q(n34) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n237), .CK(clk), .Q(n35) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n238), .CK(clk), .Q(n36) );
  DFF_X1 \f_reg[0]  ( .D(n114), .CK(clk), .Q(n62), .QN(n215) );
  DFF_X1 \f_reg[1]  ( .D(n113), .CK(clk), .Q(n60), .QN(n216) );
  DFF_X1 \f_reg[2]  ( .D(n112), .CK(clk), .Q(n58), .QN(n217) );
  DFF_X1 \data_out_reg[15]  ( .D(n167), .CK(clk), .Q(data_out[15]), .QN(n198)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n168), .CK(clk), .Q(data_out[14]), .QN(n197)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n169), .CK(clk), .Q(data_out[13]), .QN(n196)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n170), .CK(clk), .Q(data_out[12]), .QN(n195)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n171), .CK(clk), .Q(data_out[11]), .QN(n194)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n172), .CK(clk), .Q(data_out[10]), .QN(n193)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n173), .CK(clk), .Q(data_out[9]), .QN(n192) );
  DFF_X1 \data_out_reg[8]  ( .D(n174), .CK(clk), .Q(data_out[8]), .QN(n191) );
  DFF_X1 \data_out_reg[7]  ( .D(n175), .CK(clk), .Q(data_out[7]), .QN(n190) );
  DFF_X1 \data_out_reg[6]  ( .D(n176), .CK(clk), .Q(data_out[6]), .QN(n189) );
  DFF_X1 \data_out_reg[5]  ( .D(n177), .CK(clk), .Q(data_out[5]), .QN(n188) );
  DFF_X1 \data_out_reg[4]  ( .D(n178), .CK(clk), .Q(data_out[4]), .QN(n187) );
  DFF_X1 \data_out_reg[3]  ( .D(n179), .CK(clk), .Q(data_out[3]), .QN(n186) );
  DFF_X1 \data_out_reg[2]  ( .D(n180), .CK(clk), .Q(data_out[2]), .QN(n185) );
  DFF_X1 \data_out_reg[1]  ( .D(n181), .CK(clk), .Q(data_out[1]), .QN(n184) );
  DFF_X1 \data_out_reg[0]  ( .D(n182), .CK(clk), .Q(data_out[0]), .QN(n183) );
  datapath_M16_N8_T16_P16_5_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_5_DW01_add_2 add_262 ( .A({n205, n204, n203, n202, 
        n201, n200, n214, n213, n212, n211, n210, n209, n208, n207, n206, n199}), .B({f[15], n44, n45, n47, n48, n50, f[9:3], n58, n60, n62}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X2 delay_reg ( .D(n166), .CK(clk), .Q(n4), .QN(n242) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n241), .CK(clk), .Q(n40) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n239), .CK(clk), .Q(n37) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n240), .CK(clk), .Q(n38) );
  DFF_X1 \f_reg[3]  ( .D(n111), .CK(clk), .Q(f[3]), .QN(n66) );
  DFF_X1 \f_reg[4]  ( .D(n102), .CK(clk), .Q(f[4]), .QN(n67) );
  DFF_X1 \f_reg[5]  ( .D(n85), .CK(clk), .Q(f[5]), .QN(n68) );
  DFF_X1 \f_reg[6]  ( .D(n83), .CK(clk), .Q(f[6]), .QN(n69) );
  DFF_X1 \f_reg[7]  ( .D(n82), .CK(clk), .Q(f[7]), .QN(n218) );
  DFF_X1 \f_reg[8]  ( .D(n81), .CK(clk), .Q(f[8]), .QN(n219) );
  DFF_X1 \f_reg[9]  ( .D(n80), .CK(clk), .Q(f[9]), .QN(n220) );
  DFF_X1 \f_reg[10]  ( .D(n79), .CK(clk), .Q(n50), .QN(n221) );
  DFF_X1 \f_reg[11]  ( .D(n78), .CK(clk), .Q(n48), .QN(n222) );
  DFF_X1 \f_reg[15]  ( .D(n2), .CK(clk), .Q(f[15]), .QN(n74) );
  DFF_X1 \f_reg[13]  ( .D(n77), .CK(clk), .Q(n45), .QN(n224) );
  DFF_X1 \f_reg[14]  ( .D(n5), .CK(clk), .Q(n44), .QN(n225) );
  DFF_X1 \f_reg[12]  ( .D(n1), .CK(clk), .Q(n47), .QN(n223) );
  MUX2_X2 U3 ( .A(n29), .B(N37), .S(n242), .Z(n213) );
  AND2_X1 U4 ( .A1(n43), .A2(n19), .ZN(n16) );
  NAND2_X1 U5 ( .A1(n64), .A2(f[15]), .ZN(n12) );
  NAND3_X1 U6 ( .A1(n8), .A2(n7), .A3(n9), .ZN(n1) );
  NAND3_X1 U8 ( .A1(n11), .A2(n10), .A3(n12), .ZN(n2) );
  MUX2_X2 U9 ( .A(N39), .B(n27), .S(n4), .Z(n200) );
  NAND3_X1 U10 ( .A1(n14), .A2(n13), .A3(n15), .ZN(n5) );
  CLKBUF_X1 U11 ( .A(N43), .Z(n6) );
  MUX2_X2 U12 ( .A(n24), .B(N42), .S(n242), .Z(n203) );
  NAND2_X1 U13 ( .A1(data_out_b[12]), .A2(n18), .ZN(n7) );
  NAND2_X1 U14 ( .A1(adder[12]), .A2(n16), .ZN(n8) );
  NAND2_X1 U15 ( .A1(n64), .A2(n47), .ZN(n9) );
  MUX2_X2 U16 ( .A(n25), .B(N41), .S(n242), .Z(n202) );
  NAND2_X1 U17 ( .A1(data_out_b[15]), .A2(n18), .ZN(n10) );
  NAND2_X1 U18 ( .A1(adder[15]), .A2(n16), .ZN(n11) );
  NAND2_X1 U19 ( .A1(data_out_b[14]), .A2(n18), .ZN(n13) );
  NAND2_X1 U20 ( .A1(adder[14]), .A2(n16), .ZN(n14) );
  NAND2_X1 U21 ( .A1(n64), .A2(n44), .ZN(n15) );
  INV_X1 U22 ( .A(n19), .ZN(n18) );
  NAND2_X1 U23 ( .A1(n166), .A2(n17), .ZN(n244) );
  INV_X1 U24 ( .A(n43), .ZN(n64) );
  INV_X1 U25 ( .A(clear_acc), .ZN(n19) );
  OAI22_X1 U26 ( .A1(n186), .A2(n244), .B1(n66), .B2(n243), .ZN(n179) );
  OAI22_X1 U27 ( .A1(n187), .A2(n244), .B1(n67), .B2(n243), .ZN(n178) );
  OAI22_X1 U28 ( .A1(n188), .A2(n244), .B1(n68), .B2(n243), .ZN(n177) );
  OAI22_X1 U29 ( .A1(n189), .A2(n244), .B1(n69), .B2(n243), .ZN(n176) );
  OAI22_X1 U30 ( .A1(n190), .A2(n244), .B1(n218), .B2(n243), .ZN(n175) );
  OAI22_X1 U31 ( .A1(n191), .A2(n244), .B1(n219), .B2(n243), .ZN(n174) );
  OAI22_X1 U32 ( .A1(n192), .A2(n244), .B1(n220), .B2(n243), .ZN(n173) );
  INV_X1 U33 ( .A(n21), .ZN(n39) );
  MUX2_X2 U34 ( .A(n23), .B(N43), .S(n242), .Z(n204) );
  INV_X1 U35 ( .A(wr_en_y), .ZN(n17) );
  INV_X1 U36 ( .A(m_ready), .ZN(n20) );
  NAND2_X1 U37 ( .A1(m_valid), .A2(n20), .ZN(n41) );
  OAI21_X1 U38 ( .B1(sel[4]), .B2(n76), .A(n41), .ZN(n166) );
  NAND2_X1 U39 ( .A1(clear_acc_delay), .A2(n242), .ZN(n21) );
  MUX2_X1 U40 ( .A(n22), .B(N44), .S(n39), .Z(n226) );
  MUX2_X1 U41 ( .A(n22), .B(N44), .S(n242), .Z(n205) );
  MUX2_X1 U42 ( .A(n23), .B(n6), .S(n39), .Z(n227) );
  MUX2_X1 U43 ( .A(n24), .B(N42), .S(n39), .Z(n228) );
  MUX2_X1 U44 ( .A(n25), .B(N41), .S(n39), .Z(n229) );
  MUX2_X1 U45 ( .A(n26), .B(N40), .S(n39), .Z(n230) );
  MUX2_X1 U46 ( .A(n26), .B(N40), .S(n242), .Z(n201) );
  MUX2_X1 U47 ( .A(n27), .B(N39), .S(n39), .Z(n231) );
  MUX2_X1 U48 ( .A(n28), .B(N38), .S(n39), .Z(n232) );
  MUX2_X1 U49 ( .A(n28), .B(N38), .S(n242), .Z(n214) );
  MUX2_X1 U50 ( .A(n29), .B(N37), .S(n39), .Z(n233) );
  MUX2_X1 U51 ( .A(n32), .B(N36), .S(n39), .Z(n234) );
  MUX2_X1 U52 ( .A(n32), .B(N36), .S(n242), .Z(n212) );
  MUX2_X1 U53 ( .A(n33), .B(N35), .S(n39), .Z(n235) );
  MUX2_X1 U54 ( .A(n33), .B(N35), .S(n242), .Z(n211) );
  MUX2_X1 U55 ( .A(n34), .B(N34), .S(n39), .Z(n236) );
  MUX2_X1 U56 ( .A(n34), .B(N34), .S(n242), .Z(n210) );
  MUX2_X1 U57 ( .A(n35), .B(N33), .S(n39), .Z(n237) );
  MUX2_X1 U58 ( .A(n35), .B(N33), .S(n242), .Z(n209) );
  MUX2_X1 U59 ( .A(n36), .B(N32), .S(n39), .Z(n238) );
  MUX2_X1 U60 ( .A(n36), .B(N32), .S(n242), .Z(n208) );
  MUX2_X1 U61 ( .A(n37), .B(N31), .S(n39), .Z(n239) );
  MUX2_X1 U62 ( .A(n37), .B(N31), .S(n242), .Z(n207) );
  MUX2_X1 U63 ( .A(n38), .B(N30), .S(n39), .Z(n240) );
  MUX2_X1 U64 ( .A(n38), .B(N30), .S(n242), .Z(n206) );
  MUX2_X1 U65 ( .A(n40), .B(N29), .S(n39), .Z(n241) );
  MUX2_X1 U66 ( .A(n40), .B(N29), .S(n242), .Z(n199) );
  INV_X1 U67 ( .A(n41), .ZN(n42) );
  OAI21_X1 U68 ( .B1(n42), .B2(n4), .A(n19), .ZN(n43) );
  AOI222_X1 U69 ( .A1(data_out_b[13]), .A2(n18), .B1(adder[13]), .B2(n16), 
        .C1(n64), .C2(n45), .ZN(n46) );
  INV_X1 U70 ( .A(n46), .ZN(n77) );
  AOI222_X1 U71 ( .A1(data_out_b[11]), .A2(n18), .B1(adder[11]), .B2(n16), 
        .C1(n64), .C2(n48), .ZN(n49) );
  INV_X1 U72 ( .A(n49), .ZN(n78) );
  AOI222_X1 U73 ( .A1(data_out_b[10]), .A2(n18), .B1(adder[10]), .B2(n16), 
        .C1(n64), .C2(n50), .ZN(n51) );
  INV_X1 U74 ( .A(n51), .ZN(n79) );
  AOI222_X1 U75 ( .A1(data_out_b[8]), .A2(n18), .B1(adder[8]), .B2(n16), .C1(
        n64), .C2(f[8]), .ZN(n52) );
  INV_X1 U76 ( .A(n52), .ZN(n81) );
  AOI222_X1 U77 ( .A1(data_out_b[7]), .A2(n18), .B1(adder[7]), .B2(n16), .C1(
        n64), .C2(f[7]), .ZN(n53) );
  INV_X1 U78 ( .A(n53), .ZN(n82) );
  AOI222_X1 U79 ( .A1(data_out_b[6]), .A2(n18), .B1(adder[6]), .B2(n16), .C1(
        n64), .C2(f[6]), .ZN(n54) );
  INV_X1 U80 ( .A(n54), .ZN(n83) );
  AOI222_X1 U81 ( .A1(data_out_b[5]), .A2(n18), .B1(adder[5]), .B2(n16), .C1(
        n64), .C2(f[5]), .ZN(n55) );
  INV_X1 U82 ( .A(n55), .ZN(n85) );
  AOI222_X1 U83 ( .A1(data_out_b[4]), .A2(n18), .B1(adder[4]), .B2(n16), .C1(
        n64), .C2(f[4]), .ZN(n56) );
  INV_X1 U84 ( .A(n56), .ZN(n102) );
  AOI222_X1 U85 ( .A1(data_out_b[3]), .A2(n18), .B1(adder[3]), .B2(n16), .C1(
        n64), .C2(f[3]), .ZN(n57) );
  INV_X1 U86 ( .A(n57), .ZN(n111) );
  AOI222_X1 U87 ( .A1(data_out_b[2]), .A2(n18), .B1(adder[2]), .B2(n16), .C1(
        n64), .C2(n58), .ZN(n59) );
  INV_X1 U88 ( .A(n59), .ZN(n112) );
  AOI222_X1 U89 ( .A1(data_out_b[1]), .A2(n18), .B1(adder[1]), .B2(n16), .C1(
        n64), .C2(n60), .ZN(n61) );
  INV_X1 U90 ( .A(n61), .ZN(n113) );
  AOI222_X1 U91 ( .A1(data_out_b[0]), .A2(n18), .B1(adder[0]), .B2(n16), .C1(
        n64), .C2(n62), .ZN(n63) );
  INV_X1 U92 ( .A(n63), .ZN(n114) );
  AOI222_X1 U93 ( .A1(data_out_b[9]), .A2(n18), .B1(adder[9]), .B2(n16), .C1(
        n64), .C2(f[9]), .ZN(n65) );
  INV_X1 U94 ( .A(n65), .ZN(n80) );
  NOR4_X1 U95 ( .A1(n48), .A2(n47), .A3(n45), .A4(n44), .ZN(n73) );
  NOR4_X1 U96 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n50), .ZN(n72) );
  NAND4_X1 U97 ( .A1(n69), .A2(n68), .A3(n67), .A4(n66), .ZN(n70) );
  NOR4_X1 U98 ( .A1(n70), .A2(n62), .A3(n60), .A4(n58), .ZN(n71) );
  NAND3_X1 U99 ( .A1(n73), .A2(n72), .A3(n71), .ZN(n75) );
  NAND3_X1 U100 ( .A1(wr_en_y), .A2(n75), .A3(n74), .ZN(n243) );
  OAI22_X1 U101 ( .A1(n183), .A2(n244), .B1(n215), .B2(n243), .ZN(n182) );
  OAI22_X1 U102 ( .A1(n184), .A2(n244), .B1(n216), .B2(n243), .ZN(n181) );
  OAI22_X1 U103 ( .A1(n185), .A2(n244), .B1(n217), .B2(n243), .ZN(n180) );
  OAI22_X1 U104 ( .A1(n193), .A2(n244), .B1(n221), .B2(n243), .ZN(n172) );
  OAI22_X1 U105 ( .A1(n194), .A2(n244), .B1(n222), .B2(n243), .ZN(n171) );
  OAI22_X1 U106 ( .A1(n195), .A2(n244), .B1(n223), .B2(n243), .ZN(n170) );
  OAI22_X1 U107 ( .A1(n196), .A2(n244), .B1(n224), .B2(n243), .ZN(n169) );
  OAI22_X1 U108 ( .A1(n197), .A2(n244), .B1(n225), .B2(n243), .ZN(n168) );
  OAI22_X1 U109 ( .A1(n198), .A2(n244), .B1(n74), .B2(n243), .ZN(n167) );
  AND4_X1 U110 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n76)
         );
endmodule


module datapath_M16_N8_T16_P16_4_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n27, n29, n31,
         n32, n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50,
         n52, n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67, n69,
         n70, n71, n72, n73, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n93, n95, n96, n97, n98, n99, n101,
         n103, n104, n105, n106, n107, n109, n111, n112, n113, n114, n115,
         n117, n119, n120, n122, n125, n127, n135, n139, n141, n142, n143,
         n144, n145, n146, n147, n148, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n237, n241, n243, n245, n247, n249, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n418, n419, n420, n421, n422, n423, n424, n426,
         n427, n429, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
         n587, n588, n589, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U148 ( .A(n265), .B(n144), .Z(n145) );
  XOR2_X1 U150 ( .A(n271), .B(n146), .Z(n147) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n292), .CI(n274), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n283), .B(n305), .CI(n253), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n319), .B(n269), .CO(n193), .S(n194) );
  FA_X1 U177 ( .A(n205), .B(n200), .CI(n198), .CO(n195), .S(n196) );
  FA_X1 U178 ( .A(n207), .B(n209), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n276), .B(n294), .CI(n284), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n306), .B(n270), .CI(n320), .CO(n201), .S(n202) );
  FA_X1 U182 ( .A(n210), .B(n307), .CI(n215), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n254), .B(n285), .CI(n295), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n255), .B(n309), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n287), .B(n323), .CO(n221), .S(n222) );
  FA_X1 U192 ( .A(n324), .B(n288), .CI(n310), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n311), .B(n325), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n312), .B(n326), .CI(n300), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  INV_X1 U414 ( .A(n7), .ZN(n490) );
  CLKBUF_X1 U415 ( .A(n101), .Z(n491) );
  CLKBUF_X1 U416 ( .A(n98), .Z(n492) );
  NAND2_X1 U417 ( .A1(n580), .A2(n548), .ZN(n493) );
  NAND2_X1 U418 ( .A1(n580), .A2(n548), .ZN(n546) );
  XOR2_X1 U419 ( .A(n182), .B(n184), .Z(n494) );
  XOR2_X1 U420 ( .A(n494), .B(n189), .Z(n178) );
  XOR2_X1 U421 ( .A(n180), .B(n187), .Z(n495) );
  XOR2_X1 U422 ( .A(n495), .B(n178), .Z(n176) );
  NAND2_X1 U423 ( .A1(n182), .A2(n184), .ZN(n496) );
  NAND2_X1 U424 ( .A1(n182), .A2(n189), .ZN(n497) );
  NAND2_X1 U425 ( .A1(n184), .A2(n189), .ZN(n498) );
  NAND3_X1 U426 ( .A1(n496), .A2(n497), .A3(n498), .ZN(n177) );
  NAND2_X1 U427 ( .A1(n180), .A2(n187), .ZN(n499) );
  NAND2_X1 U428 ( .A1(n180), .A2(n178), .ZN(n500) );
  NAND2_X1 U429 ( .A1(n187), .A2(n178), .ZN(n501) );
  NAND3_X1 U430 ( .A1(n499), .A2(n500), .A3(n501), .ZN(n175) );
  AOI21_X1 U431 ( .B1(n104), .B2(n588), .A(n491), .ZN(n502) );
  BUF_X1 U432 ( .A(n112), .Z(n503) );
  OAI21_X1 U433 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  OR2_X2 U434 ( .A1(n568), .A2(n249), .ZN(n530) );
  BUF_X1 U435 ( .A(n603), .Z(n594) );
  BUF_X2 U436 ( .A(n603), .Z(n541) );
  BUF_X2 U437 ( .A(n21), .Z(n595) );
  OR2_X1 U438 ( .A1(n329), .A2(n258), .ZN(n504) );
  CLKBUF_X1 U439 ( .A(n493), .Z(n505) );
  CLKBUF_X1 U440 ( .A(n25), .Z(n543) );
  CLKBUF_X1 U441 ( .A(n25), .Z(n544) );
  XNOR2_X1 U442 ( .A(n506), .B(n147), .ZN(n144) );
  XNOR2_X1 U443 ( .A(n301), .B(n148), .ZN(n506) );
  CLKBUF_X1 U444 ( .A(n534), .Z(n507) );
  XOR2_X1 U445 ( .A(n611), .B(a[6]), .Z(n508) );
  INV_X1 U446 ( .A(n535), .ZN(n509) );
  XOR2_X1 U447 ( .A(n208), .B(n213), .Z(n510) );
  XOR2_X1 U448 ( .A(n206), .B(n510), .Z(n204) );
  NAND2_X1 U449 ( .A1(n206), .A2(n208), .ZN(n511) );
  NAND2_X1 U450 ( .A1(n206), .A2(n213), .ZN(n512) );
  NAND2_X1 U451 ( .A1(n208), .A2(n213), .ZN(n513) );
  NAND3_X1 U452 ( .A1(n511), .A2(n512), .A3(n513), .ZN(n203) );
  XOR2_X1 U453 ( .A(n170), .B(n172), .Z(n514) );
  XOR2_X1 U454 ( .A(n514), .B(n179), .Z(n166) );
  XOR2_X1 U455 ( .A(n177), .B(n168), .Z(n515) );
  XOR2_X1 U456 ( .A(n515), .B(n166), .Z(n164) );
  NAND2_X1 U457 ( .A1(n170), .A2(n172), .ZN(n516) );
  NAND2_X1 U458 ( .A1(n170), .A2(n179), .ZN(n517) );
  NAND2_X1 U459 ( .A1(n172), .A2(n179), .ZN(n518) );
  NAND3_X1 U460 ( .A1(n516), .A2(n517), .A3(n518), .ZN(n165) );
  NAND2_X1 U461 ( .A1(n177), .A2(n168), .ZN(n519) );
  NAND2_X1 U462 ( .A1(n177), .A2(n166), .ZN(n520) );
  NAND2_X1 U463 ( .A1(n168), .A2(n166), .ZN(n521) );
  NAND3_X1 U464 ( .A1(n519), .A2(n520), .A3(n521), .ZN(n163) );
  BUF_X1 U465 ( .A(n37), .Z(n522) );
  XOR2_X1 U466 ( .A(n523), .B(n419), .Z(n402) );
  XNOR2_X1 U467 ( .A(n560), .B(n249), .ZN(n568) );
  CLKBUF_X1 U468 ( .A(n605), .Z(n523) );
  NAND2_X1 U469 ( .A1(n429), .A2(n27), .ZN(n29) );
  INV_X1 U470 ( .A(n565), .ZN(n524) );
  XOR2_X1 U471 ( .A(n606), .B(a[2]), .Z(n525) );
  INV_X1 U472 ( .A(n560), .ZN(n526) );
  XNOR2_X1 U473 ( .A(n612), .B(a[6]), .ZN(n581) );
  BUF_X1 U474 ( .A(n611), .Z(n527) );
  CLKBUF_X1 U475 ( .A(n557), .Z(n528) );
  OR2_X1 U476 ( .A1(n568), .A2(n249), .ZN(n529) );
  OR2_X1 U477 ( .A1(n568), .A2(n249), .ZN(n547) );
  OR2_X1 U478 ( .A1(n218), .A2(n223), .ZN(n531) );
  CLKBUF_X1 U479 ( .A(n552), .Z(n532) );
  CLKBUF_X1 U480 ( .A(n107), .Z(n533) );
  NAND2_X1 U481 ( .A1(n196), .A2(n203), .ZN(n534) );
  INV_X1 U482 ( .A(n606), .ZN(n535) );
  XNOR2_X1 U483 ( .A(n527), .B(a[4]), .ZN(n580) );
  INV_X1 U484 ( .A(n611), .ZN(n609) );
  NOR2_X1 U485 ( .A1(n186), .A2(n195), .ZN(n536) );
  NOR2_X1 U486 ( .A1(n186), .A2(n195), .ZN(n82) );
  INV_X1 U487 ( .A(n615), .ZN(n537) );
  INV_X1 U488 ( .A(n615), .ZN(n538) );
  INV_X1 U489 ( .A(n615), .ZN(n614) );
  OR2_X2 U490 ( .A1(n539), .A2(n597), .ZN(n34) );
  XNOR2_X1 U491 ( .A(n614), .B(a[10]), .ZN(n539) );
  XNOR2_X1 U492 ( .A(n613), .B(a[8]), .ZN(n429) );
  CLKBUF_X1 U493 ( .A(n558), .Z(n540) );
  BUF_X1 U494 ( .A(n603), .Z(n542) );
  OAI21_X1 U495 ( .B1(n536), .B2(n534), .A(n83), .ZN(n545) );
  NAND2_X1 U496 ( .A1(n580), .A2(n548), .ZN(n18) );
  OR2_X1 U497 ( .A1(n568), .A2(n249), .ZN(n6) );
  BUF_X1 U498 ( .A(n16), .Z(n548) );
  OR2_X1 U499 ( .A1(n196), .A2(n203), .ZN(n549) );
  XOR2_X1 U500 ( .A(n608), .B(a[4]), .Z(n16) );
  XNOR2_X1 U501 ( .A(n594), .B(a[2]), .ZN(n550) );
  XOR2_X1 U502 ( .A(n611), .B(a[6]), .Z(n21) );
  CLKBUF_X1 U503 ( .A(n576), .Z(n551) );
  OAI21_X1 U504 ( .B1(n105), .B2(n107), .A(n106), .ZN(n552) );
  XNOR2_X1 U505 ( .A(n226), .B(n553), .ZN(n224) );
  XNOR2_X1 U506 ( .A(n229), .B(n298), .ZN(n553) );
  OR2_X1 U507 ( .A1(n204), .A2(n211), .ZN(n554) );
  OR2_X1 U508 ( .A1(n176), .A2(n185), .ZN(n555) );
  AOI21_X1 U509 ( .B1(n104), .B2(n588), .A(n101), .ZN(n556) );
  NAND2_X1 U510 ( .A1(n9), .A2(n579), .ZN(n557) );
  NAND2_X1 U511 ( .A1(n525), .A2(n9), .ZN(n558) );
  NAND2_X1 U512 ( .A1(n9), .A2(n579), .ZN(n12) );
  OAI21_X1 U513 ( .B1(n99), .B2(n97), .A(n98), .ZN(n559) );
  INV_X1 U514 ( .A(n605), .ZN(n560) );
  AOI21_X2 U515 ( .B1(n586), .B2(n120), .A(n117), .ZN(n115) );
  AOI21_X2 U516 ( .B1(n589), .B2(n112), .A(n109), .ZN(n107) );
  OAI21_X1 U517 ( .B1(n562), .B2(n79), .A(n76), .ZN(n561) );
  NOR2_X1 U518 ( .A1(n164), .A2(n175), .ZN(n562) );
  XNOR2_X1 U519 ( .A(n594), .B(a[2]), .ZN(n563) );
  XNOR2_X1 U520 ( .A(n594), .B(a[2]), .ZN(n564) );
  XNOR2_X1 U521 ( .A(n541), .B(a[2]), .ZN(n578) );
  NAND2_X2 U522 ( .A1(n581), .A2(n508), .ZN(n23) );
  INV_X1 U523 ( .A(n612), .ZN(n565) );
  INV_X1 U524 ( .A(n612), .ZN(n566) );
  BUF_X2 U525 ( .A(n27), .Z(n567) );
  XNOR2_X1 U526 ( .A(n19), .B(a[8]), .ZN(n27) );
  INV_X1 U527 ( .A(n490), .ZN(n606) );
  INV_X2 U528 ( .A(n608), .ZN(n607) );
  AOI21_X1 U529 ( .B1(n559), .B2(n585), .A(n93), .ZN(n575) );
  NAND2_X1 U530 ( .A1(n226), .A2(n229), .ZN(n569) );
  NAND2_X1 U531 ( .A1(n226), .A2(n298), .ZN(n570) );
  NAND2_X1 U532 ( .A1(n229), .A2(n298), .ZN(n571) );
  NAND3_X1 U533 ( .A1(n569), .A2(n570), .A3(n571), .ZN(n223) );
  OR2_X1 U534 ( .A1(n547), .A2(n403), .ZN(n572) );
  OR2_X1 U535 ( .A1(n402), .A2(n593), .ZN(n573) );
  NAND2_X1 U536 ( .A1(n572), .A2(n573), .ZN(n324) );
  OR2_X1 U537 ( .A1(n228), .A2(n231), .ZN(n574) );
  AOI21_X1 U538 ( .B1(n80), .B2(n598), .A(n545), .ZN(n576) );
  AOI21_X1 U539 ( .B1(n96), .B2(n585), .A(n93), .ZN(n91) );
  AOI21_X1 U540 ( .B1(n80), .B2(n598), .A(n81), .ZN(n45) );
  CLKBUF_X1 U541 ( .A(n502), .Z(n577) );
  OR2_X1 U542 ( .A1(n152), .A2(n163), .ZN(n583) );
  NOR2_X1 U543 ( .A1(n196), .A2(n203), .ZN(n85) );
  NOR2_X1 U544 ( .A1(n164), .A2(n175), .ZN(n75) );
  OR2_X1 U545 ( .A1(n212), .A2(n217), .ZN(n585) );
  OR2_X1 U546 ( .A1(n224), .A2(n227), .ZN(n588) );
  XOR2_X1 U547 ( .A(n606), .B(a[2]), .Z(n579) );
  NAND2_X1 U548 ( .A1(n583), .A2(n69), .ZN(n47) );
  INV_X1 U549 ( .A(n73), .ZN(n71) );
  AOI21_X1 U550 ( .B1(n561), .B2(n583), .A(n67), .ZN(n65) );
  INV_X1 U551 ( .A(n69), .ZN(n67) );
  NAND2_X1 U552 ( .A1(n73), .A2(n583), .ZN(n64) );
  INV_X1 U553 ( .A(n561), .ZN(n72) );
  INV_X1 U554 ( .A(n95), .ZN(n93) );
  NOR2_X1 U555 ( .A1(n85), .A2(n82), .ZN(n80) );
  OAI21_X1 U556 ( .B1(n82), .B2(n534), .A(n83), .ZN(n81) );
  XNOR2_X1 U557 ( .A(n45), .B(n582), .ZN(product[12]) );
  AND2_X1 U558 ( .A1(n555), .A2(n79), .ZN(n582) );
  NAND2_X1 U559 ( .A1(n554), .A2(n90), .ZN(n52) );
  NAND2_X1 U560 ( .A1(n125), .A2(n76), .ZN(n48) );
  INV_X1 U561 ( .A(n562), .ZN(n125) );
  XNOR2_X1 U562 ( .A(n599), .B(n584), .ZN(product[10]) );
  NAND2_X1 U563 ( .A1(n549), .A2(n86), .ZN(n584) );
  NOR2_X1 U564 ( .A1(n75), .A2(n78), .ZN(n73) );
  NAND2_X1 U565 ( .A1(n152), .A2(n163), .ZN(n69) );
  NAND2_X1 U566 ( .A1(n127), .A2(n83), .ZN(n50) );
  OAI21_X1 U567 ( .B1(n87), .B2(n85), .A(n507), .ZN(n84) );
  INV_X1 U568 ( .A(n536), .ZN(n127) );
  NAND2_X1 U569 ( .A1(n585), .A2(n95), .ZN(n53) );
  NAND2_X1 U570 ( .A1(n574), .A2(n106), .ZN(n56) );
  INV_X1 U571 ( .A(n119), .ZN(n117) );
  NOR2_X1 U572 ( .A1(n176), .A2(n185), .ZN(n78) );
  NAND2_X1 U573 ( .A1(n588), .A2(n103), .ZN(n55) );
  XOR2_X1 U574 ( .A(n58), .B(n115), .Z(product[3]) );
  NAND2_X1 U575 ( .A1(n135), .A2(n114), .ZN(n58) );
  INV_X1 U576 ( .A(n113), .ZN(n135) );
  NOR2_X1 U577 ( .A1(n204), .A2(n211), .ZN(n89) );
  INV_X1 U578 ( .A(n122), .ZN(n120) );
  XNOR2_X1 U579 ( .A(n57), .B(n503), .ZN(product[4]) );
  NAND2_X1 U580 ( .A1(n589), .A2(n111), .ZN(n57) );
  NAND2_X1 U581 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U582 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U583 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U584 ( .A1(n204), .A2(n211), .ZN(n90) );
  NAND2_X1 U585 ( .A1(n186), .A2(n195), .ZN(n83) );
  NAND2_X1 U586 ( .A1(n212), .A2(n217), .ZN(n95) );
  XNOR2_X1 U587 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U588 ( .A1(n586), .A2(n119), .ZN(n59) );
  XOR2_X1 U589 ( .A(n577), .B(n54), .Z(product[7]) );
  NAND2_X1 U590 ( .A1(n531), .A2(n492), .ZN(n54) );
  BUF_X2 U591 ( .A(n602), .Z(n593) );
  INV_X1 U592 ( .A(n597), .ZN(n32) );
  NAND2_X1 U593 ( .A1(n587), .A2(n62), .ZN(n46) );
  OR2_X1 U594 ( .A1(n328), .A2(n314), .ZN(n586) );
  OR2_X1 U595 ( .A1(n151), .A2(n139), .ZN(n587) );
  NOR2_X1 U596 ( .A1(n218), .A2(n223), .ZN(n97) );
  NAND2_X1 U597 ( .A1(n218), .A2(n223), .ZN(n98) );
  INV_X1 U598 ( .A(n37), .ZN(n237) );
  OR2_X1 U599 ( .A1(n232), .A2(n233), .ZN(n589) );
  NAND2_X1 U600 ( .A1(n224), .A2(n227), .ZN(n103) );
  NAND2_X1 U601 ( .A1(n228), .A2(n231), .ZN(n106) );
  INV_X1 U602 ( .A(n41), .ZN(n235) );
  AND2_X1 U603 ( .A1(n504), .A2(n122), .ZN(product[1]) );
  XNOR2_X1 U604 ( .A(n614), .B(a[12]), .ZN(n37) );
  XNOR2_X1 U605 ( .A(n616), .B(a[14]), .ZN(n41) );
  OR2_X1 U606 ( .A1(n600), .A2(n535), .ZN(n392) );
  OAI22_X1 U607 ( .A1(n34), .A2(n340), .B1(n339), .B2(n32), .ZN(n266) );
  OAI22_X1 U608 ( .A1(n530), .A2(n399), .B1(n398), .B2(n593), .ZN(n320) );
  OAI22_X1 U609 ( .A1(n34), .A2(n615), .B1(n344), .B2(n32), .ZN(n253) );
  OAI22_X1 U610 ( .A1(n529), .A2(n400), .B1(n399), .B2(n593), .ZN(n321) );
  XNOR2_X1 U611 ( .A(n544), .B(n600), .ZN(n352) );
  OAI22_X1 U612 ( .A1(n529), .A2(n406), .B1(n405), .B2(n593), .ZN(n327) );
  XNOR2_X1 U613 ( .A(n607), .B(n600), .ZN(n391) );
  XNOR2_X1 U614 ( .A(n155), .B(n591), .ZN(n139) );
  XNOR2_X1 U615 ( .A(n153), .B(n141), .ZN(n591) );
  XNOR2_X1 U616 ( .A(n157), .B(n592), .ZN(n141) );
  XNOR2_X1 U617 ( .A(n145), .B(n143), .ZN(n592) );
  OAI22_X1 U618 ( .A1(n530), .A2(n408), .B1(n407), .B2(n593), .ZN(n329) );
  OAI22_X1 U619 ( .A1(n34), .A2(n343), .B1(n342), .B2(n32), .ZN(n269) );
  OAI22_X1 U620 ( .A1(n529), .A2(n398), .B1(n397), .B2(n593), .ZN(n319) );
  OAI22_X1 U621 ( .A1(n42), .A2(n619), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U622 ( .A1(n600), .A2(n619), .ZN(n332) );
  OAI22_X1 U623 ( .A1(n547), .A2(n404), .B1(n403), .B2(n593), .ZN(n325) );
  XOR2_X1 U624 ( .A(n315), .B(n261), .Z(n150) );
  OAI22_X1 U625 ( .A1(n529), .A2(n394), .B1(n393), .B2(n593), .ZN(n315) );
  XNOR2_X1 U626 ( .A(n610), .B(n600), .ZN(n376) );
  XNOR2_X1 U627 ( .A(n616), .B(n600), .ZN(n336) );
  OAI22_X1 U628 ( .A1(n34), .A2(n342), .B1(n341), .B2(n32), .ZN(n268) );
  OAI22_X1 U629 ( .A1(n34), .A2(n341), .B1(n340), .B2(n32), .ZN(n267) );
  OAI22_X1 U630 ( .A1(n39), .A2(n336), .B1(n522), .B2(n335), .ZN(n263) );
  AND2_X1 U631 ( .A1(n601), .A2(n237), .ZN(n264) );
  OAI22_X1 U632 ( .A1(n530), .A2(n397), .B1(n396), .B2(n593), .ZN(n318) );
  AND2_X1 U633 ( .A1(n601), .A2(n245), .ZN(n300) );
  OAI22_X1 U634 ( .A1(n6), .A2(n405), .B1(n404), .B2(n593), .ZN(n326) );
  AND2_X1 U635 ( .A1(n601), .A2(n235), .ZN(n260) );
  OAI22_X1 U636 ( .A1(n530), .A2(n395), .B1(n394), .B2(n593), .ZN(n316) );
  OAI22_X1 U637 ( .A1(n39), .A2(n335), .B1(n522), .B2(n334), .ZN(n262) );
  AND2_X1 U638 ( .A1(n601), .A2(n243), .ZN(n288) );
  NAND2_X1 U639 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U640 ( .A(n616), .B(a[12]), .Z(n427) );
  AND2_X1 U641 ( .A1(n601), .A2(n241), .ZN(n278) );
  OAI22_X1 U642 ( .A1(n529), .A2(n401), .B1(n400), .B2(n593), .ZN(n322) );
  NAND2_X1 U643 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U644 ( .A(n618), .B(a[14]), .Z(n426) );
  OAI22_X1 U645 ( .A1(n547), .A2(n402), .B1(n401), .B2(n593), .ZN(n323) );
  OAI22_X1 U646 ( .A1(n530), .A2(n396), .B1(n395), .B2(n593), .ZN(n317) );
  OAI22_X1 U647 ( .A1(n39), .A2(n617), .B1(n337), .B2(n522), .ZN(n252) );
  OR2_X1 U648 ( .A1(n600), .A2(n617), .ZN(n337) );
  AND2_X1 U649 ( .A1(n601), .A2(n247), .ZN(n314) );
  OR2_X1 U650 ( .A1(n600), .A2(n615), .ZN(n344) );
  AND2_X1 U651 ( .A1(n601), .A2(n249), .ZN(product[0]) );
  OR2_X1 U652 ( .A1(n600), .A2(n527), .ZN(n377) );
  OR2_X1 U653 ( .A1(n600), .A2(n613), .ZN(n353) );
  OR2_X1 U654 ( .A1(n600), .A2(n524), .ZN(n364) );
  XNOR2_X1 U655 ( .A(n610), .B(b[11]), .ZN(n365) );
  OAI22_X1 U656 ( .A1(n39), .A2(n334), .B1(n522), .B2(n333), .ZN(n261) );
  XNOR2_X1 U657 ( .A(n616), .B(n422), .ZN(n333) );
  XNOR2_X1 U658 ( .A(n616), .B(n424), .ZN(n335) );
  XNOR2_X1 U659 ( .A(n616), .B(n423), .ZN(n334) );
  OAI22_X1 U660 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U661 ( .A(n618), .B(n424), .ZN(n330) );
  XNOR2_X1 U662 ( .A(n618), .B(n600), .ZN(n331) );
  XNOR2_X1 U663 ( .A(n604), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U664 ( .A(n604), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U665 ( .A(n604), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U666 ( .A(n604), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U667 ( .A(n538), .B(n421), .ZN(n339) );
  XNOR2_X1 U668 ( .A(n543), .B(n418), .ZN(n345) );
  OAI22_X1 U669 ( .A1(n34), .A2(n339), .B1(n338), .B2(n32), .ZN(n265) );
  XNOR2_X1 U670 ( .A(n537), .B(n420), .ZN(n338) );
  XNOR2_X1 U671 ( .A(n509), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U672 ( .A(n607), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U673 ( .A(n607), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U674 ( .A(n607), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U675 ( .A(n607), .B(n419), .ZN(n385) );
  XNOR2_X1 U676 ( .A(n509), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U677 ( .A(n509), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U678 ( .A(n607), .B(n418), .ZN(n384) );
  XNOR2_X1 U679 ( .A(n544), .B(n424), .ZN(n351) );
  XNOR2_X1 U680 ( .A(n607), .B(n424), .ZN(n390) );
  XNOR2_X1 U681 ( .A(n610), .B(n418), .ZN(n369) );
  XNOR2_X1 U682 ( .A(n610), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U683 ( .A(n610), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U684 ( .A(n610), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U685 ( .A(n607), .B(n422), .ZN(n388) );
  XNOR2_X1 U686 ( .A(n544), .B(n423), .ZN(n350) );
  XNOR2_X1 U687 ( .A(n543), .B(n422), .ZN(n349) );
  XNOR2_X1 U688 ( .A(n607), .B(n423), .ZN(n389) );
  XNOR2_X1 U689 ( .A(n543), .B(n421), .ZN(n348) );
  XNOR2_X1 U690 ( .A(n543), .B(n420), .ZN(n347) );
  XNOR2_X1 U691 ( .A(n544), .B(n419), .ZN(n346) );
  XNOR2_X1 U692 ( .A(n607), .B(n421), .ZN(n387) );
  XNOR2_X1 U693 ( .A(n607), .B(n420), .ZN(n386) );
  XNOR2_X1 U694 ( .A(n604), .B(b[15]), .ZN(n393) );
  CLKBUF_X1 U695 ( .A(n43), .Z(n601) );
  INV_X1 U696 ( .A(n13), .ZN(n611) );
  INV_X1 U697 ( .A(n249), .ZN(n602) );
  AND2_X1 U698 ( .A1(n601), .A2(n597), .ZN(n270) );
  INV_X1 U699 ( .A(n605), .ZN(n603) );
  NAND2_X1 U700 ( .A1(n328), .A2(n314), .ZN(n119) );
  OAI22_X1 U701 ( .A1(n6), .A2(n407), .B1(n406), .B2(n593), .ZN(n328) );
  OAI22_X1 U702 ( .A1(n29), .A2(n350), .B1(n349), .B2(n567), .ZN(n275) );
  OAI22_X1 U703 ( .A1(n29), .A2(n346), .B1(n345), .B2(n567), .ZN(n271) );
  OAI22_X1 U704 ( .A1(n29), .A2(n351), .B1(n350), .B2(n567), .ZN(n276) );
  OAI22_X1 U705 ( .A1(n29), .A2(n613), .B1(n353), .B2(n567), .ZN(n254) );
  OAI22_X1 U706 ( .A1(n29), .A2(n347), .B1(n346), .B2(n567), .ZN(n272) );
  OAI22_X1 U707 ( .A1(n29), .A2(n348), .B1(n347), .B2(n567), .ZN(n273) );
  OAI22_X1 U708 ( .A1(n29), .A2(n349), .B1(n348), .B2(n567), .ZN(n274) );
  INV_X1 U709 ( .A(n567), .ZN(n241) );
  CLKBUF_X3 U710 ( .A(n16), .Z(n596) );
  XNOR2_X1 U711 ( .A(n538), .B(n424), .ZN(n342) );
  XNOR2_X1 U712 ( .A(n538), .B(n423), .ZN(n341) );
  XNOR2_X1 U713 ( .A(n537), .B(n600), .ZN(n343) );
  XNOR2_X1 U714 ( .A(n537), .B(n422), .ZN(n340) );
  XNOR2_X1 U715 ( .A(n560), .B(a[2]), .ZN(n9) );
  XNOR2_X1 U716 ( .A(n613), .B(a[10]), .ZN(n597) );
  INV_X1 U717 ( .A(n25), .ZN(n613) );
  XNOR2_X1 U718 ( .A(n532), .B(n55), .ZN(product[6]) );
  XNOR2_X1 U719 ( .A(n84), .B(n50), .ZN(product[11]) );
  NAND2_X1 U720 ( .A1(n232), .A2(n233), .ZN(n111) );
  NOR2_X1 U721 ( .A1(n228), .A2(n231), .ZN(n105) );
  OAI21_X1 U722 ( .B1(n105), .B2(n107), .A(n106), .ZN(n104) );
  XNOR2_X1 U723 ( .A(n565), .B(n422), .ZN(n360) );
  XNOR2_X1 U724 ( .A(n565), .B(n423), .ZN(n361) );
  XNOR2_X1 U725 ( .A(n566), .B(n600), .ZN(n363) );
  XNOR2_X1 U726 ( .A(n565), .B(n419), .ZN(n357) );
  XNOR2_X1 U727 ( .A(n566), .B(n424), .ZN(n362) );
  XNOR2_X1 U728 ( .A(n565), .B(n418), .ZN(n356) );
  INV_X1 U729 ( .A(n19), .ZN(n612) );
  NOR2_X1 U730 ( .A1(n234), .A2(n257), .ZN(n113) );
  XNOR2_X1 U731 ( .A(n70), .B(n47), .ZN(product[14]) );
  OAI22_X1 U732 ( .A1(n29), .A2(n352), .B1(n351), .B2(n567), .ZN(n277) );
  XNOR2_X1 U733 ( .A(n566), .B(b[8]), .ZN(n355) );
  XNOR2_X1 U734 ( .A(n565), .B(b[9]), .ZN(n354) );
  XNOR2_X1 U735 ( .A(n566), .B(n421), .ZN(n359) );
  XNOR2_X1 U736 ( .A(n566), .B(n420), .ZN(n358) );
  OAI21_X1 U737 ( .B1(n89), .B2(n91), .A(n90), .ZN(n598) );
  OAI21_X1 U738 ( .B1(n91), .B2(n89), .A(n90), .ZN(n599) );
  XNOR2_X1 U739 ( .A(n609), .B(n424), .ZN(n375) );
  XNOR2_X1 U740 ( .A(n609), .B(n419), .ZN(n370) );
  XNOR2_X1 U741 ( .A(n609), .B(n420), .ZN(n371) );
  XNOR2_X1 U742 ( .A(n609), .B(n421), .ZN(n372) );
  XNOR2_X1 U743 ( .A(n609), .B(n423), .ZN(n374) );
  XNOR2_X1 U744 ( .A(n609), .B(n422), .ZN(n373) );
  INV_X1 U745 ( .A(n88), .ZN(n87) );
  OAI21_X1 U746 ( .B1(n575), .B2(n89), .A(n90), .ZN(n88) );
  XNOR2_X1 U747 ( .A(n63), .B(n46), .ZN(product[15]) );
  INV_X1 U748 ( .A(n7), .ZN(n608) );
  XNOR2_X1 U749 ( .A(n77), .B(n48), .ZN(product[13]) );
  INV_X1 U750 ( .A(n103), .ZN(n101) );
  INV_X1 U751 ( .A(n1), .ZN(n605) );
  OR2_X1 U752 ( .A1(n600), .A2(n526), .ZN(n409) );
  INV_X1 U753 ( .A(n523), .ZN(n604) );
  AOI21_X1 U754 ( .B1(n552), .B2(n588), .A(n101), .ZN(n99) );
  OAI22_X1 U755 ( .A1(n23), .A2(n358), .B1(n357), .B2(n595), .ZN(n282) );
  OAI22_X1 U756 ( .A1(n23), .A2(n356), .B1(n355), .B2(n595), .ZN(n280) );
  OAI22_X1 U757 ( .A1(n23), .A2(n362), .B1(n361), .B2(n595), .ZN(n286) );
  OAI22_X1 U758 ( .A1(n23), .A2(n357), .B1(n356), .B2(n595), .ZN(n281) );
  OAI22_X1 U759 ( .A1(n23), .A2(n524), .B1(n364), .B2(n595), .ZN(n255) );
  OAI22_X1 U760 ( .A1(n23), .A2(n361), .B1(n360), .B2(n595), .ZN(n285) );
  OAI22_X1 U761 ( .A1(n23), .A2(n355), .B1(n354), .B2(n595), .ZN(n279) );
  OAI22_X1 U762 ( .A1(n23), .A2(n360), .B1(n359), .B2(n595), .ZN(n284) );
  OAI22_X1 U763 ( .A1(n23), .A2(n363), .B1(n362), .B2(n595), .ZN(n287) );
  OAI22_X1 U764 ( .A1(n23), .A2(n359), .B1(n358), .B2(n595), .ZN(n283) );
  INV_X1 U765 ( .A(n595), .ZN(n243) );
  XNOR2_X1 U766 ( .A(n559), .B(n53), .ZN(product[8]) );
  OAI21_X1 U767 ( .B1(n556), .B2(n97), .A(n98), .ZN(n96) );
  NAND2_X1 U768 ( .A1(n151), .A2(n139), .ZN(n62) );
  OAI22_X1 U769 ( .A1(n493), .A2(n370), .B1(n369), .B2(n596), .ZN(n293) );
  OAI22_X1 U770 ( .A1(n505), .A2(n367), .B1(n366), .B2(n596), .ZN(n290) );
  OAI22_X1 U771 ( .A1(n493), .A2(n368), .B1(n367), .B2(n596), .ZN(n291) );
  OAI22_X1 U772 ( .A1(n18), .A2(n369), .B1(n368), .B2(n596), .ZN(n292) );
  OAI22_X1 U773 ( .A1(n493), .A2(n375), .B1(n374), .B2(n596), .ZN(n298) );
  OAI22_X1 U774 ( .A1(n18), .A2(n371), .B1(n370), .B2(n596), .ZN(n294) );
  OAI22_X1 U775 ( .A1(n546), .A2(n373), .B1(n372), .B2(n596), .ZN(n296) );
  OAI22_X1 U776 ( .A1(n546), .A2(n372), .B1(n371), .B2(n596), .ZN(n295) );
  OAI22_X1 U777 ( .A1(n546), .A2(n374), .B1(n373), .B2(n596), .ZN(n297) );
  OAI22_X1 U778 ( .A1(n493), .A2(n527), .B1(n377), .B2(n596), .ZN(n256) );
  OAI22_X1 U779 ( .A1(n493), .A2(n376), .B1(n375), .B2(n596), .ZN(n299) );
  OAI22_X1 U780 ( .A1(n18), .A2(n366), .B1(n365), .B2(n596), .ZN(n289) );
  INV_X1 U781 ( .A(n596), .ZN(n245) );
  XNOR2_X1 U782 ( .A(n541), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U783 ( .A(n541), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U784 ( .A(n542), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U785 ( .A(n541), .B(n418), .ZN(n401) );
  XNOR2_X1 U786 ( .A(n541), .B(n420), .ZN(n403) );
  XNOR2_X1 U787 ( .A(n542), .B(n421), .ZN(n404) );
  XNOR2_X1 U788 ( .A(n542), .B(n422), .ZN(n405) );
  XNOR2_X1 U789 ( .A(n542), .B(n600), .ZN(n408) );
  XNOR2_X1 U790 ( .A(n542), .B(n424), .ZN(n407) );
  XNOR2_X1 U791 ( .A(n541), .B(n423), .ZN(n406) );
  OAI21_X1 U792 ( .B1(n551), .B2(n64), .A(n65), .ZN(n63) );
  OAI21_X1 U793 ( .B1(n78), .B2(n576), .A(n79), .ZN(n77) );
  OAI21_X1 U794 ( .B1(n576), .B2(n71), .A(n72), .ZN(n70) );
  XOR2_X1 U795 ( .A(n56), .B(n533), .Z(product[5]) );
  XOR2_X1 U796 ( .A(n575), .B(n52), .Z(product[9]) );
  NAND2_X1 U797 ( .A1(n329), .A2(n258), .ZN(n122) );
  INV_X1 U798 ( .A(n111), .ZN(n109) );
  OAI22_X1 U799 ( .A1(n6), .A2(n526), .B1(n409), .B2(n593), .ZN(n258) );
  OAI22_X1 U800 ( .A1(n528), .A2(n379), .B1(n378), .B2(n578), .ZN(n301) );
  OAI22_X1 U801 ( .A1(n540), .A2(n380), .B1(n379), .B2(n550), .ZN(n302) );
  OAI22_X1 U802 ( .A1(n528), .A2(n385), .B1(n384), .B2(n563), .ZN(n307) );
  OAI22_X1 U803 ( .A1(n557), .A2(n382), .B1(n381), .B2(n564), .ZN(n304) );
  OAI22_X1 U804 ( .A1(n557), .A2(n381), .B1(n380), .B2(n550), .ZN(n303) );
  NAND2_X1 U805 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U806 ( .A1(n558), .A2(n383), .B1(n564), .B2(n382), .ZN(n305) );
  OAI22_X1 U807 ( .A1(n12), .A2(n384), .B1(n564), .B2(n383), .ZN(n306) );
  OAI22_X1 U808 ( .A1(n557), .A2(n386), .B1(n385), .B2(n578), .ZN(n308) );
  OAI22_X1 U809 ( .A1(n558), .A2(n387), .B1(n386), .B2(n550), .ZN(n309) );
  OAI22_X1 U810 ( .A1(n540), .A2(n535), .B1(n392), .B2(n578), .ZN(n257) );
  OAI22_X1 U811 ( .A1(n12), .A2(n389), .B1(n388), .B2(n563), .ZN(n311) );
  OAI22_X1 U812 ( .A1(n558), .A2(n388), .B1(n387), .B2(n563), .ZN(n310) );
  OAI22_X1 U813 ( .A1(n12), .A2(n390), .B1(n389), .B2(n563), .ZN(n312) );
  INV_X1 U814 ( .A(n578), .ZN(n247) );
  OAI22_X1 U815 ( .A1(n557), .A2(n391), .B1(n390), .B2(n550), .ZN(n313) );
  BUF_X4 U816 ( .A(n43), .Z(n600) );
  INV_X1 U817 ( .A(n611), .ZN(n610) );
  INV_X1 U818 ( .A(n31), .ZN(n615) );
  INV_X1 U819 ( .A(n617), .ZN(n616) );
  INV_X1 U820 ( .A(n36), .ZN(n617) );
  INV_X1 U821 ( .A(n619), .ZN(n618) );
  INV_X1 U822 ( .A(n40), .ZN(n619) );
  XOR2_X1 U823 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U824 ( .A(n289), .B(n279), .Z(n146) );
  XOR2_X1 U825 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_4_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n20, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n44, n45, n47, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65, n67, n68, n69,
         n70, n71, n73, n75, n76, n77, n78, n79, n81, n83, n84, n86, n89, n91,
         n94, n95, n96, n98, n100, n157, n158, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178;

  CLKBUF_X1 U122 ( .A(n165), .Z(n157) );
  BUF_X1 U123 ( .A(n177), .Z(n158) );
  AND2_X1 U124 ( .A1(n170), .A2(n86), .ZN(SUM[0]) );
  BUF_X1 U125 ( .A(n55), .Z(n160) );
  BUF_X1 U126 ( .A(n35), .Z(n177) );
  NOR2_X1 U127 ( .A1(A[14]), .A2(B[14]), .ZN(n161) );
  CLKBUF_X1 U128 ( .A(A[12]), .Z(n162) );
  OR2_X1 U129 ( .A1(A[10]), .A2(B[10]), .ZN(n163) );
  INV_X1 U130 ( .A(n157), .ZN(n44) );
  OAI21_X1 U131 ( .B1(A[14]), .B2(B[14]), .A(n26), .ZN(n3) );
  NOR2_X1 U132 ( .A1(A[8]), .A2(B[8]), .ZN(n164) );
  AND2_X1 U133 ( .A1(A[10]), .A2(B[10]), .ZN(n165) );
  NOR2_X1 U134 ( .A1(A[12]), .A2(B[12]), .ZN(n166) );
  NOR2_X2 U135 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  AOI21_X1 U136 ( .B1(n38), .B2(n30), .A(n31), .ZN(n167) );
  AOI21_X1 U137 ( .B1(n38), .B2(n30), .A(n31), .ZN(n1) );
  OR2_X1 U138 ( .A1(n162), .A2(B[12]), .ZN(n168) );
  NOR2_X1 U139 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  OR2_X1 U140 ( .A1(A[15]), .A2(B[15]), .ZN(n169) );
  OR2_X1 U141 ( .A1(A[9]), .A2(B[9]), .ZN(n172) );
  OR2_X1 U142 ( .A1(A[0]), .A2(B[0]), .ZN(n170) );
  INV_X1 U143 ( .A(n60), .ZN(n59) );
  INV_X1 U144 ( .A(n51), .ZN(n50) );
  INV_X1 U145 ( .A(n67), .ZN(n65) );
  AOI21_X1 U146 ( .B1(n173), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U147 ( .A(n83), .ZN(n81) );
  OAI21_X1 U148 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  OR2_X1 U149 ( .A1(n25), .A2(n28), .ZN(n171) );
  AOI21_X1 U150 ( .B1(n174), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U151 ( .A(n75), .ZN(n73) );
  AOI21_X1 U152 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  AOI21_X1 U153 ( .B1(n50), .B2(n172), .A(n47), .ZN(n45) );
  NAND2_X1 U154 ( .A1(n94), .A2(n160), .ZN(n9) );
  INV_X1 U155 ( .A(n86), .ZN(n84) );
  OAI21_X1 U156 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  INV_X1 U157 ( .A(n49), .ZN(n47) );
  NAND2_X1 U158 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U159 ( .A(n57), .ZN(n95) );
  NAND2_X1 U160 ( .A1(n172), .A2(n49), .ZN(n8) );
  NAND2_X1 U161 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U162 ( .A(n77), .ZN(n100) );
  NAND2_X1 U163 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U164 ( .A(n61), .ZN(n96) );
  NAND2_X1 U165 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U166 ( .A(n69), .ZN(n98) );
  NAND2_X1 U167 ( .A1(n173), .A2(n83), .ZN(n16) );
  NAND2_X1 U168 ( .A1(n174), .A2(n75), .ZN(n14) );
  NAND2_X1 U169 ( .A1(n176), .A2(n67), .ZN(n12) );
  XNOR2_X1 U170 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  XNOR2_X1 U171 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NAND2_X1 U172 ( .A1(n89), .A2(n29), .ZN(n4) );
  NOR2_X1 U173 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  NOR2_X1 U174 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  NOR2_X1 U175 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  NOR2_X1 U176 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  XOR2_X1 U177 ( .A(n6), .B(n37), .Z(SUM[11]) );
  XOR2_X1 U178 ( .A(n45), .B(n7), .Z(SUM[10]) );
  OR2_X1 U179 ( .A1(A[1]), .A2(B[1]), .ZN(n173) );
  OR2_X1 U180 ( .A1(A[3]), .A2(B[3]), .ZN(n174) );
  NAND2_X1 U181 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  OR2_X1 U182 ( .A1(A[10]), .A2(B[10]), .ZN(n175) );
  NAND2_X1 U183 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  XNOR2_X1 U184 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XNOR2_X1 U185 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  NOR2_X1 U186 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NOR2_X1 U187 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NAND2_X1 U188 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  NAND2_X1 U189 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  NAND2_X1 U190 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  NAND2_X1 U191 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U192 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U193 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  OR2_X1 U194 ( .A1(A[5]), .A2(B[5]), .ZN(n176) );
  NAND2_X1 U195 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  NAND2_X1 U196 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  XOR2_X1 U197 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XOR2_X1 U198 ( .A(n11), .B(n63), .Z(SUM[6]) );
  XOR2_X1 U199 ( .A(n13), .B(n71), .Z(SUM[4]) );
  XOR2_X1 U200 ( .A(n15), .B(n79), .Z(SUM[2]) );
  NAND2_X1 U201 ( .A1(n169), .A2(n19), .ZN(n2) );
  NAND2_X1 U202 ( .A1(A[15]), .A2(B[15]), .ZN(n19) );
  INV_X1 U203 ( .A(n28), .ZN(n89) );
  INV_X1 U204 ( .A(n24), .ZN(n22) );
  NOR2_X1 U205 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  NAND2_X1 U206 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  CLKBUF_X1 U207 ( .A(n36), .Z(n178) );
  NAND2_X1 U208 ( .A1(n33), .A2(n168), .ZN(n5) );
  AOI21_X1 U209 ( .B1(n176), .B2(n68), .A(n65), .ZN(n63) );
  XNOR2_X1 U210 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  OAI21_X1 U211 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  INV_X1 U212 ( .A(n164), .ZN(n94) );
  NOR2_X1 U213 ( .A1(n164), .A2(n57), .ZN(n52) );
  OAI21_X1 U214 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  NAND2_X1 U215 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  XNOR2_X1 U216 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  OAI21_X1 U217 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  OAI21_X1 U218 ( .B1(n29), .B2(n161), .A(n26), .ZN(n24) );
  INV_X1 U219 ( .A(n177), .ZN(n91) );
  NOR2_X1 U220 ( .A1(n166), .A2(n35), .ZN(n30) );
  OAI21_X1 U221 ( .B1(n37), .B2(n158), .A(n178), .ZN(n34) );
  OAI21_X1 U222 ( .B1(n36), .B2(n32), .A(n33), .ZN(n31) );
  NAND2_X1 U223 ( .A1(n91), .A2(n178), .ZN(n6) );
  NAND2_X1 U224 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  NAND2_X1 U225 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  NAND2_X1 U226 ( .A1(n163), .A2(n44), .ZN(n7) );
  INV_X1 U227 ( .A(n38), .ZN(n37) );
  NAND2_X1 U228 ( .A1(n163), .A2(n172), .ZN(n39) );
  AOI21_X1 U229 ( .B1(n175), .B2(n47), .A(n165), .ZN(n40) );
  XNOR2_X1 U230 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  XNOR2_X1 U231 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  XOR2_X1 U232 ( .A(n4), .B(n167), .Z(SUM[13]) );
  OAI21_X1 U233 ( .B1(n1), .B2(n28), .A(n29), .ZN(n27) );
  OAI21_X1 U234 ( .B1(n171), .B2(n167), .A(n22), .ZN(n20) );
  OAI21_X1 U235 ( .B1(n39), .B2(n51), .A(n40), .ZN(n38) );
endmodule


module datapath_M16_N8_T16_P16_4 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n8), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n217), .CK(clk), .Q(n12) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n218), .CK(clk), .Q(n13) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n219), .CK(clk), .Q(n14) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n220), .CK(clk), .Q(n15) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n221), .CK(clk), .Q(n16) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n222), .CK(clk), .Q(n17) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n223), .CK(clk), .Q(n18) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n224), .CK(clk), .Q(n19) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n225), .CK(clk), .Q(n20) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n226), .CK(clk), .Q(n21) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n227), .CK(clk), .Q(n22) );
  DFF_X1 \f_reg[0]  ( .D(n85), .CK(clk), .Q(n55), .QN(n206) );
  DFF_X1 \f_reg[1]  ( .D(n83), .CK(clk), .Q(n53), .QN(n207) );
  DFF_X1 \f_reg[2]  ( .D(n82), .CK(clk), .Q(n51), .QN(n208) );
  DFF_X1 \f_reg[3]  ( .D(n81), .CK(clk), .Q(f[3]), .QN(n59) );
  DFF_X1 \data_out_reg[15]  ( .D(n111), .CK(clk), .Q(data_out[15]), .QN(n189)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n112), .CK(clk), .Q(data_out[14]), .QN(n188)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n113), .CK(clk), .Q(data_out[13]), .QN(n187)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n114), .CK(clk), .Q(data_out[12]), .QN(n186)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n162), .CK(clk), .Q(data_out[11]), .QN(n185)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n163), .CK(clk), .Q(data_out[10]), .QN(n184)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n164), .CK(clk), .Q(data_out[9]), .QN(n183) );
  DFF_X1 \data_out_reg[8]  ( .D(n165), .CK(clk), .Q(data_out[8]), .QN(n182) );
  DFF_X1 \data_out_reg[7]  ( .D(n166), .CK(clk), .Q(data_out[7]), .QN(n181) );
  DFF_X1 \data_out_reg[6]  ( .D(n167), .CK(clk), .Q(data_out[6]), .QN(n180) );
  DFF_X1 \data_out_reg[5]  ( .D(n168), .CK(clk), .Q(data_out[5]), .QN(n179) );
  DFF_X1 \data_out_reg[4]  ( .D(n169), .CK(clk), .Q(data_out[4]), .QN(n178) );
  DFF_X1 \data_out_reg[3]  ( .D(n170), .CK(clk), .Q(data_out[3]), .QN(n177) );
  DFF_X1 \data_out_reg[2]  ( .D(n171), .CK(clk), .Q(data_out[2]), .QN(n176) );
  DFF_X1 \data_out_reg[1]  ( .D(n172), .CK(clk), .Q(data_out[1]), .QN(n175) );
  DFF_X1 \data_out_reg[0]  ( .D(n173), .CK(clk), .Q(data_out[0]), .QN(n174) );
  datapath_M16_N8_T16_P16_4_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_4_DW01_add_2 add_262 ( .A({n196, n195, n194, n193, 
        n192, n191, n205, n204, n203, n202, n201, n200, n199, n198, n197, n190}), .B({f[15], n35, n37, n39, n41, n43, f[9:3], n51, n53, n55}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n232), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n231), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n230), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n229), .CK(clk), .Q(n24) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n228), .CK(clk), .Q(n23) );
  DFF_X1 \f_reg[4]  ( .D(n80), .CK(clk), .Q(f[4]), .QN(n60) );
  DFF_X1 \f_reg[5]  ( .D(n79), .CK(clk), .Q(f[5]), .QN(n61) );
  DFF_X1 \f_reg[6]  ( .D(n78), .CK(clk), .Q(f[6]), .QN(n62) );
  DFF_X1 \f_reg[7]  ( .D(n77), .CK(clk), .Q(f[7]), .QN(n209) );
  DFF_X1 \f_reg[8]  ( .D(n76), .CK(clk), .Q(f[8]), .QN(n210) );
  DFF_X1 \f_reg[9]  ( .D(n75), .CK(clk), .Q(f[9]), .QN(n211) );
  DFF_X1 \f_reg[10]  ( .D(n74), .CK(clk), .Q(n43), .QN(n212) );
  DFF_X1 \f_reg[11]  ( .D(n73), .CK(clk), .Q(n41), .QN(n213) );
  DFF_X1 \f_reg[12]  ( .D(n72), .CK(clk), .Q(n39), .QN(n214) );
  DFF_X1 \f_reg[13]  ( .D(n71), .CK(clk), .Q(n37), .QN(n215) );
  DFF_X1 \f_reg[14]  ( .D(n70), .CK(clk), .Q(n35), .QN(n216) );
  DFF_X1 \f_reg[15]  ( .D(n1), .CK(clk), .Q(f[15]), .QN(n67) );
  DFF_X2 delay_reg ( .D(n102), .CK(clk), .Q(n32), .QN(n233) );
  AND2_X1 U3 ( .A1(n34), .A2(n9), .ZN(n6) );
  MUX2_X2 U4 ( .A(n16), .B(N40), .S(n233), .Z(n192) );
  NAND2_X1 U5 ( .A1(n57), .A2(f[15]), .ZN(n5) );
  MUX2_X2 U6 ( .A(N42), .B(n14), .S(n32), .Z(n194) );
  MUX2_X2 U8 ( .A(n17), .B(N39), .S(n233), .Z(n191) );
  MUX2_X2 U9 ( .A(N38), .B(n18), .S(n32), .Z(n205) );
  MUX2_X2 U10 ( .A(n19), .B(N37), .S(n233), .Z(n204) );
  NAND3_X1 U11 ( .A1(n4), .A2(n2), .A3(n5), .ZN(n1) );
  MUX2_X2 U12 ( .A(n13), .B(N43), .S(n233), .Z(n195) );
  MUX2_X2 U13 ( .A(n15), .B(N41), .S(n233), .Z(n193) );
  NAND2_X1 U14 ( .A1(data_out_b[15]), .A2(n8), .ZN(n2) );
  NAND2_X1 U15 ( .A1(adder[15]), .A2(n6), .ZN(n4) );
  INV_X1 U16 ( .A(n9), .ZN(n8) );
  NAND2_X1 U17 ( .A1(n102), .A2(n7), .ZN(n235) );
  INV_X1 U18 ( .A(n34), .ZN(n57) );
  INV_X1 U19 ( .A(clear_acc), .ZN(n9) );
  OAI22_X1 U20 ( .A1(n177), .A2(n235), .B1(n59), .B2(n234), .ZN(n170) );
  OAI22_X1 U21 ( .A1(n178), .A2(n235), .B1(n60), .B2(n234), .ZN(n169) );
  OAI22_X1 U22 ( .A1(n179), .A2(n235), .B1(n61), .B2(n234), .ZN(n168) );
  OAI22_X1 U23 ( .A1(n180), .A2(n235), .B1(n62), .B2(n234), .ZN(n167) );
  OAI22_X1 U24 ( .A1(n181), .A2(n235), .B1(n209), .B2(n234), .ZN(n166) );
  OAI22_X1 U25 ( .A1(n182), .A2(n235), .B1(n210), .B2(n234), .ZN(n165) );
  OAI22_X1 U26 ( .A1(n183), .A2(n235), .B1(n211), .B2(n234), .ZN(n164) );
  INV_X1 U27 ( .A(n11), .ZN(n27) );
  MUX2_X1 U28 ( .A(n24), .B(N32), .S(n233), .Z(n199) );
  INV_X1 U29 ( .A(wr_en_y), .ZN(n7) );
  INV_X1 U30 ( .A(m_ready), .ZN(n10) );
  NAND2_X1 U31 ( .A1(m_valid), .A2(n10), .ZN(n29) );
  OAI21_X1 U32 ( .B1(sel[4]), .B2(n69), .A(n29), .ZN(n102) );
  NAND2_X1 U33 ( .A1(clear_acc_delay), .A2(n233), .ZN(n11) );
  MUX2_X1 U34 ( .A(n12), .B(N44), .S(n27), .Z(n217) );
  MUX2_X1 U35 ( .A(n12), .B(N44), .S(n233), .Z(n196) );
  MUX2_X1 U36 ( .A(n13), .B(N43), .S(n27), .Z(n218) );
  MUX2_X1 U37 ( .A(n14), .B(N42), .S(n27), .Z(n219) );
  MUX2_X1 U38 ( .A(n15), .B(N41), .S(n27), .Z(n220) );
  MUX2_X1 U39 ( .A(n16), .B(N40), .S(n27), .Z(n221) );
  MUX2_X1 U40 ( .A(n17), .B(N39), .S(n27), .Z(n222) );
  MUX2_X1 U41 ( .A(n18), .B(N38), .S(n27), .Z(n223) );
  MUX2_X1 U42 ( .A(n19), .B(N37), .S(n27), .Z(n224) );
  MUX2_X1 U43 ( .A(n20), .B(N36), .S(n27), .Z(n225) );
  MUX2_X1 U44 ( .A(n20), .B(N36), .S(n233), .Z(n203) );
  MUX2_X1 U45 ( .A(n21), .B(N35), .S(n27), .Z(n226) );
  MUX2_X1 U46 ( .A(n21), .B(N35), .S(n233), .Z(n202) );
  MUX2_X1 U47 ( .A(n22), .B(N34), .S(n27), .Z(n227) );
  MUX2_X1 U48 ( .A(n22), .B(N34), .S(n233), .Z(n201) );
  MUX2_X1 U49 ( .A(n23), .B(N33), .S(n27), .Z(n228) );
  MUX2_X1 U50 ( .A(n23), .B(N33), .S(n233), .Z(n200) );
  MUX2_X1 U51 ( .A(n24), .B(N32), .S(n27), .Z(n229) );
  MUX2_X1 U52 ( .A(n25), .B(N31), .S(n27), .Z(n230) );
  MUX2_X1 U53 ( .A(n25), .B(N31), .S(n233), .Z(n198) );
  MUX2_X1 U54 ( .A(n26), .B(N30), .S(n27), .Z(n231) );
  MUX2_X1 U55 ( .A(n26), .B(N30), .S(n233), .Z(n197) );
  MUX2_X1 U56 ( .A(n28), .B(N29), .S(n27), .Z(n232) );
  MUX2_X1 U57 ( .A(n28), .B(N29), .S(n233), .Z(n190) );
  INV_X1 U58 ( .A(n29), .ZN(n33) );
  OAI21_X1 U59 ( .B1(n33), .B2(n32), .A(n9), .ZN(n34) );
  AOI222_X1 U60 ( .A1(data_out_b[14]), .A2(n8), .B1(adder[14]), .B2(n6), .C1(
        n57), .C2(n35), .ZN(n36) );
  INV_X1 U61 ( .A(n36), .ZN(n70) );
  AOI222_X1 U62 ( .A1(data_out_b[13]), .A2(n8), .B1(adder[13]), .B2(n6), .C1(
        n57), .C2(n37), .ZN(n38) );
  INV_X1 U63 ( .A(n38), .ZN(n71) );
  AOI222_X1 U64 ( .A1(data_out_b[12]), .A2(n8), .B1(adder[12]), .B2(n6), .C1(
        n57), .C2(n39), .ZN(n40) );
  INV_X1 U65 ( .A(n40), .ZN(n72) );
  AOI222_X1 U66 ( .A1(data_out_b[11]), .A2(n8), .B1(adder[11]), .B2(n6), .C1(
        n57), .C2(n41), .ZN(n42) );
  INV_X1 U67 ( .A(n42), .ZN(n73) );
  AOI222_X1 U68 ( .A1(data_out_b[10]), .A2(n8), .B1(adder[10]), .B2(n6), .C1(
        n57), .C2(n43), .ZN(n44) );
  INV_X1 U69 ( .A(n44), .ZN(n74) );
  AOI222_X1 U70 ( .A1(data_out_b[8]), .A2(n8), .B1(adder[8]), .B2(n6), .C1(n57), .C2(f[8]), .ZN(n45) );
  INV_X1 U71 ( .A(n45), .ZN(n76) );
  AOI222_X1 U72 ( .A1(data_out_b[7]), .A2(n8), .B1(adder[7]), .B2(n6), .C1(n57), .C2(f[7]), .ZN(n46) );
  INV_X1 U73 ( .A(n46), .ZN(n77) );
  AOI222_X1 U74 ( .A1(data_out_b[6]), .A2(n8), .B1(adder[6]), .B2(n6), .C1(n57), .C2(f[6]), .ZN(n47) );
  INV_X1 U75 ( .A(n47), .ZN(n78) );
  AOI222_X1 U76 ( .A1(data_out_b[5]), .A2(n8), .B1(adder[5]), .B2(n6), .C1(n57), .C2(f[5]), .ZN(n48) );
  INV_X1 U77 ( .A(n48), .ZN(n79) );
  AOI222_X1 U78 ( .A1(data_out_b[4]), .A2(n8), .B1(adder[4]), .B2(n6), .C1(n57), .C2(f[4]), .ZN(n49) );
  INV_X1 U79 ( .A(n49), .ZN(n80) );
  AOI222_X1 U80 ( .A1(data_out_b[3]), .A2(n8), .B1(adder[3]), .B2(n6), .C1(n57), .C2(f[3]), .ZN(n50) );
  INV_X1 U81 ( .A(n50), .ZN(n81) );
  AOI222_X1 U82 ( .A1(data_out_b[2]), .A2(n8), .B1(adder[2]), .B2(n6), .C1(n57), .C2(n51), .ZN(n52) );
  INV_X1 U83 ( .A(n52), .ZN(n82) );
  AOI222_X1 U84 ( .A1(data_out_b[1]), .A2(n8), .B1(adder[1]), .B2(n6), .C1(n57), .C2(n53), .ZN(n54) );
  INV_X1 U85 ( .A(n54), .ZN(n83) );
  AOI222_X1 U86 ( .A1(data_out_b[0]), .A2(n8), .B1(adder[0]), .B2(n6), .C1(n57), .C2(n55), .ZN(n56) );
  INV_X1 U87 ( .A(n56), .ZN(n85) );
  AOI222_X1 U88 ( .A1(data_out_b[9]), .A2(n8), .B1(adder[9]), .B2(n6), .C1(n57), .C2(f[9]), .ZN(n58) );
  INV_X1 U89 ( .A(n58), .ZN(n75) );
  NOR4_X1 U90 ( .A1(n41), .A2(n39), .A3(n37), .A4(n35), .ZN(n66) );
  NOR4_X1 U91 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n43), .ZN(n65) );
  NAND4_X1 U92 ( .A1(n62), .A2(n61), .A3(n60), .A4(n59), .ZN(n63) );
  NOR4_X1 U93 ( .A1(n63), .A2(n55), .A3(n53), .A4(n51), .ZN(n64) );
  NAND3_X1 U94 ( .A1(n66), .A2(n65), .A3(n64), .ZN(n68) );
  NAND3_X1 U95 ( .A1(wr_en_y), .A2(n68), .A3(n67), .ZN(n234) );
  OAI22_X1 U96 ( .A1(n174), .A2(n235), .B1(n206), .B2(n234), .ZN(n173) );
  OAI22_X1 U97 ( .A1(n175), .A2(n235), .B1(n207), .B2(n234), .ZN(n172) );
  OAI22_X1 U98 ( .A1(n176), .A2(n235), .B1(n208), .B2(n234), .ZN(n171) );
  OAI22_X1 U99 ( .A1(n184), .A2(n235), .B1(n212), .B2(n234), .ZN(n163) );
  OAI22_X1 U100 ( .A1(n185), .A2(n235), .B1(n213), .B2(n234), .ZN(n162) );
  OAI22_X1 U101 ( .A1(n186), .A2(n235), .B1(n214), .B2(n234), .ZN(n114) );
  OAI22_X1 U102 ( .A1(n187), .A2(n235), .B1(n215), .B2(n234), .ZN(n113) );
  OAI22_X1 U103 ( .A1(n188), .A2(n235), .B1(n216), .B2(n234), .ZN(n112) );
  OAI22_X1 U104 ( .A1(n189), .A2(n235), .B1(n67), .B2(n234), .ZN(n111) );
  AND4_X1 U105 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n69)
         );
endmodule


module datapath_M16_N8_T16_P16_3_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n29, n31, n34,
         n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50, n52, n53,
         n55, n56, n58, n59, n62, n63, n64, n65, n67, n69, n70, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n93, n95, n96, n97, n98, n99, n103, n104, n105, n106,
         n107, n111, n112, n113, n114, n115, n117, n119, n120, n122, n125,
         n127, n131, n135, n139, n141, n142, n143, n144, n145, n146, n148,
         n149, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n245, n247, n249,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n418, n419, n420, n421, n422, n423,
         n424, n426, n427, n428, n430, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U148 ( .A(n265), .B(n144), .Z(n145) );
  XOR2_X1 U152 ( .A(n301), .B(n148), .Z(n149) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n291), .CI(n263), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n252), .B(n317), .CO(n173), .S(n174) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n490), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n274), .CI(n292), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n304), .B(n264), .CI(n318), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n253), .B(n283), .CI(n305), .CO(n191), .S(n192) );
  FA_X1 U177 ( .A(n205), .B(n200), .CI(n198), .CO(n195), .S(n196) );
  FA_X1 U178 ( .A(n207), .B(n209), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n294), .B(n284), .CI(n276), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n320), .B(n270), .CI(n306), .CO(n201), .S(n202) );
  FA_X1 U181 ( .A(n208), .B(n213), .CI(n206), .CO(n203), .S(n204) );
  FA_X1 U182 ( .A(n215), .B(n307), .CI(n210), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n295), .B(n285), .CI(n254), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n255), .B(n309), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n287), .B(n323), .CO(n221), .S(n222) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n311), .B(n325), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n312), .B(n326), .CI(n300), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  OR2_X2 U414 ( .A1(n575), .A2(n249), .ZN(n6) );
  XOR2_X1 U415 ( .A(n31), .B(a[12]), .Z(n558) );
  AND2_X1 U416 ( .A1(n232), .A2(n233), .ZN(n571) );
  BUF_X1 U417 ( .A(n610), .Z(n540) );
  INV_X1 U418 ( .A(n571), .ZN(n111) );
  INV_X1 U419 ( .A(n19), .ZN(n611) );
  AND2_X1 U420 ( .A1(n319), .A2(n269), .ZN(n490) );
  OR2_X1 U421 ( .A1(n328), .A2(n314), .ZN(n491) );
  OR2_X1 U422 ( .A1(n329), .A2(n258), .ZN(n492) );
  OR2_X2 U423 ( .A1(n493), .A2(n510), .ZN(n29) );
  XOR2_X1 U424 ( .A(n612), .B(a[8]), .Z(n493) );
  FA_X1 U425 ( .A(n205), .B(n200), .CI(n198), .S(n494) );
  AOI21_X1 U426 ( .B1(n591), .B2(n112), .A(n571), .ZN(n495) );
  BUF_X1 U427 ( .A(n531), .Z(n496) );
  CLKBUF_X1 U428 ( .A(n36), .Z(n497) );
  XNOR2_X1 U429 ( .A(n520), .B(a[6]), .ZN(n498) );
  XOR2_X1 U430 ( .A(n539), .B(a[4]), .Z(n16) );
  INV_X1 U431 ( .A(n539), .ZN(n499) );
  INV_X1 U432 ( .A(n539), .ZN(n500) );
  INV_X1 U433 ( .A(n539), .ZN(n606) );
  XOR2_X1 U434 ( .A(n604), .B(a[2]), .Z(n501) );
  XNOR2_X1 U435 ( .A(n610), .B(a[4]), .ZN(n587) );
  XNOR2_X1 U436 ( .A(n502), .B(n310), .ZN(n226) );
  XNOR2_X1 U437 ( .A(n324), .B(n288), .ZN(n502) );
  XOR2_X1 U438 ( .A(n187), .B(n180), .Z(n503) );
  XOR2_X1 U439 ( .A(n178), .B(n503), .Z(n176) );
  NAND2_X1 U440 ( .A1(n178), .A2(n187), .ZN(n504) );
  NAND2_X1 U441 ( .A1(n178), .A2(n180), .ZN(n505) );
  NAND2_X1 U442 ( .A1(n187), .A2(n180), .ZN(n506) );
  NAND3_X1 U443 ( .A1(n504), .A2(n505), .A3(n506), .ZN(n175) );
  XOR2_X1 U444 ( .A(n319), .B(n269), .Z(n194) );
  XNOR2_X1 U445 ( .A(n166), .B(n507), .ZN(n164) );
  XNOR2_X1 U446 ( .A(n177), .B(n168), .ZN(n507) );
  CLKBUF_X1 U447 ( .A(n74), .Z(n508) );
  INV_X1 U448 ( .A(n528), .ZN(n509) );
  XNOR2_X1 U449 ( .A(n611), .B(a[8]), .ZN(n510) );
  XNOR2_X2 U450 ( .A(n605), .B(a[4]), .ZN(n511) );
  AOI21_X1 U451 ( .B1(n80), .B2(n550), .A(n81), .ZN(n512) );
  AOI21_X1 U452 ( .B1(n80), .B2(n550), .A(n81), .ZN(n45) );
  BUF_X1 U453 ( .A(n557), .Z(n519) );
  XOR2_X1 U454 ( .A(n25), .B(a[10]), .Z(n570) );
  CLKBUF_X1 U455 ( .A(n511), .Z(n513) );
  NAND2_X1 U456 ( .A1(n166), .A2(n177), .ZN(n514) );
  NAND2_X1 U457 ( .A1(n166), .A2(n168), .ZN(n515) );
  NAND2_X1 U458 ( .A1(n177), .A2(n168), .ZN(n516) );
  NAND3_X1 U459 ( .A1(n514), .A2(n515), .A3(n516), .ZN(n163) );
  AOI21_X1 U460 ( .B1(n96), .B2(n589), .A(n93), .ZN(n517) );
  BUF_X2 U461 ( .A(n501), .Z(n597) );
  OR2_X1 U462 ( .A1(n572), .A2(n78), .ZN(n518) );
  INV_X1 U463 ( .A(n610), .ZN(n520) );
  CLKBUF_X1 U464 ( .A(n511), .Z(n521) );
  INV_X1 U465 ( .A(n611), .ZN(n522) );
  INV_X1 U466 ( .A(n611), .ZN(n523) );
  INV_X1 U467 ( .A(n529), .ZN(n582) );
  XNOR2_X1 U468 ( .A(n149), .B(n524), .ZN(n144) );
  XNOR2_X1 U469 ( .A(n146), .B(n271), .ZN(n524) );
  XNOR2_X1 U470 ( .A(n45), .B(n525), .ZN(product[12]) );
  AND2_X1 U471 ( .A1(n527), .A2(n79), .ZN(n525) );
  CLKBUF_X1 U472 ( .A(n18), .Z(n526) );
  OR2_X1 U473 ( .A1(n176), .A2(n185), .ZN(n527) );
  CLKBUF_X1 U474 ( .A(n602), .Z(n528) );
  XNOR2_X1 U475 ( .A(n610), .B(a[6]), .ZN(n529) );
  CLKBUF_X1 U476 ( .A(n597), .Z(n530) );
  XOR2_X1 U477 ( .A(n612), .B(a[10]), .Z(n531) );
  OAI21_X1 U478 ( .B1(n495), .B2(n105), .A(n106), .ZN(n532) );
  XOR2_X1 U479 ( .A(n615), .B(a[14]), .Z(n41) );
  AOI21_X1 U480 ( .B1(n104), .B2(n590), .A(n581), .ZN(n533) );
  INV_X1 U481 ( .A(n510), .ZN(n534) );
  INV_X1 U482 ( .A(n540), .ZN(n535) );
  OAI21_X1 U483 ( .B1(n99), .B2(n97), .A(n98), .ZN(n536) );
  OR2_X1 U484 ( .A1(n204), .A2(n211), .ZN(n537) );
  BUF_X1 U485 ( .A(n83), .Z(n538) );
  INV_X1 U486 ( .A(n7), .ZN(n539) );
  INV_X1 U487 ( .A(n558), .ZN(n37) );
  BUF_X1 U488 ( .A(n12), .Z(n555) );
  BUF_X1 U489 ( .A(n12), .Z(n557) );
  CLKBUF_X1 U490 ( .A(n18), .Z(n541) );
  BUF_X1 U491 ( .A(n604), .Z(n542) );
  OR2_X1 U492 ( .A1(n228), .A2(n231), .ZN(n543) );
  BUF_X1 U493 ( .A(n12), .Z(n556) );
  INV_X1 U494 ( .A(n523), .ZN(n544) );
  NAND2_X1 U495 ( .A1(n494), .A2(n203), .ZN(n545) );
  XNOR2_X1 U496 ( .A(n88), .B(n546), .ZN(product[10]) );
  NAND2_X1 U497 ( .A1(n559), .A2(n545), .ZN(n546) );
  AOI21_X1 U498 ( .B1(n536), .B2(n589), .A(n93), .ZN(n547) );
  INV_X1 U499 ( .A(n570), .ZN(n548) );
  INV_X1 U500 ( .A(n570), .ZN(n549) );
  OAI21_X1 U501 ( .B1(n547), .B2(n89), .A(n90), .ZN(n550) );
  INV_X1 U502 ( .A(n535), .ZN(n551) );
  INV_X1 U503 ( .A(n500), .ZN(n552) );
  CLKBUF_X1 U504 ( .A(n18), .Z(n553) );
  CLKBUF_X3 U505 ( .A(n25), .Z(n554) );
  NAND2_X1 U506 ( .A1(n9), .A2(n586), .ZN(n12) );
  OR2_X1 U507 ( .A1(n196), .A2(n203), .ZN(n559) );
  OR2_X2 U508 ( .A1(n575), .A2(n249), .ZN(n560) );
  XNOR2_X1 U509 ( .A(n614), .B(a[10]), .ZN(n428) );
  INV_X1 U510 ( .A(n614), .ZN(n613) );
  XOR2_X1 U511 ( .A(n229), .B(n298), .Z(n561) );
  XOR2_X1 U512 ( .A(n561), .B(n226), .Z(n224) );
  NAND2_X1 U513 ( .A1(n324), .A2(n288), .ZN(n562) );
  NAND2_X1 U514 ( .A1(n324), .A2(n310), .ZN(n563) );
  NAND2_X1 U515 ( .A1(n288), .A2(n310), .ZN(n564) );
  NAND3_X1 U516 ( .A1(n562), .A2(n563), .A3(n564), .ZN(n225) );
  NAND2_X1 U517 ( .A1(n229), .A2(n298), .ZN(n565) );
  NAND2_X1 U518 ( .A1(n229), .A2(n226), .ZN(n566) );
  NAND2_X1 U519 ( .A1(n298), .A2(n226), .ZN(n567) );
  NAND3_X1 U520 ( .A1(n565), .A2(n566), .A3(n567), .ZN(n223) );
  INV_X1 U521 ( .A(n540), .ZN(n568) );
  INV_X1 U522 ( .A(n610), .ZN(n608) );
  INV_X1 U523 ( .A(n97), .ZN(n131) );
  CLKBUF_X1 U524 ( .A(n533), .Z(n569) );
  INV_X1 U525 ( .A(n607), .ZN(n605) );
  XNOR2_X1 U526 ( .A(n611), .B(a[6]), .ZN(n430) );
  NOR2_X1 U527 ( .A1(n164), .A2(n175), .ZN(n572) );
  NAND2_X1 U528 ( .A1(n498), .A2(n430), .ZN(n573) );
  NAND2_X1 U529 ( .A1(n21), .A2(n430), .ZN(n574) );
  NOR2_X1 U530 ( .A1(n164), .A2(n175), .ZN(n75) );
  NAND2_X1 U531 ( .A1(n21), .A2(n430), .ZN(n23) );
  NOR2_X1 U532 ( .A1(n196), .A2(n203), .ZN(n85) );
  XOR2_X1 U533 ( .A(n598), .B(n249), .Z(n575) );
  INV_X1 U534 ( .A(n249), .ZN(n601) );
  CLKBUF_X1 U535 ( .A(n532), .Z(n576) );
  CLKBUF_X1 U536 ( .A(n512), .Z(n577) );
  NOR2_X1 U537 ( .A1(n195), .A2(n186), .ZN(n578) );
  NAND2_X1 U538 ( .A1(n428), .A2(n548), .ZN(n579) );
  NAND2_X1 U539 ( .A1(n428), .A2(n548), .ZN(n580) );
  NOR2_X1 U540 ( .A1(n186), .A2(n195), .ZN(n82) );
  XNOR2_X1 U541 ( .A(a[2]), .B(n607), .ZN(n586) );
  INV_X1 U542 ( .A(n581), .ZN(n103) );
  AND2_X1 U543 ( .A1(n224), .A2(n227), .ZN(n581) );
  XOR2_X1 U544 ( .A(n604), .B(a[2]), .Z(n9) );
  OAI21_X1 U545 ( .B1(n517), .B2(n89), .A(n90), .ZN(n88) );
  XNOR2_X1 U546 ( .A(n608), .B(a[6]), .ZN(n583) );
  XNOR2_X1 U547 ( .A(n520), .B(a[6]), .ZN(n21) );
  OR2_X1 U548 ( .A1(n152), .A2(n163), .ZN(n588) );
  XOR2_X1 U549 ( .A(n584), .B(n112), .Z(product[4]) );
  AND2_X1 U550 ( .A1(n591), .A2(n111), .ZN(n584) );
  XOR2_X1 U551 ( .A(n569), .B(n585), .Z(product[7]) );
  NAND2_X1 U552 ( .A1(n131), .A2(n98), .ZN(n585) );
  OR2_X1 U553 ( .A1(n212), .A2(n217), .ZN(n589) );
  NAND2_X2 U554 ( .A1(n587), .A2(n16), .ZN(n18) );
  NAND2_X1 U555 ( .A1(n588), .A2(n69), .ZN(n47) );
  AOI21_X1 U556 ( .B1(n588), .B2(n508), .A(n67), .ZN(n65) );
  INV_X1 U557 ( .A(n69), .ZN(n67) );
  INV_X1 U558 ( .A(n74), .ZN(n72) );
  NAND2_X1 U559 ( .A1(n537), .A2(n90), .ZN(n52) );
  AOI21_X1 U560 ( .B1(n96), .B2(n589), .A(n93), .ZN(n91) );
  INV_X1 U561 ( .A(n95), .ZN(n93) );
  NAND2_X1 U562 ( .A1(n125), .A2(n76), .ZN(n48) );
  INV_X1 U563 ( .A(n572), .ZN(n125) );
  NAND2_X1 U564 ( .A1(n589), .A2(n95), .ZN(n53) );
  OAI21_X1 U565 ( .B1(n75), .B2(n79), .A(n76), .ZN(n74) );
  NOR2_X1 U566 ( .A1(n572), .A2(n78), .ZN(n73) );
  XNOR2_X1 U567 ( .A(n84), .B(n50), .ZN(product[11]) );
  NAND2_X1 U568 ( .A1(n127), .A2(n538), .ZN(n50) );
  NAND2_X1 U569 ( .A1(n152), .A2(n163), .ZN(n69) );
  OAI21_X1 U570 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  NAND2_X1 U571 ( .A1(n135), .A2(n114), .ZN(n58) );
  INV_X1 U572 ( .A(n113), .ZN(n135) );
  NAND2_X1 U573 ( .A1(n543), .A2(n106), .ZN(n56) );
  OAI21_X1 U574 ( .B1(n533), .B2(n97), .A(n98), .ZN(n96) );
  AOI21_X1 U575 ( .B1(n591), .B2(n112), .A(n571), .ZN(n107) );
  NOR2_X1 U576 ( .A1(n176), .A2(n185), .ZN(n78) );
  AOI21_X1 U577 ( .B1(n491), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U578 ( .A(n119), .ZN(n117) );
  INV_X1 U579 ( .A(n122), .ZN(n120) );
  XNOR2_X1 U580 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U581 ( .A1(n592), .A2(n62), .ZN(n46) );
  NAND2_X1 U582 ( .A1(n73), .A2(n588), .ZN(n64) );
  XNOR2_X1 U583 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U584 ( .A1(n491), .A2(n119), .ZN(n59) );
  NAND2_X1 U585 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U586 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U587 ( .A1(n494), .A2(n203), .ZN(n86) );
  NAND2_X1 U588 ( .A1(n212), .A2(n217), .ZN(n95) );
  NAND2_X1 U589 ( .A1(n186), .A2(n195), .ZN(n83) );
  INV_X1 U590 ( .A(n542), .ZN(n603) );
  OR2_X1 U591 ( .A1(n224), .A2(n227), .ZN(n590) );
  NOR2_X1 U592 ( .A1(n218), .A2(n223), .ZN(n97) );
  NOR2_X1 U593 ( .A1(n228), .A2(n231), .ZN(n105) );
  NAND2_X1 U594 ( .A1(n218), .A2(n223), .ZN(n98) );
  NAND2_X1 U595 ( .A1(n228), .A2(n231), .ZN(n106) );
  OR2_X1 U596 ( .A1(n232), .A2(n233), .ZN(n591) );
  INV_X1 U597 ( .A(n41), .ZN(n235) );
  OR2_X1 U598 ( .A1(n151), .A2(n139), .ZN(n592) );
  AND2_X1 U599 ( .A1(n492), .A2(n122), .ZN(product[1]) );
  OR2_X1 U600 ( .A1(n599), .A2(n552), .ZN(n392) );
  OR2_X1 U601 ( .A1(n599), .A2(n542), .ZN(n409) );
  XNOR2_X1 U602 ( .A(n522), .B(n599), .ZN(n363) );
  OAI22_X1 U603 ( .A1(n39), .A2(n336), .B1(n37), .B2(n335), .ZN(n263) );
  OR2_X1 U604 ( .A1(n599), .A2(n551), .ZN(n377) );
  OAI22_X1 U605 ( .A1(n39), .A2(n615), .B1(n337), .B2(n37), .ZN(n252) );
  OR2_X1 U606 ( .A1(n599), .A2(n615), .ZN(n337) );
  OAI22_X1 U607 ( .A1(n42), .A2(n617), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U608 ( .A1(n599), .A2(n617), .ZN(n332) );
  AND2_X1 U609 ( .A1(n600), .A2(n245), .ZN(n300) );
  XNOR2_X1 U610 ( .A(n155), .B(n594), .ZN(n139) );
  XNOR2_X1 U611 ( .A(n153), .B(n141), .ZN(n594) );
  XNOR2_X1 U612 ( .A(n157), .B(n595), .ZN(n141) );
  XNOR2_X1 U613 ( .A(n145), .B(n143), .ZN(n595) );
  XNOR2_X1 U614 ( .A(n159), .B(n596), .ZN(n142) );
  XNOR2_X1 U615 ( .A(n315), .B(n261), .ZN(n596) );
  XNOR2_X1 U616 ( .A(n497), .B(n599), .ZN(n336) );
  XNOR2_X1 U617 ( .A(n609), .B(n599), .ZN(n376) );
  AND2_X1 U618 ( .A1(n600), .A2(n510), .ZN(n278) );
  AND2_X1 U619 ( .A1(n600), .A2(n558), .ZN(n264) );
  AND2_X1 U620 ( .A1(n600), .A2(n235), .ZN(n260) );
  OAI22_X1 U621 ( .A1(n39), .A2(n335), .B1(n37), .B2(n334), .ZN(n262) );
  AND2_X1 U622 ( .A1(n600), .A2(n529), .ZN(n288) );
  AND2_X1 U623 ( .A1(n600), .A2(n570), .ZN(n270) );
  NAND2_X1 U624 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U625 ( .A(n497), .B(a[12]), .Z(n427) );
  INV_X1 U626 ( .A(n25), .ZN(n612) );
  INV_X1 U627 ( .A(n13), .ZN(n610) );
  XNOR2_X1 U628 ( .A(n554), .B(n599), .ZN(n352) );
  NAND2_X1 U629 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U630 ( .A(n616), .B(a[14]), .Z(n426) );
  INV_X1 U631 ( .A(n7), .ZN(n607) );
  AND2_X1 U632 ( .A1(n600), .A2(n247), .ZN(n314) );
  AND2_X1 U633 ( .A1(n600), .A2(n249), .ZN(product[0]) );
  OR2_X1 U634 ( .A1(n599), .A2(n612), .ZN(n353) );
  OR2_X1 U635 ( .A1(n599), .A2(n544), .ZN(n364) );
  OR2_X1 U636 ( .A1(n599), .A2(n614), .ZN(n344) );
  XNOR2_X1 U637 ( .A(n522), .B(b[9]), .ZN(n354) );
  XNOR2_X1 U638 ( .A(n535), .B(b[11]), .ZN(n365) );
  OAI22_X1 U639 ( .A1(n39), .A2(n334), .B1(n37), .B2(n333), .ZN(n261) );
  XNOR2_X1 U640 ( .A(n497), .B(n422), .ZN(n333) );
  XNOR2_X1 U641 ( .A(n497), .B(n424), .ZN(n335) );
  XNOR2_X1 U642 ( .A(n497), .B(n423), .ZN(n334) );
  OAI22_X1 U643 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U644 ( .A(n616), .B(n424), .ZN(n330) );
  XNOR2_X1 U645 ( .A(n616), .B(n599), .ZN(n331) );
  XNOR2_X1 U646 ( .A(n554), .B(n418), .ZN(n345) );
  XNOR2_X1 U647 ( .A(n613), .B(n420), .ZN(n338) );
  XNOR2_X1 U648 ( .A(n499), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U649 ( .A(n500), .B(n418), .ZN(n384) );
  XNOR2_X1 U650 ( .A(n499), .B(n419), .ZN(n385) );
  XNOR2_X1 U651 ( .A(n499), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U652 ( .A(n606), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U653 ( .A(n606), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U654 ( .A(n499), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U655 ( .A(n606), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U656 ( .A(n523), .B(n424), .ZN(n362) );
  XNOR2_X1 U657 ( .A(n554), .B(n424), .ZN(n351) );
  XNOR2_X1 U658 ( .A(n609), .B(n418), .ZN(n369) );
  XNOR2_X1 U659 ( .A(n535), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U660 ( .A(n535), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U661 ( .A(n609), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U662 ( .A(n522), .B(n423), .ZN(n361) );
  XNOR2_X1 U663 ( .A(n523), .B(n422), .ZN(n360) );
  XNOR2_X1 U664 ( .A(n554), .B(n423), .ZN(n350) );
  XNOR2_X1 U665 ( .A(n554), .B(n422), .ZN(n349) );
  XNOR2_X1 U666 ( .A(n554), .B(n420), .ZN(n347) );
  XNOR2_X1 U667 ( .A(n19), .B(n420), .ZN(n358) );
  XNOR2_X1 U668 ( .A(n522), .B(n421), .ZN(n359) );
  XNOR2_X1 U669 ( .A(n554), .B(n421), .ZN(n348) );
  XNOR2_X1 U670 ( .A(n613), .B(n421), .ZN(n339) );
  XNOR2_X1 U671 ( .A(n522), .B(n419), .ZN(n357) );
  XNOR2_X1 U672 ( .A(n554), .B(n419), .ZN(n346) );
  XNOR2_X1 U673 ( .A(n523), .B(n418), .ZN(n356) );
  XNOR2_X1 U674 ( .A(n523), .B(b[8]), .ZN(n355) );
  XNOR2_X1 U675 ( .A(n603), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U676 ( .A(n603), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U677 ( .A(n603), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U678 ( .A(n603), .B(b[14]), .ZN(n394) );
  BUF_X1 U679 ( .A(n43), .Z(n600) );
  XNOR2_X1 U680 ( .A(n603), .B(b[15]), .ZN(n393) );
  XNOR2_X1 U681 ( .A(n613), .B(n424), .ZN(n342) );
  XNOR2_X1 U682 ( .A(n613), .B(n423), .ZN(n341) );
  XNOR2_X1 U683 ( .A(n613), .B(n599), .ZN(n343) );
  XNOR2_X1 U684 ( .A(n613), .B(n422), .ZN(n340) );
  OAI22_X1 U685 ( .A1(n580), .A2(n339), .B1(n338), .B2(n549), .ZN(n265) );
  OAI22_X1 U686 ( .A1(n579), .A2(n340), .B1(n339), .B2(n548), .ZN(n266) );
  OAI22_X1 U687 ( .A1(n580), .A2(n341), .B1(n340), .B2(n496), .ZN(n267) );
  OAI22_X1 U688 ( .A1(n34), .A2(n342), .B1(n341), .B2(n549), .ZN(n268) );
  OAI22_X1 U689 ( .A1(n34), .A2(n614), .B1(n344), .B2(n549), .ZN(n253) );
  OAI22_X1 U690 ( .A1(n579), .A2(n343), .B1(n342), .B2(n496), .ZN(n269) );
  NAND2_X1 U691 ( .A1(n428), .A2(n531), .ZN(n34) );
  OAI22_X1 U692 ( .A1(n574), .A2(n358), .B1(n357), .B2(n583), .ZN(n282) );
  OAI22_X1 U693 ( .A1(n573), .A2(n356), .B1(n355), .B2(n582), .ZN(n280) );
  OAI22_X1 U694 ( .A1(n573), .A2(n360), .B1(n359), .B2(n583), .ZN(n284) );
  OAI22_X1 U695 ( .A1(n573), .A2(n362), .B1(n361), .B2(n583), .ZN(n286) );
  OAI22_X1 U696 ( .A1(n574), .A2(n357), .B1(n356), .B2(n582), .ZN(n281) );
  OAI22_X1 U697 ( .A1(n574), .A2(n361), .B1(n360), .B2(n582), .ZN(n285) );
  OAI22_X1 U698 ( .A1(n573), .A2(n544), .B1(n364), .B2(n583), .ZN(n255) );
  OAI22_X1 U699 ( .A1(n574), .A2(n355), .B1(n354), .B2(n582), .ZN(n279) );
  OAI22_X1 U700 ( .A1(n23), .A2(n359), .B1(n582), .B2(n358), .ZN(n283) );
  OAI22_X1 U701 ( .A1(n23), .A2(n363), .B1(n583), .B2(n362), .ZN(n287) );
  AOI21_X1 U702 ( .B1(n590), .B2(n532), .A(n581), .ZN(n99) );
  XNOR2_X1 U703 ( .A(n55), .B(n576), .ZN(product[6]) );
  OAI21_X1 U704 ( .B1(n105), .B2(n107), .A(n106), .ZN(n104) );
  INV_X1 U705 ( .A(n578), .ZN(n127) );
  NOR2_X1 U706 ( .A1(n578), .A2(n85), .ZN(n80) );
  NAND2_X1 U707 ( .A1(n204), .A2(n211), .ZN(n90) );
  NOR2_X1 U708 ( .A1(n204), .A2(n211), .ZN(n89) );
  OAI22_X1 U709 ( .A1(n29), .A2(n346), .B1(n345), .B2(n534), .ZN(n271) );
  OAI22_X1 U710 ( .A1(n29), .A2(n350), .B1(n349), .B2(n534), .ZN(n275) );
  OAI22_X1 U711 ( .A1(n29), .A2(n347), .B1(n346), .B2(n534), .ZN(n272) );
  OAI22_X1 U712 ( .A1(n29), .A2(n351), .B1(n350), .B2(n534), .ZN(n276) );
  OAI22_X1 U713 ( .A1(n29), .A2(n348), .B1(n347), .B2(n534), .ZN(n273) );
  OAI22_X1 U714 ( .A1(n29), .A2(n349), .B1(n348), .B2(n534), .ZN(n274) );
  OAI22_X1 U715 ( .A1(n29), .A2(n612), .B1(n353), .B2(n534), .ZN(n254) );
  OAI22_X1 U716 ( .A1(n29), .A2(n352), .B1(n351), .B2(n534), .ZN(n277) );
  NAND2_X1 U717 ( .A1(n590), .A2(n103), .ZN(n55) );
  XNOR2_X1 U718 ( .A(n77), .B(n48), .ZN(product[13]) );
  XNOR2_X1 U719 ( .A(n568), .B(n421), .ZN(n372) );
  XNOR2_X1 U720 ( .A(n535), .B(n423), .ZN(n374) );
  XNOR2_X1 U721 ( .A(n609), .B(n422), .ZN(n373) );
  XNOR2_X1 U722 ( .A(n568), .B(n419), .ZN(n370) );
  XNOR2_X1 U723 ( .A(n568), .B(n420), .ZN(n371) );
  XNOR2_X1 U724 ( .A(n608), .B(n424), .ZN(n375) );
  INV_X1 U725 ( .A(n1), .ZN(n598) );
  INV_X1 U726 ( .A(n1), .ZN(n604) );
  OAI21_X1 U727 ( .B1(n82), .B2(n86), .A(n83), .ZN(n81) );
  XOR2_X1 U728 ( .A(n56), .B(n495), .Z(product[5]) );
  NAND2_X1 U729 ( .A1(n151), .A2(n139), .ZN(n62) );
  OAI22_X1 U730 ( .A1(n553), .A2(n367), .B1(n366), .B2(n521), .ZN(n290) );
  OAI22_X1 U731 ( .A1(n553), .A2(n370), .B1(n369), .B2(n521), .ZN(n293) );
  OAI22_X1 U732 ( .A1(n18), .A2(n368), .B1(n367), .B2(n511), .ZN(n291) );
  OAI22_X1 U733 ( .A1(n541), .A2(n375), .B1(n374), .B2(n521), .ZN(n298) );
  OAI22_X1 U734 ( .A1(n372), .A2(n18), .B1(n371), .B2(n511), .ZN(n295) );
  OAI22_X1 U735 ( .A1(n526), .A2(n551), .B1(n377), .B2(n513), .ZN(n256) );
  OAI22_X1 U736 ( .A1(n18), .A2(n374), .B1(n373), .B2(n511), .ZN(n297) );
  OAI22_X1 U737 ( .A1(n18), .A2(n369), .B1(n368), .B2(n511), .ZN(n292) );
  OAI22_X1 U738 ( .A1(n18), .A2(n371), .B1(n370), .B2(n511), .ZN(n294) );
  OAI22_X1 U739 ( .A1(n541), .A2(n376), .B1(n375), .B2(n513), .ZN(n299) );
  OAI22_X1 U740 ( .A1(n18), .A2(n373), .B1(n372), .B2(n511), .ZN(n296) );
  OAI22_X1 U741 ( .A1(n18), .A2(n366), .B1(n365), .B2(n511), .ZN(n289) );
  XNOR2_X1 U742 ( .A(n500), .B(n420), .ZN(n386) );
  XNOR2_X1 U743 ( .A(n500), .B(n599), .ZN(n391) );
  INV_X1 U744 ( .A(n511), .ZN(n245) );
  XNOR2_X1 U745 ( .A(n500), .B(n422), .ZN(n388) );
  XNOR2_X1 U746 ( .A(n605), .B(n421), .ZN(n387) );
  XNOR2_X1 U747 ( .A(n499), .B(n423), .ZN(n389) );
  XNOR2_X1 U748 ( .A(n606), .B(n424), .ZN(n390) );
  OAI21_X1 U749 ( .B1(n87), .B2(n85), .A(n545), .ZN(n84) );
  XNOR2_X1 U750 ( .A(n602), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U751 ( .A(n602), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U752 ( .A(n602), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U753 ( .A(n602), .B(n418), .ZN(n401) );
  XNOR2_X1 U754 ( .A(n602), .B(n420), .ZN(n403) );
  XNOR2_X1 U755 ( .A(n602), .B(n419), .ZN(n402) );
  XNOR2_X1 U756 ( .A(n602), .B(n421), .ZN(n404) );
  XNOR2_X1 U757 ( .A(n602), .B(n422), .ZN(n405) );
  INV_X2 U758 ( .A(n598), .ZN(n602) );
  XNOR2_X1 U759 ( .A(n602), .B(n424), .ZN(n407) );
  XNOR2_X1 U760 ( .A(n528), .B(n599), .ZN(n408) );
  XNOR2_X1 U761 ( .A(n602), .B(n423), .ZN(n406) );
  NAND2_X1 U762 ( .A1(n328), .A2(n314), .ZN(n119) );
  INV_X1 U763 ( .A(n88), .ZN(n87) );
  OAI21_X1 U764 ( .B1(n64), .B2(n577), .A(n65), .ZN(n63) );
  XNOR2_X1 U765 ( .A(n70), .B(n47), .ZN(product[14]) );
  OAI21_X1 U766 ( .B1(n45), .B2(n78), .A(n79), .ZN(n77) );
  OAI21_X1 U767 ( .B1(n512), .B2(n518), .A(n72), .ZN(n70) );
  NOR2_X1 U768 ( .A1(n234), .A2(n257), .ZN(n113) );
  XOR2_X1 U769 ( .A(n91), .B(n52), .Z(product[9]) );
  XNOR2_X1 U770 ( .A(n536), .B(n53), .ZN(product[8]) );
  XOR2_X1 U771 ( .A(n58), .B(n115), .Z(product[3]) );
  OAI22_X1 U772 ( .A1(n560), .A2(n395), .B1(n394), .B2(n601), .ZN(n316) );
  OAI22_X1 U773 ( .A1(n560), .A2(n394), .B1(n393), .B2(n601), .ZN(n315) );
  OAI22_X1 U774 ( .A1(n560), .A2(n396), .B1(n395), .B2(n601), .ZN(n317) );
  OAI22_X1 U775 ( .A1(n560), .A2(n397), .B1(n396), .B2(n601), .ZN(n318) );
  OAI22_X1 U776 ( .A1(n560), .A2(n398), .B1(n397), .B2(n601), .ZN(n319) );
  OAI22_X1 U777 ( .A1(n560), .A2(n400), .B1(n399), .B2(n601), .ZN(n321) );
  OAI22_X1 U778 ( .A1(n6), .A2(n399), .B1(n398), .B2(n601), .ZN(n320) );
  OAI22_X1 U779 ( .A1(n6), .A2(n401), .B1(n400), .B2(n601), .ZN(n322) );
  OAI22_X1 U780 ( .A1(n6), .A2(n402), .B1(n401), .B2(n601), .ZN(n323) );
  NAND2_X1 U781 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI22_X1 U782 ( .A1(n6), .A2(n404), .B1(n403), .B2(n601), .ZN(n325) );
  OAI22_X1 U783 ( .A1(n6), .A2(n403), .B1(n402), .B2(n601), .ZN(n324) );
  OAI22_X1 U784 ( .A1(n560), .A2(n406), .B1(n405), .B2(n601), .ZN(n327) );
  OAI22_X1 U785 ( .A1(n560), .A2(n405), .B1(n404), .B2(n601), .ZN(n326) );
  OAI22_X1 U786 ( .A1(n560), .A2(n407), .B1(n406), .B2(n601), .ZN(n328) );
  OAI22_X1 U787 ( .A1(n560), .A2(n408), .B1(n407), .B2(n601), .ZN(n329) );
  OAI22_X1 U788 ( .A1(n560), .A2(n509), .B1(n409), .B2(n601), .ZN(n258) );
  OAI22_X1 U789 ( .A1(n519), .A2(n379), .B1(n378), .B2(n530), .ZN(n301) );
  OAI22_X1 U790 ( .A1(n555), .A2(n380), .B1(n379), .B2(n597), .ZN(n302) );
  OAI22_X1 U791 ( .A1(n555), .A2(n385), .B1(n384), .B2(n530), .ZN(n307) );
  OAI22_X1 U792 ( .A1(n382), .A2(n555), .B1(n381), .B2(n597), .ZN(n304) );
  OAI22_X1 U793 ( .A1(n557), .A2(n381), .B1(n380), .B2(n597), .ZN(n303) );
  NAND2_X1 U794 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U795 ( .A1(n556), .A2(n383), .B1(n382), .B2(n597), .ZN(n305) );
  OAI22_X1 U796 ( .A1(n556), .A2(n384), .B1(n383), .B2(n597), .ZN(n306) );
  OAI22_X1 U797 ( .A1(n557), .A2(n386), .B1(n385), .B2(n597), .ZN(n308) );
  OAI22_X1 U798 ( .A1(n555), .A2(n387), .B1(n386), .B2(n597), .ZN(n309) );
  OAI22_X1 U799 ( .A1(n557), .A2(n552), .B1(n392), .B2(n530), .ZN(n257) );
  OAI22_X1 U800 ( .A1(n556), .A2(n389), .B1(n597), .B2(n388), .ZN(n311) );
  OAI22_X1 U801 ( .A1(n519), .A2(n388), .B1(n387), .B2(n597), .ZN(n310) );
  OAI22_X1 U802 ( .A1(n555), .A2(n390), .B1(n597), .B2(n389), .ZN(n312) );
  INV_X1 U803 ( .A(n597), .ZN(n247) );
  OAI22_X1 U804 ( .A1(n557), .A2(n391), .B1(n390), .B2(n597), .ZN(n313) );
  BUF_X4 U805 ( .A(n43), .Z(n599) );
  INV_X1 U806 ( .A(n540), .ZN(n609) );
  INV_X1 U807 ( .A(n31), .ZN(n614) );
  INV_X1 U808 ( .A(n36), .ZN(n615) );
  INV_X1 U809 ( .A(n617), .ZN(n616) );
  INV_X1 U810 ( .A(n40), .ZN(n617) );
  XOR2_X1 U811 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U812 ( .A(n289), .B(n279), .Z(n146) );
endmodule


module datapath_M16_N8_T16_P16_3_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n19,
         n20, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n44, n45, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n65, n67, n68, n69, n70, n71,
         n73, n75, n76, n77, n78, n79, n81, n83, n84, n86, n89, n90, n94, n95,
         n96, n98, n100, n157, n158, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183;

  CLKBUF_X1 U122 ( .A(A[14]), .Z(n157) );
  OR2_X1 U123 ( .A1(A[15]), .A2(B[15]), .ZN(n158) );
  AND2_X1 U124 ( .A1(n179), .A2(n86), .ZN(SUM[0]) );
  AOI21_X1 U125 ( .B1(n52), .B2(n60), .A(n53), .ZN(n160) );
  OR2_X1 U126 ( .A1(A[11]), .A2(B[11]), .ZN(n161) );
  XNOR2_X1 U127 ( .A(n37), .B(n162), .ZN(SUM[11]) );
  AND2_X1 U128 ( .A1(n161), .A2(n36), .ZN(n162) );
  OR2_X2 U129 ( .A1(A[9]), .A2(B[9]), .ZN(n163) );
  INV_X1 U130 ( .A(n161), .ZN(n164) );
  NOR2_X1 U131 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  CLKBUF_X1 U132 ( .A(n36), .Z(n165) );
  AOI21_X1 U133 ( .B1(n181), .B2(n68), .A(n65), .ZN(n166) );
  INV_X1 U134 ( .A(n169), .ZN(n44) );
  OR2_X2 U135 ( .A1(A[10]), .A2(B[10]), .ZN(n167) );
  INV_X1 U136 ( .A(n89), .ZN(n168) );
  NOR2_X1 U137 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  AND2_X1 U138 ( .A1(A[10]), .A2(B[10]), .ZN(n169) );
  AND2_X1 U139 ( .A1(A[9]), .A2(B[9]), .ZN(n170) );
  NOR2_X1 U140 ( .A1(A[8]), .A2(B[8]), .ZN(n171) );
  NOR2_X1 U141 ( .A1(A[12]), .A2(B[12]), .ZN(n172) );
  NOR2_X1 U142 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  NAND2_X1 U143 ( .A1(A[13]), .A2(B[13]), .ZN(n173) );
  BUF_X1 U144 ( .A(n26), .Z(n174) );
  NOR2_X1 U145 ( .A1(A[14]), .A2(B[14]), .ZN(n175) );
  NOR2_X1 U146 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  OR2_X1 U147 ( .A1(n157), .A2(B[14]), .ZN(n176) );
  AOI21_X1 U148 ( .B1(n38), .B2(n30), .A(n31), .ZN(n177) );
  AOI21_X1 U149 ( .B1(n38), .B2(n30), .A(n31), .ZN(n178) );
  INV_X1 U150 ( .A(n24), .ZN(n22) );
  NOR2_X1 U151 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  OR2_X1 U152 ( .A1(A[0]), .A2(B[0]), .ZN(n179) );
  INV_X1 U153 ( .A(n60), .ZN(n59) );
  INV_X1 U154 ( .A(n160), .ZN(n50) );
  AOI21_X1 U155 ( .B1(n167), .B2(n170), .A(n169), .ZN(n40) );
  AOI21_X1 U156 ( .B1(n181), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U157 ( .A(n67), .ZN(n65) );
  AOI21_X1 U158 ( .B1(n182), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U159 ( .A(n75), .ZN(n73) );
  AOI21_X1 U160 ( .B1(n183), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U161 ( .A(n83), .ZN(n81) );
  OAI21_X1 U162 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  OAI21_X1 U163 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  OAI21_X1 U164 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  OR2_X1 U165 ( .A1(n175), .A2(n28), .ZN(n180) );
  AOI21_X1 U166 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  AOI21_X1 U167 ( .B1(n50), .B2(n163), .A(n170), .ZN(n45) );
  INV_X1 U168 ( .A(n86), .ZN(n84) );
  OAI21_X1 U169 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  NAND2_X1 U170 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U171 ( .A(n61), .ZN(n96) );
  NAND2_X1 U172 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U173 ( .A(n69), .ZN(n98) );
  INV_X1 U174 ( .A(n172), .ZN(n90) );
  INV_X1 U175 ( .A(n28), .ZN(n89) );
  NAND2_X1 U176 ( .A1(n163), .A2(n49), .ZN(n8) );
  NAND2_X1 U177 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U178 ( .A(n57), .ZN(n95) );
  NAND2_X1 U179 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U180 ( .A(n77), .ZN(n100) );
  NAND2_X1 U181 ( .A1(n94), .A2(n55), .ZN(n9) );
  NAND2_X1 U182 ( .A1(n181), .A2(n67), .ZN(n12) );
  NAND2_X1 U183 ( .A1(n182), .A2(n75), .ZN(n14) );
  NAND2_X1 U184 ( .A1(n183), .A2(n83), .ZN(n16) );
  XNOR2_X1 U185 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  NAND2_X1 U186 ( .A1(n33), .A2(n90), .ZN(n5) );
  XOR2_X1 U187 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XNOR2_X1 U188 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  XNOR2_X1 U189 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  XOR2_X1 U190 ( .A(n15), .B(n79), .Z(SUM[2]) );
  NAND2_X1 U191 ( .A1(n89), .A2(n173), .ZN(n4) );
  NOR2_X1 U192 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NOR2_X1 U193 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NOR2_X1 U194 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NAND2_X1 U195 ( .A1(n176), .A2(n174), .ZN(n3) );
  XOR2_X1 U196 ( .A(n45), .B(n7), .Z(SUM[10]) );
  NAND2_X1 U197 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  OR2_X1 U198 ( .A1(A[5]), .A2(B[5]), .ZN(n181) );
  OR2_X1 U199 ( .A1(A[3]), .A2(B[3]), .ZN(n182) );
  OR2_X1 U200 ( .A1(A[1]), .A2(B[1]), .ZN(n183) );
  XNOR2_X1 U201 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XNOR2_X1 U202 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XNOR2_X1 U203 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NAND2_X1 U204 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  NAND2_X1 U205 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  NAND2_X1 U206 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U207 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  NAND2_X1 U208 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U209 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NAND2_X1 U210 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U211 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U212 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  NAND2_X1 U213 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  XOR2_X1 U214 ( .A(n11), .B(n166), .Z(SUM[6]) );
  XOR2_X1 U215 ( .A(n13), .B(n71), .Z(SUM[4]) );
  NAND2_X1 U216 ( .A1(n158), .A2(n19), .ZN(n2) );
  NAND2_X1 U217 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  NAND2_X1 U218 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  NAND2_X1 U219 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  NOR2_X1 U220 ( .A1(n172), .A2(n35), .ZN(n30) );
  OAI21_X1 U221 ( .B1(n37), .B2(n164), .A(n165), .ZN(n34) );
  OAI21_X1 U222 ( .B1(n32), .B2(n36), .A(n33), .ZN(n31) );
  INV_X1 U223 ( .A(n38), .ZN(n37) );
  OAI21_X1 U224 ( .B1(n39), .B2(n51), .A(n40), .ZN(n38) );
  INV_X1 U225 ( .A(n171), .ZN(n94) );
  NOR2_X1 U226 ( .A1(n171), .A2(n57), .ZN(n52) );
  OAI21_X1 U227 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  NOR2_X1 U228 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  NAND2_X1 U229 ( .A1(A[15]), .A2(B[15]), .ZN(n19) );
  OAI21_X1 U230 ( .B1(n25), .B2(n29), .A(n26), .ZN(n24) );
  XNOR2_X1 U231 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  NAND2_X1 U232 ( .A1(n167), .A2(n44), .ZN(n7) );
  NAND2_X1 U233 ( .A1(n167), .A2(n163), .ZN(n39) );
  XNOR2_X1 U234 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  XOR2_X1 U235 ( .A(n178), .B(n4), .Z(SUM[13]) );
  OAI21_X1 U236 ( .B1(n178), .B2(n168), .A(n173), .ZN(n27) );
  OAI21_X1 U237 ( .B1(n177), .B2(n180), .A(n22), .ZN(n20) );
endmodule


module datapath_M16_N8_T16_P16_3 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n13), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n223), .CK(clk), .Q(n16) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n224), .CK(clk), .Q(n17) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n225), .CK(clk), .Q(n18) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n226), .CK(clk), .Q(n19) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n227), .CK(clk), .Q(n20) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n228), .CK(clk), .Q(n21) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n229), .CK(clk), .Q(n22) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n230), .CK(clk), .Q(n23) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n231), .CK(clk), .Q(n24) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n232), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n233), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n234), .CK(clk), .Q(n27) );
  DFF_X1 \f_reg[0]  ( .D(n112), .CK(clk), .Q(n57), .QN(n212) );
  DFF_X1 \f_reg[1]  ( .D(n111), .CK(clk), .Q(n55), .QN(n213) );
  DFF_X1 \f_reg[2]  ( .D(n102), .CK(clk), .Q(n53), .QN(n214) );
  DFF_X1 \f_reg[3]  ( .D(n85), .CK(clk), .Q(f[3]), .QN(n61) );
  DFF_X1 \data_out_reg[15]  ( .D(n114), .CK(clk), .Q(data_out[15]), .QN(n195)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n165), .CK(clk), .Q(data_out[14]), .QN(n194)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n166), .CK(clk), .Q(data_out[13]), .QN(n193)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n167), .CK(clk), .Q(data_out[12]), .QN(n192)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n168), .CK(clk), .Q(data_out[11]), .QN(n191)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n169), .CK(clk), .Q(data_out[10]), .QN(n190)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n170), .CK(clk), .Q(data_out[9]), .QN(n189) );
  DFF_X1 \data_out_reg[8]  ( .D(n171), .CK(clk), .Q(data_out[8]), .QN(n188) );
  DFF_X1 \data_out_reg[7]  ( .D(n172), .CK(clk), .Q(data_out[7]), .QN(n187) );
  DFF_X1 \data_out_reg[6]  ( .D(n173), .CK(clk), .Q(data_out[6]), .QN(n186) );
  DFF_X1 \data_out_reg[5]  ( .D(n174), .CK(clk), .Q(data_out[5]), .QN(n185) );
  DFF_X1 \data_out_reg[4]  ( .D(n175), .CK(clk), .Q(data_out[4]), .QN(n184) );
  DFF_X1 \data_out_reg[3]  ( .D(n176), .CK(clk), .Q(data_out[3]), .QN(n183) );
  DFF_X1 \data_out_reg[2]  ( .D(n177), .CK(clk), .Q(data_out[2]), .QN(n182) );
  DFF_X1 \data_out_reg[1]  ( .D(n178), .CK(clk), .Q(data_out[1]), .QN(n181) );
  DFF_X1 \data_out_reg[0]  ( .D(n179), .CK(clk), .Q(data_out[0]), .QN(n180) );
  datapath_M16_N8_T16_P16_3_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_3_DW01_add_2 add_262 ( .A({n202, n201, n200, n199, 
        n198, n197, n211, n210, n209, n208, n207, n206, n205, n204, n203, n196}), .B({f[15], n38, n39, n41, n43, n45, f[9:3], n53, n55, n57}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X2 delay_reg ( .D(n113), .CK(clk), .Q(n10), .QN(n239) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n238), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n237), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n236), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n235), .CK(clk), .Q(n28) );
  DFF_X1 \f_reg[4]  ( .D(n83), .CK(clk), .Q(f[4]), .QN(n62) );
  DFF_X1 \f_reg[5]  ( .D(n82), .CK(clk), .Q(f[5]), .QN(n63) );
  DFF_X1 \f_reg[6]  ( .D(n81), .CK(clk), .Q(f[6]), .QN(n64) );
  DFF_X1 \f_reg[7]  ( .D(n80), .CK(clk), .Q(f[7]), .QN(n215) );
  DFF_X1 \f_reg[8]  ( .D(n79), .CK(clk), .Q(f[8]), .QN(n216) );
  DFF_X1 \f_reg[9]  ( .D(n78), .CK(clk), .Q(f[9]), .QN(n217) );
  DFF_X1 \f_reg[10]  ( .D(n77), .CK(clk), .Q(n45), .QN(n218) );
  DFF_X1 \f_reg[14]  ( .D(n73), .CK(clk), .Q(n38), .QN(n222) );
  DFF_X1 \f_reg[11]  ( .D(n76), .CK(clk), .Q(n43), .QN(n219) );
  DFF_X1 \f_reg[13]  ( .D(n74), .CK(clk), .Q(n39), .QN(n221) );
  DFF_X1 \f_reg[12]  ( .D(n75), .CK(clk), .Q(n41), .QN(n220) );
  DFF_X1 \f_reg[15]  ( .D(n72), .CK(clk), .Q(f[15]), .QN(n69) );
  NAND2_X1 U3 ( .A1(data_out_b[15]), .A2(n13), .ZN(n1) );
  NAND2_X1 U4 ( .A1(adder[15]), .A2(n11), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n59), .A2(f[15]), .ZN(n4) );
  AND3_X1 U6 ( .A1(n1), .A2(n2), .A3(n4), .ZN(n37) );
  AND2_X4 U8 ( .A1(n36), .A2(n14), .ZN(n11) );
  AND2_X1 U9 ( .A1(clear_acc_delay), .A2(n239), .ZN(n5) );
  MUX2_X1 U10 ( .A(N39), .B(n21), .S(n10), .Z(n197) );
  MUX2_X2 U11 ( .A(n20), .B(N40), .S(n239), .Z(n198) );
  MUX2_X2 U12 ( .A(n22), .B(N38), .S(n239), .Z(n211) );
  AND2_X1 U13 ( .A1(n9), .A2(n7), .ZN(n6) );
  NAND2_X1 U14 ( .A1(n8), .A2(n6), .ZN(n73) );
  MUX2_X2 U15 ( .A(n23), .B(N37), .S(n239), .Z(n210) );
  MUX2_X2 U16 ( .A(n19), .B(N41), .S(n239), .Z(n199) );
  MUX2_X2 U17 ( .A(n18), .B(N42), .S(n239), .Z(n200) );
  NAND2_X1 U18 ( .A1(data_out_b[14]), .A2(n13), .ZN(n7) );
  NAND2_X1 U19 ( .A1(adder[14]), .A2(n11), .ZN(n8) );
  NAND2_X1 U20 ( .A1(n59), .A2(n38), .ZN(n9) );
  MUX2_X2 U21 ( .A(N43), .B(n17), .S(n10), .Z(n201) );
  INV_X1 U22 ( .A(n14), .ZN(n13) );
  NAND2_X1 U23 ( .A1(n113), .A2(n12), .ZN(n241) );
  INV_X1 U24 ( .A(n36), .ZN(n59) );
  INV_X1 U25 ( .A(clear_acc), .ZN(n14) );
  OAI22_X1 U26 ( .A1(n183), .A2(n241), .B1(n61), .B2(n240), .ZN(n176) );
  OAI22_X1 U27 ( .A1(n184), .A2(n241), .B1(n62), .B2(n240), .ZN(n175) );
  OAI22_X1 U28 ( .A1(n185), .A2(n241), .B1(n63), .B2(n240), .ZN(n174) );
  OAI22_X1 U29 ( .A1(n186), .A2(n241), .B1(n64), .B2(n240), .ZN(n173) );
  OAI22_X1 U30 ( .A1(n187), .A2(n241), .B1(n215), .B2(n240), .ZN(n172) );
  OAI22_X1 U31 ( .A1(n188), .A2(n241), .B1(n216), .B2(n240), .ZN(n171) );
  OAI22_X1 U32 ( .A1(n189), .A2(n241), .B1(n217), .B2(n240), .ZN(n170) );
  INV_X1 U33 ( .A(wr_en_y), .ZN(n12) );
  INV_X1 U34 ( .A(m_ready), .ZN(n15) );
  NAND2_X1 U35 ( .A1(m_valid), .A2(n15), .ZN(n34) );
  OAI21_X1 U36 ( .B1(sel[4]), .B2(n71), .A(n34), .ZN(n113) );
  MUX2_X1 U37 ( .A(n16), .B(N44), .S(n5), .Z(n223) );
  MUX2_X1 U38 ( .A(n16), .B(N44), .S(n239), .Z(n202) );
  MUX2_X1 U39 ( .A(n17), .B(N43), .S(n5), .Z(n224) );
  MUX2_X1 U40 ( .A(n18), .B(N42), .S(n5), .Z(n225) );
  MUX2_X1 U41 ( .A(n19), .B(N41), .S(n5), .Z(n226) );
  MUX2_X1 U42 ( .A(n20), .B(N40), .S(n5), .Z(n227) );
  MUX2_X1 U43 ( .A(n21), .B(N39), .S(n5), .Z(n228) );
  MUX2_X1 U44 ( .A(n22), .B(N38), .S(n5), .Z(n229) );
  MUX2_X1 U45 ( .A(n23), .B(N37), .S(n5), .Z(n230) );
  MUX2_X1 U46 ( .A(n24), .B(N36), .S(n5), .Z(n231) );
  MUX2_X1 U47 ( .A(n24), .B(N36), .S(n239), .Z(n209) );
  MUX2_X1 U48 ( .A(n25), .B(N35), .S(n5), .Z(n232) );
  MUX2_X1 U49 ( .A(n25), .B(N35), .S(n239), .Z(n208) );
  MUX2_X1 U50 ( .A(n26), .B(N34), .S(n5), .Z(n233) );
  MUX2_X1 U51 ( .A(n26), .B(N34), .S(n239), .Z(n207) );
  MUX2_X1 U52 ( .A(n27), .B(N33), .S(n5), .Z(n234) );
  MUX2_X1 U53 ( .A(n27), .B(N33), .S(n239), .Z(n206) );
  MUX2_X1 U54 ( .A(n28), .B(N32), .S(n5), .Z(n235) );
  MUX2_X1 U55 ( .A(n28), .B(N32), .S(n239), .Z(n205) );
  MUX2_X1 U56 ( .A(n29), .B(N31), .S(n5), .Z(n236) );
  MUX2_X1 U57 ( .A(n29), .B(N31), .S(n239), .Z(n204) );
  MUX2_X1 U58 ( .A(n32), .B(N30), .S(n5), .Z(n237) );
  MUX2_X1 U59 ( .A(n32), .B(N30), .S(n239), .Z(n203) );
  MUX2_X1 U60 ( .A(n33), .B(N29), .S(n5), .Z(n238) );
  MUX2_X1 U61 ( .A(n33), .B(N29), .S(n239), .Z(n196) );
  INV_X1 U62 ( .A(n34), .ZN(n35) );
  OAI21_X1 U63 ( .B1(n35), .B2(n10), .A(n14), .ZN(n36) );
  INV_X1 U64 ( .A(n37), .ZN(n72) );
  AOI222_X1 U65 ( .A1(data_out_b[13]), .A2(n13), .B1(adder[13]), .B2(n11), 
        .C1(n59), .C2(n39), .ZN(n40) );
  INV_X1 U66 ( .A(n40), .ZN(n74) );
  AOI222_X1 U67 ( .A1(data_out_b[12]), .A2(n13), .B1(adder[12]), .B2(n11), 
        .C1(n59), .C2(n41), .ZN(n42) );
  INV_X1 U68 ( .A(n42), .ZN(n75) );
  AOI222_X1 U69 ( .A1(data_out_b[11]), .A2(n13), .B1(adder[11]), .B2(n11), 
        .C1(n59), .C2(n43), .ZN(n44) );
  INV_X1 U70 ( .A(n44), .ZN(n76) );
  AOI222_X1 U71 ( .A1(data_out_b[10]), .A2(n13), .B1(adder[10]), .B2(n11), 
        .C1(n59), .C2(n45), .ZN(n46) );
  INV_X1 U72 ( .A(n46), .ZN(n77) );
  AOI222_X1 U73 ( .A1(data_out_b[8]), .A2(n13), .B1(adder[8]), .B2(n11), .C1(
        n59), .C2(f[8]), .ZN(n47) );
  INV_X1 U74 ( .A(n47), .ZN(n79) );
  AOI222_X1 U75 ( .A1(data_out_b[7]), .A2(n13), .B1(adder[7]), .B2(n11), .C1(
        n59), .C2(f[7]), .ZN(n48) );
  INV_X1 U76 ( .A(n48), .ZN(n80) );
  AOI222_X1 U77 ( .A1(data_out_b[6]), .A2(n13), .B1(adder[6]), .B2(n11), .C1(
        n59), .C2(f[6]), .ZN(n49) );
  INV_X1 U78 ( .A(n49), .ZN(n81) );
  AOI222_X1 U79 ( .A1(data_out_b[5]), .A2(n13), .B1(adder[5]), .B2(n11), .C1(
        n59), .C2(f[5]), .ZN(n50) );
  INV_X1 U80 ( .A(n50), .ZN(n82) );
  AOI222_X1 U81 ( .A1(data_out_b[4]), .A2(n13), .B1(adder[4]), .B2(n11), .C1(
        n59), .C2(f[4]), .ZN(n51) );
  INV_X1 U82 ( .A(n51), .ZN(n83) );
  AOI222_X1 U83 ( .A1(data_out_b[3]), .A2(n13), .B1(adder[3]), .B2(n11), .C1(
        n59), .C2(f[3]), .ZN(n52) );
  INV_X1 U84 ( .A(n52), .ZN(n85) );
  AOI222_X1 U85 ( .A1(data_out_b[2]), .A2(n13), .B1(adder[2]), .B2(n11), .C1(
        n59), .C2(n53), .ZN(n54) );
  INV_X1 U86 ( .A(n54), .ZN(n102) );
  AOI222_X1 U87 ( .A1(data_out_b[1]), .A2(n13), .B1(adder[1]), .B2(n11), .C1(
        n59), .C2(n55), .ZN(n56) );
  INV_X1 U88 ( .A(n56), .ZN(n111) );
  AOI222_X1 U89 ( .A1(data_out_b[0]), .A2(n13), .B1(adder[0]), .B2(n11), .C1(
        n59), .C2(n57), .ZN(n58) );
  INV_X1 U90 ( .A(n58), .ZN(n112) );
  AOI222_X1 U91 ( .A1(data_out_b[9]), .A2(n13), .B1(adder[9]), .B2(n11), .C1(
        n59), .C2(f[9]), .ZN(n60) );
  INV_X1 U92 ( .A(n60), .ZN(n78) );
  NOR4_X1 U93 ( .A1(n43), .A2(n41), .A3(n39), .A4(n38), .ZN(n68) );
  NOR4_X1 U94 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n45), .ZN(n67) );
  NAND4_X1 U95 ( .A1(n64), .A2(n63), .A3(n62), .A4(n61), .ZN(n65) );
  NOR4_X1 U96 ( .A1(n65), .A2(n57), .A3(n55), .A4(n53), .ZN(n66) );
  NAND3_X1 U97 ( .A1(n68), .A2(n67), .A3(n66), .ZN(n70) );
  NAND3_X1 U98 ( .A1(wr_en_y), .A2(n70), .A3(n69), .ZN(n240) );
  OAI22_X1 U99 ( .A1(n180), .A2(n241), .B1(n212), .B2(n240), .ZN(n179) );
  OAI22_X1 U100 ( .A1(n181), .A2(n241), .B1(n213), .B2(n240), .ZN(n178) );
  OAI22_X1 U101 ( .A1(n182), .A2(n241), .B1(n214), .B2(n240), .ZN(n177) );
  OAI22_X1 U102 ( .A1(n190), .A2(n241), .B1(n218), .B2(n240), .ZN(n169) );
  OAI22_X1 U103 ( .A1(n191), .A2(n241), .B1(n219), .B2(n240), .ZN(n168) );
  OAI22_X1 U104 ( .A1(n192), .A2(n241), .B1(n220), .B2(n240), .ZN(n167) );
  OAI22_X1 U105 ( .A1(n193), .A2(n241), .B1(n221), .B2(n240), .ZN(n166) );
  OAI22_X1 U106 ( .A1(n194), .A2(n241), .B1(n222), .B2(n240), .ZN(n165) );
  OAI22_X1 U107 ( .A1(n195), .A2(n241), .B1(n69), .B2(n240), .ZN(n114) );
  AND4_X1 U108 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n71)
         );
endmodule


module datapath_M16_N8_T16_P16_2_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n27, n29, n31,
         n32, n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n95, n96, n97, n98, n99,
         n101, n103, n104, n105, n106, n107, n111, n112, n113, n114, n115,
         n117, n119, n120, n122, n125, n127, n131, n133, n135, n139, n141,
         n142, n143, n144, n145, n146, n147, n148, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n237, n245, n249, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n418, n419, n420, n421, n422, n423, n424, n426, n427,
         n429, n432, n433, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n561, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
         n587, n588, n589, n590, n591;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  XOR2_X1 U146 ( .A(n161), .B(n142), .Z(n143) );
  XOR2_X1 U148 ( .A(n265), .B(n144), .Z(n145) );
  XOR2_X1 U150 ( .A(n271), .B(n146), .Z(n147) );
  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U161 ( .A(n177), .B(n168), .CI(n166), .CO(n163), .S(n164) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n317), .B(n252), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U168 ( .A(n182), .B(n184), .CI(n189), .CO(n177), .S(n178) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n274), .CI(n292), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n305), .B(n253), .CI(n283), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n319), .B(n269), .CO(n193), .S(n194) );
  FA_X1 U177 ( .A(n205), .B(n200), .CI(n198), .CO(n195), .S(n196) );
  FA_X1 U178 ( .A(n207), .B(n209), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n276), .B(n284), .CI(n294), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n306), .B(n270), .CI(n320), .CO(n201), .S(n202) );
  FA_X1 U182 ( .A(n210), .B(n307), .CI(n215), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n295), .B(n285), .CI(n254), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U188 ( .A(n225), .B(n222), .CI(n220), .CO(n217), .S(n218) );
  FA_X1 U189 ( .A(n255), .B(n309), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n323), .B(n287), .CO(n221), .S(n222) );
  FA_X1 U192 ( .A(n310), .B(n288), .CI(n324), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n325), .B(n311), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n326), .B(n300), .CI(n312), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  XNOR2_X1 U414 ( .A(n206), .B(n490), .ZN(n204) );
  XNOR2_X1 U415 ( .A(n213), .B(n208), .ZN(n490) );
  XNOR2_X1 U416 ( .A(n226), .B(n491), .ZN(n224) );
  XNOR2_X1 U417 ( .A(n229), .B(n298), .ZN(n491) );
  AND2_X2 U418 ( .A1(n212), .A2(n217), .ZN(n493) );
  AND2_X1 U419 ( .A1(n232), .A2(n233), .ZN(n502) );
  BUF_X2 U420 ( .A(n16), .Z(n563) );
  INV_X1 U421 ( .A(n502), .ZN(n111) );
  OR2_X1 U422 ( .A1(n329), .A2(n258), .ZN(n492) );
  INV_X2 U423 ( .A(n583), .ZN(n538) );
  BUF_X2 U424 ( .A(n578), .Z(n525) );
  INV_X1 U425 ( .A(n589), .ZN(n494) );
  INV_X1 U426 ( .A(n589), .ZN(n495) );
  XNOR2_X1 U427 ( .A(n496), .B(n147), .ZN(n144) );
  XNOR2_X1 U428 ( .A(n301), .B(n148), .ZN(n496) );
  NOR2_X1 U429 ( .A1(n164), .A2(n175), .ZN(n497) );
  NOR2_X1 U430 ( .A1(n164), .A2(n175), .ZN(n75) );
  INV_X1 U431 ( .A(n584), .ZN(n498) );
  INV_X2 U432 ( .A(n585), .ZN(n584) );
  NOR2_X1 U433 ( .A1(n186), .A2(n195), .ZN(n499) );
  NOR2_X1 U434 ( .A1(n186), .A2(n195), .ZN(n82) );
  BUF_X1 U435 ( .A(n582), .Z(n500) );
  INV_X1 U436 ( .A(n524), .ZN(n501) );
  CLKBUF_X1 U437 ( .A(n112), .Z(n503) );
  CLKBUF_X1 U438 ( .A(n86), .Z(n504) );
  INV_X1 U439 ( .A(n536), .ZN(n505) );
  NOR2_X1 U440 ( .A1(n228), .A2(n231), .ZN(n506) );
  NOR2_X1 U441 ( .A1(n228), .A2(n231), .ZN(n105) );
  INV_X1 U442 ( .A(n567), .ZN(n507) );
  INV_X1 U443 ( .A(n567), .ZN(n9) );
  XNOR2_X1 U444 ( .A(n585), .B(a[10]), .ZN(n508) );
  AOI21_X1 U445 ( .B1(n558), .B2(n112), .A(n502), .ZN(n509) );
  OAI21_X1 U446 ( .B1(n506), .B2(n107), .A(n106), .ZN(n510) );
  AOI21_X1 U447 ( .B1(n510), .B2(n569), .A(n101), .ZN(n511) );
  XNOR2_X1 U448 ( .A(n553), .B(n512), .ZN(product[12]) );
  AND2_X1 U449 ( .A1(n528), .A2(n79), .ZN(n512) );
  INV_X1 U450 ( .A(n554), .ZN(n513) );
  NAND2_X1 U451 ( .A1(n9), .A2(n432), .ZN(n514) );
  NAND2_X1 U452 ( .A1(n9), .A2(n432), .ZN(n515) );
  CLKBUF_X1 U453 ( .A(n384), .Z(n516) );
  BUF_X1 U454 ( .A(n37), .Z(n517) );
  OR2_X1 U455 ( .A1(n518), .A2(n519), .ZN(n18) );
  XNOR2_X1 U456 ( .A(n580), .B(a[4]), .ZN(n518) );
  XNOR2_X1 U457 ( .A(n579), .B(a[4]), .ZN(n519) );
  OR2_X1 U458 ( .A1(n518), .A2(n519), .ZN(n520) );
  OR2_X1 U459 ( .A1(n518), .A2(n519), .ZN(n521) );
  OR2_X1 U460 ( .A1(n196), .A2(n203), .ZN(n522) );
  OR2_X2 U461 ( .A1(n523), .A2(n544), .ZN(n23) );
  XNOR2_X1 U462 ( .A(n19), .B(a[6]), .ZN(n523) );
  INV_X1 U463 ( .A(n544), .ZN(n21) );
  CLKBUF_X1 U464 ( .A(n576), .Z(n524) );
  XNOR2_X1 U465 ( .A(n585), .B(a[8]), .ZN(n429) );
  INV_X1 U466 ( .A(n19), .ZN(n526) );
  CLKBUF_X1 U467 ( .A(n85), .Z(n527) );
  OR2_X1 U468 ( .A1(n176), .A2(n185), .ZN(n528) );
  INV_X1 U469 ( .A(n539), .ZN(n529) );
  OAI21_X1 U470 ( .B1(n89), .B2(n91), .A(n90), .ZN(n530) );
  OAI21_X1 U471 ( .B1(n543), .B2(n89), .A(n90), .ZN(n531) );
  OAI21_X1 U472 ( .B1(n91), .B2(n89), .A(n90), .ZN(n88) );
  INV_X1 U473 ( .A(n131), .ZN(n532) );
  INV_X1 U474 ( .A(n526), .ZN(n533) );
  OR2_X2 U475 ( .A1(n534), .A2(n542), .ZN(n34) );
  XNOR2_X1 U476 ( .A(n586), .B(a[10]), .ZN(n534) );
  INV_X1 U477 ( .A(n508), .ZN(n32) );
  INV_X1 U478 ( .A(n575), .ZN(n535) );
  XNOR2_X1 U479 ( .A(n576), .B(a[2]), .ZN(n536) );
  NAND2_X1 U480 ( .A1(n429), .A2(n27), .ZN(n537) );
  INV_X1 U481 ( .A(n500), .ZN(n539) );
  BUF_X2 U482 ( .A(n573), .Z(n540) );
  INV_X1 U483 ( .A(n249), .ZN(n573) );
  INV_X1 U484 ( .A(n587), .ZN(n541) );
  XNOR2_X1 U485 ( .A(n579), .B(a[2]), .ZN(n432) );
  INV_X1 U486 ( .A(n579), .ZN(n577) );
  INV_X2 U487 ( .A(n7), .ZN(n579) );
  XOR2_X1 U488 ( .A(n579), .B(a[4]), .Z(n16) );
  OAI22_X1 U489 ( .A1(n521), .A2(n375), .B1(n374), .B2(n563), .ZN(n298) );
  XNOR2_X1 U490 ( .A(n585), .B(a[10]), .ZN(n542) );
  XNOR2_X1 U491 ( .A(n576), .B(n249), .ZN(n433) );
  AOI21_X1 U492 ( .B1(n96), .B2(n556), .A(n493), .ZN(n543) );
  AOI21_X1 U493 ( .B1(n96), .B2(n556), .A(n493), .ZN(n91) );
  XNOR2_X1 U494 ( .A(n582), .B(a[6]), .ZN(n544) );
  INV_X1 U495 ( .A(n582), .ZN(n580) );
  BUF_X1 U496 ( .A(n6), .Z(n566) );
  XNOR2_X1 U497 ( .A(n88), .B(n51), .ZN(product[10]) );
  INV_X1 U498 ( .A(n493), .ZN(n95) );
  NAND2_X1 U499 ( .A1(n206), .A2(n213), .ZN(n545) );
  NAND2_X1 U500 ( .A1(n206), .A2(n208), .ZN(n546) );
  NAND2_X1 U501 ( .A1(n213), .A2(n208), .ZN(n547) );
  NAND3_X1 U502 ( .A1(n545), .A2(n546), .A3(n547), .ZN(n203) );
  NAND2_X1 U503 ( .A1(n226), .A2(n229), .ZN(n548) );
  NAND2_X1 U504 ( .A1(n226), .A2(n298), .ZN(n549) );
  NAND2_X1 U505 ( .A1(n229), .A2(n298), .ZN(n550) );
  NAND3_X1 U506 ( .A1(n548), .A2(n549), .A3(n550), .ZN(n223) );
  BUF_X2 U507 ( .A(n6), .Z(n565) );
  NAND2_X1 U508 ( .A1(n432), .A2(n507), .ZN(n551) );
  NAND2_X1 U509 ( .A1(n432), .A2(n507), .ZN(n552) );
  AOI21_X1 U510 ( .B1(n80), .B2(n530), .A(n81), .ZN(n553) );
  INV_X1 U511 ( .A(n554), .ZN(n27) );
  XNOR2_X1 U512 ( .A(n526), .B(a[8]), .ZN(n554) );
  NAND2_X1 U513 ( .A1(n432), .A2(n9), .ZN(n12) );
  BUF_X1 U514 ( .A(n43), .Z(n571) );
  AOI21_X1 U515 ( .B1(n74), .B2(n555), .A(n67), .ZN(n65) );
  INV_X1 U516 ( .A(n69), .ZN(n67) );
  NAND2_X1 U517 ( .A1(n555), .A2(n69), .ZN(n47) );
  INV_X1 U518 ( .A(n73), .ZN(n71) );
  NAND2_X1 U519 ( .A1(n73), .A2(n555), .ZN(n64) );
  INV_X1 U520 ( .A(n74), .ZN(n72) );
  AOI21_X1 U521 ( .B1(n80), .B2(n530), .A(n81), .ZN(n45) );
  NOR2_X1 U522 ( .A1(n499), .A2(n85), .ZN(n80) );
  OAI21_X1 U523 ( .B1(n82), .B2(n86), .A(n83), .ZN(n81) );
  NAND2_X1 U524 ( .A1(n522), .A2(n86), .ZN(n51) );
  NAND2_X1 U525 ( .A1(n568), .A2(n90), .ZN(n52) );
  OR2_X1 U526 ( .A1(n152), .A2(n163), .ZN(n555) );
  INV_X1 U527 ( .A(n568), .ZN(n89) );
  NAND2_X1 U528 ( .A1(n125), .A2(n76), .ZN(n48) );
  INV_X1 U529 ( .A(n497), .ZN(n125) );
  OAI21_X1 U530 ( .B1(n75), .B2(n79), .A(n76), .ZN(n74) );
  NAND2_X1 U531 ( .A1(n127), .A2(n83), .ZN(n50) );
  INV_X1 U532 ( .A(n499), .ZN(n127) );
  NOR2_X1 U533 ( .A1(n497), .A2(n78), .ZN(n73) );
  NAND2_X1 U534 ( .A1(n152), .A2(n163), .ZN(n69) );
  OAI21_X1 U535 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  NAND2_X1 U536 ( .A1(n131), .A2(n98), .ZN(n54) );
  INV_X1 U537 ( .A(n97), .ZN(n131) );
  AOI21_X1 U538 ( .B1(n558), .B2(n112), .A(n502), .ZN(n107) );
  AOI21_X1 U539 ( .B1(n559), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U540 ( .A(n119), .ZN(n117) );
  NOR2_X1 U541 ( .A1(n196), .A2(n203), .ZN(n85) );
  NOR2_X1 U542 ( .A1(n176), .A2(n185), .ZN(n78) );
  NAND2_X1 U543 ( .A1(n556), .A2(n95), .ZN(n53) );
  OR2_X1 U544 ( .A1(n204), .A2(n211), .ZN(n568) );
  XNOR2_X1 U545 ( .A(n57), .B(n503), .ZN(product[4]) );
  NAND2_X1 U546 ( .A1(n558), .A2(n111), .ZN(n57) );
  NAND2_X1 U547 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U548 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U549 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U550 ( .A1(n186), .A2(n195), .ZN(n83) );
  NAND2_X1 U551 ( .A1(n204), .A2(n211), .ZN(n90) );
  OR2_X1 U552 ( .A1(n212), .A2(n217), .ZN(n556) );
  XOR2_X1 U553 ( .A(n58), .B(n115), .Z(product[3]) );
  NAND2_X1 U554 ( .A1(n135), .A2(n114), .ZN(n58) );
  INV_X1 U555 ( .A(n113), .ZN(n135) );
  XNOR2_X1 U556 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U557 ( .A1(n559), .A2(n119), .ZN(n59) );
  NAND2_X1 U558 ( .A1(n133), .A2(n106), .ZN(n56) );
  INV_X1 U559 ( .A(n506), .ZN(n133) );
  INV_X1 U560 ( .A(n524), .ZN(n575) );
  OR2_X1 U561 ( .A1(n151), .A2(n139), .ZN(n557) );
  XNOR2_X1 U562 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U563 ( .A1(n557), .A2(n62), .ZN(n46) );
  NAND2_X1 U564 ( .A1(n328), .A2(n314), .ZN(n119) );
  OR2_X1 U565 ( .A1(n232), .A2(n233), .ZN(n558) );
  OR2_X1 U566 ( .A1(n328), .A2(n314), .ZN(n559) );
  NAND2_X1 U567 ( .A1(n228), .A2(n231), .ZN(n106) );
  INV_X1 U568 ( .A(n37), .ZN(n237) );
  NAND2_X1 U569 ( .A1(n218), .A2(n223), .ZN(n98) );
  INV_X1 U570 ( .A(n41), .ZN(n235) );
  NAND2_X1 U571 ( .A1(n224), .A2(n227), .ZN(n103) );
  AND2_X1 U572 ( .A1(n492), .A2(n122), .ZN(product[1]) );
  XNOR2_X1 U573 ( .A(n586), .B(a[12]), .ZN(n37) );
  OAI22_X1 U574 ( .A1(n565), .A2(n407), .B1(n406), .B2(n540), .ZN(n328) );
  XNOR2_X1 U575 ( .A(n588), .B(a[14]), .ZN(n41) );
  OR2_X1 U576 ( .A1(n571), .A2(n535), .ZN(n409) );
  OR2_X1 U577 ( .A1(n571), .A2(n579), .ZN(n392) );
  OAI22_X1 U578 ( .A1(n565), .A2(n400), .B1(n399), .B2(n540), .ZN(n321) );
  XNOR2_X1 U579 ( .A(n584), .B(n571), .ZN(n352) );
  XNOR2_X1 U580 ( .A(n581), .B(n571), .ZN(n376) );
  OAI22_X1 U581 ( .A1(n564), .A2(n406), .B1(n405), .B2(n540), .ZN(n327) );
  OAI22_X1 U582 ( .A1(n564), .A2(n408), .B1(n407), .B2(n540), .ZN(n329) );
  XNOR2_X1 U583 ( .A(n155), .B(n561), .ZN(n139) );
  XNOR2_X1 U584 ( .A(n153), .B(n141), .ZN(n561) );
  XNOR2_X1 U585 ( .A(n157), .B(n562), .ZN(n141) );
  XNOR2_X1 U586 ( .A(n145), .B(n143), .ZN(n562) );
  OAI22_X1 U587 ( .A1(n42), .A2(n591), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U588 ( .A1(n571), .A2(n591), .ZN(n332) );
  OAI22_X1 U589 ( .A1(n566), .A2(n404), .B1(n403), .B2(n540), .ZN(n325) );
  OAI22_X1 U590 ( .A1(n564), .A2(n398), .B1(n397), .B2(n540), .ZN(n319) );
  XNOR2_X1 U591 ( .A(n541), .B(n571), .ZN(n343) );
  NAND2_X1 U592 ( .A1(n429), .A2(n27), .ZN(n29) );
  XOR2_X1 U593 ( .A(n315), .B(n261), .Z(n150) );
  OAI22_X1 U594 ( .A1(n565), .A2(n394), .B1(n393), .B2(n540), .ZN(n315) );
  AND2_X1 U595 ( .A1(n572), .A2(n245), .ZN(n300) );
  OAI22_X1 U596 ( .A1(n565), .A2(n405), .B1(n404), .B2(n573), .ZN(n326) );
  XNOR2_X1 U597 ( .A(n494), .B(n571), .ZN(n336) );
  AND2_X1 U598 ( .A1(n572), .A2(n536), .ZN(n314) );
  NAND2_X1 U599 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U600 ( .A(n494), .B(a[12]), .Z(n427) );
  AND2_X1 U601 ( .A1(n572), .A2(n554), .ZN(n278) );
  OAI22_X1 U602 ( .A1(n565), .A2(n401), .B1(n400), .B2(n540), .ZN(n322) );
  OAI22_X1 U603 ( .A1(n39), .A2(n336), .B1(n517), .B2(n335), .ZN(n263) );
  OAI22_X1 U604 ( .A1(n565), .A2(n397), .B1(n396), .B2(n540), .ZN(n318) );
  AND2_X1 U605 ( .A1(n572), .A2(n237), .ZN(n264) );
  AND2_X1 U606 ( .A1(n572), .A2(n544), .ZN(n288) );
  OAI22_X1 U607 ( .A1(n564), .A2(n403), .B1(n402), .B2(n540), .ZN(n324) );
  AND2_X1 U608 ( .A1(n572), .A2(n542), .ZN(n270) );
  OAI22_X1 U609 ( .A1(n566), .A2(n399), .B1(n398), .B2(n540), .ZN(n320) );
  AND2_X1 U610 ( .A1(n572), .A2(n235), .ZN(n260) );
  OAI22_X1 U611 ( .A1(n564), .A2(n395), .B1(n394), .B2(n540), .ZN(n316) );
  OAI22_X1 U612 ( .A1(n39), .A2(n335), .B1(n517), .B2(n334), .ZN(n262) );
  INV_X1 U613 ( .A(n25), .ZN(n585) );
  NAND2_X1 U614 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U615 ( .A(n590), .B(a[14]), .Z(n426) );
  OAI22_X1 U616 ( .A1(n566), .A2(n402), .B1(n401), .B2(n540), .ZN(n323) );
  INV_X1 U617 ( .A(n19), .ZN(n583) );
  OAI22_X1 U618 ( .A1(n564), .A2(n396), .B1(n395), .B2(n540), .ZN(n317) );
  OAI22_X1 U619 ( .A1(n39), .A2(n589), .B1(n337), .B2(n517), .ZN(n252) );
  OR2_X1 U620 ( .A1(n571), .A2(n589), .ZN(n337) );
  AND2_X1 U621 ( .A1(n572), .A2(n249), .ZN(product[0]) );
  OR2_X1 U622 ( .A1(n571), .A2(n587), .ZN(n344) );
  OR2_X1 U623 ( .A1(n571), .A2(n498), .ZN(n353) );
  OR2_X1 U624 ( .A1(n571), .A2(n583), .ZN(n364) );
  OR2_X1 U625 ( .A1(n571), .A2(n529), .ZN(n377) );
  XNOR2_X1 U626 ( .A(n538), .B(b[9]), .ZN(n354) );
  OAI22_X1 U627 ( .A1(n39), .A2(n334), .B1(n517), .B2(n333), .ZN(n261) );
  XNOR2_X1 U628 ( .A(n494), .B(n422), .ZN(n333) );
  XNOR2_X1 U629 ( .A(n581), .B(b[11]), .ZN(n365) );
  XNOR2_X1 U630 ( .A(n495), .B(n423), .ZN(n334) );
  XNOR2_X1 U631 ( .A(n495), .B(n424), .ZN(n335) );
  OAI22_X1 U632 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U633 ( .A(n590), .B(n424), .ZN(n330) );
  XNOR2_X1 U634 ( .A(n590), .B(n571), .ZN(n331) );
  XNOR2_X1 U635 ( .A(n575), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U636 ( .A(n575), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U637 ( .A(n501), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U638 ( .A(n501), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U639 ( .A(n584), .B(n418), .ZN(n345) );
  XNOR2_X1 U640 ( .A(n541), .B(n420), .ZN(n338) );
  XNOR2_X1 U641 ( .A(n525), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U642 ( .A(n586), .B(n424), .ZN(n342) );
  XNOR2_X1 U643 ( .A(n541), .B(n423), .ZN(n341) );
  XNOR2_X1 U644 ( .A(n541), .B(n422), .ZN(n340) );
  XNOR2_X1 U645 ( .A(n541), .B(n421), .ZN(n339) );
  XNOR2_X1 U646 ( .A(n577), .B(n418), .ZN(n384) );
  XNOR2_X1 U647 ( .A(n577), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U648 ( .A(n578), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U649 ( .A(n525), .B(n419), .ZN(n385) );
  XNOR2_X1 U650 ( .A(n525), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U651 ( .A(n525), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U652 ( .A(n525), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U653 ( .A(n584), .B(n424), .ZN(n351) );
  XNOR2_X1 U654 ( .A(n581), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U655 ( .A(n581), .B(n418), .ZN(n369) );
  XNOR2_X1 U656 ( .A(n581), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U657 ( .A(n581), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U658 ( .A(n533), .B(n423), .ZN(n361) );
  XNOR2_X1 U659 ( .A(n538), .B(n422), .ZN(n360) );
  XNOR2_X1 U660 ( .A(n584), .B(n423), .ZN(n350) );
  XNOR2_X1 U661 ( .A(n584), .B(n422), .ZN(n349) );
  XNOR2_X1 U662 ( .A(n538), .B(b[8]), .ZN(n355) );
  XNOR2_X1 U663 ( .A(n538), .B(n419), .ZN(n357) );
  XNOR2_X1 U664 ( .A(n533), .B(n418), .ZN(n356) );
  XNOR2_X1 U665 ( .A(n584), .B(n421), .ZN(n348) );
  XNOR2_X1 U666 ( .A(n584), .B(n420), .ZN(n347) );
  XNOR2_X1 U667 ( .A(n584), .B(n419), .ZN(n346) );
  XNOR2_X1 U668 ( .A(n501), .B(b[15]), .ZN(n393) );
  BUF_X1 U669 ( .A(n43), .Z(n572) );
  INV_X1 U670 ( .A(n13), .ZN(n582) );
  OAI22_X1 U671 ( .A1(n34), .A2(n339), .B1(n338), .B2(n32), .ZN(n265) );
  OAI22_X1 U672 ( .A1(n34), .A2(n341), .B1(n340), .B2(n32), .ZN(n267) );
  OAI22_X1 U673 ( .A1(n34), .A2(n340), .B1(n339), .B2(n32), .ZN(n266) );
  OAI22_X1 U674 ( .A1(n34), .A2(n342), .B1(n341), .B2(n32), .ZN(n268) );
  OAI22_X1 U675 ( .A1(n34), .A2(n343), .B1(n342), .B2(n32), .ZN(n269) );
  OAI22_X1 U676 ( .A1(n34), .A2(n587), .B1(n344), .B2(n32), .ZN(n253) );
  OAI22_X1 U677 ( .A1(n537), .A2(n350), .B1(n349), .B2(n513), .ZN(n275) );
  OAI22_X1 U678 ( .A1(n537), .A2(n346), .B1(n345), .B2(n513), .ZN(n271) );
  OAI22_X1 U679 ( .A1(n29), .A2(n347), .B1(n346), .B2(n513), .ZN(n272) );
  OAI22_X1 U680 ( .A1(n29), .A2(n348), .B1(n347), .B2(n513), .ZN(n273) );
  OAI22_X1 U681 ( .A1(n537), .A2(n351), .B1(n350), .B2(n513), .ZN(n276) );
  OAI22_X1 U682 ( .A1(n537), .A2(n349), .B1(n348), .B2(n513), .ZN(n274) );
  OAI22_X1 U683 ( .A1(n29), .A2(n498), .B1(n353), .B2(n513), .ZN(n254) );
  BUF_X1 U684 ( .A(n6), .Z(n564) );
  NAND2_X1 U685 ( .A1(n433), .A2(n573), .ZN(n6) );
  XNOR2_X1 U686 ( .A(n576), .B(a[2]), .ZN(n567) );
  INV_X2 U687 ( .A(n576), .ZN(n574) );
  INV_X1 U688 ( .A(n1), .ZN(n576) );
  OAI22_X1 U689 ( .A1(n29), .A2(n352), .B1(n351), .B2(n513), .ZN(n277) );
  NOR2_X1 U690 ( .A1(n218), .A2(n223), .ZN(n97) );
  NOR2_X1 U691 ( .A1(n234), .A2(n257), .ZN(n113) );
  OR2_X1 U692 ( .A1(n224), .A2(n227), .ZN(n569) );
  XNOR2_X1 U693 ( .A(n84), .B(n50), .ZN(product[11]) );
  XNOR2_X1 U694 ( .A(n538), .B(n424), .ZN(n362) );
  XNOR2_X1 U695 ( .A(n538), .B(n571), .ZN(n363) );
  XNOR2_X1 U696 ( .A(n538), .B(n421), .ZN(n359) );
  XNOR2_X1 U697 ( .A(n533), .B(n420), .ZN(n358) );
  NAND2_X1 U698 ( .A1(n151), .A2(n139), .ZN(n62) );
  OAI21_X1 U699 ( .B1(n511), .B2(n532), .A(n98), .ZN(n570) );
  XOR2_X1 U700 ( .A(n511), .B(n54), .Z(product[7]) );
  OAI21_X1 U701 ( .B1(n99), .B2(n97), .A(n98), .ZN(n96) );
  AOI21_X1 U702 ( .B1(n104), .B2(n569), .A(n101), .ZN(n99) );
  XNOR2_X1 U703 ( .A(n55), .B(n510), .ZN(product[6]) );
  INV_X1 U704 ( .A(n103), .ZN(n101) );
  NAND2_X1 U705 ( .A1(n569), .A2(n103), .ZN(n55) );
  XNOR2_X1 U706 ( .A(n70), .B(n47), .ZN(product[14]) );
  OAI22_X1 U707 ( .A1(n23), .A2(n358), .B1(n357), .B2(n21), .ZN(n282) );
  OAI22_X1 U708 ( .A1(n23), .A2(n362), .B1(n361), .B2(n21), .ZN(n286) );
  OAI22_X1 U709 ( .A1(n23), .A2(n356), .B1(n355), .B2(n21), .ZN(n280) );
  OAI22_X1 U710 ( .A1(n23), .A2(n526), .B1(n364), .B2(n21), .ZN(n255) );
  OAI22_X1 U711 ( .A1(n23), .A2(n360), .B1(n359), .B2(n21), .ZN(n284) );
  OAI22_X1 U712 ( .A1(n23), .A2(n361), .B1(n360), .B2(n21), .ZN(n285) );
  OAI22_X1 U713 ( .A1(n23), .A2(n357), .B1(n356), .B2(n21), .ZN(n281) );
  OAI22_X1 U714 ( .A1(n23), .A2(n363), .B1(n362), .B2(n21), .ZN(n287) );
  XNOR2_X1 U715 ( .A(n539), .B(n423), .ZN(n374) );
  OAI22_X1 U716 ( .A1(n23), .A2(n355), .B1(n354), .B2(n21), .ZN(n279) );
  XNOR2_X1 U717 ( .A(n580), .B(n422), .ZN(n373) );
  XNOR2_X1 U718 ( .A(n539), .B(n421), .ZN(n372) );
  XNOR2_X1 U719 ( .A(n539), .B(n424), .ZN(n375) );
  OAI22_X1 U720 ( .A1(n23), .A2(n359), .B1(n358), .B2(n21), .ZN(n283) );
  XNOR2_X1 U721 ( .A(n580), .B(n419), .ZN(n370) );
  XNOR2_X1 U722 ( .A(n580), .B(n420), .ZN(n371) );
  OAI21_X1 U723 ( .B1(n105), .B2(n509), .A(n106), .ZN(n104) );
  XNOR2_X1 U724 ( .A(n77), .B(n48), .ZN(product[13]) );
  OAI22_X1 U725 ( .A1(n521), .A2(n370), .B1(n369), .B2(n563), .ZN(n293) );
  OAI22_X1 U726 ( .A1(n520), .A2(n367), .B1(n366), .B2(n563), .ZN(n290) );
  OAI22_X1 U727 ( .A1(n521), .A2(n373), .B1(n372), .B2(n563), .ZN(n296) );
  OAI22_X1 U728 ( .A1(n18), .A2(n372), .B1(n371), .B2(n563), .ZN(n295) );
  OAI22_X1 U729 ( .A1(n521), .A2(n374), .B1(n373), .B2(n563), .ZN(n297) );
  OAI22_X1 U730 ( .A1(n520), .A2(n529), .B1(n377), .B2(n563), .ZN(n256) );
  OAI22_X1 U731 ( .A1(n520), .A2(n368), .B1(n367), .B2(n563), .ZN(n291) );
  OAI22_X1 U732 ( .A1(n520), .A2(n376), .B1(n375), .B2(n563), .ZN(n299) );
  OAI22_X1 U733 ( .A1(n521), .A2(n369), .B1(n368), .B2(n563), .ZN(n292) );
  OAI22_X1 U734 ( .A1(n18), .A2(n371), .B1(n370), .B2(n563), .ZN(n294) );
  XNOR2_X1 U735 ( .A(n577), .B(n420), .ZN(n386) );
  OAI22_X1 U736 ( .A1(n520), .A2(n366), .B1(n365), .B2(n563), .ZN(n289) );
  INV_X1 U737 ( .A(n563), .ZN(n245) );
  XNOR2_X1 U738 ( .A(n577), .B(n571), .ZN(n391) );
  XNOR2_X1 U739 ( .A(n577), .B(n423), .ZN(n389) );
  XNOR2_X1 U740 ( .A(n578), .B(n422), .ZN(n388) );
  XNOR2_X1 U741 ( .A(n578), .B(n424), .ZN(n390) );
  XNOR2_X1 U742 ( .A(n578), .B(n421), .ZN(n387) );
  XNOR2_X1 U743 ( .A(n570), .B(n53), .ZN(product[8]) );
  INV_X1 U744 ( .A(n531), .ZN(n87) );
  OAI21_X1 U745 ( .B1(n87), .B2(n527), .A(n504), .ZN(n84) );
  OAI21_X1 U746 ( .B1(n64), .B2(n553), .A(n65), .ZN(n63) );
  OAI21_X1 U747 ( .B1(n45), .B2(n78), .A(n79), .ZN(n77) );
  OAI21_X1 U748 ( .B1(n45), .B2(n71), .A(n72), .ZN(n70) );
  XNOR2_X1 U749 ( .A(n574), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U750 ( .A(n574), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U751 ( .A(n574), .B(n418), .ZN(n401) );
  XNOR2_X1 U752 ( .A(n574), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U753 ( .A(n574), .B(n422), .ZN(n405) );
  XNOR2_X1 U754 ( .A(n574), .B(n421), .ZN(n404) );
  XNOR2_X1 U755 ( .A(n574), .B(n419), .ZN(n402) );
  XNOR2_X1 U756 ( .A(n574), .B(n571), .ZN(n408) );
  XNOR2_X1 U757 ( .A(n574), .B(n420), .ZN(n403) );
  XNOR2_X1 U758 ( .A(n574), .B(n423), .ZN(n406) );
  XNOR2_X1 U759 ( .A(n574), .B(n424), .ZN(n407) );
  XOR2_X1 U760 ( .A(n543), .B(n52), .Z(product[9]) );
  XOR2_X1 U761 ( .A(n56), .B(n107), .Z(product[5]) );
  INV_X1 U762 ( .A(n122), .ZN(n120) );
  NAND2_X1 U763 ( .A1(n329), .A2(n258), .ZN(n122) );
  OAI22_X1 U764 ( .A1(n565), .A2(n535), .B1(n409), .B2(n540), .ZN(n258) );
  OAI22_X1 U765 ( .A1(n552), .A2(n379), .B1(n378), .B2(n505), .ZN(n301) );
  OAI22_X1 U766 ( .A1(n514), .A2(n380), .B1(n379), .B2(n505), .ZN(n302) );
  OAI22_X1 U767 ( .A1(n551), .A2(n385), .B1(n516), .B2(n505), .ZN(n307) );
  OAI22_X1 U768 ( .A1(n12), .A2(n382), .B1(n381), .B2(n505), .ZN(n304) );
  OAI22_X1 U769 ( .A1(n552), .A2(n381), .B1(n380), .B2(n505), .ZN(n303) );
  NAND2_X1 U770 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U771 ( .A1(n515), .A2(n383), .B1(n382), .B2(n507), .ZN(n305) );
  OAI22_X1 U772 ( .A1(n515), .A2(n384), .B1(n383), .B2(n507), .ZN(n306) );
  OAI22_X1 U773 ( .A1(n551), .A2(n386), .B1(n385), .B2(n505), .ZN(n308) );
  OAI22_X1 U774 ( .A1(n514), .A2(n387), .B1(n386), .B2(n505), .ZN(n309) );
  OAI22_X1 U775 ( .A1(n12), .A2(n579), .B1(n392), .B2(n505), .ZN(n257) );
  OAI22_X1 U776 ( .A1(n514), .A2(n389), .B1(n388), .B2(n507), .ZN(n311) );
  OAI22_X1 U777 ( .A1(n12), .A2(n388), .B1(n387), .B2(n505), .ZN(n310) );
  OAI22_X1 U778 ( .A1(n552), .A2(n390), .B1(n389), .B2(n507), .ZN(n312) );
  OAI22_X1 U779 ( .A1(n551), .A2(n391), .B1(n390), .B2(n505), .ZN(n313) );
  INV_X1 U780 ( .A(n579), .ZN(n578) );
  INV_X1 U781 ( .A(n500), .ZN(n581) );
  INV_X1 U782 ( .A(n587), .ZN(n586) );
  INV_X1 U783 ( .A(n31), .ZN(n587) );
  INV_X1 U784 ( .A(n589), .ZN(n588) );
  INV_X1 U785 ( .A(n36), .ZN(n589) );
  INV_X1 U786 ( .A(n591), .ZN(n590) );
  INV_X1 U787 ( .A(n40), .ZN(n591) );
  XOR2_X1 U788 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U789 ( .A(n289), .B(n279), .Z(n146) );
  XOR2_X1 U790 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_2_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n18,
         n20, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n44, n45, n47, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n65, n67, n68, n69, n70,
         n71, n73, n75, n76, n77, n78, n79, n81, n83, n84, n86, n88, n89, n94,
         n95, n96, n98, n100, n157, n158, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175;

  BUF_X1 U122 ( .A(n175), .Z(n157) );
  OR2_X2 U123 ( .A1(A[10]), .A2(B[10]), .ZN(n175) );
  OR2_X1 U124 ( .A1(A[12]), .A2(B[12]), .ZN(n158) );
  AND2_X1 U125 ( .A1(n168), .A2(n86), .ZN(SUM[0]) );
  XNOR2_X1 U126 ( .A(n37), .B(n160), .ZN(SUM[11]) );
  AND2_X1 U127 ( .A1(n161), .A2(n36), .ZN(n160) );
  OR2_X1 U128 ( .A1(A[11]), .A2(B[11]), .ZN(n161) );
  NOR2_X1 U129 ( .A1(A[11]), .A2(B[11]), .ZN(n162) );
  INV_X1 U130 ( .A(n165), .ZN(n44) );
  CLKBUF_X1 U131 ( .A(n29), .Z(n163) );
  NOR2_X1 U132 ( .A1(A[12]), .A2(B[12]), .ZN(n164) );
  NOR2_X1 U133 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  AND2_X1 U134 ( .A1(A[10]), .A2(B[10]), .ZN(n165) );
  NOR2_X1 U135 ( .A1(A[8]), .A2(B[8]), .ZN(n166) );
  NOR2_X2 U136 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  AOI21_X1 U137 ( .B1(n38), .B2(n30), .A(n31), .ZN(n167) );
  OR2_X1 U138 ( .A1(A[0]), .A2(B[0]), .ZN(n168) );
  INV_X1 U139 ( .A(n60), .ZN(n59) );
  OAI21_X1 U140 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  AOI21_X1 U141 ( .B1(n171), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U142 ( .A(n83), .ZN(n81) );
  OAI21_X1 U143 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  AOI21_X1 U144 ( .B1(n174), .B2(n68), .A(n65), .ZN(n63) );
  INV_X1 U145 ( .A(n67), .ZN(n65) );
  OR2_X1 U146 ( .A1(n25), .A2(n28), .ZN(n169) );
  AOI21_X1 U147 ( .B1(n172), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U148 ( .A(n75), .ZN(n73) );
  AOI21_X1 U149 ( .B1(n50), .B2(n170), .A(n47), .ZN(n45) );
  INV_X1 U150 ( .A(n86), .ZN(n84) );
  OAI21_X1 U151 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  AOI21_X1 U152 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  NOR2_X1 U153 ( .A1(n166), .A2(n57), .ZN(n52) );
  OAI21_X1 U154 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  INV_X1 U155 ( .A(n49), .ZN(n47) );
  NAND2_X1 U156 ( .A1(n94), .A2(n55), .ZN(n9) );
  INV_X1 U157 ( .A(n166), .ZN(n94) );
  NAND2_X1 U158 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U159 ( .A(n69), .ZN(n98) );
  INV_X1 U160 ( .A(n28), .ZN(n89) );
  NAND2_X1 U161 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U162 ( .A(n57), .ZN(n95) );
  NAND2_X1 U163 ( .A1(n172), .A2(n75), .ZN(n14) );
  NAND2_X1 U164 ( .A1(n170), .A2(n49), .ZN(n8) );
  NAND2_X1 U165 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U166 ( .A(n77), .ZN(n100) );
  NAND2_X1 U167 ( .A1(n174), .A2(n67), .ZN(n12) );
  NAND2_X1 U168 ( .A1(n171), .A2(n83), .ZN(n16) );
  NAND2_X1 U169 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U170 ( .A(n61), .ZN(n96) );
  NAND2_X1 U171 ( .A1(n158), .A2(n33), .ZN(n5) );
  XOR2_X1 U172 ( .A(n45), .B(n7), .Z(SUM[10]) );
  XNOR2_X1 U173 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XNOR2_X1 U174 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XOR2_X1 U175 ( .A(n59), .B(n10), .Z(SUM[7]) );
  XNOR2_X1 U176 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  NOR2_X1 U177 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  NAND2_X1 U178 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  NOR2_X1 U179 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  NOR2_X1 U180 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  NOR2_X1 U181 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  OR2_X1 U182 ( .A1(A[9]), .A2(B[9]), .ZN(n170) );
  NOR2_X1 U183 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NAND2_X1 U184 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  OR2_X1 U185 ( .A1(A[1]), .A2(B[1]), .ZN(n171) );
  OR2_X1 U186 ( .A1(A[3]), .A2(B[3]), .ZN(n172) );
  OR2_X1 U187 ( .A1(n18), .A2(n173), .ZN(n2) );
  AND2_X1 U188 ( .A1(A[15]), .A2(B[15]), .ZN(n173) );
  NOR2_X1 U189 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  NAND2_X1 U190 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  XNOR2_X1 U191 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NOR2_X1 U192 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  OR2_X1 U193 ( .A1(A[5]), .A2(B[5]), .ZN(n174) );
  NAND2_X1 U194 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  NAND2_X1 U195 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  NAND2_X1 U196 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  NAND2_X1 U197 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U198 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U199 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U200 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  NAND2_X1 U201 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  XNOR2_X1 U202 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  XOR2_X1 U203 ( .A(n15), .B(n79), .Z(SUM[2]) );
  NAND2_X1 U204 ( .A1(n89), .A2(n29), .ZN(n4) );
  INV_X1 U205 ( .A(n38), .ZN(n37) );
  NAND2_X1 U206 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  NAND2_X1 U207 ( .A1(n88), .A2(n26), .ZN(n3) );
  INV_X1 U208 ( .A(n24), .ZN(n22) );
  INV_X1 U209 ( .A(n51), .ZN(n50) );
  XNOR2_X1 U210 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  XNOR2_X1 U211 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  OAI21_X1 U212 ( .B1(n37), .B2(n162), .A(n36), .ZN(n34) );
  NAND2_X1 U213 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  NAND2_X1 U214 ( .A1(n157), .A2(n44), .ZN(n7) );
  INV_X1 U215 ( .A(n25), .ZN(n88) );
  OAI21_X1 U216 ( .B1(n25), .B2(n29), .A(n26), .ZN(n24) );
  XOR2_X1 U217 ( .A(n11), .B(n63), .Z(SUM[6]) );
  XOR2_X1 U218 ( .A(n13), .B(n71), .Z(SUM[4]) );
  OAI21_X1 U219 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  NAND2_X1 U220 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NOR2_X1 U221 ( .A1(n32), .A2(n35), .ZN(n30) );
  OAI21_X1 U222 ( .B1(n164), .B2(n36), .A(n33), .ZN(n31) );
  NOR2_X1 U223 ( .A1(A[15]), .A2(B[15]), .ZN(n18) );
  AOI21_X1 U224 ( .B1(n175), .B2(n47), .A(n165), .ZN(n40) );
  NAND2_X1 U225 ( .A1(n175), .A2(n170), .ZN(n39) );
  XNOR2_X1 U226 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  XOR2_X1 U227 ( .A(n167), .B(n4), .Z(SUM[13]) );
  OAI21_X1 U228 ( .B1(n167), .B2(n28), .A(n163), .ZN(n27) );
  OAI21_X1 U229 ( .B1(n169), .B2(n167), .A(n22), .ZN(n20) );
  OAI21_X1 U230 ( .B1(n39), .B2(n51), .A(n40), .ZN(n38) );
endmodule


module datapath_M16_N8_T16_P16_2 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n14), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n223), .CK(clk), .Q(n18) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n224), .CK(clk), .Q(n19) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n225), .CK(clk), .Q(n20) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n226), .CK(clk), .Q(n21) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n227), .CK(clk), .Q(n22) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n228), .CK(clk), .Q(n23) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n229), .CK(clk), .Q(n24) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n230), .CK(clk), .Q(n25) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n231), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n232), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n233), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n234), .CK(clk), .Q(n29) );
  DFF_X1 \f_reg[0]  ( .D(n112), .CK(clk), .Q(n59), .QN(n212) );
  DFF_X1 \f_reg[1]  ( .D(n111), .CK(clk), .Q(n57), .QN(n213) );
  DFF_X1 \f_reg[2]  ( .D(n102), .CK(clk), .Q(n55), .QN(n214) );
  DFF_X1 \f_reg[3]  ( .D(n85), .CK(clk), .Q(f[3]), .QN(n63) );
  DFF_X1 \data_out_reg[15]  ( .D(n114), .CK(clk), .Q(data_out[15]), .QN(n195)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n165), .CK(clk), .Q(data_out[14]), .QN(n194)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n166), .CK(clk), .Q(data_out[13]), .QN(n193)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n167), .CK(clk), .Q(data_out[12]), .QN(n192)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n168), .CK(clk), .Q(data_out[11]), .QN(n191)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n169), .CK(clk), .Q(data_out[10]), .QN(n190)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n170), .CK(clk), .Q(data_out[9]), .QN(n189) );
  DFF_X1 \data_out_reg[8]  ( .D(n171), .CK(clk), .Q(data_out[8]), .QN(n188) );
  DFF_X1 \data_out_reg[7]  ( .D(n172), .CK(clk), .Q(data_out[7]), .QN(n187) );
  DFF_X1 \data_out_reg[6]  ( .D(n173), .CK(clk), .Q(data_out[6]), .QN(n186) );
  DFF_X1 \data_out_reg[5]  ( .D(n174), .CK(clk), .Q(data_out[5]), .QN(n185) );
  DFF_X1 \data_out_reg[4]  ( .D(n175), .CK(clk), .Q(data_out[4]), .QN(n184) );
  DFF_X1 \data_out_reg[3]  ( .D(n176), .CK(clk), .Q(data_out[3]), .QN(n183) );
  DFF_X1 \data_out_reg[2]  ( .D(n177), .CK(clk), .Q(data_out[2]), .QN(n182) );
  DFF_X1 \data_out_reg[1]  ( .D(n178), .CK(clk), .Q(data_out[1]), .QN(n181) );
  DFF_X1 \data_out_reg[0]  ( .D(n179), .CK(clk), .Q(data_out[0]), .QN(n180) );
  datapath_M16_N8_T16_P16_2_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_2_DW01_add_2 add_262 ( .A({n202, n201, n200, n199, 
        n198, n197, n211, n210, n209, n208, n207, n206, n205, n204, n203, n196}), .B({f[15], n40, n41, n43, n45, n47, f[9:3], n55, n57, n59}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n238), .CK(clk), .Q(n36) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n237), .CK(clk), .Q(n34) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n236), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n235), .CK(clk), .Q(n32) );
  DFF_X1 \f_reg[4]  ( .D(n83), .CK(clk), .Q(f[4]), .QN(n64) );
  DFF_X1 \f_reg[5]  ( .D(n82), .CK(clk), .Q(f[5]), .QN(n65) );
  DFF_X1 \f_reg[6]  ( .D(n81), .CK(clk), .Q(f[6]), .QN(n66) );
  DFF_X1 \f_reg[7]  ( .D(n80), .CK(clk), .Q(f[7]), .QN(n215) );
  DFF_X1 \f_reg[8]  ( .D(n79), .CK(clk), .Q(f[8]), .QN(n216) );
  DFF_X1 \f_reg[9]  ( .D(n78), .CK(clk), .Q(f[9]), .QN(n217) );
  DFF_X1 \f_reg[10]  ( .D(n77), .CK(clk), .Q(n47), .QN(n218) );
  DFF_X1 \f_reg[11]  ( .D(n76), .CK(clk), .Q(n45), .QN(n219) );
  DFF_X1 \f_reg[15]  ( .D(n5), .CK(clk), .Q(f[15]), .QN(n71) );
  DFF_X1 \f_reg[13]  ( .D(n74), .CK(clk), .Q(n41), .QN(n221) );
  DFF_X1 \f_reg[14]  ( .D(n4), .CK(clk), .Q(n40), .QN(n222) );
  DFF_X1 \f_reg[12]  ( .D(n75), .CK(clk), .Q(n43), .QN(n220) );
  DFF_X2 delay_reg ( .D(n113), .CK(clk), .Q(n2), .QN(n239) );
  AND2_X1 U3 ( .A1(n39), .A2(n15), .ZN(n12) );
  AND2_X1 U4 ( .A1(n11), .A2(n9), .ZN(n1) );
  MUX2_X2 U5 ( .A(n22), .B(N40), .S(n239), .Z(n198) );
  MUX2_X2 U6 ( .A(N41), .B(n21), .S(n2), .Z(n199) );
  MUX2_X1 U8 ( .A(n20), .B(N42), .S(n239), .Z(n200) );
  NAND3_X1 U9 ( .A1(n7), .A2(n6), .A3(n8), .ZN(n4) );
  NAND2_X1 U10 ( .A1(n10), .A2(n1), .ZN(n5) );
  MUX2_X2 U11 ( .A(n25), .B(N37), .S(n239), .Z(n210) );
  MUX2_X2 U12 ( .A(n19), .B(N43), .S(n239), .Z(n201) );
  NAND2_X1 U13 ( .A1(data_out_b[14]), .A2(n14), .ZN(n6) );
  NAND2_X1 U14 ( .A1(adder[14]), .A2(n12), .ZN(n7) );
  NAND2_X1 U15 ( .A1(n61), .A2(n40), .ZN(n8) );
  NAND2_X1 U16 ( .A1(data_out_b[15]), .A2(n14), .ZN(n9) );
  NAND2_X1 U17 ( .A1(adder[15]), .A2(n12), .ZN(n10) );
  NAND2_X1 U18 ( .A1(n61), .A2(f[15]), .ZN(n11) );
  INV_X1 U19 ( .A(n15), .ZN(n14) );
  NAND2_X1 U20 ( .A1(n113), .A2(n13), .ZN(n241) );
  INV_X1 U21 ( .A(n39), .ZN(n61) );
  INV_X1 U22 ( .A(clear_acc), .ZN(n15) );
  INV_X1 U23 ( .A(n17), .ZN(n35) );
  OAI22_X1 U24 ( .A1(n183), .A2(n241), .B1(n63), .B2(n240), .ZN(n176) );
  OAI22_X1 U25 ( .A1(n184), .A2(n241), .B1(n64), .B2(n240), .ZN(n175) );
  OAI22_X1 U26 ( .A1(n185), .A2(n241), .B1(n65), .B2(n240), .ZN(n174) );
  OAI22_X1 U27 ( .A1(n186), .A2(n241), .B1(n66), .B2(n240), .ZN(n173) );
  OAI22_X1 U28 ( .A1(n187), .A2(n241), .B1(n215), .B2(n240), .ZN(n172) );
  OAI22_X1 U29 ( .A1(n188), .A2(n241), .B1(n216), .B2(n240), .ZN(n171) );
  OAI22_X1 U30 ( .A1(n189), .A2(n241), .B1(n217), .B2(n240), .ZN(n170) );
  MUX2_X1 U31 ( .A(n23), .B(N39), .S(n239), .Z(n197) );
  MUX2_X1 U32 ( .A(n18), .B(N44), .S(n239), .Z(n202) );
  INV_X1 U33 ( .A(wr_en_y), .ZN(n13) );
  INV_X1 U34 ( .A(m_ready), .ZN(n16) );
  NAND2_X1 U35 ( .A1(m_valid), .A2(n16), .ZN(n37) );
  OAI21_X1 U36 ( .B1(sel[4]), .B2(n73), .A(n37), .ZN(n113) );
  NAND2_X1 U37 ( .A1(clear_acc_delay), .A2(n239), .ZN(n17) );
  MUX2_X1 U38 ( .A(n18), .B(N44), .S(n35), .Z(n223) );
  MUX2_X1 U39 ( .A(n19), .B(N43), .S(n35), .Z(n224) );
  MUX2_X1 U40 ( .A(n20), .B(N42), .S(n35), .Z(n225) );
  MUX2_X1 U41 ( .A(n21), .B(N41), .S(n35), .Z(n226) );
  MUX2_X1 U42 ( .A(n22), .B(N40), .S(n35), .Z(n227) );
  MUX2_X1 U43 ( .A(n23), .B(N39), .S(n35), .Z(n228) );
  MUX2_X1 U44 ( .A(n24), .B(N38), .S(n35), .Z(n229) );
  MUX2_X1 U45 ( .A(n24), .B(N38), .S(n239), .Z(n211) );
  MUX2_X1 U46 ( .A(n25), .B(N37), .S(n35), .Z(n230) );
  MUX2_X1 U47 ( .A(n26), .B(N36), .S(n35), .Z(n231) );
  MUX2_X1 U48 ( .A(n26), .B(N36), .S(n239), .Z(n209) );
  MUX2_X1 U49 ( .A(n27), .B(N35), .S(n35), .Z(n232) );
  MUX2_X1 U50 ( .A(n27), .B(N35), .S(n239), .Z(n208) );
  MUX2_X1 U51 ( .A(n28), .B(N34), .S(n35), .Z(n233) );
  MUX2_X1 U52 ( .A(n28), .B(N34), .S(n239), .Z(n207) );
  MUX2_X1 U53 ( .A(n29), .B(N33), .S(n35), .Z(n234) );
  MUX2_X1 U54 ( .A(n29), .B(N33), .S(n239), .Z(n206) );
  MUX2_X1 U55 ( .A(n32), .B(N32), .S(n35), .Z(n235) );
  MUX2_X1 U56 ( .A(n32), .B(N32), .S(n239), .Z(n205) );
  MUX2_X1 U57 ( .A(n33), .B(N31), .S(n35), .Z(n236) );
  MUX2_X1 U58 ( .A(n33), .B(N31), .S(n239), .Z(n204) );
  MUX2_X1 U59 ( .A(n34), .B(N30), .S(n35), .Z(n237) );
  MUX2_X1 U60 ( .A(n34), .B(N30), .S(n239), .Z(n203) );
  MUX2_X1 U61 ( .A(n36), .B(N29), .S(n35), .Z(n238) );
  MUX2_X1 U62 ( .A(n36), .B(N29), .S(n239), .Z(n196) );
  INV_X1 U63 ( .A(n37), .ZN(n38) );
  OAI21_X1 U64 ( .B1(n38), .B2(n2), .A(n15), .ZN(n39) );
  AOI222_X1 U65 ( .A1(data_out_b[13]), .A2(n14), .B1(adder[13]), .B2(n12), 
        .C1(n61), .C2(n41), .ZN(n42) );
  INV_X1 U66 ( .A(n42), .ZN(n74) );
  AOI222_X1 U67 ( .A1(data_out_b[12]), .A2(n14), .B1(adder[12]), .B2(n12), 
        .C1(n61), .C2(n43), .ZN(n44) );
  INV_X1 U68 ( .A(n44), .ZN(n75) );
  AOI222_X1 U69 ( .A1(data_out_b[11]), .A2(n14), .B1(adder[11]), .B2(n12), 
        .C1(n61), .C2(n45), .ZN(n46) );
  INV_X1 U70 ( .A(n46), .ZN(n76) );
  AOI222_X1 U71 ( .A1(data_out_b[10]), .A2(n14), .B1(adder[10]), .B2(n12), 
        .C1(n61), .C2(n47), .ZN(n48) );
  INV_X1 U72 ( .A(n48), .ZN(n77) );
  AOI222_X1 U73 ( .A1(data_out_b[8]), .A2(n14), .B1(adder[8]), .B2(n12), .C1(
        n61), .C2(f[8]), .ZN(n49) );
  INV_X1 U74 ( .A(n49), .ZN(n79) );
  AOI222_X1 U75 ( .A1(data_out_b[7]), .A2(n14), .B1(adder[7]), .B2(n12), .C1(
        n61), .C2(f[7]), .ZN(n50) );
  INV_X1 U76 ( .A(n50), .ZN(n80) );
  AOI222_X1 U77 ( .A1(data_out_b[6]), .A2(n14), .B1(adder[6]), .B2(n12), .C1(
        n61), .C2(f[6]), .ZN(n51) );
  INV_X1 U78 ( .A(n51), .ZN(n81) );
  AOI222_X1 U79 ( .A1(data_out_b[5]), .A2(n14), .B1(adder[5]), .B2(n12), .C1(
        n61), .C2(f[5]), .ZN(n52) );
  INV_X1 U80 ( .A(n52), .ZN(n82) );
  AOI222_X1 U81 ( .A1(data_out_b[4]), .A2(n14), .B1(adder[4]), .B2(n12), .C1(
        n61), .C2(f[4]), .ZN(n53) );
  INV_X1 U82 ( .A(n53), .ZN(n83) );
  AOI222_X1 U83 ( .A1(data_out_b[3]), .A2(n14), .B1(adder[3]), .B2(n12), .C1(
        n61), .C2(f[3]), .ZN(n54) );
  INV_X1 U84 ( .A(n54), .ZN(n85) );
  AOI222_X1 U85 ( .A1(data_out_b[2]), .A2(n14), .B1(adder[2]), .B2(n12), .C1(
        n61), .C2(n55), .ZN(n56) );
  INV_X1 U86 ( .A(n56), .ZN(n102) );
  AOI222_X1 U87 ( .A1(data_out_b[1]), .A2(n14), .B1(adder[1]), .B2(n12), .C1(
        n61), .C2(n57), .ZN(n58) );
  INV_X1 U88 ( .A(n58), .ZN(n111) );
  AOI222_X1 U89 ( .A1(data_out_b[0]), .A2(n14), .B1(adder[0]), .B2(n12), .C1(
        n61), .C2(n59), .ZN(n60) );
  INV_X1 U90 ( .A(n60), .ZN(n112) );
  AOI222_X1 U91 ( .A1(data_out_b[9]), .A2(n14), .B1(adder[9]), .B2(n12), .C1(
        n61), .C2(f[9]), .ZN(n62) );
  INV_X1 U92 ( .A(n62), .ZN(n78) );
  NOR4_X1 U93 ( .A1(n45), .A2(n43), .A3(n41), .A4(n40), .ZN(n70) );
  NOR4_X1 U94 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n47), .ZN(n69) );
  NAND4_X1 U95 ( .A1(n66), .A2(n65), .A3(n64), .A4(n63), .ZN(n67) );
  NOR4_X1 U96 ( .A1(n67), .A2(n59), .A3(n57), .A4(n55), .ZN(n68) );
  NAND3_X1 U97 ( .A1(n70), .A2(n69), .A3(n68), .ZN(n72) );
  NAND3_X1 U98 ( .A1(wr_en_y), .A2(n72), .A3(n71), .ZN(n240) );
  OAI22_X1 U99 ( .A1(n180), .A2(n241), .B1(n212), .B2(n240), .ZN(n179) );
  OAI22_X1 U100 ( .A1(n181), .A2(n241), .B1(n213), .B2(n240), .ZN(n178) );
  OAI22_X1 U101 ( .A1(n182), .A2(n241), .B1(n214), .B2(n240), .ZN(n177) );
  OAI22_X1 U102 ( .A1(n190), .A2(n241), .B1(n218), .B2(n240), .ZN(n169) );
  OAI22_X1 U103 ( .A1(n191), .A2(n241), .B1(n219), .B2(n240), .ZN(n168) );
  OAI22_X1 U104 ( .A1(n192), .A2(n241), .B1(n220), .B2(n240), .ZN(n167) );
  OAI22_X1 U105 ( .A1(n193), .A2(n241), .B1(n221), .B2(n240), .ZN(n166) );
  OAI22_X1 U106 ( .A1(n194), .A2(n241), .B1(n222), .B2(n240), .ZN(n165) );
  OAI22_X1 U107 ( .A1(n195), .A2(n241), .B1(n71), .B2(n240), .ZN(n114) );
  AND4_X1 U108 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n73)
         );
endmodule


module datapath_M16_N8_T16_P16_1_DW_mult_tc_1 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n6, n7, n9, n12, n13, n16, n18, n19, n21, n23, n25, n27, n29, n31,
         n32, n34, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50,
         n51, n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65, n67, n69,
         n70, n71, n72, n73, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n93, n95, n96, n97, n98, n99, n103,
         n104, n105, n106, n107, n109, n111, n112, n113, n114, n115, n117,
         n119, n120, n122, n129, n131, n135, n139, n141, n142, n144, n147,
         n148, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n237, n241,
         n247, n249, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n418, n419, n420, n421,
         n422, n423, n424, n426, n427, n429, n430, n431, n433, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596;
  assign n1 = a[1];
  assign n7 = a[3];
  assign n13 = a[5];
  assign n19 = a[7];
  assign n25 = a[9];
  assign n31 = a[11];
  assign n36 = a[13];
  assign n40 = a[15];
  assign n43 = b[0];
  assign n249 = a[0];
  assign n418 = b[7];
  assign n419 = b[6];
  assign n420 = b[5];
  assign n421 = b[4];
  assign n422 = b[3];
  assign n423 = b[2];
  assign n424 = b[1];

  FA_X1 U155 ( .A(n156), .B(n165), .CI(n154), .CO(n151), .S(n152) );
  FA_X1 U156 ( .A(n158), .B(n160), .CI(n167), .CO(n153), .S(n154) );
  FA_X1 U157 ( .A(n169), .B(n171), .CI(n162), .CO(n155), .S(n156) );
  FA_X1 U158 ( .A(n280), .B(n290), .CI(n173), .CO(n157), .S(n158) );
  FA_X1 U159 ( .A(n266), .B(n302), .CI(n272), .CO(n159), .S(n160) );
  FA_X1 U160 ( .A(n262), .B(n260), .CI(n316), .CO(n161), .S(n162) );
  FA_X1 U162 ( .A(n170), .B(n172), .CI(n179), .CO(n165), .S(n166) );
  FA_X1 U163 ( .A(n183), .B(n174), .CI(n181), .CO(n167), .S(n168) );
  FA_X1 U164 ( .A(n267), .B(n281), .CI(n273), .CO(n169), .S(n170) );
  FA_X1 U165 ( .A(n303), .B(n263), .CI(n291), .CO(n171), .S(n172) );
  HA_X1 U166 ( .A(n252), .B(n317), .CO(n173), .S(n174) );
  FA_X1 U167 ( .A(n180), .B(n187), .CI(n178), .CO(n175), .S(n176) );
  FA_X1 U169 ( .A(n193), .B(n282), .CI(n191), .CO(n179), .S(n180) );
  FA_X1 U170 ( .A(n268), .B(n274), .CI(n292), .CO(n181), .S(n182) );
  FA_X1 U171 ( .A(n318), .B(n264), .CI(n304), .CO(n183), .S(n184) );
  FA_X1 U172 ( .A(n197), .B(n190), .CI(n188), .CO(n185), .S(n186) );
  FA_X1 U173 ( .A(n199), .B(n201), .CI(n192), .CO(n187), .S(n188) );
  FA_X1 U174 ( .A(n275), .B(n293), .CI(n194), .CO(n189), .S(n190) );
  FA_X1 U175 ( .A(n305), .B(n283), .CI(n253), .CO(n191), .S(n192) );
  HA_X1 U176 ( .A(n269), .B(n319), .CO(n193), .S(n194) );
  FA_X1 U177 ( .A(n205), .B(n200), .CI(n198), .CO(n195), .S(n196) );
  FA_X1 U178 ( .A(n207), .B(n209), .CI(n202), .CO(n197), .S(n198) );
  FA_X1 U179 ( .A(n276), .B(n284), .CI(n294), .CO(n199), .S(n200) );
  FA_X1 U180 ( .A(n320), .B(n270), .CI(n306), .CO(n201), .S(n202) );
  FA_X1 U182 ( .A(n210), .B(n307), .CI(n215), .CO(n205), .S(n206) );
  FA_X1 U183 ( .A(n285), .B(n254), .CI(n295), .CO(n207), .S(n208) );
  HA_X1 U184 ( .A(n277), .B(n321), .CO(n209), .S(n210) );
  FA_X1 U185 ( .A(n216), .B(n219), .CI(n214), .CO(n211), .S(n212) );
  FA_X1 U186 ( .A(n286), .B(n296), .CI(n221), .CO(n213), .S(n214) );
  FA_X1 U187 ( .A(n322), .B(n278), .CI(n308), .CO(n215), .S(n216) );
  FA_X1 U189 ( .A(n255), .B(n309), .CI(n297), .CO(n219), .S(n220) );
  HA_X1 U190 ( .A(n287), .B(n323), .CO(n221), .S(n222) );
  FA_X1 U191 ( .A(n229), .B(n298), .CI(n226), .CO(n223), .S(n224) );
  FA_X1 U192 ( .A(n324), .B(n288), .CI(n310), .CO(n225), .S(n226) );
  FA_X1 U193 ( .A(n256), .B(n299), .CI(n230), .CO(n227), .S(n228) );
  HA_X1 U194 ( .A(n311), .B(n325), .CO(n229), .S(n230) );
  FA_X1 U195 ( .A(n326), .B(n300), .CI(n312), .CO(n231), .S(n232) );
  HA_X1 U196 ( .A(n313), .B(n327), .CO(n233), .S(n234) );
  CLKBUF_X1 U414 ( .A(n534), .Z(n490) );
  BUF_X2 U415 ( .A(n509), .Z(n575) );
  CLKBUF_X1 U416 ( .A(n86), .Z(n491) );
  XNOR2_X1 U417 ( .A(n492), .B(n493), .ZN(n574) );
  XNOR2_X1 U418 ( .A(n265), .B(n144), .ZN(n492) );
  XNOR2_X1 U419 ( .A(n161), .B(n142), .ZN(n493) );
  INV_X1 U420 ( .A(n501), .ZN(n41) );
  OR2_X1 U421 ( .A1(n164), .A2(n175), .ZN(n494) );
  OR2_X1 U422 ( .A1(n329), .A2(n258), .ZN(n495) );
  BUF_X1 U423 ( .A(n12), .Z(n534) );
  XNOR2_X2 U424 ( .A(n587), .B(a[8]), .ZN(n496) );
  OR2_X1 U425 ( .A1(n228), .A2(n231), .ZN(n497) );
  BUF_X1 U426 ( .A(n104), .Z(n518) );
  OR2_X2 U427 ( .A1(n224), .A2(n227), .ZN(n571) );
  NOR2_X2 U428 ( .A1(n204), .A2(n211), .ZN(n89) );
  CLKBUF_X1 U429 ( .A(n91), .Z(n528) );
  XNOR2_X1 U430 ( .A(n528), .B(n498), .ZN(product[9]) );
  AND2_X1 U431 ( .A1(n129), .A2(n90), .ZN(n498) );
  OR2_X1 U432 ( .A1(n196), .A2(n203), .ZN(n499) );
  XOR2_X1 U433 ( .A(n585), .B(a[4]), .Z(n500) );
  XNOR2_X1 U434 ( .A(n594), .B(a[14]), .ZN(n501) );
  NAND2_X1 U435 ( .A1(n430), .A2(n522), .ZN(n502) );
  NAND2_X1 U436 ( .A1(n430), .A2(n522), .ZN(n503) );
  NAND2_X1 U437 ( .A1(n430), .A2(n522), .ZN(n23) );
  XOR2_X1 U438 ( .A(n589), .B(a[8]), .Z(n504) );
  BUF_X1 U439 ( .A(n509), .Z(n516) );
  INV_X2 U440 ( .A(n541), .ZN(n16) );
  XOR2_X1 U441 ( .A(n581), .B(a[2]), .Z(n9) );
  XNOR2_X1 U442 ( .A(n166), .B(n505), .ZN(n164) );
  XNOR2_X1 U443 ( .A(n177), .B(n168), .ZN(n505) );
  XOR2_X1 U444 ( .A(n581), .B(a[2]), .Z(n509) );
  XNOR2_X1 U445 ( .A(n514), .B(a[2]), .ZN(n558) );
  INV_X1 U446 ( .A(n592), .ZN(n506) );
  INV_X1 U447 ( .A(n592), .ZN(n591) );
  INV_X1 U448 ( .A(n565), .ZN(n507) );
  NAND2_X1 U449 ( .A1(n500), .A2(n16), .ZN(n508) );
  NAND2_X1 U450 ( .A1(n431), .A2(n16), .ZN(n18) );
  XNOR2_X1 U451 ( .A(n588), .B(a[6]), .ZN(n430) );
  INV_X1 U452 ( .A(n586), .ZN(n510) );
  INV_X1 U453 ( .A(n586), .ZN(n511) );
  INV_X1 U454 ( .A(n584), .ZN(n512) );
  INV_X1 U455 ( .A(n584), .ZN(n582) );
  XNOR2_X1 U456 ( .A(n513), .B(n182), .ZN(n178) );
  XNOR2_X1 U457 ( .A(n189), .B(n184), .ZN(n513) );
  INV_X1 U458 ( .A(n7), .ZN(n514) );
  OAI21_X1 U459 ( .B1(n75), .B2(n79), .A(n76), .ZN(n515) );
  XNOR2_X1 U460 ( .A(n45), .B(n517), .ZN(product[12]) );
  AND2_X1 U461 ( .A1(n524), .A2(n79), .ZN(n517) );
  NOR2_X1 U462 ( .A1(n186), .A2(n195), .ZN(n519) );
  AOI21_X1 U463 ( .B1(n571), .B2(n518), .A(n549), .ZN(n520) );
  BUF_X1 U464 ( .A(n37), .Z(n521) );
  INV_X1 U465 ( .A(n563), .ZN(n522) );
  INV_X1 U466 ( .A(n563), .ZN(n21) );
  CLKBUF_X1 U467 ( .A(n12), .Z(n533) );
  OR2_X2 U468 ( .A1(n523), .A2(n552), .ZN(n34) );
  XNOR2_X1 U469 ( .A(n506), .B(a[10]), .ZN(n523) );
  XNOR2_X1 U470 ( .A(n559), .B(n51), .ZN(product[10]) );
  OR2_X1 U471 ( .A1(n176), .A2(n185), .ZN(n524) );
  BUF_X1 U472 ( .A(n586), .Z(n525) );
  XNOR2_X1 U473 ( .A(n525), .B(a[6]), .ZN(n526) );
  BUF_X1 U474 ( .A(n12), .Z(n532) );
  OR2_X1 U475 ( .A1(n186), .A2(n195), .ZN(n527) );
  BUF_X2 U476 ( .A(n579), .Z(n529) );
  INV_X1 U477 ( .A(n249), .ZN(n579) );
  INV_X1 U478 ( .A(n588), .ZN(n530) );
  INV_X1 U479 ( .A(n588), .ZN(n531) );
  INV_X1 U480 ( .A(n588), .ZN(n587) );
  INV_X1 U481 ( .A(n581), .ZN(n580) );
  NAND2_X1 U482 ( .A1(n9), .A2(n558), .ZN(n12) );
  XNOR2_X1 U483 ( .A(n581), .B(n249), .ZN(n433) );
  XOR2_X1 U484 ( .A(n208), .B(n213), .Z(n535) );
  XOR2_X1 U485 ( .A(n206), .B(n535), .Z(n204) );
  NAND2_X1 U486 ( .A1(n206), .A2(n208), .ZN(n536) );
  NAND2_X1 U487 ( .A1(n206), .A2(n213), .ZN(n537) );
  NAND2_X1 U488 ( .A1(n208), .A2(n213), .ZN(n538) );
  NAND3_X1 U489 ( .A1(n536), .A2(n537), .A3(n538), .ZN(n203) );
  NAND2_X1 U490 ( .A1(n504), .A2(n496), .ZN(n539) );
  NAND2_X1 U491 ( .A1(n504), .A2(n27), .ZN(n540) );
  NAND2_X1 U492 ( .A1(n429), .A2(n27), .ZN(n29) );
  INV_X1 U493 ( .A(n552), .ZN(n32) );
  XNOR2_X1 U494 ( .A(n584), .B(a[4]), .ZN(n541) );
  INV_X1 U495 ( .A(n583), .ZN(n542) );
  NAND2_X1 U496 ( .A1(n166), .A2(n177), .ZN(n543) );
  NAND2_X1 U497 ( .A1(n166), .A2(n168), .ZN(n544) );
  NAND2_X1 U498 ( .A1(n177), .A2(n168), .ZN(n545) );
  NAND3_X1 U499 ( .A1(n543), .A2(n544), .A3(n545), .ZN(n163) );
  INV_X2 U500 ( .A(n514), .ZN(n583) );
  OR2_X2 U501 ( .A1(n152), .A2(n163), .ZN(n566) );
  INV_X1 U502 ( .A(n7), .ZN(n584) );
  AND2_X1 U503 ( .A1(n224), .A2(n227), .ZN(n549) );
  NOR2_X1 U504 ( .A1(n164), .A2(n175), .ZN(n75) );
  NAND2_X1 U505 ( .A1(n182), .A2(n189), .ZN(n546) );
  NAND2_X1 U506 ( .A1(n182), .A2(n184), .ZN(n547) );
  NAND2_X1 U507 ( .A1(n189), .A2(n184), .ZN(n548) );
  NAND3_X1 U508 ( .A1(n546), .A2(n547), .A3(n548), .ZN(n177) );
  INV_X1 U509 ( .A(n549), .ZN(n103) );
  XNOR2_X1 U510 ( .A(n271), .B(n550), .ZN(n147) );
  XNOR2_X1 U511 ( .A(n289), .B(n279), .ZN(n550) );
  XNOR2_X1 U512 ( .A(n551), .B(n147), .ZN(n144) );
  XNOR2_X1 U513 ( .A(n301), .B(n148), .ZN(n551) );
  XNOR2_X1 U514 ( .A(n590), .B(a[10]), .ZN(n552) );
  CLKBUF_X1 U515 ( .A(n96), .Z(n553) );
  OAI21_X1 U516 ( .B1(n99), .B2(n97), .A(n98), .ZN(n96) );
  XOR2_X1 U517 ( .A(n222), .B(n225), .Z(n554) );
  XOR2_X1 U518 ( .A(n220), .B(n554), .Z(n218) );
  NAND2_X1 U519 ( .A1(n220), .A2(n222), .ZN(n555) );
  NAND2_X1 U520 ( .A1(n220), .A2(n225), .ZN(n556) );
  NAND2_X1 U521 ( .A1(n222), .A2(n225), .ZN(n557) );
  NAND3_X1 U522 ( .A1(n555), .A2(n556), .A3(n557), .ZN(n217) );
  INV_X2 U523 ( .A(n590), .ZN(n589) );
  XNOR2_X2 U524 ( .A(n587), .B(a[8]), .ZN(n27) );
  OAI21_X1 U525 ( .B1(n91), .B2(n89), .A(n90), .ZN(n559) );
  NAND2_X1 U526 ( .A1(n433), .A2(n579), .ZN(n560) );
  NAND2_X1 U527 ( .A1(n433), .A2(n579), .ZN(n561) );
  AOI21_X1 U528 ( .B1(n559), .B2(n80), .A(n81), .ZN(n562) );
  XNOR2_X1 U529 ( .A(n586), .B(a[6]), .ZN(n563) );
  INV_X1 U530 ( .A(n581), .ZN(n564) );
  INV_X1 U531 ( .A(n581), .ZN(n565) );
  BUF_X1 U532 ( .A(n43), .Z(n577) );
  NAND2_X1 U533 ( .A1(n566), .A2(n69), .ZN(n47) );
  INV_X1 U534 ( .A(n73), .ZN(n71) );
  INV_X1 U535 ( .A(n69), .ZN(n67) );
  INV_X1 U536 ( .A(n515), .ZN(n72) );
  NAND2_X1 U537 ( .A1(n73), .A2(n566), .ZN(n64) );
  INV_X1 U538 ( .A(n95), .ZN(n93) );
  AOI21_X1 U539 ( .B1(n88), .B2(n80), .A(n81), .ZN(n45) );
  NOR2_X1 U540 ( .A1(n519), .A2(n85), .ZN(n80) );
  OAI21_X1 U541 ( .B1(n82), .B2(n86), .A(n83), .ZN(n81) );
  NAND2_X1 U542 ( .A1(n499), .A2(n86), .ZN(n51) );
  INV_X1 U543 ( .A(n89), .ZN(n129) );
  NAND2_X1 U544 ( .A1(n494), .A2(n76), .ZN(n48) );
  NOR2_X1 U545 ( .A1(n75), .A2(n78), .ZN(n73) );
  XNOR2_X1 U546 ( .A(n84), .B(n50), .ZN(product[11]) );
  NAND2_X1 U547 ( .A1(n527), .A2(n83), .ZN(n50) );
  XNOR2_X1 U548 ( .A(n553), .B(n53), .ZN(product[8]) );
  NAND2_X1 U549 ( .A1(n567), .A2(n95), .ZN(n53) );
  NAND2_X1 U550 ( .A1(n152), .A2(n163), .ZN(n69) );
  NOR2_X1 U551 ( .A1(n186), .A2(n195), .ZN(n82) );
  INV_X1 U552 ( .A(n113), .ZN(n135) );
  NAND2_X1 U553 ( .A1(n497), .A2(n106), .ZN(n56) );
  NAND2_X1 U554 ( .A1(n131), .A2(n98), .ZN(n54) );
  INV_X1 U555 ( .A(n97), .ZN(n131) );
  NOR2_X1 U556 ( .A1(n176), .A2(n185), .ZN(n78) );
  NOR2_X1 U557 ( .A1(n196), .A2(n203), .ZN(n85) );
  NAND2_X1 U558 ( .A1(n568), .A2(n111), .ZN(n57) );
  OAI21_X1 U559 ( .B1(n107), .B2(n105), .A(n106), .ZN(n104) );
  OAI21_X1 U560 ( .B1(n113), .B2(n115), .A(n114), .ZN(n112) );
  AOI21_X1 U561 ( .B1(n569), .B2(n120), .A(n117), .ZN(n115) );
  INV_X1 U562 ( .A(n119), .ZN(n117) );
  XNOR2_X1 U563 ( .A(n59), .B(n120), .ZN(product[2]) );
  NAND2_X1 U564 ( .A1(n569), .A2(n119), .ZN(n59) );
  NAND2_X1 U565 ( .A1(n196), .A2(n203), .ZN(n86) );
  NAND2_X1 U566 ( .A1(n176), .A2(n185), .ZN(n79) );
  NAND2_X1 U567 ( .A1(n186), .A2(n195), .ZN(n83) );
  NAND2_X1 U568 ( .A1(n164), .A2(n175), .ZN(n76) );
  NAND2_X1 U569 ( .A1(n212), .A2(n217), .ZN(n95) );
  OR2_X1 U570 ( .A1(n212), .A2(n217), .ZN(n567) );
  XNOR2_X1 U571 ( .A(n63), .B(n46), .ZN(product[15]) );
  NAND2_X1 U572 ( .A1(n570), .A2(n62), .ZN(n46) );
  AOI21_X1 U573 ( .B1(n515), .B2(n566), .A(n67), .ZN(n65) );
  OR2_X1 U574 ( .A1(n232), .A2(n233), .ZN(n568) );
  OR2_X1 U575 ( .A1(n328), .A2(n314), .ZN(n569) );
  NOR2_X1 U576 ( .A1(n234), .A2(n257), .ZN(n113) );
  NOR2_X1 U577 ( .A1(n218), .A2(n223), .ZN(n97) );
  NAND2_X1 U578 ( .A1(n218), .A2(n223), .ZN(n98) );
  INV_X1 U579 ( .A(n37), .ZN(n237) );
  NAND2_X1 U580 ( .A1(n228), .A2(n231), .ZN(n106) );
  OR2_X1 U581 ( .A1(n151), .A2(n139), .ZN(n570) );
  AND2_X1 U582 ( .A1(n495), .A2(n122), .ZN(product[1]) );
  XNOR2_X1 U583 ( .A(n506), .B(a[12]), .ZN(n37) );
  OR2_X1 U584 ( .A1(n577), .A2(n542), .ZN(n392) );
  OAI22_X1 U585 ( .A1(n6), .A2(n406), .B1(n405), .B2(n529), .ZN(n327) );
  OR2_X1 U586 ( .A1(n577), .A2(n507), .ZN(n409) );
  NAND2_X1 U587 ( .A1(n433), .A2(n579), .ZN(n6) );
  XNOR2_X1 U588 ( .A(n155), .B(n573), .ZN(n139) );
  XNOR2_X1 U589 ( .A(n153), .B(n141), .ZN(n573) );
  XNOR2_X1 U590 ( .A(n157), .B(n574), .ZN(n141) );
  OAI22_X1 U591 ( .A1(n560), .A2(n408), .B1(n407), .B2(n529), .ZN(n329) );
  OAI22_X1 U592 ( .A1(n6), .A2(n402), .B1(n401), .B2(n529), .ZN(n323) );
  XNOR2_X1 U593 ( .A(n530), .B(n577), .ZN(n363) );
  OAI22_X1 U594 ( .A1(n561), .A2(n398), .B1(n397), .B2(n529), .ZN(n319) );
  XNOR2_X1 U595 ( .A(n591), .B(n577), .ZN(n343) );
  OAI22_X1 U596 ( .A1(n42), .A2(n596), .B1(n332), .B2(n41), .ZN(n251) );
  OR2_X1 U597 ( .A1(n577), .A2(n596), .ZN(n332) );
  OAI22_X1 U598 ( .A1(n560), .A2(n404), .B1(n403), .B2(n529), .ZN(n325) );
  XOR2_X1 U599 ( .A(n589), .B(a[8]), .Z(n429) );
  XOR2_X1 U600 ( .A(n315), .B(n261), .Z(n150) );
  OAI22_X1 U601 ( .A1(n6), .A2(n394), .B1(n393), .B2(n529), .ZN(n315) );
  XNOR2_X1 U602 ( .A(n511), .B(n577), .ZN(n376) );
  XNOR2_X1 U603 ( .A(n593), .B(n577), .ZN(n336) );
  INV_X1 U604 ( .A(n1), .ZN(n581) );
  NAND2_X1 U605 ( .A1(n427), .A2(n37), .ZN(n39) );
  XOR2_X1 U606 ( .A(n593), .B(a[12]), .Z(n427) );
  AND2_X1 U607 ( .A1(n578), .A2(n241), .ZN(n278) );
  OAI22_X1 U608 ( .A1(n560), .A2(n401), .B1(n400), .B2(n529), .ZN(n322) );
  AND2_X1 U609 ( .A1(n578), .A2(n237), .ZN(n264) );
  OAI22_X1 U610 ( .A1(n6), .A2(n397), .B1(n396), .B2(n529), .ZN(n318) );
  OAI22_X1 U611 ( .A1(n39), .A2(n336), .B1(n521), .B2(n335), .ZN(n263) );
  AND2_X1 U612 ( .A1(n578), .A2(n541), .ZN(n300) );
  OAI22_X1 U613 ( .A1(n561), .A2(n405), .B1(n404), .B2(n529), .ZN(n326) );
  AND2_X1 U614 ( .A1(n578), .A2(n526), .ZN(n288) );
  OAI22_X1 U615 ( .A1(n561), .A2(n403), .B1(n402), .B2(n579), .ZN(n324) );
  AND2_X1 U616 ( .A1(n578), .A2(n552), .ZN(n270) );
  OAI22_X1 U617 ( .A1(n561), .A2(n399), .B1(n398), .B2(n529), .ZN(n320) );
  AND2_X1 U618 ( .A1(n578), .A2(n501), .ZN(n260) );
  OAI22_X1 U619 ( .A1(n6), .A2(n395), .B1(n394), .B2(n529), .ZN(n316) );
  OAI22_X1 U620 ( .A1(n39), .A2(n335), .B1(n521), .B2(n334), .ZN(n262) );
  INV_X1 U621 ( .A(n25), .ZN(n590) );
  INV_X1 U622 ( .A(n19), .ZN(n588) );
  OAI22_X1 U623 ( .A1(n6), .A2(n400), .B1(n399), .B2(n529), .ZN(n321) );
  XNOR2_X1 U624 ( .A(n589), .B(n577), .ZN(n352) );
  NAND2_X1 U625 ( .A1(n426), .A2(n41), .ZN(n42) );
  XOR2_X1 U626 ( .A(n595), .B(a[14]), .Z(n426) );
  INV_X1 U627 ( .A(n13), .ZN(n586) );
  OAI22_X1 U628 ( .A1(n560), .A2(n396), .B1(n395), .B2(n529), .ZN(n317) );
  OAI22_X1 U629 ( .A1(n39), .A2(n594), .B1(n337), .B2(n521), .ZN(n252) );
  OR2_X1 U630 ( .A1(n577), .A2(n594), .ZN(n337) );
  AND2_X1 U631 ( .A1(n578), .A2(n247), .ZN(n314) );
  AND2_X1 U632 ( .A1(n578), .A2(n249), .ZN(product[0]) );
  OR2_X1 U633 ( .A1(n577), .A2(n592), .ZN(n344) );
  OR2_X1 U634 ( .A1(n577), .A2(n588), .ZN(n364) );
  OR2_X1 U635 ( .A1(n577), .A2(n590), .ZN(n353) );
  OR2_X1 U636 ( .A1(n577), .A2(n525), .ZN(n377) );
  XNOR2_X1 U637 ( .A(n530), .B(b[9]), .ZN(n354) );
  OAI22_X1 U638 ( .A1(n39), .A2(n334), .B1(n521), .B2(n333), .ZN(n261) );
  XNOR2_X1 U639 ( .A(n593), .B(n422), .ZN(n333) );
  XNOR2_X1 U640 ( .A(n510), .B(b[11]), .ZN(n365) );
  XNOR2_X1 U641 ( .A(n593), .B(n424), .ZN(n335) );
  XNOR2_X1 U642 ( .A(n593), .B(n423), .ZN(n334) );
  OAI22_X1 U643 ( .A1(n42), .A2(n331), .B1(n330), .B2(n41), .ZN(n259) );
  XNOR2_X1 U644 ( .A(n595), .B(n424), .ZN(n330) );
  XNOR2_X1 U645 ( .A(n595), .B(n577), .ZN(n331) );
  XNOR2_X1 U646 ( .A(n580), .B(b[11]), .ZN(n397) );
  XNOR2_X1 U647 ( .A(n580), .B(b[12]), .ZN(n396) );
  XNOR2_X1 U648 ( .A(n565), .B(b[13]), .ZN(n395) );
  XNOR2_X1 U649 ( .A(n565), .B(b[14]), .ZN(n394) );
  XNOR2_X1 U650 ( .A(n589), .B(n418), .ZN(n345) );
  XNOR2_X1 U651 ( .A(n591), .B(n420), .ZN(n338) );
  XNOR2_X1 U652 ( .A(n583), .B(b[13]), .ZN(n378) );
  XNOR2_X1 U653 ( .A(n591), .B(n424), .ZN(n342) );
  XNOR2_X1 U654 ( .A(n531), .B(n424), .ZN(n362) );
  XNOR2_X1 U655 ( .A(n589), .B(n424), .ZN(n351) );
  XNOR2_X1 U656 ( .A(n591), .B(n423), .ZN(n341) );
  XNOR2_X1 U657 ( .A(n591), .B(n422), .ZN(n340) );
  XNOR2_X1 U658 ( .A(n591), .B(n421), .ZN(n339) );
  XNOR2_X1 U659 ( .A(n583), .B(b[8]), .ZN(n383) );
  XNOR2_X1 U660 ( .A(n583), .B(b[9]), .ZN(n382) );
  XNOR2_X1 U661 ( .A(n583), .B(n418), .ZN(n384) );
  XNOR2_X1 U662 ( .A(n583), .B(b[10]), .ZN(n381) );
  XNOR2_X1 U663 ( .A(n583), .B(b[11]), .ZN(n380) );
  XNOR2_X1 U664 ( .A(n583), .B(b[12]), .ZN(n379) );
  XNOR2_X1 U665 ( .A(n583), .B(n419), .ZN(n385) );
  XNOR2_X1 U666 ( .A(n585), .B(b[10]), .ZN(n366) );
  XNOR2_X1 U667 ( .A(n510), .B(n418), .ZN(n369) );
  XNOR2_X1 U668 ( .A(n511), .B(b[8]), .ZN(n368) );
  XNOR2_X1 U669 ( .A(n585), .B(b[9]), .ZN(n367) );
  XNOR2_X1 U670 ( .A(n531), .B(n423), .ZN(n361) );
  XNOR2_X1 U671 ( .A(n530), .B(n422), .ZN(n360) );
  XNOR2_X1 U672 ( .A(n589), .B(n423), .ZN(n350) );
  XNOR2_X1 U673 ( .A(n589), .B(n422), .ZN(n349) );
  XNOR2_X1 U674 ( .A(n531), .B(n421), .ZN(n359) );
  XNOR2_X1 U675 ( .A(n530), .B(n420), .ZN(n358) );
  XNOR2_X1 U676 ( .A(n589), .B(n421), .ZN(n348) );
  XNOR2_X1 U677 ( .A(n589), .B(n420), .ZN(n347) );
  XNOR2_X1 U678 ( .A(n531), .B(n418), .ZN(n356) );
  XNOR2_X1 U679 ( .A(n530), .B(n419), .ZN(n357) );
  XNOR2_X1 U680 ( .A(n589), .B(n419), .ZN(n346) );
  XNOR2_X1 U681 ( .A(n531), .B(b[8]), .ZN(n355) );
  XNOR2_X1 U682 ( .A(n564), .B(b[15]), .ZN(n393) );
  BUF_X1 U683 ( .A(n43), .Z(n578) );
  OAI22_X1 U684 ( .A1(n34), .A2(n339), .B1(n338), .B2(n32), .ZN(n265) );
  OAI22_X1 U685 ( .A1(n34), .A2(n340), .B1(n339), .B2(n32), .ZN(n266) );
  OAI22_X1 U686 ( .A1(n34), .A2(n341), .B1(n340), .B2(n32), .ZN(n267) );
  OAI22_X1 U687 ( .A1(n34), .A2(n342), .B1(n341), .B2(n32), .ZN(n268) );
  OAI22_X1 U688 ( .A1(n34), .A2(n343), .B1(n342), .B2(n32), .ZN(n269) );
  OAI22_X1 U689 ( .A1(n34), .A2(n592), .B1(n344), .B2(n32), .ZN(n253) );
  NAND2_X1 U690 ( .A1(n328), .A2(n314), .ZN(n119) );
  OAI22_X1 U691 ( .A1(n560), .A2(n407), .B1(n406), .B2(n529), .ZN(n328) );
  XNOR2_X1 U692 ( .A(n77), .B(n48), .ZN(product[13]) );
  XOR2_X1 U693 ( .A(n56), .B(n576), .Z(product[5]) );
  XNOR2_X1 U694 ( .A(n55), .B(n518), .ZN(product[6]) );
  NAND2_X1 U695 ( .A1(n204), .A2(n211), .ZN(n90) );
  OAI22_X1 U696 ( .A1(n539), .A2(n346), .B1(n345), .B2(n496), .ZN(n271) );
  OAI22_X1 U697 ( .A1(n540), .A2(n350), .B1(n349), .B2(n496), .ZN(n275) );
  OAI22_X1 U698 ( .A1(n540), .A2(n347), .B1(n346), .B2(n27), .ZN(n272) );
  OAI22_X1 U699 ( .A1(n539), .A2(n348), .B1(n347), .B2(n27), .ZN(n273) );
  OAI22_X1 U700 ( .A1(n539), .A2(n349), .B1(n348), .B2(n27), .ZN(n274) );
  OAI22_X1 U701 ( .A1(n29), .A2(n590), .B1(n353), .B2(n496), .ZN(n254) );
  OAI22_X1 U702 ( .A1(n29), .A2(n351), .B1(n350), .B2(n27), .ZN(n276) );
  INV_X1 U703 ( .A(n496), .ZN(n241) );
  OAI22_X1 U704 ( .A1(n540), .A2(n352), .B1(n351), .B2(n496), .ZN(n277) );
  CLKBUF_X1 U705 ( .A(n107), .Z(n576) );
  NAND2_X1 U706 ( .A1(n571), .A2(n103), .ZN(n55) );
  NAND2_X1 U707 ( .A1(n151), .A2(n139), .ZN(n62) );
  XNOR2_X1 U708 ( .A(n510), .B(n424), .ZN(n375) );
  XNOR2_X1 U709 ( .A(n511), .B(n419), .ZN(n370) );
  XNOR2_X1 U710 ( .A(n510), .B(n420), .ZN(n371) );
  XNOR2_X1 U711 ( .A(n511), .B(n423), .ZN(n374) );
  XNOR2_X1 U712 ( .A(n511), .B(n422), .ZN(n373) );
  XNOR2_X1 U713 ( .A(n585), .B(n421), .ZN(n372) );
  XOR2_X1 U714 ( .A(n585), .B(a[4]), .Z(n431) );
  OAI21_X1 U715 ( .B1(n87), .B2(n85), .A(n491), .ZN(n84) );
  INV_X1 U716 ( .A(n88), .ZN(n87) );
  AOI21_X1 U717 ( .B1(n568), .B2(n112), .A(n109), .ZN(n107) );
  NOR2_X1 U718 ( .A1(n228), .A2(n231), .ZN(n105) );
  XOR2_X1 U719 ( .A(n58), .B(n115), .Z(product[3]) );
  NAND2_X1 U720 ( .A1(n135), .A2(n114), .ZN(n58) );
  OAI22_X1 U721 ( .A1(n502), .A2(n356), .B1(n355), .B2(n21), .ZN(n280) );
  OAI22_X1 U722 ( .A1(n502), .A2(n358), .B1(n357), .B2(n21), .ZN(n282) );
  OAI22_X1 U723 ( .A1(n502), .A2(n362), .B1(n361), .B2(n21), .ZN(n286) );
  OAI22_X1 U724 ( .A1(n503), .A2(n360), .B1(n359), .B2(n21), .ZN(n284) );
  OAI22_X1 U725 ( .A1(n502), .A2(n361), .B1(n360), .B2(n21), .ZN(n285) );
  OAI22_X1 U726 ( .A1(n503), .A2(n588), .B1(n364), .B2(n21), .ZN(n255) );
  OAI22_X1 U727 ( .A1(n503), .A2(n357), .B1(n356), .B2(n21), .ZN(n281) );
  OAI22_X1 U728 ( .A1(n502), .A2(n363), .B1(n362), .B2(n21), .ZN(n287) );
  OAI22_X1 U729 ( .A1(n503), .A2(n355), .B1(n354), .B2(n21), .ZN(n279) );
  OAI22_X1 U730 ( .A1(n23), .A2(n359), .B1(n358), .B2(n21), .ZN(n283) );
  NAND2_X1 U731 ( .A1(n232), .A2(n233), .ZN(n111) );
  AOI21_X1 U732 ( .B1(n571), .B2(n104), .A(n549), .ZN(n99) );
  XOR2_X1 U733 ( .A(n520), .B(n54), .Z(product[7]) );
  OAI21_X1 U734 ( .B1(n91), .B2(n89), .A(n90), .ZN(n88) );
  OAI22_X1 U735 ( .A1(n508), .A2(n370), .B1(n369), .B2(n16), .ZN(n293) );
  OAI22_X1 U736 ( .A1(n508), .A2(n367), .B1(n366), .B2(n16), .ZN(n290) );
  OAI22_X1 U737 ( .A1(n508), .A2(n375), .B1(n374), .B2(n16), .ZN(n298) );
  OAI22_X1 U738 ( .A1(n18), .A2(n373), .B1(n372), .B2(n16), .ZN(n296) );
  OAI22_X1 U739 ( .A1(n18), .A2(n372), .B1(n371), .B2(n16), .ZN(n295) );
  OAI22_X1 U740 ( .A1(n508), .A2(n374), .B1(n373), .B2(n16), .ZN(n297) );
  OAI22_X1 U741 ( .A1(n508), .A2(n368), .B1(n367), .B2(n16), .ZN(n291) );
  OAI22_X1 U742 ( .A1(n18), .A2(n369), .B1(n368), .B2(n16), .ZN(n292) );
  OAI22_X1 U743 ( .A1(n508), .A2(n376), .B1(n375), .B2(n16), .ZN(n299) );
  OAI22_X1 U744 ( .A1(n508), .A2(n525), .B1(n377), .B2(n16), .ZN(n256) );
  OAI22_X1 U745 ( .A1(n18), .A2(n371), .B1(n370), .B2(n16), .ZN(n294) );
  XNOR2_X1 U746 ( .A(n512), .B(n420), .ZN(n386) );
  OAI22_X1 U747 ( .A1(n18), .A2(n366), .B1(n365), .B2(n16), .ZN(n289) );
  XNOR2_X1 U748 ( .A(n512), .B(n577), .ZN(n391) );
  XNOR2_X1 U749 ( .A(n582), .B(n421), .ZN(n387) );
  XNOR2_X1 U750 ( .A(n582), .B(n422), .ZN(n388) );
  XNOR2_X1 U751 ( .A(n512), .B(n424), .ZN(n390) );
  XNOR2_X1 U752 ( .A(n512), .B(n423), .ZN(n389) );
  XNOR2_X1 U753 ( .A(n57), .B(n112), .ZN(product[4]) );
  XNOR2_X1 U754 ( .A(n564), .B(b[8]), .ZN(n400) );
  XNOR2_X1 U755 ( .A(n580), .B(b[10]), .ZN(n398) );
  XNOR2_X1 U756 ( .A(n580), .B(b[9]), .ZN(n399) );
  XNOR2_X1 U757 ( .A(n565), .B(n418), .ZN(n401) );
  XNOR2_X1 U758 ( .A(n580), .B(n420), .ZN(n403) );
  XNOR2_X1 U759 ( .A(n564), .B(n419), .ZN(n402) );
  XNOR2_X1 U760 ( .A(n565), .B(n421), .ZN(n404) );
  XNOR2_X1 U761 ( .A(n580), .B(n422), .ZN(n405) );
  XNOR2_X1 U762 ( .A(n565), .B(n577), .ZN(n408) );
  XNOR2_X1 U763 ( .A(n564), .B(n423), .ZN(n406) );
  XNOR2_X1 U764 ( .A(n564), .B(n424), .ZN(n407) );
  OAI21_X1 U765 ( .B1(n562), .B2(n71), .A(n72), .ZN(n70) );
  OAI21_X1 U766 ( .B1(n45), .B2(n78), .A(n79), .ZN(n77) );
  XNOR2_X1 U767 ( .A(n70), .B(n47), .ZN(product[14]) );
  OAI21_X1 U768 ( .B1(n64), .B2(n562), .A(n65), .ZN(n63) );
  INV_X1 U769 ( .A(n122), .ZN(n120) );
  NAND2_X1 U770 ( .A1(n329), .A2(n258), .ZN(n122) );
  AOI21_X1 U771 ( .B1(n96), .B2(n567), .A(n93), .ZN(n91) );
  INV_X1 U772 ( .A(n111), .ZN(n109) );
  OAI22_X1 U773 ( .A1(n561), .A2(n507), .B1(n409), .B2(n529), .ZN(n258) );
  OAI22_X1 U774 ( .A1(n490), .A2(n379), .B1(n378), .B2(n516), .ZN(n301) );
  OAI22_X1 U775 ( .A1(n490), .A2(n380), .B1(n379), .B2(n516), .ZN(n302) );
  OAI22_X1 U776 ( .A1(n533), .A2(n385), .B1(n384), .B2(n516), .ZN(n307) );
  OAI22_X1 U777 ( .A1(n534), .A2(n382), .B1(n381), .B2(n516), .ZN(n304) );
  OAI22_X1 U778 ( .A1(n533), .A2(n381), .B1(n380), .B2(n516), .ZN(n303) );
  NAND2_X1 U779 ( .A1(n234), .A2(n257), .ZN(n114) );
  OAI22_X1 U780 ( .A1(n532), .A2(n383), .B1(n382), .B2(n575), .ZN(n305) );
  OAI22_X1 U781 ( .A1(n534), .A2(n384), .B1(n383), .B2(n575), .ZN(n306) );
  OAI22_X1 U782 ( .A1(n533), .A2(n386), .B1(n385), .B2(n516), .ZN(n308) );
  OAI22_X1 U783 ( .A1(n534), .A2(n387), .B1(n386), .B2(n516), .ZN(n309) );
  OAI22_X1 U784 ( .A1(n533), .A2(n542), .B1(n392), .B2(n516), .ZN(n257) );
  OAI22_X1 U785 ( .A1(n532), .A2(n389), .B1(n388), .B2(n575), .ZN(n311) );
  OAI22_X1 U786 ( .A1(n532), .A2(n388), .B1(n387), .B2(n575), .ZN(n310) );
  OAI22_X1 U787 ( .A1(n534), .A2(n390), .B1(n389), .B2(n516), .ZN(n312) );
  INV_X1 U788 ( .A(n575), .ZN(n247) );
  OAI22_X1 U789 ( .A1(n533), .A2(n391), .B1(n390), .B2(n516), .ZN(n313) );
  INV_X1 U790 ( .A(n586), .ZN(n585) );
  INV_X1 U791 ( .A(n31), .ZN(n592) );
  INV_X1 U792 ( .A(n594), .ZN(n593) );
  INV_X1 U793 ( .A(n36), .ZN(n594) );
  INV_X1 U794 ( .A(n596), .ZN(n595) );
  INV_X1 U795 ( .A(n40), .ZN(n596) );
  XOR2_X1 U796 ( .A(n259), .B(n251), .Z(n148) );
  XOR2_X1 U797 ( .A(n159), .B(n150), .Z(n142) );
endmodule


module datapath_M16_N8_T16_P16_1_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n8, n9, n10, n11, n12, n13, n14, n15, n16, n18, n20,
         n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n44, n45, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n65, n67, n68, n69, n70, n71, n73,
         n75, n76, n77, n78, n79, n81, n83, n84, n86, n89, n90, n91, n95, n96,
         n98, n100, n157, n158, n159, n160, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  CLKBUF_X1 U122 ( .A(n180), .Z(n157) );
  XNOR2_X1 U123 ( .A(n45), .B(n158), .ZN(SUM[10]) );
  AND2_X1 U124 ( .A1(n165), .A2(n44), .ZN(n158) );
  INV_X1 U125 ( .A(n91), .ZN(n159) );
  NAND2_X1 U126 ( .A1(A[11]), .A2(B[11]), .ZN(n160) );
  AND2_X1 U127 ( .A1(n172), .A2(n86), .ZN(SUM[0]) );
  NOR2_X1 U128 ( .A1(A[8]), .A2(B[8]), .ZN(n162) );
  NOR2_X1 U129 ( .A1(A[8]), .A2(B[8]), .ZN(n54) );
  OR2_X1 U130 ( .A1(A[8]), .A2(B[8]), .ZN(n163) );
  AND2_X1 U131 ( .A1(A[9]), .A2(B[9]), .ZN(n164) );
  OR2_X1 U132 ( .A1(A[10]), .A2(B[10]), .ZN(n165) );
  OR2_X1 U133 ( .A1(A[10]), .A2(B[10]), .ZN(n179) );
  XNOR2_X1 U134 ( .A(n166), .B(n37), .ZN(SUM[11]) );
  AND2_X1 U135 ( .A1(n160), .A2(n91), .ZN(n166) );
  NOR2_X1 U136 ( .A1(A[11]), .A2(B[11]), .ZN(n167) );
  NOR2_X1 U137 ( .A1(A[11]), .A2(B[11]), .ZN(n35) );
  OR2_X1 U138 ( .A1(n18), .A2(n176), .ZN(n2) );
  AOI21_X1 U139 ( .B1(n38), .B2(n30), .A(n31), .ZN(n168) );
  AOI21_X1 U140 ( .B1(n38), .B2(n30), .A(n31), .ZN(n171) );
  NOR2_X1 U141 ( .A1(A[14]), .A2(B[14]), .ZN(n25) );
  OR2_X1 U142 ( .A1(A[14]), .A2(B[14]), .ZN(n169) );
  NOR2_X1 U143 ( .A1(A[12]), .A2(B[12]), .ZN(n170) );
  NOR2_X1 U144 ( .A1(A[12]), .A2(B[12]), .ZN(n32) );
  INV_X1 U145 ( .A(n24), .ZN(n22) );
  OR2_X1 U146 ( .A1(A[0]), .A2(B[0]), .ZN(n172) );
  INV_X1 U147 ( .A(n60), .ZN(n59) );
  INV_X1 U148 ( .A(n51), .ZN(n50) );
  INV_X1 U149 ( .A(n38), .ZN(n37) );
  INV_X1 U150 ( .A(n67), .ZN(n65) );
  OAI21_X1 U151 ( .B1(n71), .B2(n69), .A(n70), .ZN(n68) );
  AOI21_X1 U152 ( .B1(n175), .B2(n84), .A(n81), .ZN(n79) );
  INV_X1 U153 ( .A(n83), .ZN(n81) );
  OAI21_X1 U154 ( .B1(n63), .B2(n61), .A(n62), .ZN(n60) );
  OR2_X1 U155 ( .A1(n25), .A2(n28), .ZN(n173) );
  OAI21_X1 U156 ( .B1(n79), .B2(n77), .A(n78), .ZN(n76) );
  AOI21_X1 U157 ( .B1(n50), .B2(n174), .A(n164), .ZN(n45) );
  INV_X1 U158 ( .A(n86), .ZN(n84) );
  OAI21_X1 U159 ( .B1(n59), .B2(n57), .A(n58), .ZN(n56) );
  INV_X1 U160 ( .A(n167), .ZN(n91) );
  NAND2_X1 U161 ( .A1(n174), .A2(n49), .ZN(n8) );
  NAND2_X1 U162 ( .A1(n95), .A2(n58), .ZN(n10) );
  INV_X1 U163 ( .A(n57), .ZN(n95) );
  NAND2_X1 U164 ( .A1(n100), .A2(n78), .ZN(n15) );
  INV_X1 U165 ( .A(n77), .ZN(n100) );
  NAND2_X1 U166 ( .A1(n89), .A2(n29), .ZN(n4) );
  INV_X1 U167 ( .A(n28), .ZN(n89) );
  NAND2_X1 U168 ( .A1(n178), .A2(n75), .ZN(n14) );
  NAND2_X1 U169 ( .A1(n163), .A2(n55), .ZN(n9) );
  NAND2_X1 U170 ( .A1(n177), .A2(n67), .ZN(n12) );
  NAND2_X1 U171 ( .A1(n175), .A2(n83), .ZN(n16) );
  AOI21_X1 U172 ( .B1(n178), .B2(n76), .A(n73), .ZN(n71) );
  INV_X1 U173 ( .A(n75), .ZN(n73) );
  NAND2_X1 U174 ( .A1(n96), .A2(n62), .ZN(n11) );
  INV_X1 U175 ( .A(n61), .ZN(n96) );
  NAND2_X1 U176 ( .A1(n98), .A2(n70), .ZN(n13) );
  INV_X1 U177 ( .A(n69), .ZN(n98) );
  XNOR2_X1 U178 ( .A(n14), .B(n76), .ZN(SUM[3]) );
  XOR2_X1 U179 ( .A(n15), .B(n79), .Z(SUM[2]) );
  XNOR2_X1 U180 ( .A(n34), .B(n5), .ZN(SUM[12]) );
  NAND2_X1 U181 ( .A1(n90), .A2(n33), .ZN(n5) );
  NOR2_X1 U182 ( .A1(A[13]), .A2(B[13]), .ZN(n28) );
  NOR2_X1 U183 ( .A1(A[7]), .A2(B[7]), .ZN(n57) );
  OR2_X1 U184 ( .A1(A[9]), .A2(B[9]), .ZN(n174) );
  NOR2_X1 U185 ( .A1(A[2]), .A2(B[2]), .ZN(n77) );
  NAND2_X1 U186 ( .A1(n169), .A2(n26), .ZN(n3) );
  XOR2_X1 U187 ( .A(n59), .B(n10), .Z(SUM[7]) );
  OR2_X1 U188 ( .A1(A[1]), .A2(B[1]), .ZN(n175) );
  AND2_X1 U189 ( .A1(A[15]), .A2(B[15]), .ZN(n176) );
  NOR2_X1 U190 ( .A1(A[6]), .A2(B[6]), .ZN(n61) );
  NOR2_X1 U191 ( .A1(A[4]), .A2(B[4]), .ZN(n69) );
  XNOR2_X1 U192 ( .A(n56), .B(n9), .ZN(SUM[8]) );
  XNOR2_X1 U193 ( .A(n16), .B(n84), .ZN(SUM[1]) );
  NAND2_X1 U194 ( .A1(A[7]), .A2(B[7]), .ZN(n58) );
  NAND2_X1 U195 ( .A1(A[2]), .A2(B[2]), .ZN(n78) );
  NAND2_X1 U196 ( .A1(A[3]), .A2(B[3]), .ZN(n75) );
  NAND2_X1 U197 ( .A1(A[5]), .A2(B[5]), .ZN(n67) );
  NAND2_X1 U198 ( .A1(A[1]), .A2(B[1]), .ZN(n83) );
  NAND2_X1 U199 ( .A1(A[0]), .A2(B[0]), .ZN(n86) );
  NAND2_X1 U200 ( .A1(A[6]), .A2(B[6]), .ZN(n62) );
  NAND2_X1 U201 ( .A1(A[4]), .A2(B[4]), .ZN(n70) );
  OR2_X1 U202 ( .A1(A[5]), .A2(B[5]), .ZN(n177) );
  NAND2_X1 U203 ( .A1(A[11]), .A2(B[11]), .ZN(n36) );
  OR2_X1 U204 ( .A1(A[3]), .A2(B[3]), .ZN(n178) );
  NAND2_X1 U205 ( .A1(A[12]), .A2(B[12]), .ZN(n33) );
  XNOR2_X1 U206 ( .A(n50), .B(n8), .ZN(SUM[9]) );
  XNOR2_X1 U207 ( .A(n12), .B(n68), .ZN(SUM[5]) );
  NAND2_X1 U208 ( .A1(A[8]), .A2(B[8]), .ZN(n55) );
  AOI21_X1 U209 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  NAND2_X1 U210 ( .A1(A[9]), .A2(B[9]), .ZN(n49) );
  NOR2_X1 U211 ( .A1(n162), .A2(n57), .ZN(n52) );
  OAI21_X1 U212 ( .B1(n54), .B2(n58), .A(n55), .ZN(n53) );
  INV_X1 U213 ( .A(n157), .ZN(n44) );
  AND2_X1 U214 ( .A1(A[10]), .A2(B[10]), .ZN(n180) );
  NAND2_X1 U215 ( .A1(A[13]), .A2(B[13]), .ZN(n29) );
  XOR2_X1 U216 ( .A(n11), .B(n63), .Z(SUM[6]) );
  AOI21_X1 U217 ( .B1(n177), .B2(n68), .A(n65), .ZN(n63) );
  XOR2_X1 U218 ( .A(n13), .B(n71), .Z(SUM[4]) );
  XNOR2_X1 U219 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  XNOR2_X1 U220 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  OAI21_X1 U221 ( .B1(n25), .B2(n29), .A(n26), .ZN(n24) );
  NAND2_X1 U222 ( .A1(A[14]), .A2(B[14]), .ZN(n26) );
  INV_X1 U223 ( .A(n170), .ZN(n90) );
  NOR2_X1 U224 ( .A1(n170), .A2(n35), .ZN(n30) );
  OAI21_X1 U225 ( .B1(n36), .B2(n32), .A(n33), .ZN(n31) );
  NOR2_X1 U226 ( .A1(A[15]), .A2(B[15]), .ZN(n18) );
  OAI21_X1 U227 ( .B1(n37), .B2(n159), .A(n160), .ZN(n34) );
  NAND2_X1 U228 ( .A1(n165), .A2(n174), .ZN(n39) );
  AOI21_X1 U229 ( .B1(n179), .B2(n164), .A(n180), .ZN(n40) );
  XOR2_X1 U230 ( .A(n171), .B(n4), .Z(SUM[13]) );
  OAI21_X1 U231 ( .B1(n168), .B2(n28), .A(n29), .ZN(n27) );
  OAI21_X1 U232 ( .B1(n171), .B2(n173), .A(n22), .ZN(n20) );
  OAI21_X1 U233 ( .B1(n39), .B2(n51), .A(n40), .ZN(n38) );
endmodule


module datapath_M16_N8_T16_P16_1 ( clk, clear_acc, data_out_x, data_out, 
        data_out_w, data_out_b, wr_en_y, m_valid, m_ready, sel );
  input [15:0] data_out_x;
  output [15:0] data_out;
  input [15:0] data_out_w;
  input [15:0] data_out_b;
  input [4:0] sel;
  input clk, clear_acc, wr_en_y, m_valid, m_ready;
  wire   clear_acc_delay, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n85, n102, n111, n112, n113, n114, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246;
  wire   [15:0] f;
  wire   [15:0] adder;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  DFF_X1 clear_acc_delay_reg ( .D(n22), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \mul_out_save_reg[15]  ( .D(n228), .CK(clk), .Q(n26) );
  DFF_X1 \mul_out_save_reg[14]  ( .D(n229), .CK(clk), .Q(n27) );
  DFF_X1 \mul_out_save_reg[13]  ( .D(n230), .CK(clk), .Q(n28) );
  DFF_X1 \mul_out_save_reg[12]  ( .D(n231), .CK(clk), .Q(n29) );
  DFF_X1 \mul_out_save_reg[11]  ( .D(n232), .CK(clk), .Q(n32) );
  DFF_X1 \mul_out_save_reg[10]  ( .D(n233), .CK(clk), .Q(n33) );
  DFF_X1 \mul_out_save_reg[9]  ( .D(n234), .CK(clk), .Q(n34) );
  DFF_X1 \mul_out_save_reg[8]  ( .D(n235), .CK(clk), .Q(n35) );
  DFF_X1 \mul_out_save_reg[7]  ( .D(n236), .CK(clk), .Q(n36) );
  DFF_X1 \mul_out_save_reg[6]  ( .D(n237), .CK(clk), .Q(n37) );
  DFF_X1 \mul_out_save_reg[5]  ( .D(n238), .CK(clk), .Q(n38) );
  DFF_X1 \f_reg[0]  ( .D(n167), .CK(clk), .Q(n65), .QN(n217) );
  DFF_X1 \f_reg[1]  ( .D(n166), .CK(clk), .Q(n63), .QN(n218) );
  DFF_X1 \f_reg[2]  ( .D(n114), .CK(clk), .Q(n61), .QN(n219) );
  DFF_X1 \data_out_reg[15]  ( .D(n169), .CK(clk), .Q(data_out[15]), .QN(n200)
         );
  DFF_X1 \data_out_reg[14]  ( .D(n170), .CK(clk), .Q(data_out[14]), .QN(n199)
         );
  DFF_X1 \data_out_reg[13]  ( .D(n171), .CK(clk), .Q(data_out[13]), .QN(n198)
         );
  DFF_X1 \data_out_reg[12]  ( .D(n172), .CK(clk), .Q(data_out[12]), .QN(n197)
         );
  DFF_X1 \data_out_reg[11]  ( .D(n173), .CK(clk), .Q(data_out[11]), .QN(n196)
         );
  DFF_X1 \data_out_reg[10]  ( .D(n174), .CK(clk), .Q(data_out[10]), .QN(n195)
         );
  DFF_X1 \data_out_reg[9]  ( .D(n175), .CK(clk), .Q(data_out[9]), .QN(n194) );
  DFF_X1 \data_out_reg[8]  ( .D(n176), .CK(clk), .Q(data_out[8]), .QN(n193) );
  DFF_X1 \data_out_reg[7]  ( .D(n177), .CK(clk), .Q(data_out[7]), .QN(n192) );
  DFF_X1 \data_out_reg[6]  ( .D(n178), .CK(clk), .Q(data_out[6]), .QN(n191) );
  DFF_X1 \data_out_reg[5]  ( .D(n179), .CK(clk), .Q(data_out[5]), .QN(n190) );
  DFF_X1 \data_out_reg[4]  ( .D(n180), .CK(clk), .Q(data_out[4]), .QN(n189) );
  DFF_X1 \data_out_reg[3]  ( .D(n181), .CK(clk), .Q(data_out[3]), .QN(n188) );
  DFF_X1 \data_out_reg[2]  ( .D(n182), .CK(clk), .Q(data_out[2]), .QN(n187) );
  DFF_X1 \data_out_reg[1]  ( .D(n183), .CK(clk), .Q(data_out[1]), .QN(n186) );
  DFF_X1 \data_out_reg[0]  ( .D(n184), .CK(clk), .Q(data_out[0]), .QN(n185) );
  datapath_M16_N8_T16_P16_1_DW_mult_tc_1 mult_261 ( .a(data_out_x), .b(
        data_out_w), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29}) );
  datapath_M16_N8_T16_P16_1_DW01_add_2 add_262 ( .A({n207, n206, n205, n204, 
        n203, n202, n216, n215, n214, n213, n212, n211, n210, n209, n208, n201}), .B({f[15], n48, n49, n50, n51, n53, f[9:3], n61, n63, n65}), .CI(1'b0), 
        .SUM(adder) );
  DFF_X1 \mul_out_save_reg[0]  ( .D(n243), .CK(clk), .Q(n44) );
  DFF_X1 \mul_out_save_reg[1]  ( .D(n242), .CK(clk), .Q(n42) );
  DFF_X1 \mul_out_save_reg[2]  ( .D(n241), .CK(clk), .Q(n41) );
  DFF_X1 \mul_out_save_reg[4]  ( .D(n239), .CK(clk), .Q(n39) );
  DFF_X1 \mul_out_save_reg[3]  ( .D(n240), .CK(clk), .Q(n40) );
  DFF_X1 \f_reg[3]  ( .D(n113), .CK(clk), .Q(f[3]), .QN(n69) );
  DFF_X1 \f_reg[4]  ( .D(n112), .CK(clk), .Q(f[4]), .QN(n70) );
  DFF_X1 \f_reg[5]  ( .D(n111), .CK(clk), .Q(f[5]), .QN(n71) );
  DFF_X1 \f_reg[6]  ( .D(n102), .CK(clk), .Q(f[6]), .QN(n72) );
  DFF_X1 \f_reg[7]  ( .D(n85), .CK(clk), .Q(f[7]), .QN(n220) );
  DFF_X1 \f_reg[8]  ( .D(n83), .CK(clk), .Q(f[8]), .QN(n221) );
  DFF_X1 \f_reg[9]  ( .D(n82), .CK(clk), .Q(f[9]), .QN(n222) );
  DFF_X1 \f_reg[10]  ( .D(n81), .CK(clk), .Q(n53), .QN(n223) );
  DFF_X1 \f_reg[12]  ( .D(n2), .CK(clk), .Q(n50), .QN(n225) );
  DFF_X1 \f_reg[11]  ( .D(n80), .CK(clk), .Q(n51), .QN(n224) );
  DFF_X1 \f_reg[15]  ( .D(n4), .CK(clk), .Q(f[15]), .QN(n77) );
  DFF_X2 delay_reg ( .D(n168), .CK(clk), .Q(n6), .QN(n244) );
  DFF_X2 \f_reg[14]  ( .D(n5), .CK(clk), .Q(n48), .QN(n227) );
  DFF_X2 \f_reg[13]  ( .D(n17), .CK(clk), .Q(n49), .QN(n226) );
  MUX2_X2 U3 ( .A(N39), .B(n33), .S(n6), .Z(n202) );
  AND2_X1 U4 ( .A1(n47), .A2(n23), .ZN(n16) );
  AND2_X1 U5 ( .A1(n15), .A2(n13), .ZN(n1) );
  MUX2_X2 U6 ( .A(n35), .B(N37), .S(n244), .Z(n215) );
  MUX2_X2 U8 ( .A(n34), .B(N38), .S(n244), .Z(n216) );
  MUX2_X2 U9 ( .A(N41), .B(n29), .S(n6), .Z(n204) );
  NAND2_X1 U10 ( .A1(n14), .A2(n1), .ZN(n4) );
  NAND3_X1 U11 ( .A1(n8), .A2(n7), .A3(n9), .ZN(n2) );
  NAND3_X1 U12 ( .A1(n11), .A2(n10), .A3(n12), .ZN(n5) );
  MUX2_X2 U13 ( .A(n32), .B(N40), .S(n244), .Z(n203) );
  MUX2_X2 U14 ( .A(n27), .B(N43), .S(n244), .Z(n206) );
  MUX2_X2 U15 ( .A(N44), .B(n26), .S(n6), .Z(n207) );
  NAND2_X1 U16 ( .A1(data_out_b[12]), .A2(n22), .ZN(n7) );
  NAND2_X1 U17 ( .A1(adder[12]), .A2(n16), .ZN(n8) );
  NAND2_X1 U18 ( .A1(n67), .A2(n50), .ZN(n9) );
  NAND2_X1 U19 ( .A1(data_out_b[14]), .A2(n22), .ZN(n10) );
  NAND2_X1 U20 ( .A1(adder[14]), .A2(n16), .ZN(n11) );
  NAND2_X1 U21 ( .A1(n67), .A2(n48), .ZN(n12) );
  NAND2_X1 U22 ( .A1(data_out_b[15]), .A2(n22), .ZN(n13) );
  NAND2_X1 U23 ( .A1(adder[15]), .A2(n16), .ZN(n14) );
  NAND2_X1 U24 ( .A1(n67), .A2(f[15]), .ZN(n15) );
  NAND2_X1 U25 ( .A1(n168), .A2(n21), .ZN(n246) );
  INV_X1 U26 ( .A(clear_acc), .ZN(n23) );
  NAND3_X1 U27 ( .A1(wr_en_y), .A2(n78), .A3(n77), .ZN(n245) );
  INV_X1 U28 ( .A(n25), .ZN(n43) );
  OAI22_X1 U29 ( .A1(n188), .A2(n246), .B1(n69), .B2(n245), .ZN(n181) );
  OAI22_X1 U30 ( .A1(n189), .A2(n246), .B1(n70), .B2(n245), .ZN(n180) );
  OAI22_X1 U31 ( .A1(n190), .A2(n246), .B1(n71), .B2(n245), .ZN(n179) );
  OAI22_X1 U32 ( .A1(n191), .A2(n246), .B1(n72), .B2(n245), .ZN(n178) );
  OAI22_X1 U33 ( .A1(n192), .A2(n246), .B1(n220), .B2(n245), .ZN(n177) );
  OAI22_X1 U34 ( .A1(n193), .A2(n246), .B1(n221), .B2(n245), .ZN(n176) );
  OAI22_X1 U35 ( .A1(n194), .A2(n246), .B1(n222), .B2(n245), .ZN(n175) );
  NAND3_X1 U36 ( .A1(n19), .A2(n18), .A3(n20), .ZN(n17) );
  NAND2_X1 U37 ( .A1(data_out_b[13]), .A2(n22), .ZN(n18) );
  NAND2_X1 U38 ( .A1(adder[13]), .A2(n16), .ZN(n19) );
  NAND2_X1 U39 ( .A1(n67), .A2(n49), .ZN(n20) );
  INV_X1 U40 ( .A(n23), .ZN(n22) );
  INV_X1 U41 ( .A(n47), .ZN(n67) );
  INV_X1 U42 ( .A(wr_en_y), .ZN(n21) );
  INV_X1 U43 ( .A(m_ready), .ZN(n24) );
  NAND2_X1 U44 ( .A1(m_valid), .A2(n24), .ZN(n45) );
  OAI21_X1 U45 ( .B1(sel[4]), .B2(n79), .A(n45), .ZN(n168) );
  NAND2_X1 U46 ( .A1(clear_acc_delay), .A2(n244), .ZN(n25) );
  MUX2_X1 U47 ( .A(n26), .B(N44), .S(n43), .Z(n228) );
  MUX2_X1 U48 ( .A(n27), .B(N43), .S(n43), .Z(n229) );
  MUX2_X1 U49 ( .A(n28), .B(N42), .S(n43), .Z(n230) );
  MUX2_X1 U50 ( .A(n28), .B(N42), .S(n244), .Z(n205) );
  MUX2_X1 U51 ( .A(n29), .B(N41), .S(n43), .Z(n231) );
  MUX2_X1 U52 ( .A(n32), .B(N40), .S(n43), .Z(n232) );
  MUX2_X1 U53 ( .A(n33), .B(N39), .S(n43), .Z(n233) );
  MUX2_X1 U54 ( .A(n34), .B(N38), .S(n43), .Z(n234) );
  MUX2_X1 U55 ( .A(n35), .B(N37), .S(n43), .Z(n235) );
  MUX2_X1 U56 ( .A(n36), .B(N36), .S(n43), .Z(n236) );
  MUX2_X1 U57 ( .A(n36), .B(N36), .S(n244), .Z(n214) );
  MUX2_X1 U58 ( .A(n37), .B(N35), .S(n43), .Z(n237) );
  MUX2_X1 U59 ( .A(n37), .B(N35), .S(n244), .Z(n213) );
  MUX2_X1 U60 ( .A(n38), .B(N34), .S(n43), .Z(n238) );
  MUX2_X1 U61 ( .A(n38), .B(N34), .S(n244), .Z(n212) );
  MUX2_X1 U62 ( .A(n39), .B(N33), .S(n43), .Z(n239) );
  MUX2_X1 U63 ( .A(n39), .B(N33), .S(n244), .Z(n211) );
  MUX2_X1 U64 ( .A(n40), .B(N32), .S(n43), .Z(n240) );
  MUX2_X1 U65 ( .A(n40), .B(N32), .S(n244), .Z(n210) );
  MUX2_X1 U66 ( .A(n41), .B(N31), .S(n43), .Z(n241) );
  MUX2_X1 U67 ( .A(n41), .B(N31), .S(n244), .Z(n209) );
  MUX2_X1 U68 ( .A(n42), .B(N30), .S(n43), .Z(n242) );
  MUX2_X1 U69 ( .A(n42), .B(N30), .S(n244), .Z(n208) );
  MUX2_X1 U70 ( .A(n44), .B(N29), .S(n43), .Z(n243) );
  MUX2_X1 U71 ( .A(n44), .B(N29), .S(n244), .Z(n201) );
  INV_X1 U72 ( .A(n45), .ZN(n46) );
  OAI21_X1 U73 ( .B1(n46), .B2(n6), .A(n23), .ZN(n47) );
  AOI222_X1 U74 ( .A1(data_out_b[11]), .A2(n22), .B1(adder[11]), .B2(n16), 
        .C1(n67), .C2(n51), .ZN(n52) );
  INV_X1 U75 ( .A(n52), .ZN(n80) );
  AOI222_X1 U76 ( .A1(data_out_b[10]), .A2(n22), .B1(adder[10]), .B2(n16), 
        .C1(n67), .C2(n53), .ZN(n54) );
  INV_X1 U77 ( .A(n54), .ZN(n81) );
  AOI222_X1 U78 ( .A1(data_out_b[8]), .A2(n22), .B1(adder[8]), .B2(n16), .C1(
        n67), .C2(f[8]), .ZN(n55) );
  INV_X1 U79 ( .A(n55), .ZN(n83) );
  AOI222_X1 U80 ( .A1(data_out_b[7]), .A2(n22), .B1(adder[7]), .B2(n16), .C1(
        n67), .C2(f[7]), .ZN(n56) );
  INV_X1 U81 ( .A(n56), .ZN(n85) );
  AOI222_X1 U82 ( .A1(data_out_b[6]), .A2(n22), .B1(adder[6]), .B2(n16), .C1(
        n67), .C2(f[6]), .ZN(n57) );
  INV_X1 U83 ( .A(n57), .ZN(n102) );
  AOI222_X1 U84 ( .A1(data_out_b[5]), .A2(n22), .B1(adder[5]), .B2(n16), .C1(
        n67), .C2(f[5]), .ZN(n58) );
  INV_X1 U85 ( .A(n58), .ZN(n111) );
  AOI222_X1 U86 ( .A1(data_out_b[4]), .A2(n22), .B1(adder[4]), .B2(n16), .C1(
        n67), .C2(f[4]), .ZN(n59) );
  INV_X1 U87 ( .A(n59), .ZN(n112) );
  AOI222_X1 U88 ( .A1(data_out_b[3]), .A2(n22), .B1(adder[3]), .B2(n16), .C1(
        n67), .C2(f[3]), .ZN(n60) );
  INV_X1 U89 ( .A(n60), .ZN(n113) );
  AOI222_X1 U90 ( .A1(data_out_b[2]), .A2(n22), .B1(adder[2]), .B2(n16), .C1(
        n67), .C2(n61), .ZN(n62) );
  INV_X1 U91 ( .A(n62), .ZN(n114) );
  AOI222_X1 U92 ( .A1(data_out_b[1]), .A2(n22), .B1(adder[1]), .B2(n16), .C1(
        n67), .C2(n63), .ZN(n64) );
  INV_X1 U93 ( .A(n64), .ZN(n166) );
  AOI222_X1 U94 ( .A1(data_out_b[0]), .A2(n22), .B1(adder[0]), .B2(n16), .C1(
        n67), .C2(n65), .ZN(n66) );
  INV_X1 U95 ( .A(n66), .ZN(n167) );
  AOI222_X1 U96 ( .A1(data_out_b[9]), .A2(n22), .B1(adder[9]), .B2(n16), .C1(
        n67), .C2(f[9]), .ZN(n68) );
  INV_X1 U97 ( .A(n68), .ZN(n82) );
  NOR4_X1 U98 ( .A1(n51), .A2(n50), .A3(n49), .A4(n48), .ZN(n76) );
  NOR4_X1 U99 ( .A1(f[7]), .A2(f[8]), .A3(f[9]), .A4(n53), .ZN(n75) );
  NAND4_X1 U100 ( .A1(n72), .A2(n71), .A3(n70), .A4(n69), .ZN(n73) );
  NOR4_X1 U101 ( .A1(n73), .A2(n65), .A3(n63), .A4(n61), .ZN(n74) );
  NAND3_X1 U102 ( .A1(n76), .A2(n75), .A3(n74), .ZN(n78) );
  OAI22_X1 U103 ( .A1(n185), .A2(n246), .B1(n217), .B2(n245), .ZN(n184) );
  OAI22_X1 U104 ( .A1(n186), .A2(n246), .B1(n218), .B2(n245), .ZN(n183) );
  OAI22_X1 U105 ( .A1(n187), .A2(n246), .B1(n219), .B2(n245), .ZN(n182) );
  OAI22_X1 U106 ( .A1(n195), .A2(n246), .B1(n223), .B2(n245), .ZN(n174) );
  OAI22_X1 U107 ( .A1(n196), .A2(n246), .B1(n224), .B2(n245), .ZN(n173) );
  OAI22_X1 U108 ( .A1(n197), .A2(n246), .B1(n225), .B2(n245), .ZN(n172) );
  OAI22_X1 U109 ( .A1(n198), .A2(n246), .B1(n226), .B2(n245), .ZN(n171) );
  OAI22_X1 U110 ( .A1(n199), .A2(n246), .B1(n227), .B2(n245), .ZN(n170) );
  OAI22_X1 U111 ( .A1(n200), .A2(n246), .B1(n77), .B2(n245), .ZN(n169) );
  AND4_X1 U112 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n79)
         );
endmodule


module ctrlpath_M16_N8_T16_P16 ( clk, reset, s_valid, s_ready, m_valid, 
        m_ready, clear_acc, wr_en_x, wr_en_y, sel, addr_x, addr_w_0, addr_b_0, 
        addr_w_1, addr_b_1, addr_w_2, addr_b_2, addr_w_3, addr_b_3, addr_w_4, 
        addr_b_4, addr_w_5, addr_b_5, addr_w_6, addr_b_6, addr_w_7, addr_b_7, 
        addr_w_8, addr_b_8, addr_w_9, addr_b_9, addr_w_10, addr_b_10, 
        addr_w_11, addr_b_11, addr_w_12, addr_b_12, addr_w_13, addr_b_13, 
        addr_w_14, addr_b_14, addr_w_15, addr_b_15 );
  output [4:0] sel;
  output [3:0] addr_x;
  output [3:0] addr_w_0;
  output [0:0] addr_b_0;
  output [3:0] addr_w_1;
  output [0:0] addr_b_1;
  output [3:0] addr_w_2;
  output [0:0] addr_b_2;
  output [3:0] addr_w_3;
  output [0:0] addr_b_3;
  output [3:0] addr_w_4;
  output [0:0] addr_b_4;
  output [3:0] addr_w_5;
  output [0:0] addr_b_5;
  output [3:0] addr_w_6;
  output [0:0] addr_b_6;
  output [3:0] addr_w_7;
  output [0:0] addr_b_7;
  output [3:0] addr_w_8;
  output [0:0] addr_b_8;
  output [3:0] addr_w_9;
  output [0:0] addr_b_9;
  output [3:0] addr_w_10;
  output [0:0] addr_b_10;
  output [3:0] addr_w_11;
  output [0:0] addr_b_11;
  output [3:0] addr_w_12;
  output [0:0] addr_b_12;
  output [3:0] addr_w_13;
  output [0:0] addr_b_13;
  output [3:0] addr_w_14;
  output [0:0] addr_b_14;
  output [3:0] addr_w_15;
  output [0:0] addr_b_15;
  input clk, reset, s_valid, m_ready;
  output s_ready, m_valid, clear_acc, wr_en_x, wr_en_y;
  wire   N11, clear_acc_delay, N221, N222, N223, N224, N243, N244, N245, N246,
         N265, N266, N267, N268, N287, N288, N289, N290, N309, N310, N311,
         N312, N331, N332, N333, N334, N353, N354, N355, N356, N375, N376,
         N377, N378, N397, N398, N399, N400, N419, N420, N421, N422, N441,
         N442, N443, N444, N463, N464, N465, N466, N485, N486, N487, N488,
         N507, N508, N509, N510, N529, N530, N531, N532, N551, N552, N553,
         N554, N569, N585, N586, N587, n51, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n178, n179, n180,
         n181, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n195, n196, n197, n198, n200, n201, n202, n203, n205, n206, n207,
         n208, n210, n211, n212, n213, n215, n216, n217, n218, n220, n221,
         n222, n223, n225, n226, n227, n228, n230, n231, n232, n233, n235,
         n236, n237, n238, n240, n241, n242, n243, n245, n246, n247, n248,
         n250, n251, n252, n253, n255, n256, n257, n258, n260, n261, n262,
         n263, n265, n266, n267, n268, n270, n271, n272, n273, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n300, n301, n302, n303, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338,
         \r442/GE_LT_GT_LE , \add_735/carry[4] , \add_735/carry[3] ,
         \add_735/carry[2] , \add_702_S2/carry[3] , \add_702_S2/carry[2] ,
         \add_694_S2/carry[3] , \add_694_S2/carry[2] , \add_686_S2/carry[3] ,
         \add_686_S2/carry[2] , \add_678_S2/carry[3] , \add_678_S2/carry[2] ,
         \add_670_S2/carry[3] , \add_670_S2/carry[2] , \add_662_S2/carry[3] ,
         \add_662_S2/carry[2] , \add_654_S2/carry[3] , \add_654_S2/carry[2] ,
         \add_646_S2/carry[3] , \add_646_S2/carry[2] , \add_638_S2/carry[3] ,
         \add_638_S2/carry[2] , \add_630_S2/carry[3] , \add_630_S2/carry[2] ,
         \add_622_S2/carry[3] , \add_622_S2/carry[2] , \add_614_S2/carry[3] ,
         \add_614_S2/carry[2] , \add_606_S2/carry[3] , \add_606_S2/carry[2] ,
         \add_598_S2/carry[3] , \add_598_S2/carry[2] , \add_590_S2/carry[3] ,
         \add_590_S2/carry[2] , \add_582_S2/carry[3] , \add_582_S2/carry[2] ,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88;
  wire   [3:0] state;

  OAI33_X1 U264 ( .A1(n184), .A2(n185), .A3(n186), .B1(n187), .B2(state[0]), 
        .B3(reset), .ZN(s_ready) );
  NAND3_X1 U265 ( .A1(addr_x[1]), .A2(n152), .A3(n277), .ZN(n276) );
  NAND3_X1 U266 ( .A1(n290), .A2(n87), .A3(wr_en_y), .ZN(n291) );
  NAND3_X1 U267 ( .A1(n289), .A2(n87), .A3(n300), .ZN(n288) );
  NAND3_X1 U268 ( .A1(addr_x[2]), .A2(addr_x[0]), .A3(addr_x[1]), .ZN(n310) );
  NAND3_X1 U270 ( .A1(state[1]), .A2(n148), .A3(state[0]), .ZN(n305) );
  NAND3_X1 U271 ( .A1(state[0]), .A2(state[1]), .A3(state[2]), .ZN(n285) );
  HA_X1 \add_735/U1_1_1  ( .A(sel[1]), .B(sel[0]), .CO(\add_735/carry[2] ), 
        .S(N585) );
  HA_X1 \add_735/U1_1_2  ( .A(sel[2]), .B(\add_735/carry[2] ), .CO(
        \add_735/carry[3] ), .S(N586) );
  HA_X1 \add_735/U1_1_3  ( .A(sel[3]), .B(\add_735/carry[3] ), .CO(
        \add_735/carry[4] ), .S(N587) );
  HA_X1 \add_702_S2/U1_1_1  ( .A(addr_w_15[1]), .B(addr_w_15[0]), .CO(
        \add_702_S2/carry[2] ), .S(N552) );
  HA_X1 \add_702_S2/U1_1_2  ( .A(addr_w_15[2]), .B(\add_702_S2/carry[2] ), 
        .CO(\add_702_S2/carry[3] ), .S(N553) );
  HA_X1 \add_694_S2/U1_1_1  ( .A(addr_w_14[1]), .B(addr_w_14[0]), .CO(
        \add_694_S2/carry[2] ), .S(N530) );
  HA_X1 \add_694_S2/U1_1_2  ( .A(addr_w_14[2]), .B(\add_694_S2/carry[2] ), 
        .CO(\add_694_S2/carry[3] ), .S(N531) );
  HA_X1 \add_686_S2/U1_1_1  ( .A(addr_w_13[1]), .B(addr_w_13[0]), .CO(
        \add_686_S2/carry[2] ), .S(N508) );
  HA_X1 \add_686_S2/U1_1_2  ( .A(addr_w_13[2]), .B(\add_686_S2/carry[2] ), 
        .CO(\add_686_S2/carry[3] ), .S(N509) );
  HA_X1 \add_678_S2/U1_1_1  ( .A(addr_w_12[1]), .B(addr_w_12[0]), .CO(
        \add_678_S2/carry[2] ), .S(N486) );
  HA_X1 \add_678_S2/U1_1_2  ( .A(addr_w_12[2]), .B(\add_678_S2/carry[2] ), 
        .CO(\add_678_S2/carry[3] ), .S(N487) );
  HA_X1 \add_670_S2/U1_1_1  ( .A(addr_w_11[1]), .B(addr_w_11[0]), .CO(
        \add_670_S2/carry[2] ), .S(N464) );
  HA_X1 \add_670_S2/U1_1_2  ( .A(addr_w_11[2]), .B(\add_670_S2/carry[2] ), 
        .CO(\add_670_S2/carry[3] ), .S(N465) );
  HA_X1 \add_662_S2/U1_1_1  ( .A(addr_w_10[1]), .B(addr_w_10[0]), .CO(
        \add_662_S2/carry[2] ), .S(N442) );
  HA_X1 \add_662_S2/U1_1_2  ( .A(addr_w_10[2]), .B(\add_662_S2/carry[2] ), 
        .CO(\add_662_S2/carry[3] ), .S(N443) );
  HA_X1 \add_654_S2/U1_1_1  ( .A(addr_w_9[1]), .B(addr_w_9[0]), .CO(
        \add_654_S2/carry[2] ), .S(N420) );
  HA_X1 \add_654_S2/U1_1_2  ( .A(addr_w_9[2]), .B(\add_654_S2/carry[2] ), .CO(
        \add_654_S2/carry[3] ), .S(N421) );
  HA_X1 \add_646_S2/U1_1_1  ( .A(addr_w_8[1]), .B(addr_w_8[0]), .CO(
        \add_646_S2/carry[2] ), .S(N398) );
  HA_X1 \add_646_S2/U1_1_2  ( .A(addr_w_8[2]), .B(\add_646_S2/carry[2] ), .CO(
        \add_646_S2/carry[3] ), .S(N399) );
  HA_X1 \add_638_S2/U1_1_1  ( .A(addr_w_7[1]), .B(addr_w_7[0]), .CO(
        \add_638_S2/carry[2] ), .S(N376) );
  HA_X1 \add_638_S2/U1_1_2  ( .A(addr_w_7[2]), .B(\add_638_S2/carry[2] ), .CO(
        \add_638_S2/carry[3] ), .S(N377) );
  HA_X1 \add_630_S2/U1_1_1  ( .A(addr_w_6[1]), .B(addr_w_6[0]), .CO(
        \add_630_S2/carry[2] ), .S(N354) );
  HA_X1 \add_630_S2/U1_1_2  ( .A(addr_w_6[2]), .B(\add_630_S2/carry[2] ), .CO(
        \add_630_S2/carry[3] ), .S(N355) );
  HA_X1 \add_622_S2/U1_1_1  ( .A(addr_w_5[1]), .B(addr_w_5[0]), .CO(
        \add_622_S2/carry[2] ), .S(N332) );
  HA_X1 \add_622_S2/U1_1_2  ( .A(addr_w_5[2]), .B(\add_622_S2/carry[2] ), .CO(
        \add_622_S2/carry[3] ), .S(N333) );
  HA_X1 \add_614_S2/U1_1_1  ( .A(addr_w_4[1]), .B(addr_w_4[0]), .CO(
        \add_614_S2/carry[2] ), .S(N310) );
  HA_X1 \add_614_S2/U1_1_2  ( .A(addr_w_4[2]), .B(\add_614_S2/carry[2] ), .CO(
        \add_614_S2/carry[3] ), .S(N311) );
  HA_X1 \add_606_S2/U1_1_1  ( .A(addr_w_3[1]), .B(addr_w_3[0]), .CO(
        \add_606_S2/carry[2] ), .S(N288) );
  HA_X1 \add_606_S2/U1_1_2  ( .A(addr_w_3[2]), .B(\add_606_S2/carry[2] ), .CO(
        \add_606_S2/carry[3] ), .S(N289) );
  HA_X1 \add_598_S2/U1_1_1  ( .A(addr_w_2[1]), .B(addr_w_2[0]), .CO(
        \add_598_S2/carry[2] ), .S(N266) );
  HA_X1 \add_598_S2/U1_1_2  ( .A(addr_w_2[2]), .B(\add_598_S2/carry[2] ), .CO(
        \add_598_S2/carry[3] ), .S(N267) );
  HA_X1 \add_590_S2/U1_1_1  ( .A(addr_w_1[1]), .B(addr_w_1[0]), .CO(
        \add_590_S2/carry[2] ), .S(N244) );
  HA_X1 \add_590_S2/U1_1_2  ( .A(addr_w_1[2]), .B(\add_590_S2/carry[2] ), .CO(
        \add_590_S2/carry[3] ), .S(N245) );
  HA_X1 \add_582_S2/U1_1_1  ( .A(addr_w_0[1]), .B(addr_w_0[0]), .CO(
        \add_582_S2/carry[2] ), .S(N222) );
  HA_X1 \add_582_S2/U1_1_2  ( .A(addr_w_0[2]), .B(\add_582_S2/carry[2] ), .CO(
        \add_582_S2/carry[3] ), .S(N223) );
  DFF_X1 clear_acc_delay_reg ( .D(n4), .CK(clk), .Q(clear_acc_delay) );
  DFF_X1 \state_reg[2]  ( .D(n3), .CK(clk), .Q(state[2]), .QN(n148) );
  DFF_X1 wr_en_y_reg ( .D(n5), .CK(clk), .Q(wr_en_y) );
  DFF_X1 \addr_w2_15_reg[3]  ( .D(n79), .CK(clk), .Q(addr_w_15[3]) );
  DFF_X1 \addr_w2_15_reg[2]  ( .D(n78), .CK(clk), .Q(addr_w_15[2]) );
  DFF_X1 \addr_w2_15_reg[1]  ( .D(n77), .CK(clk), .Q(addr_w_15[1]) );
  DFF_X1 \addr_w2_15_reg[0]  ( .D(n76), .CK(clk), .Q(addr_w_15[0]), .QN(N551)
         );
  DFF_X1 \addr_w2_14_reg[3]  ( .D(n75), .CK(clk), .Q(addr_w_14[3]) );
  DFF_X1 \addr_w2_14_reg[2]  ( .D(n74), .CK(clk), .Q(addr_w_14[2]) );
  DFF_X1 \addr_w2_14_reg[1]  ( .D(n73), .CK(clk), .Q(addr_w_14[1]) );
  DFF_X1 \addr_w2_14_reg[0]  ( .D(n72), .CK(clk), .Q(addr_w_14[0]), .QN(N529)
         );
  DFF_X1 \addr_w2_13_reg[3]  ( .D(n71), .CK(clk), .Q(addr_w_13[3]) );
  DFF_X1 \addr_w2_13_reg[2]  ( .D(n70), .CK(clk), .Q(addr_w_13[2]) );
  DFF_X1 \addr_w2_13_reg[1]  ( .D(n69), .CK(clk), .Q(addr_w_13[1]) );
  DFF_X1 \addr_w2_13_reg[0]  ( .D(n68), .CK(clk), .Q(addr_w_13[0]), .QN(N507)
         );
  DFF_X1 \addr_w2_12_reg[3]  ( .D(n67), .CK(clk), .Q(addr_w_12[3]) );
  DFF_X1 \addr_w2_12_reg[2]  ( .D(n66), .CK(clk), .Q(addr_w_12[2]) );
  DFF_X1 \addr_w2_12_reg[1]  ( .D(n65), .CK(clk), .Q(addr_w_12[1]) );
  DFF_X1 \addr_w2_12_reg[0]  ( .D(n64), .CK(clk), .Q(addr_w_12[0]), .QN(N485)
         );
  DFF_X1 \addr_w2_11_reg[3]  ( .D(n63), .CK(clk), .Q(addr_w_11[3]) );
  DFF_X1 \addr_w2_11_reg[2]  ( .D(n62), .CK(clk), .Q(addr_w_11[2]) );
  DFF_X1 \addr_w2_11_reg[1]  ( .D(n61), .CK(clk), .Q(addr_w_11[1]) );
  DFF_X1 \addr_w2_11_reg[0]  ( .D(n60), .CK(clk), .Q(addr_w_11[0]), .QN(N463)
         );
  DFF_X1 \addr_w2_10_reg[3]  ( .D(n59), .CK(clk), .Q(addr_w_10[3]) );
  DFF_X1 \addr_w2_10_reg[2]  ( .D(n58), .CK(clk), .Q(addr_w_10[2]) );
  DFF_X1 \addr_w2_10_reg[1]  ( .D(n57), .CK(clk), .Q(addr_w_10[1]) );
  DFF_X1 \addr_w2_10_reg[0]  ( .D(n56), .CK(clk), .Q(addr_w_10[0]), .QN(N441)
         );
  DFF_X1 \addr_w2_9_reg[3]  ( .D(n55), .CK(clk), .Q(addr_w_9[3]) );
  DFF_X1 \addr_w2_9_reg[2]  ( .D(n54), .CK(clk), .Q(addr_w_9[2]) );
  DFF_X1 \addr_w2_9_reg[1]  ( .D(n53), .CK(clk), .Q(addr_w_9[1]) );
  DFF_X1 \addr_w2_9_reg[0]  ( .D(n52), .CK(clk), .Q(addr_w_9[0]), .QN(N419) );
  DFF_X1 \addr_w2_8_reg[3]  ( .D(n50), .CK(clk), .Q(addr_w_8[3]) );
  DFF_X1 \addr_w2_8_reg[2]  ( .D(n49), .CK(clk), .Q(addr_w_8[2]) );
  DFF_X1 \addr_w2_8_reg[1]  ( .D(n48), .CK(clk), .Q(addr_w_8[1]) );
  DFF_X1 \addr_w2_8_reg[0]  ( .D(n47), .CK(clk), .Q(addr_w_8[0]), .QN(N397) );
  DFF_X1 \addr_w2_7_reg[3]  ( .D(n46), .CK(clk), .Q(addr_w_7[3]) );
  DFF_X1 \addr_w2_7_reg[2]  ( .D(n45), .CK(clk), .Q(addr_w_7[2]) );
  DFF_X1 \addr_w2_7_reg[1]  ( .D(n44), .CK(clk), .Q(addr_w_7[1]) );
  DFF_X1 \addr_w2_7_reg[0]  ( .D(n43), .CK(clk), .Q(addr_w_7[0]), .QN(N375) );
  DFF_X1 \addr_w2_6_reg[3]  ( .D(n42), .CK(clk), .Q(addr_w_6[3]) );
  DFF_X1 \addr_w2_6_reg[2]  ( .D(n41), .CK(clk), .Q(addr_w_6[2]) );
  DFF_X1 \addr_w2_6_reg[1]  ( .D(n40), .CK(clk), .Q(addr_w_6[1]) );
  DFF_X1 \addr_w2_6_reg[0]  ( .D(n39), .CK(clk), .Q(addr_w_6[0]), .QN(N353) );
  DFF_X1 \addr_w2_5_reg[3]  ( .D(n38), .CK(clk), .Q(addr_w_5[3]) );
  DFF_X1 \addr_w2_5_reg[2]  ( .D(n37), .CK(clk), .Q(addr_w_5[2]) );
  DFF_X1 \addr_w2_5_reg[1]  ( .D(n36), .CK(clk), .Q(addr_w_5[1]) );
  DFF_X1 \addr_w2_5_reg[0]  ( .D(n35), .CK(clk), .Q(addr_w_5[0]), .QN(N331) );
  DFF_X1 \addr_w2_4_reg[3]  ( .D(n34), .CK(clk), .Q(addr_w_4[3]) );
  DFF_X1 \addr_w2_4_reg[2]  ( .D(n33), .CK(clk), .Q(addr_w_4[2]) );
  DFF_X1 \addr_w2_4_reg[1]  ( .D(n32), .CK(clk), .Q(addr_w_4[1]) );
  DFF_X1 \addr_w2_4_reg[0]  ( .D(n31), .CK(clk), .Q(addr_w_4[0]), .QN(N309) );
  DFF_X1 \addr_w2_3_reg[3]  ( .D(n30), .CK(clk), .Q(addr_w_3[3]) );
  DFF_X1 \addr_w2_3_reg[2]  ( .D(n29), .CK(clk), .Q(addr_w_3[2]) );
  DFF_X1 \addr_w2_3_reg[1]  ( .D(n28), .CK(clk), .Q(addr_w_3[1]) );
  DFF_X1 \addr_w2_3_reg[0]  ( .D(n27), .CK(clk), .Q(addr_w_3[0]), .QN(N287) );
  DFF_X1 \addr_w2_2_reg[3]  ( .D(n26), .CK(clk), .Q(addr_w_2[3]) );
  DFF_X1 \addr_w2_2_reg[2]  ( .D(n25), .CK(clk), .Q(addr_w_2[2]) );
  DFF_X1 \addr_w2_2_reg[1]  ( .D(n24), .CK(clk), .Q(addr_w_2[1]) );
  DFF_X1 \addr_w2_2_reg[0]  ( .D(n23), .CK(clk), .Q(addr_w_2[0]), .QN(N265) );
  DFF_X1 \addr_w2_1_reg[3]  ( .D(n22), .CK(clk), .Q(addr_w_1[3]) );
  DFF_X1 \addr_w2_1_reg[2]  ( .D(n21), .CK(clk), .Q(addr_w_1[2]) );
  DFF_X1 \addr_w2_1_reg[1]  ( .D(n20), .CK(clk), .Q(addr_w_1[1]) );
  DFF_X1 \addr_w2_1_reg[0]  ( .D(n19), .CK(clk), .Q(addr_w_1[0]), .QN(N243) );
  DFF_X1 \addr_w2_0_reg[3]  ( .D(n18), .CK(clk), .Q(addr_w_0[3]) );
  DFF_X1 \addr_w2_0_reg[2]  ( .D(n17), .CK(clk), .Q(addr_w_0[2]) );
  DFF_X1 \addr_w2_0_reg[1]  ( .D(n16), .CK(clk), .Q(addr_w_0[1]) );
  DFF_X1 \addr_w2_0_reg[0]  ( .D(n15), .CK(clk), .Q(addr_w_0[0]), .QN(N221) );
  DFF_X1 clear_acc_reg ( .D(N569), .CK(clk), .Q(clear_acc), .QN(n51) );
  DFF_X1 \addr_b_15_reg[0]  ( .D(n325), .CK(clk), .Q(addr_b_15[0]), .QN(n170)
         );
  DFF_X1 \addr_b_14_reg[0]  ( .D(n324), .CK(clk), .Q(addr_b_14[0]), .QN(n169)
         );
  DFF_X1 \addr_b_13_reg[0]  ( .D(n323), .CK(clk), .Q(addr_b_13[0]), .QN(n168)
         );
  DFF_X1 \addr_b_12_reg[0]  ( .D(n322), .CK(clk), .Q(addr_b_12[0]), .QN(n167)
         );
  DFF_X1 \addr_b_11_reg[0]  ( .D(n321), .CK(clk), .Q(addr_b_11[0]), .QN(n166)
         );
  DFF_X1 \addr_b_10_reg[0]  ( .D(n320), .CK(clk), .Q(addr_b_10[0]), .QN(n165)
         );
  DFF_X1 \addr_b_9_reg[0]  ( .D(n319), .CK(clk), .Q(addr_b_9[0]), .QN(n164) );
  DFF_X1 \addr_b_8_reg[0]  ( .D(n318), .CK(clk), .Q(addr_b_8[0]), .QN(n163) );
  DFF_X1 \addr_b_7_reg[0]  ( .D(n317), .CK(clk), .Q(addr_b_7[0]), .QN(n162) );
  DFF_X1 \addr_b_6_reg[0]  ( .D(n316), .CK(clk), .Q(addr_b_6[0]), .QN(n161) );
  DFF_X1 \addr_b_5_reg[0]  ( .D(n315), .CK(clk), .Q(addr_b_5[0]), .QN(n160) );
  DFF_X1 \addr_b_4_reg[0]  ( .D(n314), .CK(clk), .Q(addr_b_4[0]), .QN(n159) );
  DFF_X1 \addr_b_3_reg[0]  ( .D(n329), .CK(clk), .Q(addr_b_3[0]), .QN(n158) );
  DFF_X1 \addr_b_2_reg[0]  ( .D(n328), .CK(clk), .Q(addr_b_2[0]), .QN(n157) );
  DFF_X1 \addr_b_1_reg[0]  ( .D(n327), .CK(clk), .Q(addr_b_1[0]), .QN(n156) );
  DFF_X1 \addr_b_0_reg[0]  ( .D(n326), .CK(clk), .Q(addr_b_0[0]), .QN(n155) );
  DFF_X1 m_valid_reg ( .D(n337), .CK(clk), .Q(m_valid), .QN(n171) );
  DFF_X1 \sel_count_reg[1]  ( .D(n335), .CK(clk), .Q(sel[1]), .QN(n180) );
  DFF_X1 \sel_count_reg[2]  ( .D(n334), .CK(clk), .Q(sel[2]), .QN(n179) );
  DFF_X1 \sel_count_reg[0]  ( .D(n338), .CK(clk), .Q(sel[0]), .QN(n181) );
  DFF_X1 \state_reg[1]  ( .D(n83), .CK(clk), .Q(state[1]), .QN(n149) );
  DFF_X1 \state_reg[0]  ( .D(N11), .CK(clk), .Q(state[0]), .QN(n150) );
  DFF_X1 \sel_count_reg[3]  ( .D(n333), .CK(clk), .Q(sel[3]), .QN(n178) );
  DFF_X1 \sel_count_reg[4]  ( .D(n336), .CK(clk), .Q(sel[4]), .QN(n172) );
  DFF_X1 \addr_x_reg[0]  ( .D(n331), .CK(clk), .Q(addr_x[0]), .QN(n154) );
  DFF_X1 \addr_x_reg[1]  ( .D(n14), .CK(clk), .Q(addr_x[1]), .QN(n153) );
  DFF_X1 \addr_x_reg[2]  ( .D(n330), .CK(clk), .Q(addr_x[2]), .QN(n152) );
  DFF_X1 \addr_x_reg[3]  ( .D(n332), .CK(clk), .Q(addr_x[3]), .QN(n151) );
  BUF_X1 U3 ( .A(n189), .Z(n10) );
  NOR4_X1 U4 ( .A1(n86), .A2(n270), .A3(n189), .A4(reset), .ZN(n190) );
  XNOR2_X1 U5 ( .A(\add_735/carry[4] ), .B(sel[4]), .ZN(n1) );
  NOR2_X1 U6 ( .A1(reset), .A2(n2), .ZN(n3) );
  INV_X1 U7 ( .A(n186), .ZN(n2) );
  NOR2_X1 U8 ( .A1(n51), .A2(n287), .ZN(n4) );
  BUF_X1 U9 ( .A(n189), .Z(n9) );
  INV_X1 U10 ( .A(n281), .ZN(n13) );
  INV_X1 U11 ( .A(n184), .ZN(n83) );
  OAI21_X1 U12 ( .B1(n271), .B2(wr_en_x), .A(n87), .ZN(n281) );
  NOR3_X1 U13 ( .A1(n88), .A2(n185), .A3(n186), .ZN(wr_en_x) );
  NOR3_X1 U14 ( .A1(n286), .A2(\r442/GE_LT_GT_LE ), .A3(n287), .ZN(n271) );
  OAI211_X1 U15 ( .C1(n302), .C2(n285), .A(n300), .B(n303), .ZN(n186) );
  NOR3_X1 U16 ( .A1(n5), .A2(n270), .A3(n84), .ZN(n303) );
  BUF_X1 U17 ( .A(n190), .Z(n6) );
  BUF_X1 U18 ( .A(n190), .Z(n7) );
  NOR2_X1 U19 ( .A1(n301), .A2(n306), .ZN(n300) );
  AND2_X1 U20 ( .A1(n271), .A2(n87), .ZN(n189) );
  NAND4_X1 U21 ( .A1(n284), .A2(n285), .A3(n281), .A4(n87), .ZN(n280) );
  OAI21_X1 U22 ( .B1(n5), .B2(n307), .A(n87), .ZN(n184) );
  NOR2_X1 U23 ( .A1(n301), .A2(n270), .ZN(n284) );
  INV_X1 U24 ( .A(n287), .ZN(n84) );
  NAND2_X1 U25 ( .A1(n284), .A2(n87), .ZN(N569) );
  INV_X1 U26 ( .A(n285), .ZN(n86) );
  NAND2_X1 U27 ( .A1(clear_acc_delay), .A2(n87), .ZN(n272) );
  INV_X1 U28 ( .A(n273), .ZN(n85) );
  AOI211_X1 U29 ( .C1(state[1]), .C2(state[0]), .A(clear_acc_delay), .B(reset), 
        .ZN(n273) );
  NAND4_X1 U30 ( .A1(n300), .A2(m_valid), .A3(m_ready), .A4(n87), .ZN(n289) );
  OAI221_X1 U31 ( .B1(n302), .B2(n285), .C1(addr_x[3]), .C2(n305), .A(n311), 
        .ZN(n307) );
  NOR2_X1 U32 ( .A1(n306), .A2(n312), .ZN(n311) );
  NOR3_X1 U33 ( .A1(n187), .A2(state[0]), .A3(n88), .ZN(n312) );
  NOR3_X1 U34 ( .A1(n149), .A2(state[0]), .A3(n148), .ZN(n306) );
  NOR3_X1 U35 ( .A1(state[0]), .A2(state[2]), .A3(n149), .ZN(n301) );
  NOR2_X1 U36 ( .A1(n151), .A2(n305), .ZN(n270) );
  OAI221_X1 U37 ( .B1(n289), .B2(n1), .C1(n288), .C2(n172), .A(n87), .ZN(n336)
         );
  NOR2_X1 U38 ( .A1(n307), .A2(n309), .ZN(n185) );
  AOI21_X1 U39 ( .B1(n310), .B2(n151), .A(n287), .ZN(n309) );
  AOI21_X1 U40 ( .B1(n153), .B2(n13), .A(n279), .ZN(n275) );
  NOR2_X1 U41 ( .A1(n281), .A2(n154), .ZN(n277) );
  OAI22_X1 U42 ( .A1(n179), .A2(n288), .B1(n289), .B2(n81), .ZN(n334) );
  INV_X1 U43 ( .A(N586), .ZN(n81) );
  OAI22_X1 U44 ( .A1(n180), .A2(n288), .B1(n289), .B2(n82), .ZN(n335) );
  INV_X1 U45 ( .A(N585), .ZN(n82) );
  OAI22_X1 U46 ( .A1(n181), .A2(n288), .B1(n289), .B2(sel[0]), .ZN(n338) );
  OAI22_X1 U47 ( .A1(n85), .A2(n158), .B1(addr_b_3[0]), .B2(n272), .ZN(n329)
         );
  OAI22_X1 U48 ( .A1(n85), .A2(n157), .B1(addr_b_2[0]), .B2(n272), .ZN(n328)
         );
  OAI22_X1 U49 ( .A1(n85), .A2(n156), .B1(addr_b_1[0]), .B2(n272), .ZN(n327)
         );
  OAI22_X1 U50 ( .A1(n85), .A2(n155), .B1(addr_b_0[0]), .B2(n272), .ZN(n326)
         );
  OAI22_X1 U51 ( .A1(n85), .A2(n170), .B1(addr_b_15[0]), .B2(n272), .ZN(n325)
         );
  OAI22_X1 U52 ( .A1(n85), .A2(n169), .B1(addr_b_14[0]), .B2(n272), .ZN(n324)
         );
  OAI22_X1 U53 ( .A1(n85), .A2(n168), .B1(addr_b_13[0]), .B2(n272), .ZN(n323)
         );
  OAI22_X1 U54 ( .A1(n85), .A2(n167), .B1(addr_b_12[0]), .B2(n272), .ZN(n322)
         );
  OAI22_X1 U55 ( .A1(n85), .A2(n166), .B1(addr_b_11[0]), .B2(n272), .ZN(n321)
         );
  OAI22_X1 U56 ( .A1(n85), .A2(n165), .B1(addr_b_10[0]), .B2(n272), .ZN(n320)
         );
  OAI22_X1 U57 ( .A1(n85), .A2(n164), .B1(addr_b_9[0]), .B2(n272), .ZN(n319)
         );
  OAI22_X1 U58 ( .A1(n85), .A2(n163), .B1(addr_b_8[0]), .B2(n272), .ZN(n318)
         );
  OAI22_X1 U59 ( .A1(n85), .A2(n162), .B1(addr_b_7[0]), .B2(n272), .ZN(n317)
         );
  OAI22_X1 U60 ( .A1(n85), .A2(n161), .B1(addr_b_6[0]), .B2(n272), .ZN(n316)
         );
  OAI22_X1 U61 ( .A1(n85), .A2(n160), .B1(addr_b_5[0]), .B2(n272), .ZN(n315)
         );
  OAI22_X1 U62 ( .A1(n85), .A2(n159), .B1(addr_b_4[0]), .B2(n272), .ZN(n314)
         );
  OAI21_X1 U63 ( .B1(addr_x[0]), .B2(n281), .A(n280), .ZN(n279) );
  OAI22_X1 U64 ( .A1(n154), .A2(n280), .B1(addr_x[0]), .B2(n281), .ZN(n331) );
  NOR2_X1 U65 ( .A1(n171), .A2(m_ready), .ZN(n286) );
  OAI21_X1 U66 ( .B1(n171), .B2(n290), .A(n291), .ZN(n337) );
  OAI21_X1 U67 ( .B1(\r442/GE_LT_GT_LE ), .B2(n286), .A(n87), .ZN(n290) );
  NOR2_X1 U68 ( .A1(state[1]), .A2(n148), .ZN(n308) );
  NAND2_X1 U69 ( .A1(n308), .A2(n150), .ZN(n287) );
  OAI21_X1 U70 ( .B1(n282), .B2(n151), .A(n283), .ZN(n332) );
  NAND4_X1 U71 ( .A1(n277), .A2(addr_x[2]), .A3(addr_x[1]), .A4(n151), .ZN(
        n283) );
  AOI21_X1 U72 ( .B1(n13), .B2(n152), .A(n12), .ZN(n282) );
  INV_X1 U73 ( .A(n275), .ZN(n12) );
  OAI21_X1 U74 ( .B1(n275), .B2(n152), .A(n276), .ZN(n330) );
  NAND2_X1 U75 ( .A1(n148), .A2(n149), .ZN(n187) );
  AND4_X1 U76 ( .A1(sel[2]), .A2(sel[1]), .A3(sel[3]), .A4(n313), .ZN(n302) );
  AND4_X1 U77 ( .A1(n172), .A2(m_ready), .A3(m_valid), .A4(sel[0]), .ZN(n313)
         );
  AND2_X1 U78 ( .A1(n308), .A2(state[0]), .ZN(n5) );
  OAI22_X1 U79 ( .A1(n178), .A2(n288), .B1(n289), .B2(n80), .ZN(n333) );
  INV_X1 U80 ( .A(N587), .ZN(n80) );
  NOR2_X1 U81 ( .A1(reset), .A2(n185), .ZN(N11) );
  INV_X1 U82 ( .A(s_valid), .ZN(n88) );
  INV_X1 U83 ( .A(n235), .ZN(n42) );
  AOI22_X1 U84 ( .A1(N356), .A2(n10), .B1(addr_w_6[3]), .B2(n8), .ZN(n235) );
  XOR2_X1 U85 ( .A(addr_w_6[3]), .B(\add_630_S2/carry[3] ), .Z(N356) );
  INV_X1 U86 ( .A(n213), .ZN(n60) );
  AOI22_X1 U87 ( .A1(N463), .A2(n10), .B1(addr_w_11[0]), .B2(n6), .ZN(n213) );
  INV_X1 U88 ( .A(n253), .ZN(n27) );
  AOI22_X1 U89 ( .A1(N287), .A2(n10), .B1(addr_w_3[0]), .B2(n8), .ZN(n253) );
  INV_X1 U90 ( .A(n188), .ZN(n79) );
  AOI22_X1 U91 ( .A1(N554), .A2(n10), .B1(addr_w_15[3]), .B2(n8), .ZN(n188) );
  XOR2_X1 U92 ( .A(addr_w_15[3]), .B(\add_702_S2/carry[3] ), .Z(N554) );
  INV_X1 U93 ( .A(n230), .ZN(n46) );
  AOI22_X1 U94 ( .A1(N378), .A2(n10), .B1(addr_w_7[3]), .B2(n8), .ZN(n230) );
  XOR2_X1 U95 ( .A(addr_w_7[3]), .B(\add_638_S2/carry[3] ), .Z(N378) );
  INV_X1 U96 ( .A(n240), .ZN(n38) );
  AOI22_X1 U97 ( .A1(N334), .A2(n9), .B1(addr_w_5[3]), .B2(n7), .ZN(n240) );
  XOR2_X1 U98 ( .A(addr_w_5[3]), .B(\add_622_S2/carry[3] ), .Z(N334) );
  INV_X1 U99 ( .A(n203), .ZN(n68) );
  AOI22_X1 U100 ( .A1(N507), .A2(n9), .B1(addr_w_13[0]), .B2(n7), .ZN(n203) );
  INV_X1 U101 ( .A(n232), .ZN(n44) );
  AOI22_X1 U102 ( .A1(N376), .A2(n9), .B1(addr_w_7[1]), .B2(n8), .ZN(n232) );
  INV_X1 U103 ( .A(n245), .ZN(n34) );
  AOI22_X1 U104 ( .A1(N312), .A2(n9), .B1(addr_w_4[3]), .B2(n6), .ZN(n245) );
  XOR2_X1 U105 ( .A(addr_w_4[3]), .B(\add_614_S2/carry[3] ), .Z(N312) );
  INV_X1 U106 ( .A(n233), .ZN(n43) );
  AOI22_X1 U107 ( .A1(N375), .A2(n10), .B1(addr_w_7[0]), .B2(n6), .ZN(n233) );
  INV_X1 U108 ( .A(n236), .ZN(n41) );
  AOI22_X1 U109 ( .A1(N355), .A2(n9), .B1(addr_w_6[2]), .B2(n7), .ZN(n236) );
  INV_X1 U110 ( .A(n263), .ZN(n19) );
  AOI22_X1 U111 ( .A1(N243), .A2(n189), .B1(addr_w_1[0]), .B2(n7), .ZN(n263)
         );
  INV_X1 U112 ( .A(n220), .ZN(n55) );
  AOI22_X1 U113 ( .A1(N422), .A2(n10), .B1(addr_w_9[3]), .B2(n6), .ZN(n220) );
  XOR2_X1 U114 ( .A(addr_w_9[3]), .B(\add_654_S2/carry[3] ), .Z(N422) );
  INV_X1 U115 ( .A(n206), .ZN(n66) );
  AOI22_X1 U116 ( .A1(N487), .A2(n9), .B1(addr_w_12[2]), .B2(n7), .ZN(n206) );
  INV_X1 U117 ( .A(n198), .ZN(n72) );
  AOI22_X1 U118 ( .A1(N529), .A2(n9), .B1(addr_w_14[0]), .B2(n7), .ZN(n198) );
  INV_X1 U119 ( .A(n258), .ZN(n23) );
  AOI22_X1 U120 ( .A1(N265), .A2(n189), .B1(addr_w_2[0]), .B2(n190), .ZN(n258)
         );
  INV_X1 U121 ( .A(n260), .ZN(n22) );
  AOI22_X1 U122 ( .A1(N246), .A2(n189), .B1(addr_w_1[3]), .B2(n8), .ZN(n260)
         );
  XOR2_X1 U123 ( .A(addr_w_1[3]), .B(\add_590_S2/carry[3] ), .Z(N246) );
  INV_X1 U124 ( .A(n250), .ZN(n30) );
  AOI22_X1 U125 ( .A1(N290), .A2(n10), .B1(addr_w_3[3]), .B2(n7), .ZN(n250) );
  XOR2_X1 U126 ( .A(addr_w_3[3]), .B(\add_606_S2/carry[3] ), .Z(N290) );
  INV_X1 U127 ( .A(n200), .ZN(n71) );
  AOI22_X1 U128 ( .A1(N510), .A2(n9), .B1(addr_w_13[3]), .B2(n7), .ZN(n200) );
  XOR2_X1 U129 ( .A(addr_w_13[3]), .B(\add_686_S2/carry[3] ), .Z(N510) );
  INV_X1 U130 ( .A(n251), .ZN(n29) );
  AOI22_X1 U131 ( .A1(N289), .A2(n9), .B1(addr_w_3[2]), .B2(n190), .ZN(n251)
         );
  INV_X1 U132 ( .A(n227), .ZN(n48) );
  AOI22_X1 U133 ( .A1(N398), .A2(n10), .B1(addr_w_8[1]), .B2(n6), .ZN(n227) );
  INV_X1 U134 ( .A(n228), .ZN(n47) );
  AOI22_X1 U135 ( .A1(N397), .A2(n10), .B1(addr_w_8[0]), .B2(n7), .ZN(n228) );
  INV_X1 U136 ( .A(n195), .ZN(n75) );
  AOI22_X1 U137 ( .A1(N532), .A2(n10), .B1(addr_w_14[3]), .B2(n7), .ZN(n195)
         );
  XOR2_X1 U138 ( .A(addr_w_14[3]), .B(\add_694_S2/carry[3] ), .Z(N532) );
  INV_X1 U139 ( .A(n191), .ZN(n78) );
  AOI22_X1 U140 ( .A1(N553), .A2(n10), .B1(addr_w_15[2]), .B2(n8), .ZN(n191)
         );
  INV_X1 U141 ( .A(n226), .ZN(n49) );
  AOI22_X1 U142 ( .A1(N399), .A2(n9), .B1(addr_w_8[2]), .B2(n190), .ZN(n226)
         );
  INV_X1 U143 ( .A(n221), .ZN(n54) );
  AOI22_X1 U144 ( .A1(N421), .A2(n10), .B1(addr_w_9[2]), .B2(n6), .ZN(n221) );
  INV_X1 U145 ( .A(n265), .ZN(n18) );
  AOI22_X1 U146 ( .A1(N224), .A2(n189), .B1(addr_w_0[3]), .B2(n8), .ZN(n265)
         );
  XOR2_X1 U147 ( .A(addr_w_0[3]), .B(\add_582_S2/carry[3] ), .Z(N224) );
  INV_X1 U148 ( .A(n255), .ZN(n26) );
  AOI22_X1 U149 ( .A1(N268), .A2(n10), .B1(addr_w_2[3]), .B2(n6), .ZN(n255) );
  XOR2_X1 U150 ( .A(addr_w_2[3]), .B(\add_598_S2/carry[3] ), .Z(N268) );
  INV_X1 U151 ( .A(n210), .ZN(n63) );
  AOI22_X1 U152 ( .A1(N466), .A2(n9), .B1(addr_w_11[3]), .B2(n6), .ZN(n210) );
  XOR2_X1 U153 ( .A(addr_w_11[3]), .B(\add_670_S2/carry[3] ), .Z(N466) );
  INV_X1 U154 ( .A(n215), .ZN(n59) );
  AOI22_X1 U155 ( .A1(N444), .A2(n10), .B1(addr_w_10[3]), .B2(n6), .ZN(n215)
         );
  XOR2_X1 U156 ( .A(addr_w_10[3]), .B(\add_662_S2/carry[3] ), .Z(N444) );
  INV_X1 U157 ( .A(n248), .ZN(n31) );
  AOI22_X1 U158 ( .A1(N309), .A2(n9), .B1(addr_w_4[0]), .B2(n8), .ZN(n248) );
  INV_X1 U159 ( .A(n208), .ZN(n64) );
  AOI22_X1 U160 ( .A1(N485), .A2(n9), .B1(addr_w_12[0]), .B2(n7), .ZN(n208) );
  INV_X1 U161 ( .A(n218), .ZN(n56) );
  AOI22_X1 U162 ( .A1(N441), .A2(n10), .B1(addr_w_10[0]), .B2(n6), .ZN(n218)
         );
  INV_X1 U163 ( .A(n201), .ZN(n70) );
  AOI22_X1 U164 ( .A1(N509), .A2(n9), .B1(addr_w_13[2]), .B2(n7), .ZN(n201) );
  INV_X1 U165 ( .A(n192), .ZN(n77) );
  AOI22_X1 U166 ( .A1(N552), .A2(n10), .B1(addr_w_15[1]), .B2(n8), .ZN(n192)
         );
  INV_X1 U167 ( .A(n243), .ZN(n35) );
  AOI22_X1 U168 ( .A1(N331), .A2(n10), .B1(addr_w_5[0]), .B2(n8), .ZN(n243) );
  INV_X1 U169 ( .A(n257), .ZN(n24) );
  AOI22_X1 U170 ( .A1(N266), .A2(n189), .B1(addr_w_2[1]), .B2(n8), .ZN(n257)
         );
  INV_X1 U171 ( .A(n256), .ZN(n25) );
  AOI22_X1 U172 ( .A1(N267), .A2(n189), .B1(addr_w_2[2]), .B2(n6), .ZN(n256)
         );
  INV_X1 U173 ( .A(n268), .ZN(n15) );
  AOI22_X1 U174 ( .A1(N221), .A2(n189), .B1(addr_w_0[0]), .B2(n7), .ZN(n268)
         );
  INV_X1 U175 ( .A(n222), .ZN(n53) );
  AOI22_X1 U176 ( .A1(N420), .A2(n10), .B1(addr_w_9[1]), .B2(n6), .ZN(n222) );
  INV_X1 U177 ( .A(n193), .ZN(n76) );
  AOI22_X1 U178 ( .A1(N551), .A2(n10), .B1(addr_w_15[0]), .B2(n8), .ZN(n193)
         );
  INV_X1 U179 ( .A(n223), .ZN(n52) );
  AOI22_X1 U180 ( .A1(N419), .A2(n10), .B1(addr_w_9[0]), .B2(n6), .ZN(n223) );
  INV_X1 U181 ( .A(n212), .ZN(n61) );
  AOI22_X1 U182 ( .A1(N464), .A2(n9), .B1(addr_w_11[1]), .B2(n6), .ZN(n212) );
  INV_X1 U183 ( .A(n246), .ZN(n33) );
  AOI22_X1 U184 ( .A1(N311), .A2(n9), .B1(addr_w_4[2]), .B2(n8), .ZN(n246) );
  INV_X1 U185 ( .A(n267), .ZN(n16) );
  AOI22_X1 U186 ( .A1(N222), .A2(n189), .B1(addr_w_0[1]), .B2(n8), .ZN(n267)
         );
  INV_X1 U187 ( .A(n241), .ZN(n37) );
  AOI22_X1 U188 ( .A1(N333), .A2(n10), .B1(addr_w_5[2]), .B2(n7), .ZN(n241) );
  INV_X1 U189 ( .A(n197), .ZN(n73) );
  AOI22_X1 U190 ( .A1(N530), .A2(n9), .B1(addr_w_14[1]), .B2(n7), .ZN(n197) );
  INV_X1 U191 ( .A(n247), .ZN(n32) );
  AOI22_X1 U192 ( .A1(N310), .A2(n9), .B1(addr_w_4[1]), .B2(n6), .ZN(n247) );
  INV_X1 U193 ( .A(n262), .ZN(n20) );
  AOI22_X1 U194 ( .A1(N244), .A2(n189), .B1(addr_w_1[1]), .B2(n6), .ZN(n262)
         );
  INV_X1 U195 ( .A(n217), .ZN(n57) );
  AOI22_X1 U196 ( .A1(N442), .A2(n189), .B1(addr_w_10[1]), .B2(n6), .ZN(n217)
         );
  INV_X1 U197 ( .A(n252), .ZN(n28) );
  AOI22_X1 U198 ( .A1(N288), .A2(n10), .B1(addr_w_3[1]), .B2(n6), .ZN(n252) );
  INV_X1 U199 ( .A(n211), .ZN(n62) );
  AOI22_X1 U200 ( .A1(N465), .A2(n189), .B1(addr_w_11[2]), .B2(n6), .ZN(n211)
         );
  INV_X1 U201 ( .A(n266), .ZN(n17) );
  AOI22_X1 U202 ( .A1(N223), .A2(n189), .B1(addr_w_0[2]), .B2(n7), .ZN(n266)
         );
  INV_X1 U203 ( .A(n237), .ZN(n40) );
  AOI22_X1 U204 ( .A1(N354), .A2(n189), .B1(addr_w_6[1]), .B2(n7), .ZN(n237)
         );
  INV_X1 U205 ( .A(n242), .ZN(n36) );
  AOI22_X1 U206 ( .A1(N332), .A2(n9), .B1(addr_w_5[1]), .B2(n7), .ZN(n242) );
  INV_X1 U207 ( .A(n202), .ZN(n69) );
  AOI22_X1 U208 ( .A1(N508), .A2(n9), .B1(addr_w_13[1]), .B2(n7), .ZN(n202) );
  INV_X1 U209 ( .A(n238), .ZN(n39) );
  AOI22_X1 U210 ( .A1(N353), .A2(n10), .B1(addr_w_6[0]), .B2(n8), .ZN(n238) );
  INV_X1 U211 ( .A(n225), .ZN(n50) );
  AOI22_X1 U212 ( .A1(N400), .A2(n10), .B1(addr_w_8[3]), .B2(n6), .ZN(n225) );
  XOR2_X1 U213 ( .A(addr_w_8[3]), .B(\add_646_S2/carry[3] ), .Z(N400) );
  INV_X1 U214 ( .A(n261), .ZN(n21) );
  AOI22_X1 U215 ( .A1(N245), .A2(n189), .B1(addr_w_1[2]), .B2(n8), .ZN(n261)
         );
  INV_X1 U216 ( .A(n231), .ZN(n45) );
  AOI22_X1 U217 ( .A1(N377), .A2(n9), .B1(addr_w_7[2]), .B2(n6), .ZN(n231) );
  INV_X1 U218 ( .A(n216), .ZN(n58) );
  AOI22_X1 U219 ( .A1(N443), .A2(n9), .B1(addr_w_10[2]), .B2(n6), .ZN(n216) );
  INV_X1 U220 ( .A(n207), .ZN(n65) );
  AOI22_X1 U221 ( .A1(N486), .A2(n9), .B1(addr_w_12[1]), .B2(n7), .ZN(n207) );
  INV_X1 U222 ( .A(n196), .ZN(n74) );
  AOI22_X1 U223 ( .A1(N531), .A2(n9), .B1(addr_w_14[2]), .B2(n7), .ZN(n196) );
  INV_X1 U224 ( .A(n205), .ZN(n67) );
  AOI22_X1 U225 ( .A1(N488), .A2(n9), .B1(addr_w_12[3]), .B2(n7), .ZN(n205) );
  XOR2_X1 U226 ( .A(addr_w_12[3]), .B(\add_678_S2/carry[3] ), .Z(N488) );
  INV_X1 U227 ( .A(n278), .ZN(n14) );
  AOI22_X1 U228 ( .A1(n279), .A2(addr_x[1]), .B1(n153), .B2(n277), .ZN(n278)
         );
  INV_X1 U229 ( .A(reset), .ZN(n87) );
  CLKBUF_X1 U230 ( .A(n190), .Z(n8) );
  AND4_X1 U231 ( .A1(sel[3]), .A2(sel[2]), .A3(sel[1]), .A4(sel[0]), .ZN(n11)
         );
  NOR2_X1 U232 ( .A1(n11), .A2(sel[4]), .ZN(\r442/GE_LT_GT_LE ) );
endmodule


module layer_16_8_16_16 ( clk, reset, s_valid, m_ready, data_in, m_valid, 
        s_ready, data_out );
  input [15:0] data_in;
  output [15:0] data_out;
  input clk, reset, s_valid, m_ready;
  output m_valid, s_ready;
  wire   wr_en_x, \addr_b_0[0] , \addr_b_1[0] , \addr_b_2[0] , \addr_b_3[0] ,
         \addr_b_4[0] , \addr_b_5[0] , \addr_b_6[0] , \addr_b_7[0] ,
         \addr_b_8[0] , \addr_b_9[0] , \addr_b_10[0] , \addr_b_11[0] ,
         \addr_b_12[0] , \addr_b_13[0] , \addr_b_14[0] , \addr_b_15[0] ,
         clear_acc, wr_en_y, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241;
  wire   [15:0] data_out_x;
  wire   [3:0] addr_x;
  wire   [3:0] addr_w_0;
  wire   [15:0] data_out_w_0;
  wire   [15:0] data_out_b_0;
  wire   [3:0] addr_w_1;
  wire   [15:0] data_out_w_1;
  wire   [15:0] data_out_b_1;
  wire   [3:0] addr_w_2;
  wire   [15:0] data_out_w_2;
  wire   [15:0] data_out_b_2;
  wire   [3:0] addr_w_3;
  wire   [15:0] data_out_w_3;
  wire   [15:0] data_out_b_3;
  wire   [3:0] addr_w_4;
  wire   [15:0] data_out_w_4;
  wire   [15:0] data_out_b_4;
  wire   [3:0] addr_w_5;
  wire   [15:0] data_out_w_5;
  wire   [15:0] data_out_b_5;
  wire   [3:0] addr_w_6;
  wire   [15:0] data_out_w_6;
  wire   [15:0] data_out_b_6;
  wire   [3:0] addr_w_7;
  wire   [15:0] data_out_w_7;
  wire   [15:0] data_out_b_7;
  wire   [3:0] addr_w_8;
  wire   [15:0] data_out_w_8;
  wire   [15:0] data_out_b_8;
  wire   [3:0] addr_w_9;
  wire   [15:0] data_out_w_9;
  wire   [15:0] data_out_b_9;
  wire   [3:0] addr_w_10;
  wire   [15:0] data_out_w_10;
  wire   [15:0] data_out_b_10;
  wire   [3:0] addr_w_11;
  wire   [15:0] data_out_w_11;
  wire   [15:0] data_out_b_11;
  wire   [3:0] addr_w_12;
  wire   [15:0] data_out_w_12;
  wire   [15:0] data_out_b_12;
  wire   [3:0] addr_w_13;
  wire   [15:0] data_out_w_13;
  wire   [15:0] data_out_b_13;
  wire   [3:0] addr_w_14;
  wire   [15:0] data_out_w_14;
  wire   [15:0] data_out_b_14;
  wire   [3:0] addr_w_15;
  wire   [15:0] data_out_w_15;
  wire   [15:0] data_out_b_15;
  wire   [15:0] data_out_0;
  wire   [4:0] sel;
  wire   [15:0] data_out_1;
  wire   [15:0] data_out_2;
  wire   [15:0] data_out_3;
  wire   [15:0] data_out_4;
  wire   [15:0] data_out_5;
  wire   [15:0] data_out_6;
  wire   [15:0] data_out_7;
  wire   [15:0] data_out_8;
  wire   [15:0] data_out_9;
  wire   [15:0] data_out_10;
  wire   [15:0] data_out_11;
  wire   [15:0] data_out_12;
  wire   [15:0] data_out_13;
  wire   [15:0] data_out_14;
  wire   [15:0] data_out_15;

  memory_WIDTH16_SIZE8_LOGSIZE4 mem_x ( .clk(clk), .data_in(data_in), 
        .data_out(data_out_x), .addr(addr_x), .wr_en(wr_en_x) );
  layer_16_8_16_16_W_rom_0 mem_w_0 ( .clk(clk), .addr(addr_w_0), .z(
        data_out_w_0) );
  layer_16_8_16_16_B_rom_0 mem_b_0 ( .clk(clk), .addr(\addr_b_0[0] ) );
  layer_16_8_16_16_W_rom_1 mem_w_1 ( .clk(clk), .addr(addr_w_1), .z(
        data_out_w_1) );
  layer_16_8_16_16_B_rom_1 mem_b_1 ( .clk(clk), .addr(\addr_b_1[0] ) );
  layer_16_8_16_16_W_rom_2 mem_w_2 ( .clk(clk), .addr(addr_w_2), .z(
        data_out_w_2) );
  layer_16_8_16_16_B_rom_2 mem_b_2 ( .clk(clk), .addr(\addr_b_2[0] ) );
  layer_16_8_16_16_W_rom_3 mem_w_3 ( .clk(clk), .addr(addr_w_3), .z(
        data_out_w_3) );
  layer_16_8_16_16_B_rom_3 mem_b_3 ( .clk(clk), .addr(\addr_b_3[0] ) );
  layer_16_8_16_16_W_rom_4 mem_w_4 ( .clk(clk), .addr(addr_w_4), .z(
        data_out_w_4) );
  layer_16_8_16_16_B_rom_4 mem_b_4 ( .clk(clk), .addr(\addr_b_4[0] ) );
  layer_16_8_16_16_W_rom_5 mem_w_5 ( .clk(clk), .addr(addr_w_5), .z(
        data_out_w_5) );
  layer_16_8_16_16_B_rom_5 mem_b_5 ( .clk(clk), .addr(\addr_b_5[0] ) );
  layer_16_8_16_16_W_rom_6 mem_w_6 ( .clk(clk), .addr(addr_w_6), .z(
        data_out_w_6) );
  layer_16_8_16_16_B_rom_6 mem_b_6 ( .clk(clk), .addr(\addr_b_6[0] ) );
  layer_16_8_16_16_W_rom_7 mem_w_7 ( .clk(clk), .addr(addr_w_7), .z(
        data_out_w_7) );
  layer_16_8_16_16_B_rom_7 mem_b_7 ( .clk(clk), .addr(\addr_b_7[0] ) );
  layer_16_8_16_16_W_rom_8 mem_w_8 ( .clk(clk), .addr(addr_w_8), .z(
        data_out_w_8) );
  layer_16_8_16_16_B_rom_8 mem_b_8 ( .clk(clk), .addr(\addr_b_8[0] ) );
  layer_16_8_16_16_W_rom_9 mem_w_9 ( .clk(clk), .addr(addr_w_9), .z(
        data_out_w_9) );
  layer_16_8_16_16_B_rom_9 mem_b_9 ( .clk(clk), .addr(\addr_b_9[0] ) );
  layer_16_8_16_16_W_rom_10 mem_w_10 ( .clk(clk), .addr(addr_w_10), .z(
        data_out_w_10) );
  layer_16_8_16_16_B_rom_10 mem_b_10 ( .clk(clk), .addr(\addr_b_10[0] ) );
  layer_16_8_16_16_W_rom_11 mem_w_11 ( .clk(clk), .addr(addr_w_11), .z(
        data_out_w_11) );
  layer_16_8_16_16_B_rom_11 mem_b_11 ( .clk(clk), .addr(\addr_b_11[0] ) );
  layer_16_8_16_16_W_rom_12 mem_w_12 ( .clk(clk), .addr(addr_w_12), .z(
        data_out_w_12) );
  layer_16_8_16_16_B_rom_12 mem_b_12 ( .clk(clk), .addr(\addr_b_12[0] ) );
  layer_16_8_16_16_W_rom_13 mem_w_13 ( .clk(clk), .addr(addr_w_13), .z(
        data_out_w_13) );
  layer_16_8_16_16_B_rom_13 mem_b_13 ( .clk(clk), .addr(\addr_b_13[0] ) );
  layer_16_8_16_16_W_rom_14 mem_w_14 ( .clk(clk), .addr(addr_w_14), .z(
        data_out_w_14) );
  layer_16_8_16_16_B_rom_14 mem_b_14 ( .clk(clk), .addr(\addr_b_14[0] ) );
  layer_16_8_16_16_W_rom_15 mem_w_15 ( .clk(clk), .addr(addr_w_15), .z(
        data_out_w_15) );
  layer_16_8_16_16_B_rom_15 mem_b_15 ( .clk(clk), .addr(\addr_b_15[0] ) );
  datapath_M16_N8_T16_P16_0 d_0 ( .clk(clk), .clear_acc(n207), .data_out_x({
        n238, n237, n234, n233, n190, n228, n191, n225, n222, n188, n189, n198, 
        n192, n212, n203, n187}), .data_out(data_out_0), .data_out_w(
        data_out_w_0), .data_out_b({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1}), .wr_en_y(n206), 
        .m_valid(m_valid), .m_ready(m_ready), .sel({n205, sel[3:0]}) );
  datapath_M16_N8_T16_P16_15 d_1 ( .clk(clk), .clear_acc(clear_acc), 
        .data_out_x({n239, n236, n235, n232, n230, n228, n227, n225, n222, 
        n188, n219, n217, n215, n201, n211, n209}), .data_out(data_out_1), 
        .data_out_w(data_out_w_1), .data_out_b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1}), 
        .wr_en_y(wr_en_y), .m_valid(m_valid), .m_ready(m_ready), .sel(sel) );
  datapath_M16_N8_T16_P16_14 d_2 ( .clk(clk), .clear_acc(clear_acc), 
        .data_out_x({n239, n236, n235, n232, n230, n199, n226, n224, n223, 
        n220, n218, n217, n215, n212, n204, n187}), .data_out(data_out_2), 
        .data_out_w(data_out_w_2), .data_out_b({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1}), 
        .wr_en_y(wr_en_y), .m_valid(m_valid), .m_ready(m_ready), .sel(sel) );
  datapath_M16_N8_T16_P16_13 d_3 ( .clk(clk), .clear_acc(clear_acc), 
        .data_out_x({n239, n236, n235, n232, n190, n199, n227, n225, n223, 
        n220, n189, n197, n215, n193, n204, n209}), .data_out(data_out_3), 
        .data_out_w(data_out_w_3), .data_out_b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1}), 
        .wr_en_y(wr_en_y), .m_valid(m_valid), .m_ready(m_ready), .sel(sel) );
  datapath_M16_N8_T16_P16_12 d_4 ( .clk(clk), .clear_acc(clear_acc), 
        .data_out_x({n239, n236, n235, n232, n190, n228, n227, n224, n223, 
        n220, n219, n197, n214, n212, n203, n195}), .data_out(data_out_4), 
        .data_out_w(data_out_w_4), .data_out_b({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0}), 
        .wr_en_y(wr_en_y), .m_valid(m_valid), .m_ready(m_ready), .sel(sel) );
  datapath_M16_N8_T16_P16_11 d_5 ( .clk(clk), .clear_acc(clear_acc), 
        .data_out_x({n238, n236, n234, n232, n190, n199, n226, n224, n222, 
        n188, n219, n197, n215, n193, n203, n208}), .data_out(data_out_5), 
        .data_out_w(data_out_w_5), .data_out_b({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), 
        .wr_en_y(wr_en_y), .m_valid(m_valid), .m_ready(m_ready), .sel(sel) );
  datapath_M16_N8_T16_P16_10 d_6 ( .clk(clk), .clear_acc(clear_acc), 
        .data_out_x({n238, n236, n234, n232, n230, n229, n227, n224, n223, 
        n220, n189, n198, n215, n202, n211, n194}), .data_out(data_out_6), 
        .data_out_w(data_out_w_6), .data_out_b({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0}), 
        .wr_en_y(wr_en_y), .m_valid(m_valid), .m_ready(m_ready), .sel({n205, 
        sel[3:0]}) );
  datapath_M16_N8_T16_P16_9 d_7 ( .clk(clk), .clear_acc(clear_acc), 
        .data_out_x({n238, n236, n234, n232, n230, n229, n191, n224, n222, 
        n196, n189, n216, n214, n202, n210, n194}), .data_out(data_out_7), 
        .data_out_w(data_out_w_7), .data_out_b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1}), 
        .wr_en_y(wr_en_y), .m_valid(m_valid), .m_ready(m_ready), .sel({n205, 
        sel[3:0]}) );
  datapath_M16_N8_T16_P16_8 d_8 ( .clk(clk), .clear_acc(clear_acc), 
        .data_out_x({n238, n236, n234, n232, n231, n229, n226, n224, n223, 
        n220, n219, n216, n214, n201, n204, n209}), .data_out(data_out_8), 
        .data_out_w(data_out_w_8), .data_out_b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .wr_en_y(wr_en_y), .m_valid(m_valid), .m_ready(m_ready), .sel({n205, 
        sel[3:0]}) );
  datapath_M16_N8_T16_P16_7 d_9 ( .clk(clk), .clear_acc(clear_acc), 
        .data_out_x({n238, n236, n234, n232, n231, n228, n226, n224, n223, 
        n221, n189, n216, n214, n212, n211, n187}), .data_out(data_out_9), 
        .data_out_w(data_out_w_9), .data_out_b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1}), 
        .wr_en_y(wr_en_y), .m_valid(m_valid), .m_ready(m_ready), .sel({n205, 
        sel[3:0]}) );
  datapath_M16_N8_T16_P16_6 d_10 ( .clk(clk), .clear_acc(clear_acc), 
        .data_out_x({n238, n236, n234, n232, n230, n199, n226, n224, n223, 
        n196, n218, n198, n215, n201, n211, n194}), .data_out(data_out_10), 
        .data_out_w(data_out_w_10), .data_out_b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0}), 
        .wr_en_y(n206), .m_valid(m_valid), .m_ready(m_ready), .sel({n205, 
        sel[3:0]}) );
  datapath_M16_N8_T16_P16_5 d_11 ( .clk(clk), .clear_acc(clear_acc), 
        .data_out_x({n238, n236, n234, n232, n190, n229, n191, n224, n223, 
        n200, n218, n197, n214, n213, n210, n194}), .data_out(data_out_11), 
        .data_out_w(data_out_w_11), .data_out_b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1}), 
        .wr_en_y(n206), .m_valid(m_valid), .m_ready(m_ready), .sel({n205, 
        sel[3:0]}) );
  datapath_M16_N8_T16_P16_4 d_12 ( .clk(clk), .clear_acc(clear_acc), 
        .data_out_x({n238, n236, n234, n232, n231, n228, n227, n224, n223, 
        n188, n218, n216, n192, n213, n210, n208}), .data_out(data_out_12), 
        .data_out_w(data_out_w_12), .data_out_b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0}), 
        .wr_en_y(n206), .m_valid(m_valid), .m_ready(m_ready), .sel({n205, 
        sel[3:0]}) );
  datapath_M16_N8_T16_P16_3 d_13 ( .clk(clk), .clear_acc(n207), .data_out_x({
        n238, n237, n234, n233, n230, n199, n191, n225, n222, n200, n218, n217, 
        n215, n202, n211, n195}), .data_out(data_out_13), .data_out_w(
        data_out_w_13), .data_out_b({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1}), .wr_en_y(n206), 
        .m_valid(m_valid), .m_ready(m_ready), .sel({n205, sel[3:0]}) );
  datapath_M16_N8_T16_P16_2 d_14 ( .clk(clk), .clear_acc(n207), .data_out_x({
        n238, n237, n234, n233, n231, n228, n227, n225, n222, n221, n219, n217, 
        n192, n193, n203, n208}), .data_out(data_out_14), .data_out_w(
        data_out_w_14), .data_out_b({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1}), .wr_en_y(n206), 
        .m_valid(m_valid), .m_ready(m_ready), .sel({n205, sel[3:0]}) );
  datapath_M16_N8_T16_P16_1 d_15 ( .clk(clk), .clear_acc(n207), .data_out_x({
        n238, n237, n234, n233, n190, n229, n227, n225, n223, n200, n189, n198, 
        n214, n213, n204, n195}), .data_out(data_out_15), .data_out_w(
        data_out_w_15), .data_out_b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0}), .wr_en_y(n206), 
        .m_valid(m_valid), .m_ready(m_ready), .sel({n205, sel[3:0]}) );
  ctrlpath_M16_N8_T16_P16 c ( .clk(clk), .reset(reset), .s_valid(s_valid), 
        .s_ready(s_ready), .m_valid(m_valid), .m_ready(m_ready), .clear_acc(
        clear_acc), .wr_en_x(wr_en_x), .wr_en_y(wr_en_y), .sel(sel), .addr_x(
        addr_x), .addr_w_0(addr_w_0), .addr_b_0(\addr_b_0[0] ), .addr_w_1(
        addr_w_1), .addr_b_1(\addr_b_1[0] ), .addr_w_2(addr_w_2), .addr_b_2(
        \addr_b_2[0] ), .addr_w_3(addr_w_3), .addr_b_3(\addr_b_3[0] ), 
        .addr_w_4(addr_w_4), .addr_b_4(\addr_b_4[0] ), .addr_w_5(addr_w_5), 
        .addr_b_5(\addr_b_5[0] ), .addr_w_6(addr_w_6), .addr_b_6(\addr_b_6[0] ), .addr_w_7(addr_w_7), .addr_b_7(\addr_b_7[0] ), .addr_w_8(addr_w_8), 
        .addr_b_8(\addr_b_8[0] ), .addr_w_9(addr_w_9), .addr_b_9(\addr_b_9[0] ), .addr_w_10(addr_w_10), .addr_b_10(\addr_b_10[0] ), .addr_w_11(addr_w_11), 
        .addr_b_11(\addr_b_11[0] ), .addr_w_12(addr_w_12), .addr_b_12(
        \addr_b_12[0] ), .addr_w_13(addr_w_13), .addr_b_13(\addr_b_13[0] ), 
        .addr_w_14(addr_w_14), .addr_b_14(\addr_b_14[0] ), .addr_w_15(
        addr_w_15), .addr_b_15(\addr_b_15[0] ) );
  BUF_X4 U204 ( .A(data_out_x[2]), .Z(n212) );
  CLKBUF_X3 U205 ( .A(data_out_x[11]), .Z(n230) );
  BUF_X2 U206 ( .A(data_out_x[10]), .Z(n199) );
  BUF_X2 U207 ( .A(data_out_x[0]), .Z(n194) );
  CLKBUF_X3 U208 ( .A(data_out_x[6]), .Z(n220) );
  BUF_X4 U209 ( .A(data_out_x[12]), .Z(n232) );
  BUF_X2 U210 ( .A(data_out_x[3]), .Z(n214) );
  BUF_X2 U211 ( .A(data_out_x[5]), .Z(n218) );
  BUF_X2 U212 ( .A(data_out_x[2]), .Z(n202) );
  CLKBUF_X3 U213 ( .A(data_out_x[0]), .Z(n208) );
  CLKBUF_X3 U214 ( .A(data_out_x[0]), .Z(n209) );
  CLKBUF_X3 U215 ( .A(data_out_x[0]), .Z(n195) );
  CLKBUF_X3 U216 ( .A(data_out_x[0]), .Z(n187) );
  BUF_X2 U217 ( .A(data_out_x[2]), .Z(n213) );
  BUF_X1 U218 ( .A(data_out_x[11]), .Z(n231) );
  BUF_X1 U219 ( .A(data_out_x[6]), .Z(n196) );
  BUF_X2 U220 ( .A(data_out_x[10]), .Z(n229) );
  BUF_X1 U221 ( .A(data_out_x[6]), .Z(n221) );
  BUF_X2 U222 ( .A(data_out_x[6]), .Z(n188) );
  BUF_X2 U223 ( .A(data_out_x[11]), .Z(n190) );
  BUF_X2 U224 ( .A(data_out_x[5]), .Z(n189) );
  BUF_X2 U225 ( .A(data_out_x[5]), .Z(n219) );
  BUF_X2 U226 ( .A(data_out_x[9]), .Z(n227) );
  BUF_X2 U227 ( .A(data_out_x[7]), .Z(n222) );
  BUF_X2 U228 ( .A(data_out_x[1]), .Z(n211) );
  BUF_X2 U229 ( .A(data_out_x[9]), .Z(n191) );
  BUF_X2 U230 ( .A(data_out_x[3]), .Z(n192) );
  CLKBUF_X3 U231 ( .A(data_out_x[2]), .Z(n201) );
  BUF_X4 U232 ( .A(data_out_x[4]), .Z(n216) );
  BUF_X2 U233 ( .A(data_out_x[9]), .Z(n226) );
  BUF_X4 U234 ( .A(data_out_x[8]), .Z(n224) );
  BUF_X4 U235 ( .A(data_out_x[8]), .Z(n225) );
  CLKBUF_X3 U236 ( .A(data_out_x[2]), .Z(n193) );
  CLKBUF_X3 U237 ( .A(data_out_x[6]), .Z(n200) );
  CLKBUF_X3 U238 ( .A(data_out_x[4]), .Z(n197) );
  CLKBUF_X3 U239 ( .A(data_out_x[4]), .Z(n198) );
  BUF_X1 U240 ( .A(data_out_x[1]), .Z(n210) );
  CLKBUF_X3 U241 ( .A(data_out_x[7]), .Z(n223) );
  BUF_X2 U242 ( .A(data_out_x[3]), .Z(n215) );
  BUF_X1 U243 ( .A(data_out_x[1]), .Z(n203) );
  BUF_X1 U244 ( .A(data_out_x[1]), .Z(n204) );
  CLKBUF_X3 U245 ( .A(data_out_x[14]), .Z(n236) );
  BUF_X1 U246 ( .A(data_out_x[14]), .Z(n237) );
  AND2_X1 U247 ( .A1(n180), .A2(n177), .ZN(n15) );
  AND2_X1 U248 ( .A1(n179), .A2(n177), .ZN(n13) );
  AND2_X1 U249 ( .A1(n186), .A2(n176), .ZN(n21) );
  AND2_X1 U250 ( .A1(n186), .A2(n178), .ZN(n23) );
  AND2_X1 U251 ( .A1(n186), .A2(n179), .ZN(n25) );
  AND2_X1 U252 ( .A1(n186), .A2(n180), .ZN(n27) );
  AND2_X1 U253 ( .A1(n176), .A2(n177), .ZN(n9) );
  AND2_X1 U254 ( .A1(n178), .A2(n177), .ZN(n11) );
  AND2_X1 U255 ( .A1(n180), .A2(n175), .ZN(n16) );
  AND2_X1 U256 ( .A1(n179), .A2(n175), .ZN(n14) );
  AND2_X1 U257 ( .A1(n185), .A2(n179), .ZN(n26) );
  AND2_X1 U258 ( .A1(n185), .A2(n176), .ZN(n22) );
  AND2_X1 U259 ( .A1(n185), .A2(n178), .ZN(n24) );
  AND2_X1 U260 ( .A1(n185), .A2(n180), .ZN(n28) );
  AND2_X1 U261 ( .A1(n175), .A2(n176), .ZN(n10) );
  AND2_X1 U262 ( .A1(n178), .A2(n175), .ZN(n12) );
  NOR2_X1 U263 ( .A1(sel[2]), .A2(sel[1]), .ZN(n180) );
  NOR2_X1 U264 ( .A1(n241), .A2(sel[2]), .ZN(n179) );
  NOR2_X1 U265 ( .A1(sel[3]), .A2(sel[0]), .ZN(n185) );
  NOR2_X1 U266 ( .A1(n240), .A2(sel[3]), .ZN(n186) );
  BUF_X4 U267 ( .A(data_out_x[10]), .Z(n228) );
  BUF_X2 U268 ( .A(data_out_x[12]), .Z(n233) );
  BUF_X1 U269 ( .A(sel[4]), .Z(n205) );
  AOI22_X1 U270 ( .A1(data_out_7[0]), .A2(n21), .B1(data_out_6[0]), .B2(n22), 
        .ZN(n184) );
  AOI22_X1 U271 ( .A1(data_out_7[1]), .A2(n21), .B1(data_out_6[1]), .B2(n22), 
        .ZN(n108) );
  AOI22_X1 U272 ( .A1(data_out_7[2]), .A2(n21), .B1(data_out_6[2]), .B2(n22), 
        .ZN(n98) );
  AOI22_X1 U273 ( .A1(data_out_7[3]), .A2(n21), .B1(data_out_6[3]), .B2(n22), 
        .ZN(n88) );
  AOI22_X1 U274 ( .A1(data_out_7[4]), .A2(n21), .B1(data_out_6[4]), .B2(n22), 
        .ZN(n78) );
  AOI22_X1 U275 ( .A1(data_out_7[5]), .A2(n21), .B1(data_out_6[5]), .B2(n22), 
        .ZN(n68) );
  AOI22_X1 U276 ( .A1(data_out_7[6]), .A2(n21), .B1(data_out_6[6]), .B2(n22), 
        .ZN(n58) );
  AOI22_X1 U277 ( .A1(data_out_7[7]), .A2(n21), .B1(data_out_6[7]), .B2(n22), 
        .ZN(n48) );
  AOI22_X1 U278 ( .A1(data_out_7[8]), .A2(n21), .B1(data_out_6[8]), .B2(n22), 
        .ZN(n38) );
  AOI22_X1 U279 ( .A1(data_out_7[9]), .A2(n21), .B1(data_out_6[9]), .B2(n22), 
        .ZN(n20) );
  AOI22_X1 U280 ( .A1(data_out_7[10]), .A2(n21), .B1(data_out_6[10]), .B2(n22), 
        .ZN(n168) );
  AOI22_X1 U281 ( .A1(data_out_7[11]), .A2(n21), .B1(data_out_6[11]), .B2(n22), 
        .ZN(n158) );
  AOI22_X1 U282 ( .A1(data_out_7[12]), .A2(n21), .B1(data_out_6[12]), .B2(n22), 
        .ZN(n148) );
  AOI22_X1 U283 ( .A1(data_out_7[13]), .A2(n21), .B1(data_out_6[13]), .B2(n22), 
        .ZN(n138) );
  AOI22_X1 U284 ( .A1(data_out_7[14]), .A2(n21), .B1(data_out_6[14]), .B2(n22), 
        .ZN(n128) );
  AOI22_X1 U285 ( .A1(data_out_7[15]), .A2(n21), .B1(data_out_6[15]), .B2(n22), 
        .ZN(n118) );
  AOI22_X1 U286 ( .A1(data_out_15[0]), .A2(n9), .B1(data_out_14[0]), .B2(n10), 
        .ZN(n174) );
  AOI22_X1 U287 ( .A1(data_out_15[1]), .A2(n9), .B1(data_out_14[1]), .B2(n10), 
        .ZN(n104) );
  AOI22_X1 U288 ( .A1(data_out_15[2]), .A2(n9), .B1(data_out_14[2]), .B2(n10), 
        .ZN(n94) );
  AOI22_X1 U289 ( .A1(data_out_15[3]), .A2(n9), .B1(data_out_14[3]), .B2(n10), 
        .ZN(n84) );
  AOI22_X1 U290 ( .A1(data_out_15[4]), .A2(n9), .B1(data_out_14[4]), .B2(n10), 
        .ZN(n74) );
  AOI22_X1 U291 ( .A1(data_out_15[5]), .A2(n9), .B1(data_out_14[5]), .B2(n10), 
        .ZN(n64) );
  AOI22_X1 U292 ( .A1(data_out_15[6]), .A2(n9), .B1(data_out_14[6]), .B2(n10), 
        .ZN(n54) );
  AOI22_X1 U293 ( .A1(data_out_15[7]), .A2(n9), .B1(data_out_14[7]), .B2(n10), 
        .ZN(n44) );
  AOI22_X1 U294 ( .A1(data_out_15[8]), .A2(n9), .B1(data_out_14[8]), .B2(n10), 
        .ZN(n34) );
  AOI22_X1 U295 ( .A1(data_out_15[9]), .A2(n9), .B1(data_out_14[9]), .B2(n10), 
        .ZN(n8) );
  AOI22_X1 U296 ( .A1(data_out_15[10]), .A2(n9), .B1(data_out_14[10]), .B2(n10), .ZN(n164) );
  AOI22_X1 U297 ( .A1(data_out_15[11]), .A2(n9), .B1(data_out_14[11]), .B2(n10), .ZN(n154) );
  AOI22_X1 U298 ( .A1(data_out_15[12]), .A2(n9), .B1(data_out_14[12]), .B2(n10), .ZN(n144) );
  AOI22_X1 U299 ( .A1(data_out_15[13]), .A2(n9), .B1(data_out_14[13]), .B2(n10), .ZN(n134) );
  AOI22_X1 U300 ( .A1(data_out_15[14]), .A2(n9), .B1(data_out_14[14]), .B2(n10), .ZN(n124) );
  AOI22_X1 U301 ( .A1(data_out_15[15]), .A2(n9), .B1(data_out_14[15]), .B2(n10), .ZN(n114) );
  AOI22_X1 U302 ( .A1(data_out_5[0]), .A2(n23), .B1(data_out_4[0]), .B2(n24), 
        .ZN(n183) );
  AOI22_X1 U303 ( .A1(data_out_5[1]), .A2(n23), .B1(data_out_4[1]), .B2(n24), 
        .ZN(n107) );
  AOI22_X1 U304 ( .A1(data_out_5[2]), .A2(n23), .B1(data_out_4[2]), .B2(n24), 
        .ZN(n97) );
  AOI22_X1 U305 ( .A1(data_out_5[3]), .A2(n23), .B1(data_out_4[3]), .B2(n24), 
        .ZN(n87) );
  AOI22_X1 U306 ( .A1(data_out_5[4]), .A2(n23), .B1(data_out_4[4]), .B2(n24), 
        .ZN(n77) );
  AOI22_X1 U307 ( .A1(data_out_5[5]), .A2(n23), .B1(data_out_4[5]), .B2(n24), 
        .ZN(n67) );
  AOI22_X1 U308 ( .A1(data_out_5[6]), .A2(n23), .B1(data_out_4[6]), .B2(n24), 
        .ZN(n57) );
  AOI22_X1 U309 ( .A1(data_out_5[7]), .A2(n23), .B1(data_out_4[7]), .B2(n24), 
        .ZN(n47) );
  AOI22_X1 U310 ( .A1(data_out_5[8]), .A2(n23), .B1(data_out_4[8]), .B2(n24), 
        .ZN(n37) );
  AOI22_X1 U311 ( .A1(data_out_5[9]), .A2(n23), .B1(data_out_4[9]), .B2(n24), 
        .ZN(n19) );
  AOI22_X1 U312 ( .A1(data_out_5[10]), .A2(n23), .B1(data_out_4[10]), .B2(n24), 
        .ZN(n167) );
  AOI22_X1 U313 ( .A1(data_out_5[11]), .A2(n23), .B1(data_out_4[11]), .B2(n24), 
        .ZN(n157) );
  AOI22_X1 U314 ( .A1(data_out_5[12]), .A2(n23), .B1(data_out_4[12]), .B2(n24), 
        .ZN(n147) );
  AOI22_X1 U315 ( .A1(data_out_5[13]), .A2(n23), .B1(data_out_4[13]), .B2(n24), 
        .ZN(n137) );
  AOI22_X1 U316 ( .A1(data_out_5[14]), .A2(n23), .B1(data_out_4[14]), .B2(n24), 
        .ZN(n127) );
  AOI22_X1 U317 ( .A1(data_out_5[15]), .A2(n23), .B1(data_out_4[15]), .B2(n24), 
        .ZN(n117) );
  AOI22_X1 U318 ( .A1(data_out_13[10]), .A2(n11), .B1(data_out_12[10]), .B2(
        n12), .ZN(n163) );
  AOI22_X1 U319 ( .A1(data_out_13[11]), .A2(n11), .B1(data_out_12[11]), .B2(
        n12), .ZN(n153) );
  AOI22_X1 U320 ( .A1(data_out_13[12]), .A2(n11), .B1(data_out_12[12]), .B2(
        n12), .ZN(n143) );
  AOI22_X1 U321 ( .A1(data_out_13[13]), .A2(n11), .B1(data_out_12[13]), .B2(
        n12), .ZN(n133) );
  AOI22_X1 U322 ( .A1(data_out_13[14]), .A2(n11), .B1(data_out_12[14]), .B2(
        n12), .ZN(n123) );
  AOI22_X1 U323 ( .A1(data_out_13[15]), .A2(n11), .B1(data_out_12[15]), .B2(
        n12), .ZN(n113) );
  AOI22_X1 U324 ( .A1(data_out_13[0]), .A2(n11), .B1(data_out_12[0]), .B2(n12), 
        .ZN(n173) );
  AOI22_X1 U325 ( .A1(data_out_13[1]), .A2(n11), .B1(data_out_12[1]), .B2(n12), 
        .ZN(n103) );
  AOI22_X1 U326 ( .A1(data_out_13[2]), .A2(n11), .B1(data_out_12[2]), .B2(n12), 
        .ZN(n93) );
  AOI22_X1 U327 ( .A1(data_out_13[3]), .A2(n11), .B1(data_out_12[3]), .B2(n12), 
        .ZN(n83) );
  AOI22_X1 U328 ( .A1(data_out_13[4]), .A2(n11), .B1(data_out_12[4]), .B2(n12), 
        .ZN(n73) );
  AOI22_X1 U329 ( .A1(data_out_13[5]), .A2(n11), .B1(data_out_12[5]), .B2(n12), 
        .ZN(n63) );
  AOI22_X1 U330 ( .A1(data_out_13[6]), .A2(n11), .B1(data_out_12[6]), .B2(n12), 
        .ZN(n53) );
  AOI22_X1 U331 ( .A1(data_out_13[7]), .A2(n11), .B1(data_out_12[7]), .B2(n12), 
        .ZN(n43) );
  AOI22_X1 U332 ( .A1(data_out_13[8]), .A2(n11), .B1(data_out_12[8]), .B2(n12), 
        .ZN(n33) );
  AOI22_X1 U333 ( .A1(data_out_13[9]), .A2(n11), .B1(data_out_12[9]), .B2(n12), 
        .ZN(n7) );
  AOI22_X1 U334 ( .A1(data_out_3[0]), .A2(n25), .B1(data_out_2[0]), .B2(n26), 
        .ZN(n182) );
  AOI22_X1 U335 ( .A1(data_out_3[1]), .A2(n25), .B1(data_out_2[1]), .B2(n26), 
        .ZN(n106) );
  AOI22_X1 U336 ( .A1(data_out_3[2]), .A2(n25), .B1(data_out_2[2]), .B2(n26), 
        .ZN(n96) );
  AOI22_X1 U337 ( .A1(data_out_3[3]), .A2(n25), .B1(data_out_2[3]), .B2(n26), 
        .ZN(n86) );
  AOI22_X1 U338 ( .A1(data_out_3[4]), .A2(n25), .B1(data_out_2[4]), .B2(n26), 
        .ZN(n76) );
  AOI22_X1 U339 ( .A1(data_out_3[5]), .A2(n25), .B1(data_out_2[5]), .B2(n26), 
        .ZN(n66) );
  AOI22_X1 U340 ( .A1(data_out_3[6]), .A2(n25), .B1(data_out_2[6]), .B2(n26), 
        .ZN(n56) );
  AOI22_X1 U341 ( .A1(data_out_3[7]), .A2(n25), .B1(data_out_2[7]), .B2(n26), 
        .ZN(n46) );
  AOI22_X1 U342 ( .A1(data_out_3[8]), .A2(n25), .B1(data_out_2[8]), .B2(n26), 
        .ZN(n36) );
  AOI22_X1 U343 ( .A1(data_out_3[9]), .A2(n25), .B1(data_out_2[9]), .B2(n26), 
        .ZN(n18) );
  AOI22_X1 U344 ( .A1(data_out_3[10]), .A2(n25), .B1(data_out_2[10]), .B2(n26), 
        .ZN(n166) );
  AOI22_X1 U345 ( .A1(data_out_3[11]), .A2(n25), .B1(data_out_2[11]), .B2(n26), 
        .ZN(n156) );
  AOI22_X1 U346 ( .A1(data_out_3[12]), .A2(n25), .B1(data_out_2[12]), .B2(n26), 
        .ZN(n146) );
  AOI22_X1 U347 ( .A1(data_out_3[13]), .A2(n25), .B1(data_out_2[13]), .B2(n26), 
        .ZN(n136) );
  AOI22_X1 U348 ( .A1(data_out_3[14]), .A2(n25), .B1(data_out_2[14]), .B2(n26), 
        .ZN(n126) );
  AOI22_X1 U349 ( .A1(data_out_3[15]), .A2(n25), .B1(data_out_2[15]), .B2(n26), 
        .ZN(n116) );
  AOI22_X1 U350 ( .A1(data_out_11[0]), .A2(n13), .B1(data_out_10[0]), .B2(n14), 
        .ZN(n172) );
  AOI22_X1 U351 ( .A1(data_out_11[1]), .A2(n13), .B1(data_out_10[1]), .B2(n14), 
        .ZN(n102) );
  AOI22_X1 U352 ( .A1(data_out_11[2]), .A2(n13), .B1(data_out_10[2]), .B2(n14), 
        .ZN(n92) );
  AOI22_X1 U353 ( .A1(data_out_11[3]), .A2(n13), .B1(data_out_10[3]), .B2(n14), 
        .ZN(n82) );
  AOI22_X1 U354 ( .A1(data_out_11[4]), .A2(n13), .B1(data_out_10[4]), .B2(n14), 
        .ZN(n72) );
  AOI22_X1 U355 ( .A1(data_out_11[5]), .A2(n13), .B1(data_out_10[5]), .B2(n14), 
        .ZN(n62) );
  AOI22_X1 U356 ( .A1(data_out_11[6]), .A2(n13), .B1(data_out_10[6]), .B2(n14), 
        .ZN(n52) );
  AOI22_X1 U357 ( .A1(data_out_11[7]), .A2(n13), .B1(data_out_10[7]), .B2(n14), 
        .ZN(n42) );
  AOI22_X1 U358 ( .A1(data_out_11[8]), .A2(n13), .B1(data_out_10[8]), .B2(n14), 
        .ZN(n32) );
  AOI22_X1 U359 ( .A1(data_out_11[9]), .A2(n13), .B1(data_out_10[9]), .B2(n14), 
        .ZN(n6) );
  AOI22_X1 U360 ( .A1(data_out_11[10]), .A2(n13), .B1(data_out_10[10]), .B2(
        n14), .ZN(n162) );
  AOI22_X1 U361 ( .A1(data_out_11[11]), .A2(n13), .B1(data_out_10[11]), .B2(
        n14), .ZN(n152) );
  AOI22_X1 U362 ( .A1(data_out_11[12]), .A2(n13), .B1(data_out_10[12]), .B2(
        n14), .ZN(n142) );
  AOI22_X1 U363 ( .A1(data_out_11[13]), .A2(n13), .B1(data_out_10[13]), .B2(
        n14), .ZN(n132) );
  AOI22_X1 U364 ( .A1(data_out_11[14]), .A2(n13), .B1(data_out_10[14]), .B2(
        n14), .ZN(n122) );
  AOI22_X1 U365 ( .A1(data_out_11[15]), .A2(n13), .B1(data_out_10[15]), .B2(
        n14), .ZN(n112) );
  AOI22_X1 U366 ( .A1(data_out_1[0]), .A2(n27), .B1(data_out_0[0]), .B2(n28), 
        .ZN(n181) );
  AOI22_X1 U367 ( .A1(data_out_1[1]), .A2(n27), .B1(data_out_0[1]), .B2(n28), 
        .ZN(n105) );
  AOI22_X1 U368 ( .A1(data_out_1[2]), .A2(n27), .B1(data_out_0[2]), .B2(n28), 
        .ZN(n95) );
  AOI22_X1 U369 ( .A1(data_out_1[3]), .A2(n27), .B1(data_out_0[3]), .B2(n28), 
        .ZN(n85) );
  AOI22_X1 U370 ( .A1(data_out_1[4]), .A2(n27), .B1(data_out_0[4]), .B2(n28), 
        .ZN(n75) );
  AOI22_X1 U371 ( .A1(data_out_1[5]), .A2(n27), .B1(data_out_0[5]), .B2(n28), 
        .ZN(n65) );
  AOI22_X1 U372 ( .A1(data_out_1[6]), .A2(n27), .B1(data_out_0[6]), .B2(n28), 
        .ZN(n55) );
  AOI22_X1 U373 ( .A1(data_out_1[7]), .A2(n27), .B1(data_out_0[7]), .B2(n28), 
        .ZN(n45) );
  AOI22_X1 U374 ( .A1(data_out_1[8]), .A2(n27), .B1(data_out_0[8]), .B2(n28), 
        .ZN(n35) );
  AOI22_X1 U375 ( .A1(data_out_1[9]), .A2(n27), .B1(data_out_0[9]), .B2(n28), 
        .ZN(n17) );
  AOI22_X1 U376 ( .A1(data_out_1[10]), .A2(n27), .B1(data_out_0[10]), .B2(n28), 
        .ZN(n165) );
  AOI22_X1 U377 ( .A1(data_out_1[11]), .A2(n27), .B1(data_out_0[11]), .B2(n28), 
        .ZN(n155) );
  AOI22_X1 U378 ( .A1(data_out_1[12]), .A2(n27), .B1(data_out_0[12]), .B2(n28), 
        .ZN(n145) );
  AOI22_X1 U379 ( .A1(data_out_1[13]), .A2(n27), .B1(data_out_0[13]), .B2(n28), 
        .ZN(n135) );
  AOI22_X1 U380 ( .A1(data_out_1[14]), .A2(n27), .B1(data_out_0[14]), .B2(n28), 
        .ZN(n125) );
  AOI22_X1 U381 ( .A1(data_out_1[15]), .A2(n27), .B1(data_out_0[15]), .B2(n28), 
        .ZN(n115) );
  BUF_X2 U382 ( .A(data_out_x[15]), .Z(n238) );
  INV_X1 U383 ( .A(sel[0]), .ZN(n240) );
  AND2_X1 U384 ( .A1(sel[3]), .A2(sel[0]), .ZN(n177) );
  AND2_X1 U385 ( .A1(sel[2]), .A2(sel[1]), .ZN(n176) );
  AND2_X1 U386 ( .A1(sel[3]), .A2(n240), .ZN(n175) );
  AND2_X1 U387 ( .A1(sel[2]), .A2(n241), .ZN(n178) );
  INV_X1 U388 ( .A(sel[1]), .ZN(n241) );
  AOI21_X1 U389 ( .B1(n169), .B2(n170), .A(n205), .ZN(data_out[0]) );
  AND4_X1 U390 ( .A1(n171), .A2(n172), .A3(n173), .A4(n174), .ZN(n170) );
  AND4_X1 U391 ( .A1(n181), .A2(n182), .A3(n183), .A4(n184), .ZN(n169) );
  AOI22_X1 U392 ( .A1(data_out_9[0]), .A2(n15), .B1(data_out_8[0]), .B2(n16), 
        .ZN(n171) );
  AOI21_X1 U393 ( .B1(n159), .B2(n160), .A(n205), .ZN(data_out[10]) );
  AND4_X1 U394 ( .A1(n161), .A2(n162), .A3(n163), .A4(n164), .ZN(n160) );
  AND4_X1 U395 ( .A1(n165), .A2(n166), .A3(n167), .A4(n168), .ZN(n159) );
  AOI22_X1 U396 ( .A1(data_out_9[10]), .A2(n15), .B1(data_out_8[10]), .B2(n16), 
        .ZN(n161) );
  AOI21_X1 U397 ( .B1(n149), .B2(n150), .A(n205), .ZN(data_out[11]) );
  AND4_X1 U398 ( .A1(n151), .A2(n152), .A3(n153), .A4(n154), .ZN(n150) );
  AND4_X1 U399 ( .A1(n155), .A2(n156), .A3(n157), .A4(n158), .ZN(n149) );
  AOI22_X1 U400 ( .A1(data_out_9[11]), .A2(n15), .B1(data_out_8[11]), .B2(n16), 
        .ZN(n151) );
  AOI21_X1 U401 ( .B1(n139), .B2(n140), .A(n205), .ZN(data_out[12]) );
  AND4_X1 U402 ( .A1(n141), .A2(n142), .A3(n143), .A4(n144), .ZN(n140) );
  AND4_X1 U403 ( .A1(n145), .A2(n146), .A3(n147), .A4(n148), .ZN(n139) );
  AOI22_X1 U404 ( .A1(data_out_9[12]), .A2(n15), .B1(data_out_8[12]), .B2(n16), 
        .ZN(n141) );
  BUF_X1 U405 ( .A(clear_acc), .Z(n207) );
  AOI21_X1 U406 ( .B1(n99), .B2(n100), .A(sel[4]), .ZN(data_out[1]) );
  AND4_X1 U407 ( .A1(n101), .A2(n102), .A3(n103), .A4(n104), .ZN(n100) );
  AND4_X1 U408 ( .A1(n105), .A2(n106), .A3(n107), .A4(n108), .ZN(n99) );
  AOI22_X1 U409 ( .A1(data_out_9[1]), .A2(n15), .B1(data_out_8[1]), .B2(n16), 
        .ZN(n101) );
  AOI21_X1 U410 ( .B1(n89), .B2(n90), .A(sel[4]), .ZN(data_out[2]) );
  AND4_X1 U411 ( .A1(n91), .A2(n92), .A3(n93), .A4(n94), .ZN(n90) );
  AND4_X1 U412 ( .A1(n95), .A2(n96), .A3(n97), .A4(n98), .ZN(n89) );
  AOI22_X1 U413 ( .A1(data_out_9[2]), .A2(n15), .B1(data_out_8[2]), .B2(n16), 
        .ZN(n91) );
  AOI21_X1 U414 ( .B1(n79), .B2(n80), .A(sel[4]), .ZN(data_out[3]) );
  AND4_X1 U415 ( .A1(n81), .A2(n82), .A3(n83), .A4(n84), .ZN(n80) );
  AND4_X1 U416 ( .A1(n85), .A2(n86), .A3(n87), .A4(n88), .ZN(n79) );
  AOI22_X1 U417 ( .A1(data_out_9[3]), .A2(n15), .B1(data_out_8[3]), .B2(n16), 
        .ZN(n81) );
  AOI21_X1 U418 ( .B1(n69), .B2(n70), .A(sel[4]), .ZN(data_out[4]) );
  AND4_X1 U419 ( .A1(n71), .A2(n72), .A3(n73), .A4(n74), .ZN(n70) );
  AND4_X1 U420 ( .A1(n75), .A2(n76), .A3(n77), .A4(n78), .ZN(n69) );
  AOI22_X1 U421 ( .A1(data_out_9[4]), .A2(n15), .B1(data_out_8[4]), .B2(n16), 
        .ZN(n71) );
  AOI21_X1 U422 ( .B1(n59), .B2(n60), .A(sel[4]), .ZN(data_out[5]) );
  AND4_X1 U423 ( .A1(n61), .A2(n62), .A3(n63), .A4(n64), .ZN(n60) );
  AND4_X1 U424 ( .A1(n65), .A2(n66), .A3(n67), .A4(n68), .ZN(n59) );
  AOI22_X1 U425 ( .A1(data_out_9[5]), .A2(n15), .B1(data_out_8[5]), .B2(n16), 
        .ZN(n61) );
  AOI21_X1 U426 ( .B1(n49), .B2(n50), .A(sel[4]), .ZN(data_out[6]) );
  AND4_X1 U427 ( .A1(n51), .A2(n52), .A3(n53), .A4(n54), .ZN(n50) );
  AND4_X1 U428 ( .A1(n55), .A2(n56), .A3(n57), .A4(n58), .ZN(n49) );
  AOI22_X1 U429 ( .A1(data_out_9[6]), .A2(n15), .B1(data_out_8[6]), .B2(n16), 
        .ZN(n51) );
  AOI21_X1 U430 ( .B1(n39), .B2(n40), .A(sel[4]), .ZN(data_out[7]) );
  AND4_X1 U431 ( .A1(n41), .A2(n42), .A3(n43), .A4(n44), .ZN(n40) );
  AND4_X1 U432 ( .A1(n45), .A2(n46), .A3(n47), .A4(n48), .ZN(n39) );
  AOI22_X1 U433 ( .A1(data_out_9[7]), .A2(n15), .B1(data_out_8[7]), .B2(n16), 
        .ZN(n41) );
  AOI21_X1 U434 ( .B1(n29), .B2(n30), .A(sel[4]), .ZN(data_out[8]) );
  AND4_X1 U435 ( .A1(n31), .A2(n32), .A3(n33), .A4(n34), .ZN(n30) );
  AND4_X1 U436 ( .A1(n35), .A2(n36), .A3(n37), .A4(n38), .ZN(n29) );
  AOI22_X1 U437 ( .A1(data_out_9[8]), .A2(n15), .B1(data_out_8[8]), .B2(n16), 
        .ZN(n31) );
  AOI21_X1 U438 ( .B1(n3), .B2(n4), .A(sel[4]), .ZN(data_out[9]) );
  AND4_X1 U439 ( .A1(n5), .A2(n6), .A3(n7), .A4(n8), .ZN(n4) );
  AND4_X1 U440 ( .A1(n17), .A2(n18), .A3(n19), .A4(n20), .ZN(n3) );
  AOI22_X1 U441 ( .A1(data_out_9[9]), .A2(n15), .B1(data_out_8[9]), .B2(n16), 
        .ZN(n5) );
  AOI21_X1 U442 ( .B1(n129), .B2(n130), .A(sel[4]), .ZN(data_out[13]) );
  AND4_X1 U443 ( .A1(n131), .A2(n132), .A3(n133), .A4(n134), .ZN(n130) );
  AND4_X1 U444 ( .A1(n135), .A2(n136), .A3(n137), .A4(n138), .ZN(n129) );
  AOI22_X1 U445 ( .A1(data_out_9[13]), .A2(n15), .B1(data_out_8[13]), .B2(n16), 
        .ZN(n131) );
  AOI21_X1 U446 ( .B1(n119), .B2(n120), .A(sel[4]), .ZN(data_out[14]) );
  AND4_X1 U447 ( .A1(n121), .A2(n122), .A3(n123), .A4(n124), .ZN(n120) );
  AND4_X1 U448 ( .A1(n125), .A2(n126), .A3(n127), .A4(n128), .ZN(n119) );
  AOI22_X1 U449 ( .A1(data_out_9[14]), .A2(n15), .B1(data_out_8[14]), .B2(n16), 
        .ZN(n121) );
  AOI21_X1 U450 ( .B1(n109), .B2(n110), .A(sel[4]), .ZN(data_out[15]) );
  AND4_X1 U451 ( .A1(n111), .A2(n112), .A3(n113), .A4(n114), .ZN(n110) );
  AND4_X1 U452 ( .A1(n115), .A2(n116), .A3(n117), .A4(n118), .ZN(n109) );
  AOI22_X1 U453 ( .A1(data_out_9[15]), .A2(n15), .B1(data_out_8[15]), .B2(n16), 
        .ZN(n111) );
  BUF_X1 U454 ( .A(data_out_x[13]), .Z(n235) );
  CLKBUF_X1 U455 ( .A(data_out_x[15]), .Z(n239) );
  CLKBUF_X1 U456 ( .A(wr_en_y), .Z(n206) );
  CLKBUF_X3 U457 ( .A(data_out_x[4]), .Z(n217) );
  CLKBUF_X3 U458 ( .A(data_out_x[13]), .Z(n234) );
endmodule

