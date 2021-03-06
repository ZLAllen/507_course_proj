
module part2_mac_DW_mult_tc_1 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n12, n13, n15, n16, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n50,
         n53, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n92, n94, n96, n98, n99, n102, n103,
         n104, n105, n108, n109, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n163,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n245, n246, n247, n248,
         n250, n254, n255, n256, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355;

  FA_X1 U128 ( .A(n171), .B(n118), .CI(n178), .CO(n114), .S(n115) );
  FA_X1 U129 ( .A(n119), .B(n172), .CI(n122), .CO(n116), .S(n117) );
  FA_X1 U131 ( .A(n126), .B(n173), .CI(n123), .CO(n120), .S(n121) );
  FA_X1 U132 ( .A(n128), .B(n179), .CI(n186), .CO(n122), .S(n123) );
  FA_X1 U133 ( .A(n132), .B(n134), .CI(n127), .CO(n124), .S(n125) );
  FA_X1 U134 ( .A(n174), .B(n180), .CI(n129), .CO(n126), .S(n127) );
  FA_X1 U137 ( .A(n194), .B(n181), .CI(n140), .CO(n132), .S(n133) );
  FA_X1 U140 ( .A(n144), .B(n141), .CI(n139), .CO(n136), .S(n137) );
  FA_X1 U141 ( .A(n182), .B(n195), .CI(n188), .CO(n138), .S(n139) );
  HA_X1 U142 ( .A(n166), .B(n176), .CO(n140), .S(n141) );
  FA_X1 U144 ( .A(n196), .B(n177), .CI(n189), .CO(n144), .S(n145) );
  FA_X1 U145 ( .A(n190), .B(n197), .CI(n149), .CO(n146), .S(n147) );
  HA_X1 U146 ( .A(n167), .B(n184), .CO(n148), .S(n149) );
  FA_X1 U147 ( .A(n198), .B(n185), .CI(n191), .CO(n150), .S(n151) );
  HA_X1 U148 ( .A(n192), .B(n199), .CO(n152), .S(n153) );
  CLKBUF_X1 U268 ( .A(n73), .Z(n317) );
  CLKBUF_X1 U269 ( .A(n105), .Z(n303) );
  BUF_X1 U270 ( .A(a[7]), .Z(n262) );
  BUF_X2 U271 ( .A(a[7]), .Z(n353) );
  CLKBUF_X3 U272 ( .A(a[1]), .Z(n324) );
  CLKBUF_X3 U273 ( .A(a[5]), .Z(n327) );
  OR2_X1 U274 ( .A1(n330), .A2(a[0]), .ZN(n320) );
  BUF_X1 U275 ( .A(n271), .Z(n328) );
  INV_X1 U276 ( .A(n259), .ZN(n304) );
  BUF_X1 U277 ( .A(n266), .Z(n305) );
  BUF_X1 U278 ( .A(a[1]), .Z(n265) );
  BUF_X1 U279 ( .A(n83), .Z(n306) );
  BUF_X1 U280 ( .A(n66), .Z(n307) );
  BUF_X1 U281 ( .A(a[5]), .Z(n263) );
  BUF_X1 U282 ( .A(n226), .Z(n308) );
  BUF_X1 U283 ( .A(n271), .Z(n255) );
  XOR2_X1 U284 ( .A(n148), .B(n183), .Z(n309) );
  XOR2_X1 U285 ( .A(n145), .B(n309), .Z(n143) );
  NAND2_X1 U286 ( .A1(n145), .A2(n148), .ZN(n310) );
  NAND2_X1 U287 ( .A1(n145), .A2(n183), .ZN(n311) );
  NAND2_X1 U288 ( .A1(n148), .A2(n183), .ZN(n312) );
  NAND3_X1 U289 ( .A1(n310), .A2(n311), .A3(n312), .ZN(n142) );
  OR2_X1 U290 ( .A1(n330), .A2(a[0]), .ZN(n269) );
  XNOR2_X1 U291 ( .A(n187), .B(n175), .ZN(n135) );
  BUF_X2 U292 ( .A(b[0]), .Z(n245) );
  OR2_X1 U293 ( .A1(n351), .A2(n193), .ZN(n313) );
  OR2_X1 U294 ( .A1(n117), .A2(n120), .ZN(n314) );
  XNOR2_X1 U295 ( .A(n264), .B(b[4]), .ZN(n315) );
  INV_X1 U296 ( .A(n303), .ZN(n316) );
  NOR2_X1 U297 ( .A1(n137), .A2(n142), .ZN(n72) );
  CLKBUF_X1 U298 ( .A(n264), .Z(n318) );
  OAI21_X2 U299 ( .B1(n61), .B2(n65), .A(n62), .ZN(n60) );
  BUF_X1 U300 ( .A(n352), .Z(n319) );
  CLKBUF_X1 U301 ( .A(n306), .Z(n321) );
  OAI21_X1 U302 ( .B1(n84), .B2(n86), .A(n85), .ZN(n83) );
  BUF_X1 U303 ( .A(n350), .Z(n341) );
  CLKBUF_X1 U304 ( .A(n256), .Z(n322) );
  BUF_X2 U305 ( .A(a[3]), .Z(n264) );
  XNOR2_X1 U306 ( .A(n133), .B(n323), .ZN(n131) );
  XNOR2_X1 U307 ( .A(n138), .B(n135), .ZN(n323) );
  CLKBUF_X1 U308 ( .A(n90), .Z(n325) );
  OR2_X1 U309 ( .A1(n146), .A2(n143), .ZN(n326) );
  NOR2_X1 U310 ( .A1(n121), .A2(n124), .ZN(n329) );
  NOR2_X1 U311 ( .A1(n121), .A2(n124), .ZN(n61) );
  XNOR2_X1 U312 ( .A(a[0]), .B(a[1]), .ZN(n330) );
  CLKBUF_X1 U313 ( .A(n328), .Z(n331) );
  CLKBUF_X1 U314 ( .A(n268), .Z(n332) );
  CLKBUF_X1 U315 ( .A(n254), .Z(n333) );
  BUF_X2 U316 ( .A(n270), .Z(n254) );
  NAND2_X1 U317 ( .A1(n133), .A2(n138), .ZN(n334) );
  NAND2_X1 U318 ( .A1(n133), .A2(n135), .ZN(n335) );
  NAND2_X1 U319 ( .A1(n138), .A2(n135), .ZN(n336) );
  NAND3_X1 U320 ( .A1(n334), .A2(n335), .A3(n336), .ZN(n130) );
  NOR2_X1 U321 ( .A1(n125), .A2(n130), .ZN(n64) );
  CLKBUF_X1 U322 ( .A(n307), .Z(n337) );
  AOI21_X2 U323 ( .B1(n75), .B2(n67), .A(n68), .ZN(n66) );
  XNOR2_X1 U324 ( .A(n338), .B(n345), .ZN(product[4]) );
  AND2_X1 U325 ( .A1(n108), .A2(n85), .ZN(n338) );
  AOI21_X1 U326 ( .B1(n341), .B2(n306), .A(n319), .ZN(n339) );
  INV_X1 U327 ( .A(n30), .ZN(n28) );
  NAND2_X1 U328 ( .A1(n103), .A2(n65), .ZN(n9) );
  INV_X1 U329 ( .A(n64), .ZN(n103) );
  INV_X1 U330 ( .A(n31), .ZN(n29) );
  NAND2_X1 U331 ( .A1(n314), .A2(n32), .ZN(n30) );
  NOR2_X1 U332 ( .A1(n50), .A2(n41), .ZN(n39) );
  INV_X1 U333 ( .A(n314), .ZN(n50) );
  INV_X1 U334 ( .A(n60), .ZN(n58) );
  NAND2_X1 U335 ( .A1(n42), .A2(n44), .ZN(n6) );
  NAND2_X1 U336 ( .A1(n98), .A2(n24), .ZN(n4) );
  INV_X1 U337 ( .A(n23), .ZN(n98) );
  NAND2_X1 U338 ( .A1(n326), .A2(n77), .ZN(n12) );
  NAND2_X1 U339 ( .A1(n99), .A2(n35), .ZN(n5) );
  INV_X1 U340 ( .A(n34), .ZN(n99) );
  NOR2_X1 U341 ( .A1(n30), .A2(n23), .ZN(n21) );
  OAI21_X1 U342 ( .B1(n55), .B2(n41), .A(n44), .ZN(n40) );
  NAND2_X1 U343 ( .A1(n125), .A2(n130), .ZN(n65) );
  INV_X1 U344 ( .A(n42), .ZN(n41) );
  INV_X1 U345 ( .A(n55), .ZN(n53) );
  INV_X1 U346 ( .A(n94), .ZN(n92) );
  OR2_X1 U347 ( .A1(n187), .A2(n175), .ZN(n134) );
  NOR2_X1 U348 ( .A1(n114), .A2(n113), .ZN(n34) );
  INV_X1 U349 ( .A(n112), .ZN(n113) );
  NAND2_X1 U350 ( .A1(n116), .A2(n115), .ZN(n44) );
  NAND2_X1 U351 ( .A1(n114), .A2(n113), .ZN(n35) );
  XNOR2_X1 U352 ( .A(n16), .B(n355), .ZN(product[2]) );
  NOR2_X1 U353 ( .A1(n96), .A2(n355), .ZN(product[1]) );
  AND2_X1 U354 ( .A1(n155), .A2(n245), .ZN(n177) );
  INV_X1 U355 ( .A(n118), .ZN(n119) );
  AND2_X1 U356 ( .A1(n245), .A2(n158), .ZN(n185) );
  NAND2_X1 U357 ( .A1(n200), .A2(n193), .ZN(n94) );
  AND2_X1 U358 ( .A1(n245), .A2(n161), .ZN(n193) );
  INV_X1 U359 ( .A(n154), .ZN(n170) );
  INV_X1 U360 ( .A(n157), .ZN(n178) );
  AND2_X1 U361 ( .A1(n245), .A2(a[0]), .ZN(product[0]) );
  INV_X1 U362 ( .A(a[0]), .ZN(n273) );
  INV_X1 U363 ( .A(n3), .ZN(n57) );
  NAND2_X1 U364 ( .A1(n137), .A2(n142), .ZN(n73) );
  INV_X1 U365 ( .A(n347), .ZN(n104) );
  BUF_X1 U366 ( .A(n70), .Z(n342) );
  BUF_X1 U367 ( .A(n59), .Z(n343) );
  BUF_X1 U368 ( .A(n59), .Z(n3) );
  NOR2_X1 U369 ( .A1(n64), .A2(n329), .ZN(n59) );
  NAND2_X1 U370 ( .A1(n247), .A2(n271), .ZN(n344) );
  CLKBUF_X1 U371 ( .A(n86), .Z(n345) );
  NAND2_X1 U372 ( .A1(n104), .A2(n342), .ZN(n10) );
  XNOR2_X1 U373 ( .A(n74), .B(n346), .ZN(product[7]) );
  AND2_X1 U374 ( .A1(n105), .A2(n73), .ZN(n346) );
  NOR2_X1 U375 ( .A1(n131), .A2(n136), .ZN(n347) );
  NOR2_X1 U376 ( .A1(n131), .A2(n136), .ZN(n69) );
  INV_X1 U377 ( .A(n319), .ZN(n82) );
  OAI22_X1 U378 ( .A1(n320), .A2(n261), .B1(n237), .B2(n273), .ZN(n348) );
  OR2_X1 U379 ( .A1(n245), .A2(n165), .ZN(n237) );
  NAND2_X1 U380 ( .A1(n272), .A2(n248), .ZN(n349) );
  NAND2_X1 U381 ( .A1(n272), .A2(n248), .ZN(n268) );
  OR2_X1 U382 ( .A1(n147), .A2(n150), .ZN(n350) );
  NAND2_X1 U383 ( .A1(n131), .A2(n136), .ZN(n70) );
  OAI22_X1 U384 ( .A1(n320), .A2(n235), .B1(n234), .B2(n273), .ZN(n351) );
  AND2_X1 U385 ( .A1(n147), .A2(n150), .ZN(n352) );
  NAND2_X1 U386 ( .A1(n109), .A2(n89), .ZN(n15) );
  XNOR2_X1 U387 ( .A(n45), .B(n6), .ZN(product[12]) );
  NAND2_X1 U388 ( .A1(n314), .A2(n55), .ZN(n7) );
  AOI21_X1 U389 ( .B1(n32), .B2(n53), .A(n33), .ZN(n31) );
  INV_X1 U390 ( .A(n327), .ZN(n259) );
  INV_X1 U391 ( .A(n254), .ZN(n155) );
  OR2_X1 U392 ( .A1(n159), .A2(n245), .ZN(n219) );
  INV_X1 U393 ( .A(n318), .ZN(n260) );
  INV_X1 U394 ( .A(n328), .ZN(n158) );
  OR2_X1 U395 ( .A1(n245), .A2(n260), .ZN(n228) );
  CLKBUF_X1 U396 ( .A(n266), .Z(n250) );
  NOR2_X1 U397 ( .A1(n143), .A2(n146), .ZN(n76) );
  NOR2_X1 U398 ( .A1(n201), .A2(n348), .ZN(n96) );
  INV_X1 U399 ( .A(n256), .ZN(n161) );
  INV_X1 U400 ( .A(n353), .ZN(n258) );
  INV_X1 U401 ( .A(n262), .ZN(n156) );
  OR2_X1 U402 ( .A1(n245), .A2(n156), .ZN(n210) );
  INV_X1 U403 ( .A(n263), .ZN(n159) );
  NAND2_X1 U404 ( .A1(n151), .A2(n152), .ZN(n85) );
  INV_X1 U405 ( .A(n61), .ZN(n102) );
  OAI22_X1 U406 ( .A1(n320), .A2(n236), .B1(n235), .B2(n273), .ZN(n201) );
  OAI22_X1 U407 ( .A1(n320), .A2(n261), .B1(n237), .B2(n273), .ZN(n169) );
  OAI22_X1 U408 ( .A1(n221), .A2(n268), .B1(n220), .B2(n256), .ZN(n354) );
  NAND2_X1 U409 ( .A1(n313), .A2(n94), .ZN(n16) );
  BUF_X2 U410 ( .A(n272), .Z(n256) );
  OAI21_X1 U411 ( .B1(n31), .B2(n23), .A(n24), .ZN(n22) );
  XNOR2_X1 U412 ( .A(n25), .B(n4), .ZN(product[14]) );
  NOR2_X1 U413 ( .A1(n43), .A2(n34), .ZN(n32) );
  OAI21_X1 U414 ( .B1(n44), .B2(n34), .A(n35), .ZN(n33) );
  OAI22_X1 U415 ( .A1(n250), .A2(n206), .B1(n333), .B2(n205), .ZN(n173) );
  OAI22_X1 U416 ( .A1(n305), .A2(n205), .B1(n333), .B2(n204), .ZN(n172) );
  OAI22_X1 U417 ( .A1(n250), .A2(n203), .B1(n333), .B2(n202), .ZN(n112) );
  AOI21_X1 U418 ( .B1(n250), .B2(n333), .A(n202), .ZN(n154) );
  OAI22_X1 U419 ( .A1(n305), .A2(n208), .B1(n207), .B2(n254), .ZN(n175) );
  OAI22_X1 U420 ( .A1(n250), .A2(n204), .B1(n333), .B2(n203), .ZN(n171) );
  OAI22_X1 U421 ( .A1(n266), .A2(n207), .B1(n206), .B2(n254), .ZN(n174) );
  XOR2_X1 U422 ( .A(a[6]), .B(a[7]), .Z(n246) );
  AND2_X2 U423 ( .A1(n201), .A2(n169), .ZN(n355) );
  OAI22_X1 U424 ( .A1(n320), .A2(n235), .B1(n234), .B2(n273), .ZN(n200) );
  OAI22_X1 U425 ( .A1(n230), .A2(n269), .B1(n229), .B2(n273), .ZN(n195) );
  OAI22_X1 U426 ( .A1(n269), .A2(n231), .B1(n230), .B2(n273), .ZN(n196) );
  OAI22_X1 U427 ( .A1(n320), .A2(n232), .B1(n231), .B2(n273), .ZN(n197) );
  OAI22_X1 U428 ( .A1(n320), .A2(n233), .B1(n232), .B2(n273), .ZN(n198) );
  OAI22_X1 U429 ( .A1(n269), .A2(n234), .B1(n233), .B2(n273), .ZN(n199) );
  NAND2_X1 U430 ( .A1(n102), .A2(n62), .ZN(n8) );
  NAND2_X1 U431 ( .A1(n341), .A2(n82), .ZN(n13) );
  OAI22_X1 U432 ( .A1(n266), .A2(n258), .B1(n210), .B2(n254), .ZN(n166) );
  XNOR2_X1 U433 ( .A(n71), .B(n10), .ZN(product[8]) );
  OAI22_X1 U434 ( .A1(n267), .A2(n217), .B1(n331), .B2(n216), .ZN(n183) );
  OAI22_X1 U435 ( .A1(n344), .A2(n216), .B1(n255), .B2(n215), .ZN(n182) );
  OAI22_X1 U436 ( .A1(n267), .A2(n215), .B1(n328), .B2(n214), .ZN(n181) );
  OAI22_X1 U437 ( .A1(n267), .A2(n212), .B1(n331), .B2(n211), .ZN(n118) );
  OAI22_X1 U438 ( .A1(n267), .A2(n214), .B1(n328), .B2(n213), .ZN(n180) );
  OAI22_X1 U439 ( .A1(n267), .A2(n213), .B1(n328), .B2(n212), .ZN(n179) );
  AOI21_X1 U440 ( .B1(n267), .B2(n331), .A(n211), .ZN(n157) );
  OAI22_X1 U441 ( .A1(n344), .A2(n259), .B1(n219), .B2(n255), .ZN(n167) );
  OAI22_X1 U442 ( .A1(n344), .A2(n218), .B1(n255), .B2(n217), .ZN(n184) );
  NOR2_X1 U443 ( .A1(n153), .A2(n168), .ZN(n88) );
  INV_X1 U444 ( .A(n88), .ZN(n109) );
  OAI22_X1 U445 ( .A1(n268), .A2(n308), .B1(n256), .B2(n225), .ZN(n191) );
  OAI22_X1 U446 ( .A1(n349), .A2(n224), .B1(n256), .B2(n223), .ZN(n189) );
  OAI22_X1 U447 ( .A1(n332), .A2(n225), .B1(n322), .B2(n224), .ZN(n190) );
  OAI22_X1 U448 ( .A1(n332), .A2(n260), .B1(n228), .B2(n322), .ZN(n168) );
  OAI22_X1 U449 ( .A1(n268), .A2(n222), .B1(n256), .B2(n221), .ZN(n187) );
  OAI22_X1 U450 ( .A1(n349), .A2(n315), .B1(n256), .B2(n222), .ZN(n188) );
  OAI22_X1 U451 ( .A1(n349), .A2(n227), .B1(n256), .B2(n226), .ZN(n192) );
  AOI21_X1 U452 ( .B1(n256), .B2(n268), .A(n220), .ZN(n160) );
  XNOR2_X1 U453 ( .A(n56), .B(n7), .ZN(product[11]) );
  INV_X1 U454 ( .A(n324), .ZN(n165) );
  OAI22_X1 U455 ( .A1(n266), .A2(n209), .B1(n208), .B2(n254), .ZN(n176) );
  XNOR2_X1 U456 ( .A(n324), .B(b[4]), .ZN(n232) );
  XNOR2_X1 U457 ( .A(n265), .B(b[5]), .ZN(n231) );
  XNOR2_X1 U458 ( .A(n265), .B(b[6]), .ZN(n230) );
  XNOR2_X1 U459 ( .A(n324), .B(n245), .ZN(n236) );
  XNOR2_X1 U460 ( .A(n265), .B(b[2]), .ZN(n234) );
  XNOR2_X1 U461 ( .A(n324), .B(b[7]), .ZN(n229) );
  XNOR2_X1 U462 ( .A(n265), .B(b[3]), .ZN(n233) );
  XNOR2_X1 U463 ( .A(n324), .B(b[1]), .ZN(n235) );
  INV_X1 U464 ( .A(n84), .ZN(n108) );
  NOR2_X1 U465 ( .A1(n151), .A2(n152), .ZN(n84) );
  XNOR2_X1 U466 ( .A(n63), .B(n8), .ZN(product[10]) );
  AOI21_X1 U467 ( .B1(n320), .B2(n273), .A(n229), .ZN(n163) );
  INV_X1 U468 ( .A(n163), .ZN(n194) );
  INV_X1 U469 ( .A(n354), .ZN(n129) );
  OAI22_X1 U470 ( .A1(n268), .A2(n221), .B1(n220), .B2(n256), .ZN(n128) );
  INV_X1 U471 ( .A(n160), .ZN(n186) );
  NAND2_X1 U472 ( .A1(n117), .A2(n120), .ZN(n55) );
  NAND2_X1 U473 ( .A1(n247), .A2(n271), .ZN(n267) );
  INV_X1 U474 ( .A(n43), .ZN(n42) );
  NOR2_X1 U475 ( .A1(n116), .A2(n115), .ZN(n43) );
  NAND2_X1 U476 ( .A1(n143), .A2(n146), .ZN(n77) );
  INV_X1 U477 ( .A(n87), .ZN(n86) );
  OAI21_X1 U478 ( .B1(n88), .B2(n90), .A(n89), .ZN(n87) );
  XOR2_X1 U479 ( .A(n15), .B(n325), .Z(product[3]) );
  AOI21_X1 U480 ( .B1(n60), .B2(n28), .A(n29), .ZN(n27) );
  AOI21_X1 U481 ( .B1(n60), .B2(n314), .A(n53), .ZN(n47) );
  AOI21_X1 U482 ( .B1(n60), .B2(n21), .A(n22), .ZN(n20) );
  AOI21_X1 U483 ( .B1(n60), .B2(n39), .A(n40), .ZN(n38) );
  XNOR2_X1 U484 ( .A(n36), .B(n5), .ZN(product[13]) );
  XNOR2_X1 U485 ( .A(n13), .B(n321), .ZN(product[5]) );
  NAND2_X1 U486 ( .A1(n153), .A2(n168), .ZN(n89) );
  XNOR2_X1 U487 ( .A(n264), .B(b[5]), .ZN(n222) );
  XNOR2_X1 U488 ( .A(n264), .B(b[2]), .ZN(n225) );
  XNOR2_X1 U489 ( .A(n264), .B(b[3]), .ZN(n224) );
  XNOR2_X1 U490 ( .A(n264), .B(b[4]), .ZN(n223) );
  XNOR2_X1 U491 ( .A(n264), .B(n245), .ZN(n227) );
  XNOR2_X1 U492 ( .A(n264), .B(b[1]), .ZN(n226) );
  XNOR2_X1 U493 ( .A(n264), .B(b[6]), .ZN(n221) );
  XNOR2_X1 U494 ( .A(n264), .B(b[7]), .ZN(n220) );
  XNOR2_X1 U495 ( .A(a[1]), .B(a[2]), .ZN(n272) );
  AOI21_X1 U496 ( .B1(n313), .B2(n355), .A(n92), .ZN(n90) );
  OAI21_X1 U497 ( .B1(n69), .B2(n73), .A(n70), .ZN(n68) );
  AOI21_X1 U498 ( .B1(n350), .B2(n83), .A(n352), .ZN(n78) );
  NAND2_X1 U499 ( .A1(n170), .A2(n112), .ZN(n24) );
  NOR2_X1 U500 ( .A1(n170), .A2(n112), .ZN(n23) );
  NAND2_X1 U501 ( .A1(n270), .A2(n246), .ZN(n266) );
  XNOR2_X1 U502 ( .A(n304), .B(b[7]), .ZN(n211) );
  XNOR2_X1 U503 ( .A(n327), .B(b[5]), .ZN(n213) );
  XNOR2_X1 U504 ( .A(n327), .B(b[6]), .ZN(n212) );
  XNOR2_X1 U505 ( .A(n327), .B(b[2]), .ZN(n216) );
  XNOR2_X1 U506 ( .A(n327), .B(n245), .ZN(n218) );
  XNOR2_X1 U507 ( .A(n263), .B(b[1]), .ZN(n217) );
  XNOR2_X1 U508 ( .A(n263), .B(b[3]), .ZN(n215) );
  XNOR2_X1 U509 ( .A(n327), .B(b[4]), .ZN(n214) );
  XOR2_X1 U510 ( .A(a[5]), .B(a[4]), .Z(n247) );
  XNOR2_X1 U511 ( .A(a[5]), .B(a[6]), .ZN(n270) );
  OAI21_X1 U512 ( .B1(n66), .B2(n26), .A(n27), .ZN(n25) );
  OAI21_X1 U513 ( .B1(n66), .B2(n57), .A(n58), .ZN(n56) );
  OAI21_X1 U514 ( .B1(n66), .B2(n46), .A(n47), .ZN(n45) );
  OAI21_X1 U515 ( .B1(n307), .B2(n37), .A(n38), .ZN(n36) );
  XOR2_X1 U516 ( .A(n66), .B(n9), .Z(product[9]) );
  XOR2_X1 U517 ( .A(n12), .B(n339), .Z(product[6]) );
  OAI21_X1 U518 ( .B1(n78), .B2(n76), .A(n77), .ZN(n75) );
  NAND2_X1 U519 ( .A1(n121), .A2(n124), .ZN(n62) );
  NAND2_X1 U520 ( .A1(n343), .A2(n21), .ZN(n19) );
  NAND2_X1 U521 ( .A1(n343), .A2(n28), .ZN(n26) );
  NAND2_X1 U522 ( .A1(n343), .A2(n314), .ZN(n46) );
  NAND2_X1 U523 ( .A1(n3), .A2(n39), .ZN(n37) );
  OAI21_X1 U524 ( .B1(n66), .B2(n64), .A(n65), .ZN(n63) );
  XNOR2_X1 U525 ( .A(n353), .B(b[5]), .ZN(n204) );
  XNOR2_X1 U526 ( .A(n353), .B(b[4]), .ZN(n205) );
  XNOR2_X1 U527 ( .A(n353), .B(b[6]), .ZN(n203) );
  XNOR2_X1 U528 ( .A(n353), .B(b[7]), .ZN(n202) );
  XNOR2_X1 U529 ( .A(n353), .B(b[2]), .ZN(n207) );
  XNOR2_X1 U530 ( .A(n353), .B(b[3]), .ZN(n206) );
  XNOR2_X1 U531 ( .A(n353), .B(n245), .ZN(n209) );
  XNOR2_X1 U532 ( .A(n262), .B(b[1]), .ZN(n208) );
  INV_X1 U533 ( .A(n72), .ZN(n105) );
  NOR2_X1 U534 ( .A1(n72), .A2(n347), .ZN(n67) );
  OAI21_X1 U535 ( .B1(n74), .B2(n316), .A(n317), .ZN(n71) );
  XNOR2_X1 U536 ( .A(a[4]), .B(a[3]), .ZN(n271) );
  XOR2_X1 U537 ( .A(a[3]), .B(a[2]), .Z(n248) );
  INV_X1 U538 ( .A(n75), .ZN(n74) );
  INV_X1 U539 ( .A(n324), .ZN(n261) );
  INV_X1 U540 ( .A(n18), .ZN(product[15]) );
  OAI21_X1 U541 ( .B1(n337), .B2(n19), .A(n20), .ZN(n18) );
