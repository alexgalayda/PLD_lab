module NEW_SCH_LAN_407ND (
  LED0, F50MHz, JA1, JA2, JA3, seg_P, JB1, JA7, JB2, JB3, JC1, JB7, JC2, JC3, JC4, BTN0, BTN1, AN, seg, SW
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
  wire \DD4/Mcount_cb_tact_cy<1>_rt_12 ;
  wire \DD4/Mcount_cb_tact_cy<2>_rt_14 ;
  wire \DD4/Mcount_cb_tact_cy<3>_rt_16 ;
  wire \DD4/Mcount_cb_tact_cy<4>_rt_18 ;
  wire \DD4/Mcount_cb_tact_cy<5>_rt_20 ;
  wire \DD4/Mcount_cb_tact_cy<6>_rt_22 ;
  wire \DD4/Mcount_cb_tact_xor<7>_rt_24 ;
  wire \DD4/_sclk_33 ;
  wire \DD4/_sclk_not0001 ;
  wire \DD4/ce ;
  wire \DD4/ce_tact110_44 ;
  wire \DD4/ce_tact122_45 ;
  wire \DD6/LOAD_inv ;
  wire \DD8/Mcount_cb_1ms_cy<10>_rt_83 ;
  wire \DD8/Mcount_cb_1ms_cy<11>_rt_85 ;
  wire \DD8/Mcount_cb_1ms_cy<12>_rt_87 ;
  wire \DD8/Mcount_cb_1ms_cy<13>_rt_89 ;
  wire \DD8/Mcount_cb_1ms_cy<14>_rt_91 ;
  wire \DD8/Mcount_cb_1ms_cy<1>_rt_93 ;
  wire \DD8/Mcount_cb_1ms_cy<2>_rt_95 ;
  wire \DD8/Mcount_cb_1ms_cy<3>_rt_97 ;
  wire \DD8/Mcount_cb_1ms_cy<4>_rt_99 ;
  wire \DD8/Mcount_cb_1ms_cy<5>_rt_101 ;
  wire \DD8/Mcount_cb_1ms_cy<6>_rt_103 ;
  wire \DD8/Mcount_cb_1ms_cy<7>_rt_105 ;
  wire \DD8/Mcount_cb_1ms_cy<8>_rt_107 ;
  wire \DD8/Mcount_cb_1ms_cy<9>_rt_109 ;
  wire \DD8/Mcount_cb_1ms_xor<15>_rt_111 ;
  wire \DD8/Mmux_dig217_112 ;
  wire \DD8/Mmux_dig225_113 ;
  wire \DD8/Mmux_dig260 ;
  wire \DD8/Mmux_dig2601_115 ;
  wire \DD8/Mmux_dig428_116 ;
  wire \DD8/Mmux_dig468 ;
  wire \DD8/Mmux_dig4681_118 ;
  wire \DD8/Mmux_dig48_119 ;
  wire \DD8/Mmux_dig619_120 ;
  wire \DD8/Mmux_dig655 ;
  wire \DD8/Mmux_dig6551_122 ;
  wire \DD8/Mmux_dig68_123 ;
  wire \DD8/Result<0>1 ;
  wire \DD8/Result<1>1 ;
  wire \DD8/ce ;
  wire \DD8/ce17_161 ;
  wire \DD8/ce1ms_162 ;
  wire \DD8/ce37_163 ;
  wire \DD8/ce50_164 ;
  wire \DD8/ce8_165 ;
  wire F50MHz_IBUFG_171;
  wire JA1_IBUF_173;
  wire JA2_IBUF_175;
  wire JA3_IBUF_177;
  wire JC3_OBUF_184;
  wire LED0_OBUF_187;
  wire LOAD;
  wire MOSI;
  wire N0;
  wire N1;
  wire N10;
  wire N12;
  wire N9;
  wire SCLK;
  wire SCLK1;
  wire SW_0_IBUF_200;
  wire SW_1_IBUF_201;
  wire SW_2_IBUF_202;
  wire clk;
  wire seg_0_OBUF_211;
  wire seg_1_OBUF_212;
  wire seg_2_OBUF_213;
  wire seg_3_OBUF_214;
  wire seg_4_OBUF_215;
  wire seg_5_OBUF_216;
  wire seg_6_OBUF_217;
  wire [6 : 0] \DD4/Mcount_cb_tact_cy ;
  wire [0 : 0] \DD4/Mcount_cb_tact_lut ;
  wire [7 : 0] \DD4/Result ;
  wire [7 : 0] \DD4/cb_tact ;
  wire [11 : 0] \DD6/_Do ;
  wire [11 : 0] \DD6/srSRX ;
  wire [11 : 2] \DD6/srSTX ;
  wire [14 : 0] \DD8/Mcount_cb_1ms_cy ;
  wire [0 : 0] \DD8/Mcount_cb_1ms_lut ;
  wire [15 : 0] \DD8/Result ;
  wire [15 : 0] \DD8/cb_1ms ;
  wire [1 : 0] \DD8/cb_dig ;
  wire [3 : 0] \DD8/dig ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  BUFG   DD1 (
    .I(F50MHz_IBUFG_171),
    .O(clk)
  );
  INV   DD9 (
    .I(LOAD),
    .O(LED0_OBUF_187)
  );
  XORCY   \DD4/Mcount_cb_tact_xor<7>  (
    .CI(\DD4/Mcount_cb_tact_cy [6]),
    .LI(\DD4/Mcount_cb_tact_xor<7>_rt_24 ),
    .O(\DD4/Result [7])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<6>  (
    .CI(\DD4/Mcount_cb_tact_cy [5]),
    .LI(\DD4/Mcount_cb_tact_cy<6>_rt_22 ),
    .O(\DD4/Result [6])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<6>  (
    .CI(\DD4/Mcount_cb_tact_cy [5]),
    .DI(N0),
    .S(\DD4/Mcount_cb_tact_cy<6>_rt_22 ),
    .O(\DD4/Mcount_cb_tact_cy [6])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<5>  (
    .CI(\DD4/Mcount_cb_tact_cy [4]),
    .LI(\DD4/Mcount_cb_tact_cy<5>_rt_20 ),
    .O(\DD4/Result [5])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<5>  (
    .CI(\DD4/Mcount_cb_tact_cy [4]),
    .DI(N0),
    .S(\DD4/Mcount_cb_tact_cy<5>_rt_20 ),
    .O(\DD4/Mcount_cb_tact_cy [5])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<4>  (
    .CI(\DD4/Mcount_cb_tact_cy [3]),
    .LI(\DD4/Mcount_cb_tact_cy<4>_rt_18 ),
    .O(\DD4/Result [4])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<4>  (
    .CI(\DD4/Mcount_cb_tact_cy [3]),
    .DI(N0),
    .S(\DD4/Mcount_cb_tact_cy<4>_rt_18 ),
    .O(\DD4/Mcount_cb_tact_cy [4])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<3>  (
    .CI(\DD4/Mcount_cb_tact_cy [2]),
    .LI(\DD4/Mcount_cb_tact_cy<3>_rt_16 ),
    .O(\DD4/Result [3])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<3>  (
    .CI(\DD4/Mcount_cb_tact_cy [2]),
    .DI(N0),
    .S(\DD4/Mcount_cb_tact_cy<3>_rt_16 ),
    .O(\DD4/Mcount_cb_tact_cy [3])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<2>  (
    .CI(\DD4/Mcount_cb_tact_cy [1]),
    .LI(\DD4/Mcount_cb_tact_cy<2>_rt_14 ),
    .O(\DD4/Result [2])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<2>  (
    .CI(\DD4/Mcount_cb_tact_cy [1]),
    .DI(N0),
    .S(\DD4/Mcount_cb_tact_cy<2>_rt_14 ),
    .O(\DD4/Mcount_cb_tact_cy [2])
  );
  XORCY   \DD4/Mcount_cb_tact_xor<1>  (
    .CI(\DD4/Mcount_cb_tact_cy [0]),
    .LI(\DD4/Mcount_cb_tact_cy<1>_rt_12 ),
    .O(\DD4/Result [1])
  );
  MUXCY   \DD4/Mcount_cb_tact_cy<1>  (
    .CI(\DD4/Mcount_cb_tact_cy [0]),
    .DI(N0),
    .S(\DD4/Mcount_cb_tact_cy<1>_rt_12 ),
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
    .R(\DD4/ce ),
    .Q(\DD4/cb_tact [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_6  (
    .C(clk),
    .D(\DD4/Result [6]),
    .R(\DD4/ce ),
    .Q(\DD4/cb_tact [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_5  (
    .C(clk),
    .D(\DD4/Result [5]),
    .R(\DD4/ce ),
    .Q(\DD4/cb_tact [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_4  (
    .C(clk),
    .D(\DD4/Result [4]),
    .R(\DD4/ce ),
    .Q(\DD4/cb_tact [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_3  (
    .C(clk),
    .D(\DD4/Result [3]),
    .R(\DD4/ce ),
    .Q(\DD4/cb_tact [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_2  (
    .C(clk),
    .D(\DD4/Result [2]),
    .R(\DD4/ce ),
    .Q(\DD4/cb_tact [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_1  (
    .C(clk),
    .D(\DD4/Result [1]),
    .R(\DD4/ce ),
    .Q(\DD4/cb_tact [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD4/cb_tact_0  (
    .C(clk),
    .D(\DD4/Result [0]),
    .R(\DD4/ce ),
    .Q(\DD4/cb_tact [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \DD4/_sclk  (
    .C(clk),
    .CE(\DD4/ce ),
    .D(\DD4/_sclk_not0001 ),
    .R(N1),
    .Q(\DD4/_sclk_33 )
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
    .LI(\DD8/Mcount_cb_1ms_xor<15>_rt_111 ),
    .O(\DD8/Result [15])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<14>  (
    .CI(\DD8/Mcount_cb_1ms_cy [13]),
    .LI(\DD8/Mcount_cb_1ms_cy<14>_rt_91 ),
    .O(\DD8/Result [14])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<14>  (
    .CI(\DD8/Mcount_cb_1ms_cy [13]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<14>_rt_91 ),
    .O(\DD8/Mcount_cb_1ms_cy [14])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<13>  (
    .CI(\DD8/Mcount_cb_1ms_cy [12]),
    .LI(\DD8/Mcount_cb_1ms_cy<13>_rt_89 ),
    .O(\DD8/Result [13])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<13>  (
    .CI(\DD8/Mcount_cb_1ms_cy [12]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<13>_rt_89 ),
    .O(\DD8/Mcount_cb_1ms_cy [13])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<12>  (
    .CI(\DD8/Mcount_cb_1ms_cy [11]),
    .LI(\DD8/Mcount_cb_1ms_cy<12>_rt_87 ),
    .O(\DD8/Result [12])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<12>  (
    .CI(\DD8/Mcount_cb_1ms_cy [11]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<12>_rt_87 ),
    .O(\DD8/Mcount_cb_1ms_cy [12])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<11>  (
    .CI(\DD8/Mcount_cb_1ms_cy [10]),
    .LI(\DD8/Mcount_cb_1ms_cy<11>_rt_85 ),
    .O(\DD8/Result [11])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<11>  (
    .CI(\DD8/Mcount_cb_1ms_cy [10]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<11>_rt_85 ),
    .O(\DD8/Mcount_cb_1ms_cy [11])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<10>  (
    .CI(\DD8/Mcount_cb_1ms_cy [9]),
    .LI(\DD8/Mcount_cb_1ms_cy<10>_rt_83 ),
    .O(\DD8/Result [10])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<10>  (
    .CI(\DD8/Mcount_cb_1ms_cy [9]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<10>_rt_83 ),
    .O(\DD8/Mcount_cb_1ms_cy [10])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<9>  (
    .CI(\DD8/Mcount_cb_1ms_cy [8]),
    .LI(\DD8/Mcount_cb_1ms_cy<9>_rt_109 ),
    .O(\DD8/Result [9])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<9>  (
    .CI(\DD8/Mcount_cb_1ms_cy [8]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<9>_rt_109 ),
    .O(\DD8/Mcount_cb_1ms_cy [9])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<8>  (
    .CI(\DD8/Mcount_cb_1ms_cy [7]),
    .LI(\DD8/Mcount_cb_1ms_cy<8>_rt_107 ),
    .O(\DD8/Result [8])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<8>  (
    .CI(\DD8/Mcount_cb_1ms_cy [7]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<8>_rt_107 ),
    .O(\DD8/Mcount_cb_1ms_cy [8])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<7>  (
    .CI(\DD8/Mcount_cb_1ms_cy [6]),
    .LI(\DD8/Mcount_cb_1ms_cy<7>_rt_105 ),
    .O(\DD8/Result [7])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<7>  (
    .CI(\DD8/Mcount_cb_1ms_cy [6]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<7>_rt_105 ),
    .O(\DD8/Mcount_cb_1ms_cy [7])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<6>  (
    .CI(\DD8/Mcount_cb_1ms_cy [5]),
    .LI(\DD8/Mcount_cb_1ms_cy<6>_rt_103 ),
    .O(\DD8/Result [6])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<6>  (
    .CI(\DD8/Mcount_cb_1ms_cy [5]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<6>_rt_103 ),
    .O(\DD8/Mcount_cb_1ms_cy [6])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<5>  (
    .CI(\DD8/Mcount_cb_1ms_cy [4]),
    .LI(\DD8/Mcount_cb_1ms_cy<5>_rt_101 ),
    .O(\DD8/Result [5])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<5>  (
    .CI(\DD8/Mcount_cb_1ms_cy [4]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<5>_rt_101 ),
    .O(\DD8/Mcount_cb_1ms_cy [5])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<4>  (
    .CI(\DD8/Mcount_cb_1ms_cy [3]),
    .LI(\DD8/Mcount_cb_1ms_cy<4>_rt_99 ),
    .O(\DD8/Result [4])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<4>  (
    .CI(\DD8/Mcount_cb_1ms_cy [3]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<4>_rt_99 ),
    .O(\DD8/Mcount_cb_1ms_cy [4])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<3>  (
    .CI(\DD8/Mcount_cb_1ms_cy [2]),
    .LI(\DD8/Mcount_cb_1ms_cy<3>_rt_97 ),
    .O(\DD8/Result [3])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<3>  (
    .CI(\DD8/Mcount_cb_1ms_cy [2]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<3>_rt_97 ),
    .O(\DD8/Mcount_cb_1ms_cy [3])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<2>  (
    .CI(\DD8/Mcount_cb_1ms_cy [1]),
    .LI(\DD8/Mcount_cb_1ms_cy<2>_rt_95 ),
    .O(\DD8/Result [2])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<2>  (
    .CI(\DD8/Mcount_cb_1ms_cy [1]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<2>_rt_95 ),
    .O(\DD8/Mcount_cb_1ms_cy [2])
  );
  XORCY   \DD8/Mcount_cb_1ms_xor<1>  (
    .CI(\DD8/Mcount_cb_1ms_cy [0]),
    .LI(\DD8/Mcount_cb_1ms_cy<1>_rt_93 ),
    .O(\DD8/Result [1])
  );
  MUXCY   \DD8/Mcount_cb_1ms_cy<1>  (
    .CI(\DD8/Mcount_cb_1ms_cy [0]),
    .DI(N0),
    .S(\DD8/Mcount_cb_1ms_cy<1>_rt_93 ),
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
    .Q(\DD8/ce1ms_162 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD5_1/Q1  (
    .I0(SW_2_IBUF_202),
    .I1(JA2_IBUF_175),
    .I2(\DD4/_sclk_33 ),
    .O(SCLK1)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \DD5_2/Q1  (
    .I0(JA3_IBUF_177),
    .I1(SW_2_IBUF_202),
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
    .INIT ( 4'h6 ))
  \DD8/Mcount_cb_dig_xor<1>11  (
    .I0(\DD8/cb_dig [0]),
    .I1(\DD8/cb_dig [1]),
    .O(\DD8/Result<1>1 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \DD5_0/Q1  (
    .I0(SW_2_IBUF_202),
    .I1(JA1_IBUF_173),
    .O(LOAD)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \DD4/ce_tact122  (
    .I0(\DD4/cb_tact [4]),
    .I1(\DD4/cb_tact [2]),
    .I2(\DD4/cb_tact [5]),
    .I3(\DD4/cb_tact [6]),
    .O(\DD4/ce_tact122_45 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD4/ce_tact123  (
    .I0(N12),
    .I1(\DD4/ce_tact122_45 ),
    .O(\DD4/ce )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \DD8/ce17  (
    .I0(\DD8/cb_1ms [15]),
    .I1(\DD8/cb_1ms [12]),
    .I2(\DD8/cb_1ms [14]),
    .I3(\DD8/cb_1ms [13]),
    .O(\DD8/ce17_161 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \DD8/ce37  (
    .I0(\DD8/cb_1ms [4]),
    .I1(\DD8/cb_1ms [5]),
    .I2(\DD8/cb_1ms [6]),
    .I3(\DD8/cb_1ms [7]),
    .O(\DD8/ce37_163 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \DD8/ce50  (
    .I0(\DD8/cb_1ms [0]),
    .I1(\DD8/cb_1ms [1]),
    .I2(\DD8/cb_1ms [2]),
    .I3(\DD8/cb_1ms [3]),
    .O(\DD8/ce50_164 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \DD8/ce64  (
    .I0(\DD8/ce8_165 ),
    .I1(\DD8/ce17_161 ),
    .I2(\DD8/ce37_163 ),
    .I3(\DD8/ce50_164 ),
    .O(\DD8/ce )
  );
  LUT4 #(
    .INIT ( 16'hB383 ))
  \DD8/Mmux_dig8_SW0  (
    .I0(\DD6/_Do [7]),
    .I1(\DD8/cb_dig [0]),
    .I2(SW_0_IBUF_200),
    .I3(\DD6/_Do [3]),
    .O(N9)
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \DD8/Mmux_dig8_SW1  (
    .I0(\DD6/_Do [11]),
    .I1(SW_0_IBUF_200),
    .I2(\DD8/cb_dig [0]),
    .O(N10)
  );
  LUT4 #(
    .INIT ( 16'h4C08 ))
  \DD8/Mmux_dig8  (
    .I0(\DD8/cb_dig [1]),
    .I1(SW_1_IBUF_201),
    .I2(N10),
    .I3(N9),
    .O(\DD8/dig [3])
  );
  LUT4 #(
    .INIT ( 16'h445C ))
  \DD8/Mrom_seg41  (
    .I0(\DD8/dig [3]),
    .I1(\DD8/dig [0]),
    .I2(\DD8/dig [2]),
    .I3(\DD8/dig [1]),
    .O(seg_4_OBUF_215)
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  \DD8/Mrom_seg21  (
    .I0(\DD8/dig [1]),
    .I1(\DD8/dig [3]),
    .I2(\DD8/dig [2]),
    .I3(\DD8/dig [0]),
    .O(seg_2_OBUF_213)
  );
  LUT4 #(
    .INIT ( 16'h2141 ))
  \DD8/Mrom_seg61  (
    .I0(\DD8/dig [1]),
    .I1(\DD8/dig [3]),
    .I2(\DD8/dig [2]),
    .I3(\DD8/dig [0]),
    .O(seg_6_OBUF_217)
  );
  LUT4 #(
    .INIT ( 16'h6032 ))
  \DD8/Mrom_seg51  (
    .I0(\DD8/dig [1]),
    .I1(\DD8/dig [3]),
    .I2(\DD8/dig [0]),
    .I3(\DD8/dig [2]),
    .O(seg_5_OBUF_216)
  );
  LUT4 #(
    .INIT ( 16'hE448 ))
  \DD8/Mrom_seg111  (
    .I0(\DD8/dig [0]),
    .I1(\DD8/dig [2]),
    .I2(\DD8/dig [1]),
    .I3(\DD8/dig [3]),
    .O(seg_1_OBUF_212)
  );
  LUT4 #(
    .INIT ( 16'hA118 ))
  \DD8/Mrom_seg31  (
    .I0(\DD8/dig [1]),
    .I1(\DD8/dig [3]),
    .I2(\DD8/dig [0]),
    .I3(\DD8/dig [2]),
    .O(seg_3_OBUF_214)
  );
  LUT4 #(
    .INIT ( 16'h2812 ))
  \DD8/Mrom_seg11  (
    .I0(\DD8/dig [0]),
    .I1(\DD8/dig [1]),
    .I2(\DD8/dig [2]),
    .I3(\DD8/dig [3]),
    .O(seg_0_OBUF_211)
  );
  LUT4 #(
    .INIT ( 16'hA222 ))
  \DD8/Mmux_dig68  (
    .I0(\DD8/cb_dig [1]),
    .I1(SW_0_IBUF_200),
    .I2(SW_1_IBUF_201),
    .I3(\DD6/_Do [10]),
    .O(\DD8/Mmux_dig68_123 )
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \DD8/Mmux_dig619  (
    .I0(SW_0_IBUF_200),
    .I1(SW_1_IBUF_201),
    .I2(\DD8/cb_dig [1]),
    .I3(\DD6/_Do [2]),
    .O(\DD8/Mmux_dig619_120 )
  );
  LUT4 #(
    .INIT ( 16'hF3F2 ))
  \DD8/Mmux_dig661  (
    .I0(\DD8/Mmux_dig619_120 ),
    .I1(\DD8/cb_dig [0]),
    .I2(\DD8/Mmux_dig655 ),
    .I3(\DD8/Mmux_dig68_123 ),
    .O(\DD8/dig [2])
  );
  LUT4 #(
    .INIT ( 16'hA222 ))
  \DD8/Mmux_dig48  (
    .I0(\DD8/cb_dig [1]),
    .I1(SW_0_IBUF_200),
    .I2(SW_1_IBUF_201),
    .I3(\DD6/_Do [9]),
    .O(\DD8/Mmux_dig48_119 )
  );
  LUT4 #(
    .INIT ( 16'h0901 ))
  \DD8/Mmux_dig428  (
    .I0(SW_0_IBUF_200),
    .I1(SW_1_IBUF_201),
    .I2(\DD8/cb_dig [1]),
    .I3(\DD6/_Do [1]),
    .O(\DD8/Mmux_dig428_116 )
  );
  LUT4 #(
    .INIT ( 16'hF3F2 ))
  \DD8/Mmux_dig474  (
    .I0(\DD8/Mmux_dig428_116 ),
    .I1(\DD8/cb_dig [0]),
    .I2(\DD8/Mmux_dig468 ),
    .I3(\DD8/Mmux_dig48_119 ),
    .O(\DD8/dig [1])
  );
  LUT4 #(
    .INIT ( 16'h8202 ))
  \DD8/Mmux_dig217  (
    .I0(\DD8/cb_dig [1]),
    .I1(SW_0_IBUF_200),
    .I2(SW_1_IBUF_201),
    .I3(\DD6/_Do [8]),
    .O(\DD8/Mmux_dig217_112 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \DD8/Mmux_dig225  (
    .I0(SW_0_IBUF_200),
    .I1(\DD8/cb_dig [1]),
    .I2(SW_1_IBUF_201),
    .I3(\DD6/_Do [0]),
    .O(\DD8/Mmux_dig225_113 )
  );
  LUT4 #(
    .INIT ( 16'hF3F2 ))
  \DD8/Mmux_dig265  (
    .I0(\DD8/Mmux_dig225_113 ),
    .I1(\DD8/cb_dig [0]),
    .I2(\DD8/Mmux_dig260 ),
    .I3(\DD8/Mmux_dig217_112 ),
    .O(\DD8/dig [0])
  );
  IBUFG   F50MHz_IBUFG (
    .I(F50MHz),
    .O(F50MHz_IBUFG_171)
  );
  IBUF   JA1_IBUF (
    .I(JA1),
    .O(JA1_IBUF_173)
  );
  IBUF   JA2_IBUF (
    .I(JA2),
    .O(JA2_IBUF_175)
  );
  IBUF   JA3_IBUF (
    .I(JA3),
    .O(JA3_IBUF_177)
  );
  IBUF   BTN0_IBUF (
    .I(BTN0),
    .O(BTN0_IBUF_9)
  );
  IBUF   SW_2_IBUF (
    .I(SW[2]),
    .O(SW_2_IBUF_202)
  );
  IBUF   SW_1_IBUF (
    .I(SW[1]),
    .O(SW_1_IBUF_201)
  );
  IBUF   SW_0_IBUF (
    .I(SW[0]),
    .O(SW_0_IBUF_200)
  );
  OBUF   LED0_OBUF (
    .I(LED0_OBUF_187),
    .O(LED0)
  );
  OBUF   seg_P_OBUF (
    .I(AN_0_OBUF_4),
    .O(seg_P)
  );
  OBUF   JB1_OBUF (
    .I(N1),
    .O(JB1)
  );
  OBUF   JA7_OBUF (
    .I(\DD6/srSTX [11]),
    .O(JA7)
  );
  OBUF   JB2_OBUF (
    .I(\DD4/_sclk_33 ),
    .O(JB2)
  );
  OBUF   JB3_OBUF (
    .I(N0),
    .O(JB3)
  );
  OBUF   JC2_OBUF (
    .I(N0),
    .O(JC2)
  );
  OBUF   JC3_OBUF (
    .I(JC3_OBUF_184),
    .O(JC3)
  );
  OBUF   JC4_OBUF (
    .I(\DD8/ce1ms_162 ),
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
    .I(seg_6_OBUF_217),
    .O(seg[6])
  );
  OBUF   seg_5_OBUF (
    .I(seg_5_OBUF_216),
    .O(seg[5])
  );
  OBUF   seg_4_OBUF (
    .I(seg_4_OBUF_215),
    .O(seg[4])
  );
  OBUF   seg_3_OBUF (
    .I(seg_3_OBUF_214),
    .O(seg[3])
  );
  OBUF   seg_2_OBUF (
    .I(seg_2_OBUF_213),
    .O(seg[2])
  );
  OBUF   seg_1_OBUF (
    .I(seg_1_OBUF_212),
    .O(seg[1])
  );
  OBUF   seg_0_OBUF (
    .I(seg_0_OBUF_211),
    .O(seg[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_cy<6>_rt  (
    .I0(\DD4/cb_tact [6]),
    .O(\DD4/Mcount_cb_tact_cy<6>_rt_22 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_cy<5>_rt  (
    .I0(\DD4/cb_tact [5]),
    .O(\DD4/Mcount_cb_tact_cy<5>_rt_20 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_cy<4>_rt  (
    .I0(\DD4/cb_tact [4]),
    .O(\DD4/Mcount_cb_tact_cy<4>_rt_18 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_cy<3>_rt  (
    .I0(\DD4/cb_tact [3]),
    .O(\DD4/Mcount_cb_tact_cy<3>_rt_16 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_cy<2>_rt  (
    .I0(\DD4/cb_tact [2]),
    .O(\DD4/Mcount_cb_tact_cy<2>_rt_14 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_cy<1>_rt  (
    .I0(\DD4/cb_tact [1]),
    .O(\DD4/Mcount_cb_tact_cy<1>_rt_12 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<14>_rt  (
    .I0(\DD8/cb_1ms [14]),
    .O(\DD8/Mcount_cb_1ms_cy<14>_rt_91 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<13>_rt  (
    .I0(\DD8/cb_1ms [13]),
    .O(\DD8/Mcount_cb_1ms_cy<13>_rt_89 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<12>_rt  (
    .I0(\DD8/cb_1ms [12]),
    .O(\DD8/Mcount_cb_1ms_cy<12>_rt_87 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<11>_rt  (
    .I0(\DD8/cb_1ms [11]),
    .O(\DD8/Mcount_cb_1ms_cy<11>_rt_85 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<10>_rt  (
    .I0(\DD8/cb_1ms [10]),
    .O(\DD8/Mcount_cb_1ms_cy<10>_rt_83 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<9>_rt  (
    .I0(\DD8/cb_1ms [9]),
    .O(\DD8/Mcount_cb_1ms_cy<9>_rt_109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<8>_rt  (
    .I0(\DD8/cb_1ms [8]),
    .O(\DD8/Mcount_cb_1ms_cy<8>_rt_107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<7>_rt  (
    .I0(\DD8/cb_1ms [7]),
    .O(\DD8/Mcount_cb_1ms_cy<7>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<6>_rt  (
    .I0(\DD8/cb_1ms [6]),
    .O(\DD8/Mcount_cb_1ms_cy<6>_rt_103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<5>_rt  (
    .I0(\DD8/cb_1ms [5]),
    .O(\DD8/Mcount_cb_1ms_cy<5>_rt_101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<4>_rt  (
    .I0(\DD8/cb_1ms [4]),
    .O(\DD8/Mcount_cb_1ms_cy<4>_rt_99 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<3>_rt  (
    .I0(\DD8/cb_1ms [3]),
    .O(\DD8/Mcount_cb_1ms_cy<3>_rt_97 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<2>_rt  (
    .I0(\DD8/cb_1ms [2]),
    .O(\DD8/Mcount_cb_1ms_cy<2>_rt_95 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_cy<1>_rt  (
    .I0(\DD8/cb_1ms [1]),
    .O(\DD8/Mcount_cb_1ms_cy<1>_rt_93 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD4/Mcount_cb_tact_xor<7>_rt  (
    .I0(\DD4/cb_tact [7]),
    .O(\DD4/Mcount_cb_tact_xor<7>_rt_24 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD8/Mcount_cb_1ms_xor<15>_rt  (
    .I0(\DD8/cb_1ms [15]),
    .O(\DD8/Mcount_cb_1ms_xor<15>_rt_111 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \DD6/LOAD_inv1  (
    .I0(SW_2_IBUF_202),
    .I1(JA1_IBUF_173),
    .O(\DD6/LOAD_inv )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \DD4/ce_tact2  (
    .I0(\DD4/_sclk_33 ),
    .I1(\DD4/ce_tact110_44 ),
    .I2(\DD4/ce_tact122_45 ),
    .O(JC3_OBUF_184)
  );
  BUFG   SCLK_BUFG (
    .I(SCLK1),
    .O(SCLK)
  );
  INV   \DD4/Mcount_cb_tact_lut<0>_INV_0  (
    .I(\DD4/cb_tact [0]),
    .O(\DD4/Mcount_cb_tact_lut [0])
  );
  INV   \DD8/Mcount_cb_1ms_lut<0>_INV_0  (
    .I(\DD8/cb_1ms [0]),
    .O(\DD8/Mcount_cb_1ms_lut [0])
  );
  INV   \DD8/Mcount_cb_dig_xor<0>11_INV_0  (
    .I(\DD8/cb_dig [0]),
    .O(\DD8/Result<0>1 )
  );
  INV   \DD4/_sclk_not00011_INV_0  (
    .I(\DD4/_sclk_33 ),
    .O(\DD4/_sclk_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \DD8/Mmux_dig6551  (
    .I0(SW_0_IBUF_200),
    .I1(\DD8/cb_dig [0]),
    .I2(\DD8/cb_dig [1]),
    .I3(\DD6/_Do [6]),
    .O(\DD8/Mmux_dig6551_122 )
  );
  MUXF5   \DD8/Mmux_dig655_f5  (
    .I0(N0),
    .I1(\DD8/Mmux_dig6551_122 ),
    .S(SW_1_IBUF_201),
    .O(\DD8/Mmux_dig655 )
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \DD8/Mmux_dig4681  (
    .I0(SW_0_IBUF_200),
    .I1(\DD8/cb_dig [0]),
    .I2(\DD8/cb_dig [1]),
    .I3(\DD6/_Do [5]),
    .O(\DD8/Mmux_dig4681_118 )
  );
  MUXF5   \DD8/Mmux_dig468_f5  (
    .I0(N0),
    .I1(\DD8/Mmux_dig4681_118 ),
    .S(SW_1_IBUF_201),
    .O(\DD8/Mmux_dig468 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \DD8/Mmux_dig2601  (
    .I0(SW_0_IBUF_200),
    .I1(\DD8/cb_dig [1]),
    .I2(\DD6/_Do [4]),
    .I3(\DD8/cb_dig [0]),
    .O(\DD8/Mmux_dig2601_115 )
  );
  MUXF5   \DD8/Mmux_dig260_f5  (
    .I0(N0),
    .I1(\DD8/Mmux_dig2601_115 ),
    .S(SW_1_IBUF_201),
    .O(\DD8/Mmux_dig260 )
  );
  LUT4_D #(
    .INIT ( 16'h0020 ))
  \DD4/ce_tact110  (
    .I0(\DD4/cb_tact [3]),
    .I1(\DD4/cb_tact [1]),
    .I2(\DD4/cb_tact [0]),
    .I3(\DD4/cb_tact [7]),
    .LO(N12),
    .O(\DD4/ce_tact110_44 )
  );
  LUT4_L #(
    .INIT ( 16'h0020 ))
  \DD8/ce8  (
    .I0(\DD8/cb_1ms [9]),
    .I1(\DD8/cb_1ms [10]),
    .I2(\DD8/cb_1ms [8]),
    .I3(\DD8/cb_1ms [11]),
    .LO(\DD8/ce8_165 )
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

