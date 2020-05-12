module Sch_Lab407ND (
  LED0, F50MHz, JA1, JA2, JA3, seg_P, JB1, JA7, JB2, JB3, JB4, JC1, JB7, JC2, JC3, JC4, BTN0, BTN1, AN, seg, SW
);
  output LED0;
  input F50MHz;
  input JA1;
  input JA2;
  input JA3;
  output seg_P;
  output JB1;
  output JA7;
  output JB2;
  output JB3;
  output JB4;
  input JC1;
  input JB7;
  output JC2;
  output JC3;
  output JC4;
  input BTN0;
  input BTN1;
  output [3 : 0] AN;
  output [6 : 0] seg;
  input [2 : 0] SW;
  wire AN_0_OBUF_4;
  wire AN_1_OBUF_5;
  wire AN_2_OBUF_6;
  wire AN_3_OBUF_7;
  wire BTN0_IBUF_9;
  wire BTN1_IBUF_11;
  wire \DD2/Mcount_cb_tact_cy<10>_rt_14 ;
  wire \DD2/Mcount_cb_tact_cy<11>_rt_16 ;
  wire \DD2/Mcount_cb_tact_cy<12>_rt_18 ;
  wire \DD2/Mcount_cb_tact_cy<13>_rt_20 ;
  wire \DD2/Mcount_cb_tact_cy<14>_rt_22 ;
  wire \DD2/Mcount_cb_tact_cy<1>_rt_24 ;
  wire \DD2/Mcount_cb_tact_cy<2>_rt_26 ;
  wire \DD2/Mcount_cb_tact_cy<3>_rt_28 ;
  wire \DD2/Mcount_cb_tact_cy<4>_rt_30 ;
  wire \DD2/Mcount_cb_tact_cy<5>_rt_32 ;
  wire \DD2/Mcount_cb_tact_cy<6>_rt_34 ;
  wire \DD2/Mcount_cb_tact_cy<7>_rt_36 ;
  wire \DD2/Mcount_cb_tact_cy<8>_rt_38 ;
  wire \DD2/Mcount_cb_tact_cy<9>_rt_40 ;
  wire \DD2/Mcount_cb_tact_xor<15>_rt_42 ;
  wire \DD4/Madd_cbBit_addsub0000_cy[2] ;
  wire \DD4/Madd_cbBit_addsub0000_cy[5] ;
  wire \DD4/Mcount_cb_tact_cy<1>_rt_73 ;
  wire \DD4/Mcount_cb_tact_cy<2>_rt_75 ;
  wire \DD4/Mcount_cb_tact_cy<3>_rt_77 ;
  wire \DD4/Mcount_cb_tact_cy<4>_rt_79 ;
  wire \DD4/Mcount_cb_tact_cy<5>_rt_81 ;
  wire \DD4/Mcount_cb_tact_cy<6>_rt_83 ;
  wire \DD4/Mcount_cb_tact_xor<7>_rt_85 ;
  wire \DD4/S ;
  wire \DD4/S10_95 ;
  wire \DD4/S22_96 ;
  wire \DD4/_load_109 ;
  wire \DD4/_mosi_110 ;
  wire \DD4/_sclk_111 ;
  wire \DD4/_sclk_mux0000 ;
  wire \DD4/cb_tact_or0000 ;
  wire \DD4/ce ;
  wire \DD4/ce20_139 ;
  wire \DD4/ce8_140 ;
  wire \DD4/srMTX_not0001 ;
  wire \DD4/start ;
  wire \DD6/LOAD_inv ;
  wire \DD8/Mcount_cb_1ms_cy<10>_rt_213 ;
  wire \DD8/Mcount_cb_1ms_cy<11>_rt_215 ;
  wire \DD8/Mcount_cb_1ms_cy<12>_rt_217 ;
  wire \DD8/Mcount_cb_1ms_cy<13>_rt_219 ;
  wire \DD8/Mcount_cb_1ms_cy<14>_rt_221 ;
  wire \DD8/Mcount_cb_1ms_cy<1>_rt_223 ;
  wire \DD8/Mcount_cb_1ms_cy<2>_rt_225 ;
  wire \DD8/Mcount_cb_1ms_cy<3>_rt_227 ;
  wire \DD8/Mcount_cb_1ms_cy<4>_rt_229 ;
  wire \DD8/Mcount_cb_1ms_cy<5>_rt_231 ;
  wire \DD8/Mcount_cb_1ms_cy<6>_rt_233 ;
  wire \DD8/Mcount_cb_1ms_cy<7>_rt_235 ;
  wire \DD8/Mcount_cb_1ms_cy<8>_rt_237 ;
  wire \DD8/Mcount_cb_1ms_cy<9>_rt_239 ;
  wire \DD8/Mcount_cb_1ms_xor<15>_rt_241 ;
  wire \DD8/Mmux_dig213_242 ;
  wire \DD8/Mmux_dig214_243 ;
  wire \DD8/Mmux_dig240 ;
  wire \DD8/Mmux_dig2401_245 ;
  wire \DD8/Mmux_dig2402_246 ;
  wire \DD8/Mmux_dig263 ;
  wire \DD8/Mmux_dig2631_248 ;
  wire \DD8/Mmux_dig2632_249 ;
  wire \DD8/Mmux_dig418_250 ;
  wire \DD8/Mmux_dig618_251 ;
  wire \DD8/Mmux_dig814_252 ;
  wire \DD8/Mmux_dig840_253 ;
  wire \DD8/Mmux_dig867_254 ;
  wire \DD8/Mmux_dig898_255 ;
  wire \DD8/Result<0>1 ;
  wire \DD8/Result<1>1 ;
  wire \DD8/ce ;
  wire \DD8/ce17_293 ;
  wire \DD8/ce1ms_294 ;
  wire \DD8/ce37_295 ;
  wire \DD8/ce50_296 ;
  wire \DD8/ce8_297 ;
  wire F50MHz_IBUFG_303;
  wire JA1_IBUF_305;
  wire JA2_IBUF_307;
  wire JA3_IBUF_309;
  wire JB7_IBUF_315;
  wire JC3_OBUF_318;
  wire LED0_OBUF_321;
  wire LOAD;
  wire MISO;
  wire MOSI;
  wire N0;
  wire N1;
  wire N11;
  wire N13;
  wire N15;
  wire N16;
  wire N17;
  wire N18;
  wire N19;
  wire N20;
  wire N21;
  wire N22;
  wire N9;
  wire SCLK;
  wire SCLK1;
  wire SW_0_IBUF_359;
  wire SW_1_IBUF_360;
  wire SW_2_IBUF_361;
  wire clk;
  wire seg_0_OBUF_370;
  wire seg_1_OBUF_371;
  wire seg_2_OBUF_372;
  wire seg_3_OBUF_373;
  wire seg_4_OBUF_374;
  wire seg_5_OBUF_375;
  wire seg_6_OBUF_376;
  wire [14 : 0] \DD2/Mcount_cb_tact_cy ;
  wire [0 : 0] \DD2/Mcount_cb_tact_lut ;
  wire [15 : 0] \DD2/cb_tact ;
  wire [4 : 0] \DD2/ce_st_wg_cy ;
  wire [4 : 0] \DD2/ce_st_wg_lut ;
  wire [6 : 0] \DD4/Mcount_cb_tact_cy ;
  wire [0 : 0] \DD4/Mcount_cb_tact_lut ;
  wire [7 : 0] \DD4/Result ;
  wire [11 : 0] \DD4/_Do ;
  wire [7 : 0] \DD4/cbBit ;
  wire [7 : 0] \DD4/cbBit_mux0000 ;
  wire [7 : 0] \DD4/cb_tact ;
  wire [11 : 0] \DD4/srMRX ;
  wire [11 : 1] \DD4/srMTX ;
  wire [11 : 2] \DD4/srMTX_mux0000 ;
  wire [11 : 0] \DD6/_Do ;
  wire [11 : 0] \DD6/srSRX ;
  wire [11 : 2] \DD6/srSTX ;
  wire [14 : 0] \DD8/Mcount_cb_1ms_cy ;
  wire [0 : 0] \DD8/Mcount_cb_1ms_lut ;
  wire [15 : 0] \DD8/Result ;
  wire [15 : 0] \DD8/cb_1ms ;
  wire [1 : 0] \DD8/cb_dig ;
  wire [3 : 0] \DD8/dig ;
  wire [15 : 0] Result;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_0  (
    .C(clk),
    .D(Result[0]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_1  (
    .C(clk),
    .D(Result[1]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_2  (
    .C(clk),
    .D(Result[2]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_3  (
    .C(clk),
    .D(Result[3]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_4  (
    .C(clk),
    .D(Result[4]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_5  (
    .C(clk),
    .D(Result[5]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_6  (
    .C(clk),
    .D(Result[6]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_7  (
    .C(clk),
    .D(Result[7]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_8  (
    .C(clk),
    .D(Result[8]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_9  (
    .C(clk),
    .D(Result[9]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_10  (
    .C(clk),
    .D(Result[10]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_11  (
    .C(clk),
    .D(Result[11]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_12  (
    .C(clk),
    .D(Result[12]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [12])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_13  (
    .C(clk),
    .D(Result[13]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [13])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_14  (
    .C(clk),
    .D(Result[14]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [14])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD2/cb_tact_15  (
    .C(clk),
    .D(Result[15]),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD2/cb_tact [15])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\DD2/Mcount_cb_tact_lut [0]),
    .O(\DD2/Mcount_cb_tact_cy [0])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<0>  (
    .CI(N0),
    .LI(\DD2/Mcount_cb_tact_lut [0]),
    .O(Result[0])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<1>  (
    .CI(\DD2/Mcount_cb_tact_cy [0]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<1>_rt_24 ),
    .O(\DD2/Mcount_cb_tact_cy [1])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<1>  (
    .CI(\DD2/Mcount_cb_tact_cy [0]),
    .LI(\DD2/Mcount_cb_tact_cy<1>_rt_24 ),
    .O(Result[1])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<2>  (
    .CI(\DD2/Mcount_cb_tact_cy [1]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<2>_rt_26 ),
    .O(\DD2/Mcount_cb_tact_cy [2])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<2>  (
    .CI(\DD2/Mcount_cb_tact_cy [1]),
    .LI(\DD2/Mcount_cb_tact_cy<2>_rt_26 ),
    .O(Result[2])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<3>  (
    .CI(\DD2/Mcount_cb_tact_cy [2]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<3>_rt_28 ),
    .O(\DD2/Mcount_cb_tact_cy [3])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<3>  (
    .CI(\DD2/Mcount_cb_tact_cy [2]),
    .LI(\DD2/Mcount_cb_tact_cy<3>_rt_28 ),
    .O(Result[3])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<4>  (
    .CI(\DD2/Mcount_cb_tact_cy [3]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<4>_rt_30 ),
    .O(\DD2/Mcount_cb_tact_cy [4])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<4>  (
    .CI(\DD2/Mcount_cb_tact_cy [3]),
    .LI(\DD2/Mcount_cb_tact_cy<4>_rt_30 ),
    .O(Result[4])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<5>  (
    .CI(\DD2/Mcount_cb_tact_cy [4]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<5>_rt_32 ),
    .O(\DD2/Mcount_cb_tact_cy [5])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<5>  (
    .CI(\DD2/Mcount_cb_tact_cy [4]),
    .LI(\DD2/Mcount_cb_tact_cy<5>_rt_32 ),
    .O(Result[5])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<6>  (
    .CI(\DD2/Mcount_cb_tact_cy [5]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<6>_rt_34 ),
    .O(\DD2/Mcount_cb_tact_cy [6])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<6>  (
    .CI(\DD2/Mcount_cb_tact_cy [5]),
    .LI(\DD2/Mcount_cb_tact_cy<6>_rt_34 ),
    .O(Result[6])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<7>  (
    .CI(\DD2/Mcount_cb_tact_cy [6]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<7>_rt_36 ),
    .O(\DD2/Mcount_cb_tact_cy [7])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<7>  (
    .CI(\DD2/Mcount_cb_tact_cy [6]),
    .LI(\DD2/Mcount_cb_tact_cy<7>_rt_36 ),
    .O(Result[7])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<8>  (
    .CI(\DD2/Mcount_cb_tact_cy [7]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<8>_rt_38 ),
    .O(\DD2/Mcount_cb_tact_cy [8])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<8>  (
    .CI(\DD2/Mcount_cb_tact_cy [7]),
    .LI(\DD2/Mcount_cb_tact_cy<8>_rt_38 ),
    .O(Result[8])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<9>  (
    .CI(\DD2/Mcount_cb_tact_cy [8]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<9>_rt_40 ),
    .O(\DD2/Mcount_cb_tact_cy [9])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<9>  (
    .CI(\DD2/Mcount_cb_tact_cy [8]),
    .LI(\DD2/Mcount_cb_tact_cy<9>_rt_40 ),
    .O(Result[9])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<10>  (
    .CI(\DD2/Mcount_cb_tact_cy [9]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<10>_rt_14 ),
    .O(\DD2/Mcount_cb_tact_cy [10])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<10>  (
    .CI(\DD2/Mcount_cb_tact_cy [9]),
    .LI(\DD2/Mcount_cb_tact_cy<10>_rt_14 ),
    .O(Result[10])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<11>  (
    .CI(\DD2/Mcount_cb_tact_cy [10]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<11>_rt_16 ),
    .O(\DD2/Mcount_cb_tact_cy [11])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<11>  (
    .CI(\DD2/Mcount_cb_tact_cy [10]),
    .LI(\DD2/Mcount_cb_tact_cy<11>_rt_16 ),
    .O(Result[11])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<12>  (
    .CI(\DD2/Mcount_cb_tact_cy [11]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<12>_rt_18 ),
    .O(\DD2/Mcount_cb_tact_cy [12])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<12>  (
    .CI(\DD2/Mcount_cb_tact_cy [11]),
    .LI(\DD2/Mcount_cb_tact_cy<12>_rt_18 ),
    .O(Result[12])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<13>  (
    .CI(\DD2/Mcount_cb_tact_cy [12]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<13>_rt_20 ),
    .O(\DD2/Mcount_cb_tact_cy [13])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<13>  (
    .CI(\DD2/Mcount_cb_tact_cy [12]),
    .LI(\DD2/Mcount_cb_tact_cy<13>_rt_20 ),
    .O(Result[13])
  );
  MUXCY   \DD2/Mcount_cb_tact_cy<14>  (
    .CI(\DD2/Mcount_cb_tact_cy [13]),
    .DI(N0),
    .S(\DD2/Mcount_cb_tact_cy<14>_rt_22 ),
    .O(\DD2/Mcount_cb_tact_cy [14])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<14>  (
    .CI(\DD2/Mcount_cb_tact_cy [13]),
    .LI(\DD2/Mcount_cb_tact_cy<14>_rt_22 ),
    .O(Result[14])
  );
  XORCY   \DD2/Mcount_cb_tact_xor<15>  (
    .CI(\DD2/Mcount_cb_tact_cy [14]),
    .LI(\DD2/Mcount_cb_tact_xor<15>_rt_42 ),
    .O(Result[15])
  );
  BUFG   DD1 (
    .I(F50MHz_IBUFG_303),
    .O(clk)
  );
  INV   DD9 (
    .I(LOAD),
    .O(LED0_OBUF_321)
  );
  XORCY   \DD4/Mcount_cb_tact_xor<7>  (
    .CI(\DD4/Mcount_cb_tact_cy [6]),
    .LI(\DD4/Mcount_cb_tact_xor<7>_rt_85 ),
    .O(\DD4/Result [7])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<6>  (
    .CI(\DD4/Mcount_cb_tact_cy [5]),
    .LI(\DD4/Mcount_cb_tact_cy<6>_rt_83 ),
    .O(\DD4/Result [6])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<6>  (
    .CI(\DD4/Mcount_cb_tact_cy [5]),
    .DI(N0),
    .S(\DD4/Mcount_cb_tact_cy<6>_rt_83 ),
    .O(\DD4/Mcount_cb_tact_cy [6])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<5>  (
    .CI(\DD4/Mcount_cb_tact_cy [4]),
    .LI(\DD4/Mcount_cb_tact_cy<5>_rt_81 ),
    .O(\DD4/Result [5])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<5>  (
    .CI(\DD4/Mcount_cb_tact_cy [4]),
    .DI(N0),
    .S(\DD4/Mcount_cb_tact_cy<5>_rt_81 ),
    .O(\DD4/Mcount_cb_tact_cy [5])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<4>  (
    .CI(\DD4/Mcount_cb_tact_cy [3]),
    .LI(\DD4/Mcount_cb_tact_cy<4>_rt_79 ),
    .O(\DD4/Result [4])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<4>  (
    .CI(\DD4/Mcount_cb_tact_cy [3]),
    .DI(N0),
    .S(\DD4/Mcount_cb_tact_cy<4>_rt_79 ),
    .O(\DD4/Mcount_cb_tact_cy [4])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<3>  (
    .CI(\DD4/Mcount_cb_tact_cy [2]),
    .LI(\DD4/Mcount_cb_tact_cy<3>_rt_77 ),
    .O(\DD4/Result [3])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<3>  (
    .CI(\DD4/Mcount_cb_tact_cy [2]),
    .DI(N0),
    .S(\DD4/Mcount_cb_tact_cy<3>_rt_77 ),
    .O(\DD4/Mcount_cb_tact_cy [3])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<2>  (
    .CI(\DD4/Mcount_cb_tact_cy [1]),
    .LI(\DD4/Mcount_cb_tact_cy<2>_rt_75 ),
    .O(\DD4/Result [2])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<2>  (
    .CI(\DD4/Mcount_cb_tact_cy [1]),
    .DI(N0),
    .S(\DD4/Mcount_cb_tact_cy<2>_rt_75 ),
    .O(\DD4/Mcount_cb_tact_cy [2])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<1>  (
    .CI(\DD4/Mcount_cb_tact_cy [0]),
    .LI(\DD4/Mcount_cb_tact_cy<1>_rt_73 ),
    .O(\DD4/Result [1])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<1>  (
    .CI(\DD4/Mcount_cb_tact_cy [0]),
    .DI(N0),
    .S(\DD4/Mcount_cb_tact_cy<1>_rt_73 ),
    .O(\DD4/Mcount_cb_tact_cy [1])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<0>  (
    .CI(N0),
    .LI(\DD4/Mcount_cb_tact_lut [0]),
    .O(\DD4/Result [0])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\DD4/Mcount_cb_tact_lut [0]),
    .O(\DD4/Mcount_cb_tact_cy [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_7  (
    .C(clk),
    .D(\DD4/Result [7]),
    .R(\DD4/cb_tact_or0000 ),
    .Q(\DD4/cb_tact [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_6  (
    .C(clk),
    .D(\DD4/Result [6]),
    .R(\DD4/cb_tact_or0000 ),
    .Q(\DD4/cb_tact [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_5  (
    .C(clk),
    .D(\DD4/Result [5]),
    .R(\DD4/cb_tact_or0000 ),
    .Q(\DD4/cb_tact [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_4  (
    .C(clk),
    .D(\DD4/Result [4]),
    .R(\DD4/cb_tact_or0000 ),
    .Q(\DD4/cb_tact [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_3  (
    .C(clk),
    .D(\DD4/Result [3]),
    .R(\DD4/cb_tact_or0000 ),
    .Q(\DD4/cb_tact [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_2  (
    .C(clk),
    .D(\DD4/Result [2]),
    .R(\DD4/cb_tact_or0000 ),
    .Q(\DD4/cb_tact [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_1  (
    .C(clk),
    .D(\DD4/Result [1]),
    .R(\DD4/cb_tact_or0000 ),
    .Q(\DD4/cb_tact [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_0  (
    .C(clk),
    .D(\DD4/Result [0]),
    .R(\DD4/cb_tact_or0000 ),
    .Q(\DD4/cb_tact [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD4/_Do_11  (
    .C(\DD4/_load_109 ),
    .CLR(BTN0_IBUF_9),
    .D(\DD4/srMRX [11]),
    .Q(\DD4/_Do [11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD4/_Do_10  (
    .C(\DD4/_load_109 ),
    .CLR(BTN0_IBUF_9),
    .D(\DD4/srMRX [10]),
    .Q(\DD4/_Do [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD4/_Do_9  (
    .C(\DD4/_load_109 ),
    .CLR(BTN0_IBUF_9),
    .D(\DD4/srMRX [9]),
    .Q(\DD4/_Do [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD4/_Do_8  (
    .C(\DD4/_load_109 ),
    .CLR(BTN0_IBUF_9),
    .D(\DD4/srMRX [8]),
    .Q(\DD4/_Do [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD4/_Do_7  (
    .C(\DD4/_load_109 ),
    .CLR(BTN0_IBUF_9),
    .D(\DD4/srMRX [7]),
    .Q(\DD4/_Do [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD4/_Do_6  (
    .C(\DD4/_load_109 ),
    .CLR(BTN0_IBUF_9),
    .D(\DD4/srMRX [6]),
    .Q(\DD4/_Do [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD4/_Do_5  (
    .C(\DD4/_load_109 ),
    .CLR(BTN0_IBUF_9),
    .D(\DD4/srMRX [5]),
    .Q(\DD4/_Do [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD4/_Do_4  (
    .C(\DD4/_load_109 ),
    .CLR(BTN0_IBUF_9),
    .D(\DD4/srMRX [4]),
    .Q(\DD4/_Do [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD4/_Do_3  (
    .C(\DD4/_load_109 ),
    .CLR(BTN0_IBUF_9),
    .D(\DD4/srMRX [3]),
    .Q(\DD4/_Do [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD4/_Do_2  (
    .C(\DD4/_load_109 ),
    .CLR(BTN0_IBUF_9),
    .D(\DD4/srMRX [2]),
    .Q(\DD4/_Do [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD4/_Do_1  (
    .C(\DD4/_load_109 ),
    .CLR(BTN0_IBUF_9),
    .D(\DD4/srMRX [1]),
    .Q(\DD4/_Do [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD4/_Do_0  (
    .C(\DD4/_load_109 ),
    .CLR(BTN0_IBUF_9),
    .D(\DD4/srMRX [0]),
    .Q(\DD4/_Do [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/srMRX_11  (
    .C(\DD4/_sclk_111 ),
    .D(\DD4/srMRX [10]),
    .Q(\DD4/srMRX [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/srMRX_10  (
    .C(\DD4/_sclk_111 ),
    .D(\DD4/srMRX [9]),
    .Q(\DD4/srMRX [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/srMRX_9  (
    .C(\DD4/_sclk_111 ),
    .D(\DD4/srMRX [8]),
    .Q(\DD4/srMRX [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/srMRX_8  (
    .C(\DD4/_sclk_111 ),
    .D(\DD4/srMRX [7]),
    .Q(\DD4/srMRX [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/srMRX_7  (
    .C(\DD4/_sclk_111 ),
    .D(\DD4/srMRX [6]),
    .Q(\DD4/srMRX [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/srMRX_6  (
    .C(\DD4/_sclk_111 ),
    .D(\DD4/srMRX [5]),
    .Q(\DD4/srMRX [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/srMRX_5  (
    .C(\DD4/_sclk_111 ),
    .D(\DD4/srMRX [4]),
    .Q(\DD4/srMRX [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/srMRX_4  (
    .C(\DD4/_sclk_111 ),
    .D(\DD4/srMRX [3]),
    .Q(\DD4/srMRX [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/srMRX_3  (
    .C(\DD4/_sclk_111 ),
    .D(\DD4/srMRX [2]),
    .Q(\DD4/srMRX [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/srMRX_2  (
    .C(\DD4/_sclk_111 ),
    .D(\DD4/srMRX [1]),
    .Q(\DD4/srMRX [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/srMRX_1  (
    .C(\DD4/_sclk_111 ),
    .D(\DD4/srMRX [0]),
    .Q(\DD4/srMRX [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/srMRX_0  (
    .C(\DD4/_sclk_111 ),
    .D(MISO),
    .Q(\DD4/srMRX [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD4/_mosi  (
    .C(clk),
    .D(\DD4/srMTX [11]),
    .Q(\DD4/_mosi_110 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/_sclk  (
    .C(clk),
    .D(\DD4/_sclk_mux0000 ),
    .R(\DD4/_load_109 ),
    .Q(\DD4/_sclk_111 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD4/srMTX_11  (
    .C(clk),
    .CE(\DD4/srMTX_not0001 ),
    .D(\DD4/srMTX_mux0000 [11]),
    .Q(\DD4/srMTX [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD4/srMTX_10  (
    .C(clk),
    .CE(\DD4/srMTX_not0001 ),
    .D(\DD4/srMTX_mux0000 [10]),
    .Q(\DD4/srMTX [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD4/srMTX_9  (
    .C(clk),
    .CE(\DD4/srMTX_not0001 ),
    .D(\DD4/srMTX_mux0000 [9]),
    .Q(\DD4/srMTX [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD4/srMTX_8  (
    .C(clk),
    .CE(\DD4/srMTX_not0001 ),
    .D(\DD4/srMTX_mux0000 [8]),
    .Q(\DD4/srMTX [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD4/srMTX_7  (
    .C(clk),
    .CE(\DD4/srMTX_not0001 ),
    .D(\DD4/srMTX_mux0000 [7]),
    .Q(\DD4/srMTX [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD4/srMTX_6  (
    .C(clk),
    .CE(\DD4/srMTX_not0001 ),
    .D(\DD4/srMTX_mux0000 [6]),
    .Q(\DD4/srMTX [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD4/srMTX_5  (
    .C(clk),
    .CE(\DD4/srMTX_not0001 ),
    .D(\DD4/srMTX_mux0000 [5]),
    .Q(\DD4/srMTX [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD4/srMTX_4  (
    .C(clk),
    .CE(\DD4/srMTX_not0001 ),
    .D(\DD4/srMTX_mux0000 [4]),
    .Q(\DD4/srMTX [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD4/srMTX_3  (
    .C(clk),
    .CE(\DD4/srMTX_not0001 ),
    .D(\DD4/srMTX_mux0000 [3]),
    .Q(\DD4/srMTX [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD4/srMTX_2  (
    .C(clk),
    .CE(\DD4/srMTX_not0001 ),
    .D(\DD4/srMTX_mux0000 [2]),
    .Q(\DD4/srMTX [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD4/srMTX_1  (
    .C(clk),
    .CE(\DD4/srMTX_not0001 ),
    .D(\DD4/_load_109 ),
    .Q(\DD4/srMTX [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cbBit_7  (
    .C(clk),
    .D(\DD4/cbBit_mux0000 [7]),
    .R(\DD4/start ),
    .Q(\DD4/cbBit [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cbBit_6  (
    .C(clk),
    .D(\DD4/cbBit_mux0000 [6]),
    .R(\DD4/start ),
    .Q(\DD4/cbBit [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cbBit_5  (
    .C(clk),
    .D(\DD4/cbBit_mux0000 [5]),
    .R(\DD4/start ),
    .Q(\DD4/cbBit [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cbBit_4  (
    .C(clk),
    .D(\DD4/cbBit_mux0000 [4]),
    .R(\DD4/start ),
    .Q(\DD4/cbBit [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cbBit_3  (
    .C(clk),
    .D(\DD4/cbBit_mux0000 [3]),
    .R(\DD4/start ),
    .Q(\DD4/cbBit [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cbBit_2  (
    .C(clk),
    .D(\DD4/cbBit_mux0000 [2]),
    .R(\DD4/start ),
    .Q(\DD4/cbBit [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cbBit_1  (
    .C(clk),
    .D(\DD4/cbBit_mux0000 [1]),
    .R(\DD4/start ),
    .Q(\DD4/cbBit [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cbBit_0  (
    .C(clk),
    .D(\DD4/cbBit_mux0000 [0]),
    .R(\DD4/start ),
    .Q(\DD4/cbBit [0])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  \DD4/_load  (
    .C(clk),
    .CE(\DD4/S ),
    .D(N1),
    .R(\DD2/ce_st_wg_cy [4]),
    .Q(\DD4/_load_109 )
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD6/srSTX_11  (
    .C(SCLK),
    .CLR(N0),
    .D(\DD6/srSTX [10]),
    .PRE(LOAD),
    .Q(\DD6/srSTX [11])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD6/srSTX_10  (
    .C(SCLK),
    .CLR(N0),
    .D(\DD6/srSTX [9]),
    .PRE(LOAD),
    .Q(\DD6/srSTX [10])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD6/srSTX_9  (
    .C(SCLK),
    .CLR(N0),
    .D(\DD6/srSTX [8]),
    .PRE(LOAD),
    .Q(\DD6/srSTX [9])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD6/srSTX_8  (
    .C(SCLK),
    .CLR(LOAD),
    .D(\DD6/srSTX [7]),
    .PRE(N0),
    .Q(\DD6/srSTX [8])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD6/srSTX_7  (
    .C(SCLK),
    .CLR(LOAD),
    .D(\DD6/srSTX [6]),
    .PRE(N0),
    .Q(\DD6/srSTX [7])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD6/srSTX_6  (
    .C(SCLK),
    .CLR(N0),
    .D(\DD6/srSTX [5]),
    .PRE(LOAD),
    .Q(\DD6/srSTX [6])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD6/srSTX_5  (
    .C(SCLK),
    .CLR(N0),
    .D(\DD6/srSTX [4]),
    .PRE(LOAD),
    .Q(\DD6/srSTX [5])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD6/srSTX_4  (
    .C(SCLK),
    .CLR(LOAD),
    .D(\DD6/srSTX [3]),
    .PRE(N0),
    .Q(\DD6/srSTX [4])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD6/srSTX_3  (
    .C(SCLK),
    .CLR(N0),
    .D(\DD6/srSTX [2]),
    .PRE(LOAD),
    .Q(\DD6/srSTX [3])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD6/srSTX_2  (
    .C(SCLK),
    .CLR(N0),
    .D(N0),
    .PRE(LOAD),
    .Q(\DD6/srSTX [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD6/_Do_11  (
    .C(LOAD),
    .CLR(BTN0_IBUF_9),
    .D(\DD6/srSRX [11]),
    .Q(\DD6/_Do [11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD6/_Do_10  (
    .C(LOAD),
    .CLR(BTN0_IBUF_9),
    .D(\DD6/srSRX [10]),
    .Q(\DD6/_Do [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD6/_Do_9  (
    .C(LOAD),
    .CLR(BTN0_IBUF_9),
    .D(\DD6/srSRX [9]),
    .Q(\DD6/_Do [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD6/_Do_8  (
    .C(LOAD),
    .CLR(BTN0_IBUF_9),
    .D(\DD6/srSRX [8]),
    .Q(\DD6/_Do [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD6/_Do_7  (
    .C(LOAD),
    .CLR(BTN0_IBUF_9),
    .D(\DD6/srSRX [7]),
    .Q(\DD6/_Do [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD6/_Do_6  (
    .C(LOAD),
    .CLR(BTN0_IBUF_9),
    .D(\DD6/srSRX [6]),
    .Q(\DD6/_Do [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD6/_Do_5  (
    .C(LOAD),
    .CLR(BTN0_IBUF_9),
    .D(\DD6/srSRX [5]),
    .Q(\DD6/_Do [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD6/_Do_4  (
    .C(LOAD),
    .CLR(BTN0_IBUF_9),
    .D(\DD6/srSRX [4]),
    .Q(\DD6/_Do [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD6/_Do_3  (
    .C(LOAD),
    .CLR(BTN0_IBUF_9),
    .D(\DD6/srSRX [3]),
    .Q(\DD6/_Do [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD6/_Do_2  (
    .C(LOAD),
    .CLR(BTN0_IBUF_9),
    .D(\DD6/srSRX [2]),
    .Q(\DD6/_Do [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD6/_Do_1  (
    .C(LOAD),
    .CLR(BTN0_IBUF_9),
    .D(\DD6/srSRX [1]),
    .Q(\DD6/_Do [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD6/_Do_0  (
    .C(LOAD),
    .CLR(BTN0_IBUF_9),
    .D(\DD6/srSRX [0]),
    .Q(\DD6/_Do [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD6/srSRX_11  (
    .C(SCLK),
    .CE(\DD6/LOAD_inv ),
    .D(\DD6/srSRX [10]),
    .Q(\DD6/srSRX [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD6/srSRX_10  (
    .C(SCLK),
    .CE(\DD6/LOAD_inv ),
    .D(\DD6/srSRX [9]),
    .Q(\DD6/srSRX [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD6/srSRX_9  (
    .C(SCLK),
    .CE(\DD6/LOAD_inv ),
    .D(\DD6/srSRX [8]),
    .Q(\DD6/srSRX [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD6/srSRX_8  (
    .C(SCLK),
    .CE(\DD6/LOAD_inv ),
    .D(\DD6/srSRX [7]),
    .Q(\DD6/srSRX [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD6/srSRX_7  (
    .C(SCLK),
    .CE(\DD6/LOAD_inv ),
    .D(\DD6/srSRX [6]),
    .Q(\DD6/srSRX [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD6/srSRX_6  (
    .C(SCLK),
    .CE(\DD6/LOAD_inv ),
    .D(\DD6/srSRX [5]),
    .Q(\DD6/srSRX [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD6/srSRX_5  (
    .C(SCLK),
    .CE(\DD6/LOAD_inv ),
    .D(\DD6/srSRX [4]),
    .Q(\DD6/srSRX [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD6/srSRX_4  (
    .C(SCLK),
    .CE(\DD6/LOAD_inv ),
    .D(\DD6/srSRX [3]),
    .Q(\DD6/srSRX [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD6/srSRX_3  (
    .C(SCLK),
    .CE(\DD6/LOAD_inv ),
    .D(\DD6/srSRX [2]),
    .Q(\DD6/srSRX [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD6/srSRX_2  (
    .C(SCLK),
    .CE(\DD6/LOAD_inv ),
    .D(\DD6/srSRX [1]),
    .Q(\DD6/srSRX [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD6/srSRX_1  (
    .C(SCLK),
    .CE(\DD6/LOAD_inv ),
    .D(\DD6/srSRX [0]),
    .Q(\DD6/srSRX [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD6/srSRX_0  (
    .C(SCLK),
    .CE(\DD6/LOAD_inv ),
    .D(MOSI),
    .Q(\DD6/srSRX [0])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<15>  (
    .CI(\DD8/Mcount_cb_1ms_cy [14]),
    .LI(\DD8/Mcount_cb_1ms_xor<15>_rt_241 ),
    .O(\DD8/Result [15])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<14>  (
    .CI(\DD8/Mcount_cb_1ms_cy [13]),
    .LI(\DD8/Mcount_cb_1ms_cy<14>_rt_221 ),
    .O(\DD8/Result [14])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<14>  (
    .CI(\DD8/Mcount_cb_1ms_cy [13]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<14>_rt_221 ),
    .O(\DD8/Mcount_cb_1ms_cy [14])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<13>  (
    .CI(\DD8/Mcount_cb_1ms_cy [12]),
    .LI(\DD8/Mcount_cb_1ms_cy<13>_rt_219 ),
    .O(\DD8/Result [13])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<13>  (
    .CI(\DD8/Mcount_cb_1ms_cy [12]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<13>_rt_219 ),
    .O(\DD8/Mcount_cb_1ms_cy [13])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<12>  (
    .CI(\DD8/Mcount_cb_1ms_cy [11]),
    .LI(\DD8/Mcount_cb_1ms_cy<12>_rt_217 ),
    .O(\DD8/Result [12])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<12>  (
    .CI(\DD8/Mcount_cb_1ms_cy [11]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<12>_rt_217 ),
    .O(\DD8/Mcount_cb_1ms_cy [12])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<11>  (
    .CI(\DD8/Mcount_cb_1ms_cy [10]),
    .LI(\DD8/Mcount_cb_1ms_cy<11>_rt_215 ),
    .O(\DD8/Result [11])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<11>  (
    .CI(\DD8/Mcount_cb_1ms_cy [10]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<11>_rt_215 ),
    .O(\DD8/Mcount_cb_1ms_cy [11])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<10>  (
    .CI(\DD8/Mcount_cb_1ms_cy [9]),
    .LI(\DD8/Mcount_cb_1ms_cy<10>_rt_213 ),
    .O(\DD8/Result [10])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<10>  (
    .CI(\DD8/Mcount_cb_1ms_cy [9]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<10>_rt_213 ),
    .O(\DD8/Mcount_cb_1ms_cy [10])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<9>  (
    .CI(\DD8/Mcount_cb_1ms_cy [8]),
    .LI(\DD8/Mcount_cb_1ms_cy<9>_rt_239 ),
    .O(\DD8/Result [9])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<9>  (
    .CI(\DD8/Mcount_cb_1ms_cy [8]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<9>_rt_239 ),
    .O(\DD8/Mcount_cb_1ms_cy [9])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<8>  (
    .CI(\DD8/Mcount_cb_1ms_cy [7]),
    .LI(\DD8/Mcount_cb_1ms_cy<8>_rt_237 ),
    .O(\DD8/Result [8])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<8>  (
    .CI(\DD8/Mcount_cb_1ms_cy [7]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<8>_rt_237 ),
    .O(\DD8/Mcount_cb_1ms_cy [8])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<7>  (
    .CI(\DD8/Mcount_cb_1ms_cy [6]),
    .LI(\DD8/Mcount_cb_1ms_cy<7>_rt_235 ),
    .O(\DD8/Result [7])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<7>  (
    .CI(\DD8/Mcount_cb_1ms_cy [6]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<7>_rt_235 ),
    .O(\DD8/Mcount_cb_1ms_cy [7])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<6>  (
    .CI(\DD8/Mcount_cb_1ms_cy [5]),
    .LI(\DD8/Mcount_cb_1ms_cy<6>_rt_233 ),
    .O(\DD8/Result [6])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<6>  (
    .CI(\DD8/Mcount_cb_1ms_cy [5]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<6>_rt_233 ),
    .O(\DD8/Mcount_cb_1ms_cy [6])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<5>  (
    .CI(\DD8/Mcount_cb_1ms_cy [4]),
    .LI(\DD8/Mcount_cb_1ms_cy<5>_rt_231 ),
    .O(\DD8/Result [5])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<5>  (
    .CI(\DD8/Mcount_cb_1ms_cy [4]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<5>_rt_231 ),
    .O(\DD8/Mcount_cb_1ms_cy [5])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<4>  (
    .CI(\DD8/Mcount_cb_1ms_cy [3]),
    .LI(\DD8/Mcount_cb_1ms_cy<4>_rt_229 ),
    .O(\DD8/Result [4])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<4>  (
    .CI(\DD8/Mcount_cb_1ms_cy [3]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<4>_rt_229 ),
    .O(\DD8/Mcount_cb_1ms_cy [4])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<3>  (
    .CI(\DD8/Mcount_cb_1ms_cy [2]),
    .LI(\DD8/Mcount_cb_1ms_cy<3>_rt_227 ),
    .O(\DD8/Result [3])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<3>  (
    .CI(\DD8/Mcount_cb_1ms_cy [2]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<3>_rt_227 ),
    .O(\DD8/Mcount_cb_1ms_cy [3])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<2>  (
    .CI(\DD8/Mcount_cb_1ms_cy [1]),
    .LI(\DD8/Mcount_cb_1ms_cy<2>_rt_225 ),
    .O(\DD8/Result [2])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<2>  (
    .CI(\DD8/Mcount_cb_1ms_cy [1]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<2>_rt_225 ),
    .O(\DD8/Mcount_cb_1ms_cy [2])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<1>  (
    .CI(\DD8/Mcount_cb_1ms_cy [0]),
    .LI(\DD8/Mcount_cb_1ms_cy<1>_rt_223 ),
    .O(\DD8/Result [1])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<1>  (
    .CI(\DD8/Mcount_cb_1ms_cy [0]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<1>_rt_223 ),
    .O(\DD8/Mcount_cb_1ms_cy [1])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<0>  (
    .CI(N0),
    .LI(\DD8/Mcount_cb_1ms_lut [0]),
    .O(\DD8/Result [0])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\DD8/Mcount_cb_1ms_lut [0]),
    .O(\DD8/Mcount_cb_1ms_cy [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD8/cb_dig_1  (
    .C(clk),
    .CE(\DD8/ce ),
    .D(\DD8/Result<1>1 ),
    .Q(\DD8/cb_dig [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD8/cb_dig_0  (
    .C(clk),
    .CE(\DD8/ce ),
    .D(\DD8/Result<0>1 ),
    .Q(\DD8/cb_dig [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_14  (
    .C(clk),
    .D(\DD8/Result [14]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [14])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_13  (
    .C(clk),
    .D(\DD8/Result [13]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [13])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_15  (
    .C(clk),
    .D(\DD8/Result [15]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [15])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_12  (
    .C(clk),
    .D(\DD8/Result [12]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [12])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_11  (
    .C(clk),
    .D(\DD8/Result [11]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_9  (
    .C(clk),
    .D(\DD8/Result [9]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_8  (
    .C(clk),
    .D(\DD8/Result [8]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_10  (
    .C(clk),
    .D(\DD8/Result [10]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_7  (
    .C(clk),
    .D(\DD8/Result [7]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_6  (
    .C(clk),
    .D(\DD8/Result [6]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_4  (
    .C(clk),
    .D(\DD8/Result [4]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_3  (
    .C(clk),
    .D(\DD8/Result [3]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_5  (
    .C(clk),
    .D(\DD8/Result [5]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_1  (
    .C(clk),
    .D(\DD8/Result [1]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [1])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_0  (
    .C(clk),
    .D(\DD8/Result [0]),
    .S(\DD8/ce ),
    .Q(\DD8/cb_1ms [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD8/cb_1ms_2  (
    .C(clk),
    .D(\DD8/Result [2]),
    .R(\DD8/ce ),
    .Q(\DD8/cb_1ms [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD8/ce1ms  (
    .C(clk),
    .D(\DD8/ce ),
    .Q(\DD8/ce1ms_294 )
  );
  MUXCY   \DD2/ce_st_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\DD2/ce_st_wg_lut [0]),
    .O(\DD2/ce_st_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \DD2/ce_st_wg_lut<1>  (
    .I0(\DD2/cb_tact [6]),
    .I1(\DD2/cb_tact [5]),
    .I2(\DD2/cb_tact [3]),
    .I3(\DD2/cb_tact [7]),
    .O(\DD2/ce_st_wg_lut [1])
  );
  MUXCY   \DD2/ce_st_wg_cy<1>  (
    .CI(\DD2/ce_st_wg_cy [0]),
    .DI(N0),
    .S(\DD2/ce_st_wg_lut [1]),
    .O(\DD2/ce_st_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \DD2/ce_st_wg_lut<2>  (
    .I0(\DD2/cb_tact [9]),
    .I1(\DD2/cb_tact [10]),
    .I2(\DD2/cb_tact [2]),
    .I3(\DD2/cb_tact [8]),
    .O(\DD2/ce_st_wg_lut [2])
  );
  MUXCY   \DD2/ce_st_wg_cy<2>  (
    .CI(\DD2/ce_st_wg_cy [1]),
    .DI(N0),
    .S(\DD2/ce_st_wg_lut [2]),
    .O(\DD2/ce_st_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \DD2/ce_st_wg_lut<3>  (
    .I0(\DD2/cb_tact [0]),
    .I1(\DD2/cb_tact [11]),
    .I2(\DD2/cb_tact [12]),
    .I3(\DD2/cb_tact [13]),
    .O(\DD2/ce_st_wg_lut [3])
  );
  MUXCY   \DD2/ce_st_wg_cy<3>  (
    .CI(\DD2/ce_st_wg_cy [2]),
    .DI(N0),
    .S(\DD2/ce_st_wg_lut [3]),
    .O(\DD2/ce_st_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \DD2/ce_st_wg_lut<4>  (
    .I0(BTN1_IBUF_11),
    .I1(\DD2/cb_tact [1]),
    .I2(\DD2/cb_tact [15]),
    .I3(\DD2/cb_tact [14]),
    .O(\DD2/ce_st_wg_lut [4])
  );
  MUXCY   \DD2/ce_st_wg_cy<4>  (
    .CI(\DD2/ce_st_wg_cy [3]),
    .DI(N0),
    .S(\DD2/ce_st_wg_lut [4]),
    .O(\DD2/ce_st_wg_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD5_1/Q1  (
    .I0(SW_2_IBUF_361),
    .I1(JA2_IBUF_307),
    .I2(\DD4/_sclk_111 ),
    .O(SCLK1)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD5_4/Q1  (
    .I0(SW_2_IBUF_361),
    .I1(JB7_IBUF_315),
    .I2(\DD6/srSTX [11]),
    .O(MISO)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD5_2/Q1  (
    .I0(SW_2_IBUF_361),
    .I1(JA3_IBUF_309),
    .I2(\DD4/_mosi_110 ),
    .O(MOSI)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \DD8/seg_P1  (
    .I0(\DD8/cb_dig [0]),
    .I1(\DD8/cb_dig [1]),
    .O(AN_0_OBUF_4)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \DD8/Mdecod_AN31  (
    .I0(\DD8/cb_dig [0]),
    .I1(\DD8/cb_dig [1]),
    .O(AN_3_OBUF_7)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DD8/Mdecod_AN21  (
    .I0(\DD8/cb_dig [1]),
    .I1(\DD8/cb_dig [0]),
    .O(AN_2_OBUF_6)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DD8/Mdecod_AN11  (
    .I0(\DD8/cb_dig [0]),
    .I1(\DD8/cb_dig [1]),
    .O(AN_1_OBUF_5)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \DD4/srMTX_mux0000<9>1  (
    .I0(\DD4/_load_109 ),
    .I1(\DD4/srMTX [8]),
    .O(\DD4/srMTX_mux0000 [9])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \DD4/srMTX_mux0000<8>1  (
    .I0(\DD4/_load_109 ),
    .I1(\DD4/srMTX [7]),
    .O(\DD4/srMTX_mux0000 [8])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \DD4/srMTX_mux0000<7>1  (
    .I0(\DD4/_load_109 ),
    .I1(\DD4/srMTX [6]),
    .O(\DD4/srMTX_mux0000 [7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \DD4/srMTX_mux0000<6>1  (
    .I0(\DD4/_load_109 ),
    .I1(\DD4/srMTX [5]),
    .O(\DD4/srMTX_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \DD4/srMTX_mux0000<5>1  (
    .I0(\DD4/_load_109 ),
    .I1(\DD4/srMTX [4]),
    .O(\DD4/srMTX_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \DD4/srMTX_mux0000<4>1  (
    .I0(\DD4/_load_109 ),
    .I1(\DD4/srMTX [3]),
    .O(\DD4/srMTX_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \DD4/srMTX_mux0000<3>1  (
    .I0(\DD4/_load_109 ),
    .I1(\DD4/srMTX [2]),
    .O(\DD4/srMTX_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \DD4/srMTX_mux0000<2>1  (
    .I0(\DD4/_load_109 ),
    .I1(\DD4/srMTX [1]),
    .O(\DD4/srMTX_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \DD4/srMTX_mux0000<11>1  (
    .I0(\DD4/_load_109 ),
    .I1(\DD4/srMTX [10]),
    .O(\DD4/srMTX_mux0000 [11])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \DD4/srMTX_mux0000<10>1  (
    .I0(\DD4/_load_109 ),
    .I1(\DD4/srMTX [9]),
    .O(\DD4/srMTX_mux0000 [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \DD8/Mcount_cb_dig_xor<1>11  (
    .I0(\DD8/cb_dig [0]),
    .I1(\DD8/cb_dig [1]),
    .O(\DD8/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD5_0/Q1  (
    .I0(SW_2_IBUF_361),
    .I1(JA1_IBUF_305),
    .I2(\DD4/_load_109 ),
    .O(LOAD)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \DD8/ce17  (
    .I0(\DD8/cb_1ms [8]),
    .I1(\DD8/cb_1ms [11]),
    .I2(\DD8/cb_1ms [9]),
    .I3(\DD8/cb_1ms [10]),
    .O(\DD8/ce17_293 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \DD8/ce37  (
    .I0(\DD8/cb_1ms [6]),
    .I1(\DD8/cb_1ms [7]),
    .I2(\DD8/cb_1ms [4]),
    .I3(\DD8/cb_1ms [5]),
    .O(\DD8/ce37_295 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \DD8/ce50  (
    .I0(\DD8/cb_1ms [3]),
    .I1(\DD8/cb_1ms [2]),
    .I2(\DD8/cb_1ms [1]),
    .I3(\DD8/cb_1ms [0]),
    .O(\DD8/ce50_296 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \DD8/ce64  (
    .I0(\DD8/ce8_297 ),
    .I1(\DD8/ce17_293 ),
    .I2(\DD8/ce37_295 ),
    .I3(\DD8/ce50_296 ),
    .O(\DD8/ce )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \DD4/S10  (
    .I0(\DD4/cbBit [3]),
    .I1(\DD4/cbBit [4]),
    .I2(\DD4/cbBit [1]),
    .I3(\DD4/cbBit [2]),
    .O(\DD4/S10_95 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \DD4/cbBit_mux0000<4>1  (
    .I0(\DD4/cbBit [4]),
    .I1(\DD4/cbBit [3]),
    .I2(\DD4/Madd_cbBit_addsub0000_cy[2] ),
    .I3(JC3_OBUF_318),
    .O(\DD4/cbBit_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \DD4/cbBit_mux0000<2>1  (
    .I0(\DD4/cbBit [2]),
    .I1(\DD4/cbBit [1]),
    .I2(\DD4/cbBit [0]),
    .I3(JC3_OBUF_318),
    .O(\DD4/cbBit_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD4/ce21  (
    .I0(N19),
    .I1(\DD4/ce20_139 ),
    .O(\DD4/ce )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \DD4/cbBit_mux0000<7>1  (
    .I0(\DD4/cbBit [7]),
    .I1(\DD4/cbBit [6]),
    .I2(N22),
    .I3(JC3_OBUF_318),
    .O(\DD4/cbBit_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h445C ))
  \DD8/Mrom_seg41  (
    .I0(\DD8/dig [3]),
    .I1(\DD8/dig [0]),
    .I2(\DD8/dig [2]),
    .I3(\DD8/dig [1]),
    .O(seg_4_OBUF_374)
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  \DD8/Mrom_seg21  (
    .I0(\DD8/dig [1]),
    .I1(\DD8/dig [3]),
    .I2(\DD8/dig [2]),
    .I3(\DD8/dig [0]),
    .O(seg_2_OBUF_372)
  );
  LUT4 #(
    .INIT ( 16'h2141 ))
  \DD8/Mrom_seg61  (
    .I0(\DD8/dig [1]),
    .I1(\DD8/dig [3]),
    .I2(\DD8/dig [2]),
    .I3(\DD8/dig [0]),
    .O(seg_6_OBUF_376)
  );
  LUT4 #(
    .INIT ( 16'h6032 ))
  \DD8/Mrom_seg51  (
    .I0(\DD8/dig [1]),
    .I1(\DD8/dig [3]),
    .I2(\DD8/dig [0]),
    .I3(\DD8/dig [2]),
    .O(seg_5_OBUF_375)
  );
  LUT4 #(
    .INIT ( 16'hE448 ))
  \DD8/Mrom_seg111  (
    .I0(\DD8/dig [0]),
    .I1(\DD8/dig [2]),
    .I2(\DD8/dig [1]),
    .I3(\DD8/dig [3]),
    .O(seg_1_OBUF_371)
  );
  LUT4 #(
    .INIT ( 16'hA118 ))
  \DD8/Mrom_seg31  (
    .I0(\DD8/dig [1]),
    .I1(\DD8/dig [3]),
    .I2(\DD8/dig [0]),
    .I3(\DD8/dig [2]),
    .O(seg_3_OBUF_373)
  );
  LUT4 #(
    .INIT ( 16'h2812 ))
  \DD8/Mrom_seg11  (
    .I0(\DD8/dig [0]),
    .I1(\DD8/dig [1]),
    .I2(\DD8/dig [2]),
    .I3(\DD8/dig [3]),
    .O(seg_0_OBUF_370)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \DD8/Mmux_dig213  (
    .I0(SW_0_IBUF_359),
    .I1(\DD8/cb_dig [1]),
    .I2(\DD8/cb_dig [0]),
    .O(\DD8/Mmux_dig213_242 )
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \DD8/Mmux_dig2100  (
    .I0(\DD8/Mmux_dig263 ),
    .I1(\DD8/cb_dig [0]),
    .I2(\DD8/Mmux_dig240 ),
    .I3(\DD8/Mmux_dig214_243 ),
    .O(\DD8/dig [0])
  );
  LUT4 #(
    .INIT ( 16'hEA62 ))
  \DD8/Mmux_dig840  (
    .I0(SW_1_IBUF_360),
    .I1(SW_0_IBUF_359),
    .I2(\DD4/_Do [11]),
    .I3(\DD6/_Do [11]),
    .O(\DD8/Mmux_dig840_253 )
  );
  LUT4 #(
    .INIT ( 16'hEA62 ))
  \DD8/Mmux_dig867  (
    .I0(SW_1_IBUF_360),
    .I1(SW_0_IBUF_359),
    .I2(\DD4/_Do [3]),
    .I3(\DD6/_Do [3]),
    .O(\DD8/Mmux_dig867_254 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \DD8/Mmux_dig898  (
    .I0(\DD8/cb_dig [1]),
    .I1(\DD8/Mmux_dig867_254 ),
    .I2(\DD8/cb_dig [0]),
    .I3(\DD8/Mmux_dig840_253 ),
    .O(\DD8/Mmux_dig898_255 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \DD8/Mmux_dig8108  (
    .I0(\DD8/Mmux_dig814_252 ),
    .I1(\DD8/Mmux_dig898_255 ),
    .O(\DD8/dig [3])
  );
  LUT4 #(
    .INIT ( 16'hEA62 ))
  \DD8/Mmux_dig618  (
    .I0(SW_1_IBUF_360),
    .I1(SW_0_IBUF_359),
    .I2(\DD4/_Do [6]),
    .I3(\DD6/_Do [6]),
    .O(\DD8/Mmux_dig618_251 )
  );
  LUT4 #(
    .INIT ( 16'hEA62 ))
  \DD8/Mmux_dig418  (
    .I0(SW_1_IBUF_360),
    .I1(SW_0_IBUF_359),
    .I2(\DD4/_Do [5]),
    .I3(\DD6/_Do [5]),
    .O(\DD8/Mmux_dig418_250 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD4/start1  (
    .I0(\DD4/_load_109 ),
    .I1(\DD2/ce_st_wg_cy [4]),
    .O(\DD4/start )
  );
  IBUFG   F50MHz_IBUFG (
    .I(F50MHz),
    .O(F50MHz_IBUFG_303)
  );
  IBUF   JA1_IBUF (
    .I(JA1),
    .O(JA1_IBUF_305)
  );
  IBUF   JA2_IBUF (
    .I(JA2),
    .O(JA2_IBUF_307)
  );
  IBUF   JA3_IBUF (
    .I(JA3),
    .O(JA3_IBUF_309)
  );
  IBUF   JB7_IBUF (
    .I(JB7),
    .O(JB7_IBUF_315)
  );
  IBUF   BTN0_IBUF (
    .I(BTN0),
    .O(BTN0_IBUF_9)
  );
  IBUF   BTN1_IBUF (
    .I(BTN1),
    .O(BTN1_IBUF_11)
  );
  IBUF   SW_2_IBUF (
    .I(SW[2]),
    .O(SW_2_IBUF_361)
  );
  IBUF   SW_1_IBUF (
    .I(SW[1]),
    .O(SW_1_IBUF_360)
  );
  IBUF   SW_0_IBUF (
    .I(SW[0]),
    .O(SW_0_IBUF_359)
  );
  OBUF   LED0_OBUF (
    .I(LED0_OBUF_321),
    .O(LED0)
  );
  OBUF   seg_P_OBUF (
    .I(AN_0_OBUF_4),
    .O(seg_P)
  );
  OBUF   JB1_OBUF (
    .I(\DD4/_load_109 ),
    .O(JB1)
  );
  OBUF   JA7_OBUF (
    .I(\DD6/srSTX [11]),
    .O(JA7)
  );
  OBUF   JB2_OBUF (
    .I(\DD4/_sclk_111 ),
    .O(JB2)
  );
  OBUF   JB3_OBUF (
    .I(\DD4/_mosi_110 ),
    .O(JB3)
  );
  OBUF   JC2_OBUF (
    .I(\DD2/ce_st_wg_cy [4]),
    .O(JC2)
  );
  OBUF   JC3_OBUF (
    .I(JC3_OBUF_318),
    .O(JC3)
  );
  OBUF   JC4_OBUF (
    .I(\DD8/ce1ms_294 ),
    .O(JC4)
  );
  OBUF   AN_3_OBUF (
    .I(AN_3_OBUF_7),
    .O(AN[3])
  );
  OBUF   AN_2_OBUF (
    .I(AN_2_OBUF_6),
    .O(AN[2])
  );
  OBUF   AN_1_OBUF (
    .I(AN_1_OBUF_5),
    .O(AN[1])
  );
  OBUF   AN_0_OBUF (
    .I(AN_0_OBUF_4),
    .O(AN[0])
  );
  OBUF   seg_6_OBUF (
    .I(seg_6_OBUF_376),
    .O(seg[6])
  );
  OBUF   seg_5_OBUF (
    .I(seg_5_OBUF_375),
    .O(seg[5])
  );
  OBUF   seg_4_OBUF (
    .I(seg_4_OBUF_374),
    .O(seg[4])
  );
  OBUF   seg_3_OBUF (
    .I(seg_3_OBUF_373),
    .O(seg[3])
  );
  OBUF   seg_2_OBUF (
    .I(seg_2_OBUF_372),
    .O(seg[2])
  );
  OBUF   seg_1_OBUF (
    .I(seg_1_OBUF_371),
    .O(seg[1])
  );
  OBUF   seg_0_OBUF (
    .I(seg_0_OBUF_370),
    .O(seg[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<1>_rt  (
    .I0(\DD2/cb_tact [1]),
    .O(\DD2/Mcount_cb_tact_cy<1>_rt_24 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<2>_rt  (
    .I0(\DD2/cb_tact [2]),
    .O(\DD2/Mcount_cb_tact_cy<2>_rt_26 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<3>_rt  (
    .I0(\DD2/cb_tact [3]),
    .O(\DD2/Mcount_cb_tact_cy<3>_rt_28 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<4>_rt  (
    .I0(\DD2/cb_tact [4]),
    .O(\DD2/Mcount_cb_tact_cy<4>_rt_30 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<5>_rt  (
    .I0(\DD2/cb_tact [5]),
    .O(\DD2/Mcount_cb_tact_cy<5>_rt_32 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<6>_rt  (
    .I0(\DD2/cb_tact [6]),
    .O(\DD2/Mcount_cb_tact_cy<6>_rt_34 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<7>_rt  (
    .I0(\DD2/cb_tact [7]),
    .O(\DD2/Mcount_cb_tact_cy<7>_rt_36 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<8>_rt  (
    .I0(\DD2/cb_tact [8]),
    .O(\DD2/Mcount_cb_tact_cy<8>_rt_38 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<9>_rt  (
    .I0(\DD2/cb_tact [9]),
    .O(\DD2/Mcount_cb_tact_cy<9>_rt_40 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<10>_rt  (
    .I0(\DD2/cb_tact [10]),
    .O(\DD2/Mcount_cb_tact_cy<10>_rt_14 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<11>_rt  (
    .I0(\DD2/cb_tact [11]),
    .O(\DD2/Mcount_cb_tact_cy<11>_rt_16 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<12>_rt  (
    .I0(\DD2/cb_tact [12]),
    .O(\DD2/Mcount_cb_tact_cy<12>_rt_18 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<13>_rt  (
    .I0(\DD2/cb_tact [13]),
    .O(\DD2/Mcount_cb_tact_cy<13>_rt_20 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_cy<14>_rt  (
    .I0(\DD2/cb_tact [14]),
    .O(\DD2/Mcount_cb_tact_cy<14>_rt_22 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_cy<6>_rt  (
    .I0(\DD4/cb_tact [6]),
    .O(\DD4/Mcount_cb_tact_cy<6>_rt_83 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_cy<5>_rt  (
    .I0(\DD4/cb_tact [5]),
    .O(\DD4/Mcount_cb_tact_cy<5>_rt_81 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_cy<4>_rt  (
    .I0(\DD4/cb_tact [4]),
    .O(\DD4/Mcount_cb_tact_cy<4>_rt_79 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_cy<3>_rt  (
    .I0(\DD4/cb_tact [3]),
    .O(\DD4/Mcount_cb_tact_cy<3>_rt_77 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_cy<2>_rt  (
    .I0(\DD4/cb_tact [2]),
    .O(\DD4/Mcount_cb_tact_cy<2>_rt_75 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_cy<1>_rt  (
    .I0(\DD4/cb_tact [1]),
    .O(\DD4/Mcount_cb_tact_cy<1>_rt_73 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<14>_rt  (
    .I0(\DD8/cb_1ms [14]),
    .O(\DD8/Mcount_cb_1ms_cy<14>_rt_221 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<13>_rt  (
    .I0(\DD8/cb_1ms [13]),
    .O(\DD8/Mcount_cb_1ms_cy<13>_rt_219 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<12>_rt  (
    .I0(\DD8/cb_1ms [12]),
    .O(\DD8/Mcount_cb_1ms_cy<12>_rt_217 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<11>_rt  (
    .I0(\DD8/cb_1ms [11]),
    .O(\DD8/Mcount_cb_1ms_cy<11>_rt_215 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<10>_rt  (
    .I0(\DD8/cb_1ms [10]),
    .O(\DD8/Mcount_cb_1ms_cy<10>_rt_213 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<9>_rt  (
    .I0(\DD8/cb_1ms [9]),
    .O(\DD8/Mcount_cb_1ms_cy<9>_rt_239 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<8>_rt  (
    .I0(\DD8/cb_1ms [8]),
    .O(\DD8/Mcount_cb_1ms_cy<8>_rt_237 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<7>_rt  (
    .I0(\DD8/cb_1ms [7]),
    .O(\DD8/Mcount_cb_1ms_cy<7>_rt_235 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<6>_rt  (
    .I0(\DD8/cb_1ms [6]),
    .O(\DD8/Mcount_cb_1ms_cy<6>_rt_233 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<5>_rt  (
    .I0(\DD8/cb_1ms [5]),
    .O(\DD8/Mcount_cb_1ms_cy<5>_rt_231 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<4>_rt  (
    .I0(\DD8/cb_1ms [4]),
    .O(\DD8/Mcount_cb_1ms_cy<4>_rt_229 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<3>_rt  (
    .I0(\DD8/cb_1ms [3]),
    .O(\DD8/Mcount_cb_1ms_cy<3>_rt_227 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<2>_rt  (
    .I0(\DD8/cb_1ms [2]),
    .O(\DD8/Mcount_cb_1ms_cy<2>_rt_225 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<1>_rt  (
    .I0(\DD8/cb_1ms [1]),
    .O(\DD8/Mcount_cb_1ms_cy<1>_rt_223 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD2/Mcount_cb_tact_xor<15>_rt  (
    .I0(\DD2/cb_tact [15]),
    .O(\DD2/Mcount_cb_tact_xor<15>_rt_42 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_xor<7>_rt  (
    .I0(\DD4/cb_tact [7]),
    .O(\DD4/Mcount_cb_tact_xor<7>_rt_85 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_xor<15>_rt  (
    .I0(\DD8/cb_1ms [15]),
    .O(\DD8/Mcount_cb_1ms_xor<15>_rt_241 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \DD4/S35  (
    .I0(\DD4/_sclk_111 ),
    .I1(\DD4/S22_96 ),
    .I2(\DD4/S10_95 ),
    .I3(\DD4/ce ),
    .O(\DD4/S )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \DD4/cbBit_mux0000<3>1  (
    .I0(\DD4/cbBit [3]),
    .I1(\DD4/_sclk_111 ),
    .I2(N21),
    .I3(\DD4/ce ),
    .O(\DD4/cbBit_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \DD4/cbBit_mux0000<1>1  (
    .I0(\DD4/cbBit [1]),
    .I1(\DD4/cbBit [0]),
    .I2(\DD4/_sclk_111 ),
    .I3(\DD4/ce ),
    .O(\DD4/cbBit_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \DD4/cbBit_mux0000<6>1  (
    .I0(\DD4/cbBit [6]),
    .I1(\DD4/_sclk_111 ),
    .I2(\DD4/Madd_cbBit_addsub0000_cy[5] ),
    .I3(\DD4/ce ),
    .O(\DD4/cbBit_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \DD4/cb_tact_or00001  (
    .I0(\DD4/_load_109 ),
    .I1(N20),
    .I2(\DD4/ce8_140 ),
    .I3(\DD2/ce_st_wg_cy [4]),
    .O(\DD4/cb_tact_or0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \DD4/ce_tact1  (
    .I0(\DD4/_sclk_111 ),
    .I1(\DD4/ce20_139 ),
    .I2(\DD4/ce8_140 ),
    .O(JC3_OBUF_318)
  );
  LUT4 #(
    .INIT ( 16'hECCC ))
  \DD4/srMTX_not00011  (
    .I0(\DD4/_sclk_111 ),
    .I1(\DD4/_load_109 ),
    .I2(\DD4/ce20_139 ),
    .I3(\DD4/ce8_140 ),
    .O(\DD4/srMTX_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hE040 ))
  \DD8/Mmux_dig214  (
    .I0(SW_1_IBUF_360),
    .I1(\DD4/_Do [4]),
    .I2(\DD8/Mmux_dig213_242 ),
    .I3(\DD6/_Do [4]),
    .O(\DD8/Mmux_dig214_243 )
  );
  LUT4 #(
    .INIT ( 16'hE040 ))
  \DD8/Mmux_dig814  (
    .I0(SW_1_IBUF_360),
    .I1(\DD4/_Do [7]),
    .I2(\DD8/Mmux_dig213_242 ),
    .I3(\DD6/_Do [7]),
    .O(\DD8/Mmux_dig814_252 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \DD4/_sclk_mux00001  (
    .I0(\DD4/ce8_140 ),
    .I1(\DD4/_sclk_111 ),
    .I2(\DD4/ce20_139 ),
    .O(\DD4/_sclk_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \DD4/cbBit_mux0000<0>1  (
    .I0(\DD4/ce8_140 ),
    .I1(\DD4/cbBit [0]),
    .I2(\DD4/ce20_139 ),
    .I3(\DD4/_sclk_111 ),
    .O(\DD4/cbBit_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \DD4/cbBit_mux0000<5>1  (
    .I0(\DD4/Madd_cbBit_addsub0000_cy[2] ),
    .I1(\DD4/cbBit [5]),
    .I2(\DD4/_sclk_111 ),
    .I3(N13),
    .O(\DD4/cbBit_mux0000 [5])
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \DD6/LOAD_inv1  (
    .I0(SW_2_IBUF_361),
    .I1(\DD4/_load_109 ),
    .I2(JA1_IBUF_305),
    .O(\DD6/LOAD_inv )
  );
  LUT4 #(
    .INIT ( 16'h5D08 ))
  \DD8/Mmux_dig6114  (
    .I0(\DD8/cb_dig [0]),
    .I1(\DD8/Mmux_dig618_251 ),
    .I2(\DD8/cb_dig [1]),
    .I3(N9),
    .O(\DD8/dig [2])
  );
  LUT4 #(
    .INIT ( 16'h5D08 ))
  \DD8/Mmux_dig4114  (
    .I0(\DD8/cb_dig [0]),
    .I1(\DD8/Mmux_dig418_250 ),
    .I2(\DD8/cb_dig [1]),
    .I3(N11),
    .O(\DD8/dig [1])
  );
  BUFG   SCLK_BUFG (
    .I(SCLK1),
    .O(SCLK)
  );
  INV   \DD2/Mcount_cb_tact_lut<0>_INV_0  (
    .I(\DD2/cb_tact [0]),
    .O(\DD2/Mcount_cb_tact_lut [0])
  );
  INV   \DD4/Mcount_cb_tact_lut<0>_INV_0  (
    .I(\DD4/cb_tact [0]),
    .O(\DD4/Mcount_cb_tact_lut [0])
  );
  INV   \DD8/Mcount_cb_1ms_lut<0>_INV_0  (
    .I(\DD8/cb_1ms [0]),
    .O(\DD8/Mcount_cb_1ms_lut [0])
  );
  INV   \DD2/ce_st_wg_lut<0>_INV_0  (
    .I(\DD2/cb_tact [4]),
    .O(\DD2/ce_st_wg_lut [0])
  );
  INV   \DD8/Mcount_cb_dig_xor<0>11_INV_0  (
    .I(\DD8/cb_dig [0]),
    .O(\DD8/Result<0>1 )
  );
  MUXF5   \DD8/Mmux_dig6114_SW0  (
    .I0(N15),
    .I1(N16),
    .S(\DD8/cb_dig [1]),
    .O(N9)
  );
  LUT4 #(
    .INIT ( 16'hEA62 ))
  \DD8/Mmux_dig6114_SW0_F  (
    .I0(SW_1_IBUF_360),
    .I1(SW_0_IBUF_359),
    .I2(\DD4/_Do [2]),
    .I3(\DD6/_Do [2]),
    .O(N15)
  );
  LUT4 #(
    .INIT ( 16'hFD75 ))
  \DD8/Mmux_dig6114_SW0_G  (
    .I0(SW_0_IBUF_359),
    .I1(SW_1_IBUF_360),
    .I2(\DD4/_Do [10]),
    .I3(\DD6/_Do [10]),
    .O(N16)
  );
  MUXF5   \DD8/Mmux_dig4114_SW0  (
    .I0(N17),
    .I1(N18),
    .S(\DD8/cb_dig [1]),
    .O(N11)
  );
  LUT4 #(
    .INIT ( 16'hE545 ))
  \DD8/Mmux_dig4114_SW0_F  (
    .I0(SW_1_IBUF_360),
    .I1(\DD4/_Do [1]),
    .I2(SW_0_IBUF_359),
    .I3(\DD6/_Do [1]),
    .O(N17)
  );
  LUT4 #(
    .INIT ( 16'hFD75 ))
  \DD8/Mmux_dig4114_SW0_G  (
    .I0(SW_0_IBUF_359),
    .I1(SW_1_IBUF_360),
    .I2(\DD4/_Do [9]),
    .I3(\DD6/_Do [9]),
    .O(N18)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \DD8/Mmux_dig2401  (
    .I0(\DD8/cb_dig [1]),
    .I1(\DD6/_Do [8]),
    .I2(SW_0_IBUF_359),
    .O(\DD8/Mmux_dig2401_245 )
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \DD8/Mmux_dig2402  (
    .I0(\DD8/cb_dig [1]),
    .I1(SW_0_IBUF_359),
    .I2(\DD4/_Do [8]),
    .O(\DD8/Mmux_dig2402_246 )
  );
  MUXF5   \DD8/Mmux_dig240_f5  (
    .I0(\DD8/Mmux_dig2402_246 ),
    .I1(\DD8/Mmux_dig2401_245 ),
    .S(SW_1_IBUF_360),
    .O(\DD8/Mmux_dig240 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \DD8/Mmux_dig2631  (
    .I0(\DD6/_Do [0]),
    .I1(\DD8/cb_dig [1]),
    .I2(SW_0_IBUF_359),
    .O(\DD8/Mmux_dig2631_248 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \DD8/Mmux_dig2632  (
    .I0(\DD4/_Do [0]),
    .I1(\DD8/cb_dig [1]),
    .I2(SW_0_IBUF_359),
    .O(\DD8/Mmux_dig2632_249 )
  );
  MUXF5   \DD8/Mmux_dig263_f5  (
    .I0(\DD8/Mmux_dig2632_249 ),
    .I1(\DD8/Mmux_dig2631_248 ),
    .S(SW_1_IBUF_360),
    .O(\DD8/Mmux_dig263 )
  );
  LUT4_L #(
    .INIT ( 16'h0020 ))
  \DD8/ce8  (
    .I0(\DD8/cb_1ms [14]),
    .I1(\DD8/cb_1ms [13]),
    .I2(\DD8/cb_1ms [15]),
    .I3(\DD8/cb_1ms [12]),
    .LO(\DD8/ce8_297 )
  );
  LUT4_L #(
    .INIT ( 16'h0002 ))
  \DD4/S22  (
    .I0(\DD4/cbBit [0]),
    .I1(\DD4/cbBit [7]),
    .I2(\DD4/cbBit [6]),
    .I3(\DD4/cbBit [5]),
    .LO(\DD4/S22_96 )
  );
  LUT4_D #(
    .INIT ( 16'h0020 ))
  \DD4/ce8  (
    .I0(\DD4/cb_tact [5]),
    .I1(\DD4/cb_tact [6]),
    .I2(\DD4/cb_tact [4]),
    .I3(\DD4/cb_tact [7]),
    .LO(N19),
    .O(\DD4/ce8_140 )
  );
  LUT4_D #(
    .INIT ( 16'h0002 ))
  \DD4/ce20  (
    .I0(\DD4/cb_tact [1]),
    .I1(\DD4/cb_tact [0]),
    .I2(\DD4/cb_tact [2]),
    .I3(\DD4/cb_tact [3]),
    .LO(N20),
    .O(\DD4/ce20_139 )
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \DD4/Madd_cbBit_addsub0000_cy<2>11  (
    .I0(\DD4/cbBit [2]),
    .I1(\DD4/cbBit [1]),
    .I2(\DD4/cbBit [0]),
    .LO(N21),
    .O(\DD4/Madd_cbBit_addsub0000_cy[2] )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \DD4/Madd_cbBit_addsub0000_cy<5>11  (
    .I0(\DD4/cbBit [5]),
    .I1(\DD4/cbBit [4]),
    .I2(\DD4/cbBit [3]),
    .I3(\DD4/Madd_cbBit_addsub0000_cy[2] ),
    .LO(N22),
    .O(\DD4/Madd_cbBit_addsub0000_cy[5] )
  );
  LUT4_L #(
    .INIT ( 16'h8000 ))
  \DD4/cbBit_mux0000<5>1_SW0  (
    .I0(\DD4/cbBit [3]),
    .I1(\DD4/cbBit [4]),
    .I2(\DD4/ce20_139 ),
    .I3(\DD4/ce8_140 ),
    .LO(N13)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