endmodule


module part2_mac_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n9, n10, n11, n12, n13, n14, n15, n16, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n77, n79,
         n80, n84, n85, n86, n87, n88, n89, n90, n92, n94, n95, n97, n98, n99,
         n100, n101, n102, n103, n104, n106, n107, n163, n164, n165, n166,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189;

  INV_X1 U128 ( .A(n31), .ZN(n163) );
  CLKBUF_X1 U129 ( .A(n95), .Z(n164) );
  NOR2_X1 U130 ( .A1(n39), .A2(n42), .ZN(n165) );
  NOR2_X1 U131 ( .A1(n39), .A2(n42), .ZN(n166) );
  NOR2_X1 U132 ( .A1(n39), .A2(n42), .ZN(n37) );
  AND2_X1 U133 ( .A1(n169), .A2(n92), .ZN(SUM[0]) );
  OR2_X1 U134 ( .A1(n171), .A2(A[12]), .ZN(n168) );
  OR2_X1 U135 ( .A1(B[0]), .A2(A[0]), .ZN(n169) );
  INV_X1 U136 ( .A(n64), .ZN(n170) );
  CLKBUF_X1 U137 ( .A(B[12]), .Z(n171) );
  XNOR2_X1 U138 ( .A(n49), .B(n172), .ZN(SUM[10]) );
  NAND2_X1 U139 ( .A1(n98), .A2(n48), .ZN(n172) );
  NOR2_X1 U140 ( .A1(B[14]), .A2(A[14]), .ZN(n173) );
  NOR2_X1 U141 ( .A1(B[14]), .A2(A[14]), .ZN(n25) );
  NOR2_X1 U142 ( .A1(B[12]), .A2(A[12]), .ZN(n174) );
  NOR2_X1 U143 ( .A1(B[12]), .A2(A[12]), .ZN(n39) );
  CLKBUF_X1 U144 ( .A(n60), .Z(n175) );
  CLKBUF_X1 U145 ( .A(n57), .Z(n176) );
  CLKBUF_X1 U146 ( .A(n184), .Z(n177) );
  AND2_X2 U147 ( .A1(n185), .A2(n186), .ZN(n178) );
  AND2_X1 U148 ( .A1(n185), .A2(n186), .ZN(n44) );
  CLKBUF_X1 U149 ( .A(n58), .Z(n179) );
  CLKBUF_X1 U150 ( .A(n53), .Z(n180) );
  CLKBUF_X1 U151 ( .A(n47), .Z(n181) );
  AOI21_X1 U152 ( .B1(n57), .B2(n65), .A(n58), .ZN(n182) );
  NOR2_X1 U153 ( .A1(B[10]), .A2(A[10]), .ZN(n183) );
  NOR2_X1 U154 ( .A1(A[7]), .A2(B[7]), .ZN(n184) );
  NAND2_X1 U155 ( .A1(n53), .A2(n45), .ZN(n185) );
  INV_X1 U156 ( .A(n46), .ZN(n186) );
  NOR2_X1 U157 ( .A1(B[10]), .A2(A[10]), .ZN(n47) );
  NOR2_X1 U158 ( .A1(B[7]), .A2(A[7]), .ZN(n59) );
  OR2_X1 U159 ( .A1(B[3]), .A2(A[3]), .ZN(n187) );
  XNOR2_X1 U160 ( .A(n52), .B(n188), .ZN(SUM[9]) );
  AND2_X1 U161 ( .A1(n99), .A2(n51), .ZN(n188) );
  OR2_X1 U162 ( .A1(B[15]), .A2(A[15]), .ZN(n189) );
  NAND2_X1 U163 ( .A1(B[0]), .A2(A[0]), .ZN(n92) );
  NOR2_X1 U164 ( .A1(B[1]), .A2(A[1]), .ZN(n89) );
  NAND2_X1 U165 ( .A1(B[15]), .A2(A[15]), .ZN(n19) );
  INV_X1 U166 ( .A(n85), .ZN(n106) );
  NAND2_X1 U167 ( .A1(n189), .A2(n19), .ZN(n2) );
  NAND2_X1 U168 ( .A1(n106), .A2(n86), .ZN(n15) );
  NAND2_X1 U169 ( .A1(B[2]), .A2(A[2]), .ZN(n86) );
  NAND2_X1 U170 ( .A1(B[5]), .A2(A[5]), .ZN(n67) );
  NOR2_X1 U171 ( .A1(B[2]), .A2(A[2]), .ZN(n85) );
  NAND2_X1 U172 ( .A1(B[8]), .A2(A[8]), .ZN(n55) );
  NOR2_X1 U173 ( .A1(B[13]), .A2(A[13]), .ZN(n32) );
  INV_X1 U174 ( .A(n86), .ZN(n84) );
  NAND2_X1 U175 ( .A1(n97), .A2(n43), .ZN(n6) );
  INV_X1 U176 ( .A(n66), .ZN(n103) );
  NOR2_X1 U177 ( .A1(B[5]), .A2(A[5]), .ZN(n66) );
  NAND2_X1 U178 ( .A1(n94), .A2(n26), .ZN(n3) );
  NAND2_X1 U179 ( .A1(n168), .A2(n40), .ZN(n5) );
  NOR2_X1 U180 ( .A1(B[8]), .A2(A[8]), .ZN(n54) );
  NOR2_X1 U181 ( .A1(n173), .A2(n32), .ZN(n23) );
  OAI21_X1 U182 ( .B1(n87), .B2(n74), .A(n75), .ZN(n73) );
  AOI21_X1 U183 ( .B1(n187), .B2(n84), .A(n77), .ZN(n75) );
  NAND2_X1 U184 ( .A1(B[11]), .A2(A[11]), .ZN(n43) );
  NAND2_X1 U185 ( .A1(B[12]), .A2(A[12]), .ZN(n40) );
  NOR2_X1 U186 ( .A1(B[9]), .A2(A[9]), .ZN(n50) );
  NAND2_X1 U187 ( .A1(n187), .A2(n106), .ZN(n74) );
  NAND2_X1 U188 ( .A1(B[4]), .A2(A[4]), .ZN(n72) );
  NAND2_X1 U189 ( .A1(B[1]), .A2(A[1]), .ZN(n90) );
  NAND2_X1 U190 ( .A1(B[14]), .A2(A[14]), .ZN(n26) );
  NAND2_X1 U191 ( .A1(B[7]), .A2(A[7]), .ZN(n60) );
  NAND2_X1 U192 ( .A1(n164), .A2(n163), .ZN(n4) );
  INV_X1 U193 ( .A(n33), .ZN(n31) );
  NAND2_X1 U194 ( .A1(B[13]), .A2(A[13]), .ZN(n33) );
  NAND2_X1 U195 ( .A1(B[10]), .A2(A[10]), .ZN(n48) );
  OAI21_X1 U196 ( .B1(n59), .B2(n63), .A(n60), .ZN(n58) );
  NAND2_X1 U197 ( .A1(B[6]), .A2(A[6]), .ZN(n63) );
  NAND2_X1 U198 ( .A1(B[9]), .A2(A[9]), .ZN(n51) );
  NAND2_X1 U199 ( .A1(n187), .A2(n79), .ZN(n14) );
  INV_X1 U200 ( .A(n79), .ZN(n77) );
  NAND2_X1 U201 ( .A1(B[3]), .A2(A[3]), .ZN(n79) );
  INV_X1 U202 ( .A(n89), .ZN(n107) );
  INV_X1 U203 ( .A(n71), .ZN(n104) );
  NOR2_X2 U204 ( .A1(B[4]), .A2(A[4]), .ZN(n71) );
  INV_X1 U205 ( .A(n54), .ZN(n100) );
  INV_X1 U206 ( .A(n166), .ZN(n35) );
  NAND2_X1 U207 ( .A1(n165), .A2(n95), .ZN(n28) );
  NAND2_X1 U208 ( .A1(n23), .A2(n37), .ZN(n21) );
  INV_X1 U209 ( .A(n62), .ZN(n102) );
  NOR2_X1 U210 ( .A1(B[6]), .A2(A[6]), .ZN(n62) );
  INV_X1 U211 ( .A(n38), .ZN(n36) );
  AOI21_X1 U212 ( .B1(n38), .B2(n95), .A(n31), .ZN(n29) );
  AOI21_X1 U213 ( .B1(n38), .B2(n23), .A(n24), .ZN(n22) );
  OAI21_X1 U214 ( .B1(n174), .B2(n43), .A(n40), .ZN(n38) );
  AOI21_X1 U215 ( .B1(n69), .B2(n88), .A(n70), .ZN(n68) );
  OAI21_X1 U216 ( .B1(n89), .B2(n92), .A(n90), .ZN(n88) );
  NOR2_X1 U217 ( .A1(n71), .A2(n74), .ZN(n69) );
  INV_X1 U218 ( .A(n65), .ZN(n64) );
  NOR2_X1 U219 ( .A1(n184), .A2(n62), .ZN(n57) );
  INV_X1 U220 ( .A(n50), .ZN(n99) );
  OAI21_X1 U221 ( .B1(n182), .B2(n54), .A(n55), .ZN(n53) );
  AOI21_X1 U222 ( .B1(n176), .B2(n170), .A(n179), .ZN(n56) );
  INV_X1 U223 ( .A(n177), .ZN(n101) );
  INV_X1 U224 ( .A(n181), .ZN(n98) );
  OAI21_X1 U225 ( .B1(n183), .B2(n51), .A(n48), .ZN(n46) );
  NOR2_X1 U226 ( .A1(n47), .A2(n50), .ZN(n45) );
  INV_X1 U227 ( .A(n173), .ZN(n94) );
  OAI21_X1 U228 ( .B1(n25), .B2(n33), .A(n26), .ZN(n24) );
  INV_X1 U229 ( .A(n42), .ZN(n97) );
  NOR2_X1 U230 ( .A1(A[11]), .A2(B[11]), .ZN(n42) );
  INV_X1 U231 ( .A(n32), .ZN(n95) );
  OAI21_X1 U232 ( .B1(n68), .B2(n66), .A(n67), .ZN(n65) );
  OAI21_X1 U233 ( .B1(n71), .B2(n75), .A(n72), .ZN(n70) );
  XOR2_X1 U234 ( .A(n87), .B(n15), .Z(SUM[2]) );
  INV_X1 U235 ( .A(n88), .ZN(n87) );
  XNOR2_X1 U236 ( .A(n80), .B(n14), .ZN(SUM[3]) );
  OAI21_X1 U237 ( .B1(n87), .B2(n85), .A(n86), .ZN(n80) );
  XOR2_X1 U238 ( .A(n16), .B(n92), .Z(SUM[1]) );
  NAND2_X1 U239 ( .A1(n107), .A2(n90), .ZN(n16) );
  XNOR2_X1 U240 ( .A(n73), .B(n13), .ZN(SUM[4]) );
  NAND2_X1 U241 ( .A1(n104), .A2(n72), .ZN(n13) );
  XOR2_X1 U242 ( .A(n68), .B(n12), .Z(SUM[5]) );
  NAND2_X1 U243 ( .A1(n103), .A2(n67), .ZN(n12) );
  NAND2_X1 U244 ( .A1(n101), .A2(n175), .ZN(n10) );
  XNOR2_X1 U245 ( .A(n61), .B(n10), .ZN(SUM[7]) );
  OAI21_X1 U246 ( .B1(n64), .B2(n62), .A(n63), .ZN(n61) );
  XOR2_X1 U247 ( .A(n64), .B(n11), .Z(SUM[6]) );
  NAND2_X1 U248 ( .A1(n102), .A2(n63), .ZN(n11) );
  XOR2_X1 U249 ( .A(n56), .B(n9), .Z(SUM[8]) );
  NAND2_X1 U250 ( .A1(n100), .A2(n55), .ZN(n9) );
  INV_X1 U251 ( .A(n180), .ZN(n52) );
  OAI21_X1 U252 ( .B1(n52), .B2(n50), .A(n51), .ZN(n49) );
  XOR2_X1 U253 ( .A(n178), .B(n6), .Z(SUM[11]) );
  XNOR2_X1 U254 ( .A(n34), .B(n4), .ZN(SUM[13]) );
  OAI21_X1 U255 ( .B1(n178), .B2(n35), .A(n36), .ZN(n34) );
  XNOR2_X1 U256 ( .A(n27), .B(n3), .ZN(SUM[14]) );
  OAI21_X1 U257 ( .B1(n178), .B2(n28), .A(n29), .ZN(n27) );
  XNOR2_X1 U258 ( .A(n20), .B(n2), .ZN(SUM[15]) );
  OAI21_X1 U259 ( .B1(n44), .B2(n21), .A(n22), .ZN(n20) );
  XNOR2_X1 U260 ( .A(n41), .B(n5), .ZN(SUM[12]) );
  OAI21_X1 U261 ( .B1(n44), .B2(n42), .A(n43), .ZN(n41) );
endmodule


module part2_mac ( clk, reset, a, b, valid_in, f, valid_out );
  input [7:0] a;
  input [7:0] b;
  output [15:0] f;
  input clk, reset, valid_in;
  output valid_out;
  wire   enable_f, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27,
         N26, N25, N24, N23, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148;
  wire   [7:0] a_reg;
  wire   [7:0] b_reg;
  wire   [15:0] f_reg;

  DFF_X1 enable_f_reg ( .D(n116), .CK(clk), .Q(enable_f) );
  DFF_X1 valid_out_reg ( .D(enable_f), .CK(clk), .Q(valid_out) );
  DFF_X1 \b_reg_reg[7]  ( .D(n133), .CK(clk), .Q(b_reg[7]) );
  DFF_X1 \b_reg_reg[6]  ( .D(n134), .CK(clk), .Q(b_reg[6]) );
  DFF_X1 \b_reg_reg[5]  ( .D(n135), .CK(clk), .Q(b_reg[5]) );
  DFF_X1 \b_reg_reg[4]  ( .D(n136), .CK(clk), .Q(b_reg[4]) );
  DFF_X1 \b_reg_reg[3]  ( .D(n137), .CK(clk), .Q(b_reg[3]) );
  DFF_X1 \b_reg_reg[2]  ( .D(n138), .CK(clk), .Q(b_reg[2]) );
  DFF_X1 \b_reg_reg[1]  ( .D(n139), .CK(clk), .Q(b_reg[1]) );
  DFF_X1 \b_reg_reg[0]  ( .D(n140), .CK(clk), .Q(b_reg[0]) );
  DFF_X1 \a_reg_reg[7]  ( .D(n141), .CK(clk), .Q(a_reg[7]) );
  DFF_X1 \a_reg_reg[6]  ( .D(n142), .CK(clk), .Q(a_reg[6]) );
  DFF_X1 \a_reg_reg[5]  ( .D(n143), .CK(clk), .Q(a_reg[5]), .QN(n78) );
  DFF_X1 \a_reg_reg[4]  ( .D(n144), .CK(clk), .Q(a_reg[4]) );
  DFF_X1 \a_reg_reg[3]  ( .D(n145), .CK(clk), .Q(n77), .QN(n71) );
  DFF_X1 \a_reg_reg[1]  ( .D(n147), .CK(clk), .Q(a_reg[1]), .QN(n73) );
  DFF_X1 \a_reg_reg[0]  ( .D(n148), .CK(clk), .Q(a_reg[0]) );
  DFF_X1 \f_reg[15]_inst  ( .D(n117), .CK(clk), .Q(f[15]) );
  DFF_X1 \f_reg[14]_inst  ( .D(n118), .CK(clk), .Q(f[14]) );
  DFF_X1 \f_reg[13]_inst  ( .D(n119), .CK(clk), .Q(f[13]) );
  DFF_X1 \f_reg[12]_inst  ( .D(n120), .CK(clk), .Q(f[12]) );
  DFF_X1 \f_reg[11]_inst  ( .D(n121), .CK(clk), .Q(f[11]) );
  DFF_X1 \f_reg[10]_inst  ( .D(n122), .CK(clk), .Q(f[10]) );
  DFF_X1 \f_reg[9]_inst  ( .D(n123), .CK(clk), .Q(f[9]) );
  DFF_X1 \f_reg[8]_inst  ( .D(n124), .CK(clk), .Q(f[8]) );
  DFF_X1 \f_reg[7]_inst  ( .D(n125), .CK(clk), .Q(f[7]) );
  DFF_X1 \f_reg[6]_inst  ( .D(n126), .CK(clk), .Q(f[6]) );
  DFF_X1 \f_reg[5]_inst  ( .D(n127), .CK(clk), .Q(f[5]) );
  DFF_X1 \f_reg[4]_inst  ( .D(n128), .CK(clk), .Q(f[4]) );
  DFF_X1 \f_reg[3]_inst  ( .D(n129), .CK(clk), .Q(f[3]) );
  DFF_X1 \f_reg[2]_inst  ( .D(n130), .CK(clk), .Q(f[2]) );
  DFF_X1 \f_reg[1]_inst  ( .D(n131), .CK(clk), .Q(f[1]) );
  DFF_X1 \f_reg[0]_inst  ( .D(n132), .CK(clk), .Q(f[0]) );
  part2_mac_DW_mult_tc_1 mult_50 ( .a({a_reg[7:4], n77, a_reg[2:0]}), .b(b_reg), .product({N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, 
        N25, N24, N23}) );
  part2_mac_DW01_add_2 add_50 ( .A(f), .B({N38, N37, N36, N35, N34, N33, N32, 
        N31, N30, N29, N28, N27, N26, N25, N24, N23}), .CI(1'b0), .SUM(f_reg)
         );
  DFFRS_X2 \a_reg_reg[2]  ( .D(n146), .CK(clk), .RN(1'b1), .SN(1'b1), .Q(
        a_reg[2]) );
  INV_X1 U73 ( .A(n71), .ZN(n72) );
  INV_X1 U74 ( .A(n73), .ZN(n74) );
  INV_X1 U75 ( .A(n97), .ZN(n116) );
  INV_X1 U76 ( .A(n80), .ZN(n114) );
  AND2_X1 U77 ( .A1(n97), .A2(n96), .ZN(n75) );
  AND2_X1 U78 ( .A1(n80), .A2(n96), .ZN(n76) );
  INV_X1 U79 ( .A(n78), .ZN(n79) );
  INV_X1 U80 ( .A(reset), .ZN(n96) );
  NAND2_X1 U81 ( .A1(valid_in), .A2(n96), .ZN(n97) );
  NAND2_X1 U82 ( .A1(enable_f), .A2(n96), .ZN(n80) );
  AOI22_X1 U83 ( .A1(f_reg[15]), .A2(n114), .B1(f[15]), .B2(n76), .ZN(n81) );
  INV_X1 U84 ( .A(n81), .ZN(n117) );
  AOI22_X1 U85 ( .A1(f_reg[14]), .A2(n114), .B1(f[14]), .B2(n76), .ZN(n82) );
  INV_X1 U86 ( .A(n82), .ZN(n118) );
  AOI22_X1 U87 ( .A1(f_reg[13]), .A2(n114), .B1(f[13]), .B2(n76), .ZN(n83) );
  INV_X1 U88 ( .A(n83), .ZN(n119) );
  AOI22_X1 U89 ( .A1(f_reg[12]), .A2(n114), .B1(f[12]), .B2(n76), .ZN(n84) );
  INV_X1 U90 ( .A(n84), .ZN(n120) );
  AOI22_X1 U91 ( .A1(f_reg[11]), .A2(n114), .B1(f[11]), .B2(n76), .ZN(n85) );
  INV_X1 U92 ( .A(n85), .ZN(n121) );
  AOI22_X1 U93 ( .A1(f_reg[10]), .A2(n114), .B1(f[10]), .B2(n76), .ZN(n86) );
  INV_X1 U94 ( .A(n86), .ZN(n122) );
  AOI22_X1 U95 ( .A1(f_reg[9]), .A2(n114), .B1(f[9]), .B2(n76), .ZN(n87) );
  INV_X1 U96 ( .A(n87), .ZN(n123) );
  AOI22_X1 U97 ( .A1(f_reg[8]), .A2(n114), .B1(f[8]), .B2(n76), .ZN(n88) );
  INV_X1 U98 ( .A(n88), .ZN(n124) );
  AOI22_X1 U99 ( .A1(f_reg[7]), .A2(n114), .B1(f[7]), .B2(n76), .ZN(n89) );
  INV_X1 U100 ( .A(n89), .ZN(n125) );
  AOI22_X1 U101 ( .A1(f_reg[6]), .A2(n114), .B1(f[6]), .B2(n76), .ZN(n90) );
  INV_X1 U102 ( .A(n90), .ZN(n126) );
  AOI22_X1 U103 ( .A1(f_reg[5]), .A2(n114), .B1(f[5]), .B2(n76), .ZN(n91) );
  INV_X1 U104 ( .A(n91), .ZN(n127) );
  AOI22_X1 U105 ( .A1(f_reg[4]), .A2(n114), .B1(f[4]), .B2(n76), .ZN(n92) );
  INV_X1 U106 ( .A(n92), .ZN(n128) );
  AOI22_X1 U107 ( .A1(f_reg[3]), .A2(n114), .B1(f[3]), .B2(n76), .ZN(n93) );
  INV_X1 U108 ( .A(n93), .ZN(n129) );
  AOI22_X1 U109 ( .A1(f_reg[2]), .A2(n114), .B1(f[2]), .B2(n76), .ZN(n94) );
  INV_X1 U110 ( .A(n94), .ZN(n130) );
  AOI22_X1 U111 ( .A1(f_reg[1]), .A2(n114), .B1(f[1]), .B2(n76), .ZN(n95) );
  INV_X1 U112 ( .A(n95), .ZN(n131) );
  AOI22_X1 U113 ( .A1(a[7]), .A2(n116), .B1(a_reg[7]), .B2(n75), .ZN(n98) );
  INV_X1 U114 ( .A(n98), .ZN(n141) );
  AOI22_X1 U115 ( .A1(a[6]), .A2(n116), .B1(a_reg[6]), .B2(n75), .ZN(n99) );
  INV_X1 U116 ( .A(n99), .ZN(n142) );
  AOI22_X1 U117 ( .A1(a[5]), .A2(n116), .B1(n79), .B2(n75), .ZN(n100) );
  INV_X1 U118 ( .A(n100), .ZN(n143) );
  AOI22_X1 U119 ( .A1(a[4]), .A2(n116), .B1(a_reg[4]), .B2(n75), .ZN(n101) );
  INV_X1 U120 ( .A(n101), .ZN(n144) );
  AOI22_X1 U121 ( .A1(a[3]), .A2(n116), .B1(n72), .B2(n75), .ZN(n102) );
  INV_X1 U122 ( .A(n102), .ZN(n145) );
  AOI22_X1 U123 ( .A1(a[2]), .A2(n116), .B1(a_reg[2]), .B2(n75), .ZN(n103) );
  INV_X1 U124 ( .A(n103), .ZN(n146) );
  AOI22_X1 U125 ( .A1(a[1]), .A2(n116), .B1(n74), .B2(n75), .ZN(n104) );
  INV_X1 U126 ( .A(n104), .ZN(n147) );
  AOI22_X1 U127 ( .A1(a[0]), .A2(n116), .B1(a_reg[0]), .B2(n75), .ZN(n105) );
  INV_X1 U128 ( .A(n105), .ZN(n148) );
  AOI22_X1 U129 ( .A1(b[7]), .A2(n116), .B1(b_reg[7]), .B2(n75), .ZN(n106) );
  INV_X1 U130 ( .A(n106), .ZN(n133) );
  AOI22_X1 U131 ( .A1(b[6]), .A2(n116), .B1(b_reg[6]), .B2(n75), .ZN(n107) );
  INV_X1 U132 ( .A(n107), .ZN(n134) );
  AOI22_X1 U133 ( .A1(b[5]), .A2(n116), .B1(b_reg[5]), .B2(n75), .ZN(n108) );
  INV_X1 U134 ( .A(n108), .ZN(n135) );
  AOI22_X1 U135 ( .A1(b[4]), .A2(n116), .B1(b_reg[4]), .B2(n75), .ZN(n109) );
  INV_X1 U136 ( .A(n109), .ZN(n136) );
  AOI22_X1 U137 ( .A1(b[3]), .A2(n116), .B1(b_reg[3]), .B2(n75), .ZN(n110) );
  INV_X1 U138 ( .A(n110), .ZN(n137) );
  AOI22_X1 U139 ( .A1(b[2]), .A2(n116), .B1(b_reg[2]), .B2(n75), .ZN(n111) );
  INV_X1 U140 ( .A(n111), .ZN(n138) );
  AOI22_X1 U141 ( .A1(b[1]), .A2(n116), .B1(b_reg[1]), .B2(n75), .ZN(n112) );
  INV_X1 U142 ( .A(n112), .ZN(n139) );
  AOI22_X1 U143 ( .A1(b[0]), .A2(n116), .B1(b_reg[0]), .B2(n75), .ZN(n113) );
  INV_X1 U144 ( .A(n113), .ZN(n140) );
  AOI22_X1 U145 ( .A1(f_reg[0]), .A2(n114), .B1(f[0]), .B2(n76), .ZN(n115) );
  INV_X1 U146 ( .A(n115), .ZN(n132) );
endmodule

