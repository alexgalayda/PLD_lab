module Sch_test_SLAVE (
  clk, ce_tact, RESET, LOAD, st, MOSI, SCLK, MISO, sr_SRX, sr_STX, sr_MRX, sr_MTX, SRX_DAT, MRX_DAT, cb_bit, STX_DAT, MTX_DAT
);
  input clk;
  output ce_tact;
  input RESET;
  output LOAD;
  input st;
  output MOSI;
  output SCLK;
  output MISO;
  output [11 : 0] sr_SRX;
  output [11 : 0] sr_STX;
  output [11 : 0] sr_MRX;
  output [11 : 0] sr_MTX;
  output [11 : 0] SRX_DAT;
  output [11 : 0] MRX_DAT;
  output [7 : 0] cb_bit;
  input [11 : 0] STX_DAT;
  input [11 : 0] MTX_DAT;
  wire \DD1/Madd_cbBit_addsub0000_cy[2] ;
  wire \DD1/Madd_cbBit_addsub0000_cy[5] ;
  wire \DD1/Mcount_cb_tact_cy<1>_rt_4 ;
  wire \DD1/Mcount_cb_tact_cy<2>_rt_6 ;
  wire \DD1/Mcount_cb_tact_cy<3>_rt_8 ;
  wire \DD1/Mcount_cb_tact_cy<4>_rt_10 ;
  wire \DD1/Mcount_cb_tact_cy<5>_rt_12 ;
  wire \DD1/Mcount_cb_tact_cy<6>_rt_14 ;
  wire \DD1/Mcount_cb_tact_xor<7>_rt_16 ;
  wire \DD1/S ;
  wire \DD1/S10_26 ;
  wire \DD1/S22_27 ;
  wire \DD1/_load_40 ;
  wire \DD1/_load1 ;
  wire \DD1/_mosi_42 ;
  wire \DD1/_sclk_43 ;
  wire \DD1/_sclk1 ;
  wire \DD1/_sclk_mux0000 ;
  wire \DD1/cb_tact_or0000 ;
  wire \DD1/ce ;
  wire \DD1/ce10_72 ;
  wire \DD1/ce22_73 ;
  wire \DD1/srMTX_not0001 ;
  wire \DD1/start ;
  wire \DD2/LOAD_inv ;
  wire \DD2/srSRX_0_1_123 ;
  wire \DD2/srSTX_0_1_133 ;
  wire \DD2/srSTX_0_and0000 ;
  wire \DD2/srSTX_0_and0001 ;
  wire \DD2/srSTX_1_and0000 ;
  wire \DD2/srSTX_1_and0001 ;
  wire \DD2/srSTX_2_and0000 ;
  wire \DD2/srSTX_2_and0001 ;
  wire \DD2/srSTX_3_and0000 ;
  wire \DD2/srSTX_3_and0001 ;
  wire \DD2/srSTX_4_and0000 ;
  wire \DD2/srSTX_4_and0001 ;
  wire \DD2/srSTX_5_and0000 ;
  wire \DD2/srSTX_5_and0001 ;
  wire \DD2/srSTX_6_and0000 ;
  wire \DD2/srSTX_6_and0001 ;
  wire \DD2/srSTX_7_and0000 ;
  wire \DD2/srSTX_7_and0001 ;
  wire \DD2/srSTX_8_and0000 ;
  wire \DD2/srSTX_8_and0001 ;
  wire MTX_DAT_0_IBUF_187;
  wire MTX_DAT_10_IBUF_188;
  wire MTX_DAT_11_IBUF_189;
  wire MTX_DAT_1_IBUF_190;
  wire MTX_DAT_2_IBUF_191;
  wire MTX_DAT_3_IBUF_192;
  wire MTX_DAT_4_IBUF_193;
  wire MTX_DAT_5_IBUF_194;
  wire MTX_DAT_6_IBUF_195;
  wire MTX_DAT_7_IBUF_196;
  wire MTX_DAT_8_IBUF_197;
  wire MTX_DAT_9_IBUF_198;
  wire N1;
  wire N2;
  wire N4;
  wire N5;
  wire N6;
  wire N7;
  wire RESET_IBUF_206;
  wire SRX_DAT_9_OBUF_220;
  wire STX_DAT_0_IBUF_230;
  wire STX_DAT_1_IBUF_231;
  wire STX_DAT_2_IBUF_232;
  wire STX_DAT_3_IBUF_233;
  wire STX_DAT_4_IBUF_234;
  wire STX_DAT_5_IBUF_235;
  wire STX_DAT_6_IBUF_236;
  wire STX_DAT_7_IBUF_237;
  wire STX_DAT_8_IBUF_238;
  wire ce_tact_OBUF_248;
  wire clk_BUFGP_250;
  wire st_IBUF_300;
  wire [6 : 0] \DD1/Mcount_cb_tact_cy ;
  wire [0 : 0] \DD1/Mcount_cb_tact_lut ;
  wire [7 : 0] \DD1/Result ;
  wire [11 : 0] \DD1/_Do ;
  wire [7 : 0] \DD1/cbBit ;
  wire [7 : 0] \DD1/cbBit_mux0000 ;
  wire [7 : 0] \DD1/cb_tact ;
  wire [11 : 0] \DD1/srMRX ;
  wire [11 : 0] \DD1/srMTX ;
  wire [11 : 0] \DD1/srMTX_mux0000 ;
  wire [8 : 0] \DD2/_Do ;
  wire [8 : 0] \DD2/srSRX ;
  wire [8 : 0] \DD2/srSTX ;
  GND   XST_GND (
    .G(SRX_DAT_9_OBUF_220)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  XORCY   \DD1/Mcount_cb_tact_xor<7>  (
    .CI(\DD1/Mcount_cb_tact_cy [6]),
    .LI(\DD1/Mcount_cb_tact_xor<7>_rt_16 ),
    .O(\DD1/Result [7])
  );
  XORCY   \DD1/Mcount_cb_tact_xor<6>  (
    .CI(\DD1/Mcount_cb_tact_cy [5]),
    .LI(\DD1/Mcount_cb_tact_cy<6>_rt_14 ),
    .O(\DD1/Result [6])
  );
  MUXCY   \DD1/Mcount_cb_tact_cy<6>  (
    .CI(\DD1/Mcount_cb_tact_cy [5]),
    .DI(SRX_DAT_9_OBUF_220),
    .S(\DD1/Mcount_cb_tact_cy<6>_rt_14 ),
    .O(\DD1/Mcount_cb_tact_cy [6])
  );
  XORCY   \DD1/Mcount_cb_tact_xor<5>  (
    .CI(\DD1/Mcount_cb_tact_cy [4]),
    .LI(\DD1/Mcount_cb_tact_cy<5>_rt_12 ),
    .O(\DD1/Result [5])
  );
  MUXCY   \DD1/Mcount_cb_tact_cy<5>  (
    .CI(\DD1/Mcount_cb_tact_cy [4]),
    .DI(SRX_DAT_9_OBUF_220),
    .S(\DD1/Mcount_cb_tact_cy<5>_rt_12 ),
    .O(\DD1/Mcount_cb_tact_cy [5])
  );
  XORCY   \DD1/Mcount_cb_tact_xor<4>  (
    .CI(\DD1/Mcount_cb_tact_cy [3]),
    .LI(\DD1/Mcount_cb_tact_cy<4>_rt_10 ),
    .O(\DD1/Result [4])
  );
  MUXCY   \DD1/Mcount_cb_tact_cy<4>  (
    .CI(\DD1/Mcount_cb_tact_cy [3]),
    .DI(SRX_DAT_9_OBUF_220),
    .S(\DD1/Mcount_cb_tact_cy<4>_rt_10 ),
    .O(\DD1/Mcount_cb_tact_cy [4])
  );
  XORCY   \DD1/Mcount_cb_tact_xor<3>  (
    .CI(\DD1/Mcount_cb_tact_cy [2]),
    .LI(\DD1/Mcount_cb_tact_cy<3>_rt_8 ),
    .O(\DD1/Result [3])
  );
  MUXCY   \DD1/Mcount_cb_tact_cy<3>  (
    .CI(\DD1/Mcount_cb_tact_cy [2]),
    .DI(SRX_DAT_9_OBUF_220),
    .S(\DD1/Mcount_cb_tact_cy<3>_rt_8 ),
    .O(\DD1/Mcount_cb_tact_cy [3])
  );
  XORCY   \DD1/Mcount_cb_tact_xor<2>  (
    .CI(\DD1/Mcount_cb_tact_cy [1]),
    .LI(\DD1/Mcount_cb_tact_cy<2>_rt_6 ),
    .O(\DD1/Result [2])
  );
  MUXCY   \DD1/Mcount_cb_tact_cy<2>  (
    .CI(\DD1/Mcount_cb_tact_cy [1]),
    .DI(SRX_DAT_9_OBUF_220),
    .S(\DD1/Mcount_cb_tact_cy<2>_rt_6 ),
    .O(\DD1/Mcount_cb_tact_cy [2])
  );
  XORCY   \DD1/Mcount_cb_tact_xor<1>  (
    .CI(\DD1/Mcount_cb_tact_cy [0]),
    .LI(\DD1/Mcount_cb_tact_cy<1>_rt_4 ),
    .O(\DD1/Result [1])
  );
  MUXCY   \DD1/Mcount_cb_tact_cy<1>  (
    .CI(\DD1/Mcount_cb_tact_cy [0]),
    .DI(SRX_DAT_9_OBUF_220),
    .S(\DD1/Mcount_cb_tact_cy<1>_rt_4 ),
    .O(\DD1/Mcount_cb_tact_cy [1])
  );
  XORCY   \DD1/Mcount_cb_tact_xor<0>  (
    .CI(SRX_DAT_9_OBUF_220),
    .LI(\DD1/Mcount_cb_tact_lut [0]),
    .O(\DD1/Result [0])
  );
  MUXCY   \DD1/Mcount_cb_tact_cy<0>  (
    .CI(SRX_DAT_9_OBUF_220),
    .DI(N1),
    .S(\DD1/Mcount_cb_tact_lut [0]),
    .O(\DD1/Mcount_cb_tact_cy [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cb_tact_7  (
    .C(clk_BUFGP_250),
    .D(\DD1/Result [7]),
    .R(\DD1/cb_tact_or0000 ),
    .Q(\DD1/cb_tact [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cb_tact_6  (
    .C(clk_BUFGP_250),
    .D(\DD1/Result [6]),
    .R(\DD1/cb_tact_or0000 ),
    .Q(\DD1/cb_tact [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cb_tact_5  (
    .C(clk_BUFGP_250),
    .D(\DD1/Result [5]),
    .R(\DD1/cb_tact_or0000 ),
    .Q(\DD1/cb_tact [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cb_tact_4  (
    .C(clk_BUFGP_250),
    .D(\DD1/Result [4]),
    .R(\DD1/cb_tact_or0000 ),
    .Q(\DD1/cb_tact [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cb_tact_3  (
    .C(clk_BUFGP_250),
    .D(\DD1/Result [3]),
    .R(\DD1/cb_tact_or0000 ),
    .Q(\DD1/cb_tact [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cb_tact_2  (
    .C(clk_BUFGP_250),
    .D(\DD1/Result [2]),
    .R(\DD1/cb_tact_or0000 ),
    .Q(\DD1/cb_tact [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cb_tact_1  (
    .C(clk_BUFGP_250),
    .D(\DD1/Result [1]),
    .R(\DD1/cb_tact_or0000 ),
    .Q(\DD1/cb_tact [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cb_tact_0  (
    .C(clk_BUFGP_250),
    .D(\DD1/Result [0]),
    .R(\DD1/cb_tact_or0000 ),
    .Q(\DD1/cb_tact [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD1/_Do_11  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD1/srMRX [11]),
    .Q(\DD1/_Do [11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD1/_Do_10  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD1/srMRX [10]),
    .Q(\DD1/_Do [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD1/_Do_9  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD1/srMRX [9]),
    .Q(\DD1/_Do [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD1/_Do_8  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD1/srMRX [8]),
    .Q(\DD1/_Do [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD1/_Do_7  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD1/srMRX [7]),
    .Q(\DD1/_Do [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD1/_Do_6  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD1/srMRX [6]),
    .Q(\DD1/_Do [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD1/_Do_5  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD1/srMRX [5]),
    .Q(\DD1/_Do [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD1/_Do_4  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD1/srMRX [4]),
    .Q(\DD1/_Do [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD1/_Do_3  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD1/srMRX [3]),
    .Q(\DD1/_Do [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD1/_Do_2  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD1/srMRX [2]),
    .Q(\DD1/_Do [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD1/_Do_1  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD1/srMRX [1]),
    .Q(\DD1/_Do [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD1/_Do_0  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD1/srMRX [0]),
    .Q(\DD1/_Do [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/srMRX_11  (
    .C(\DD1/_sclk_43 ),
    .D(\DD1/srMRX [10]),
    .Q(\DD1/srMRX [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/srMRX_10  (
    .C(\DD1/_sclk_43 ),
    .D(\DD1/srMRX [9]),
    .Q(\DD1/srMRX [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/srMRX_9  (
    .C(\DD1/_sclk_43 ),
    .D(\DD1/srMRX [8]),
    .Q(\DD1/srMRX [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/srMRX_8  (
    .C(\DD1/_sclk_43 ),
    .D(\DD1/srMRX [7]),
    .Q(\DD1/srMRX [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/srMRX_7  (
    .C(\DD1/_sclk_43 ),
    .D(\DD1/srMRX [6]),
    .Q(\DD1/srMRX [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/srMRX_6  (
    .C(\DD1/_sclk_43 ),
    .D(\DD1/srMRX [5]),
    .Q(\DD1/srMRX [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/srMRX_5  (
    .C(\DD1/_sclk_43 ),
    .D(\DD1/srMRX [4]),
    .Q(\DD1/srMRX [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/srMRX_4  (
    .C(\DD1/_sclk_43 ),
    .D(\DD1/srMRX [3]),
    .Q(\DD1/srMRX [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/srMRX_3  (
    .C(\DD1/_sclk_43 ),
    .D(\DD1/srMRX [2]),
    .Q(\DD1/srMRX [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/srMRX_2  (
    .C(\DD1/_sclk_43 ),
    .D(\DD1/srMRX [1]),
    .Q(\DD1/srMRX [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/srMRX_1  (
    .C(\DD1/_sclk_43 ),
    .D(\DD1/srMRX [0]),
    .Q(\DD1/srMRX [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/srMRX_0  (
    .C(\DD1/_sclk_43 ),
    .D(\DD2/srSTX [8]),
    .Q(\DD1/srMRX [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \DD1/_mosi  (
    .C(clk_BUFGP_250),
    .D(\DD1/srMTX [11]),
    .Q(\DD1/_mosi_42 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/_sclk  (
    .C(clk_BUFGP_250),
    .D(\DD1/_sclk_mux0000 ),
    .R(\DD1/_load1 ),
    .Q(\DD1/_sclk1 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD1/srMTX_11  (
    .C(clk_BUFGP_250),
    .CE(\DD1/srMTX_not0001 ),
    .D(\DD1/srMTX_mux0000 [11]),
    .Q(\DD1/srMTX [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD1/srMTX_10  (
    .C(clk_BUFGP_250),
    .CE(\DD1/srMTX_not0001 ),
    .D(\DD1/srMTX_mux0000 [10]),
    .Q(\DD1/srMTX [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD1/srMTX_9  (
    .C(clk_BUFGP_250),
    .CE(\DD1/srMTX_not0001 ),
    .D(\DD1/srMTX_mux0000 [9]),
    .Q(\DD1/srMTX [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD1/srMTX_8  (
    .C(clk_BUFGP_250),
    .CE(\DD1/srMTX_not0001 ),
    .D(\DD1/srMTX_mux0000 [8]),
    .Q(\DD1/srMTX [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD1/srMTX_7  (
    .C(clk_BUFGP_250),
    .CE(\DD1/srMTX_not0001 ),
    .D(\DD1/srMTX_mux0000 [7]),
    .Q(\DD1/srMTX [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD1/srMTX_6  (
    .C(clk_BUFGP_250),
    .CE(\DD1/srMTX_not0001 ),
    .D(\DD1/srMTX_mux0000 [6]),
    .Q(\DD1/srMTX [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD1/srMTX_5  (
    .C(clk_BUFGP_250),
    .CE(\DD1/srMTX_not0001 ),
    .D(\DD1/srMTX_mux0000 [5]),
    .Q(\DD1/srMTX [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD1/srMTX_4  (
    .C(clk_BUFGP_250),
    .CE(\DD1/srMTX_not0001 ),
    .D(\DD1/srMTX_mux0000 [4]),
    .Q(\DD1/srMTX [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD1/srMTX_3  (
    .C(clk_BUFGP_250),
    .CE(\DD1/srMTX_not0001 ),
    .D(\DD1/srMTX_mux0000 [3]),
    .Q(\DD1/srMTX [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD1/srMTX_2  (
    .C(clk_BUFGP_250),
    .CE(\DD1/srMTX_not0001 ),
    .D(\DD1/srMTX_mux0000 [2]),
    .Q(\DD1/srMTX [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD1/srMTX_1  (
    .C(clk_BUFGP_250),
    .CE(\DD1/srMTX_not0001 ),
    .D(\DD1/srMTX_mux0000 [1]),
    .Q(\DD1/srMTX [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD1/srMTX_0  (
    .C(clk_BUFGP_250),
    .CE(\DD1/srMTX_not0001 ),
    .D(\DD1/srMTX_mux0000 [0]),
    .Q(\DD1/srMTX [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cbBit_7  (
    .C(clk_BUFGP_250),
    .D(\DD1/cbBit_mux0000 [7]),
    .R(\DD1/start ),
    .Q(\DD1/cbBit [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cbBit_6  (
    .C(clk_BUFGP_250),
    .D(\DD1/cbBit_mux0000 [6]),
    .R(\DD1/start ),
    .Q(\DD1/cbBit [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cbBit_5  (
    .C(clk_BUFGP_250),
    .D(\DD1/cbBit_mux0000 [5]),
    .R(\DD1/start ),
    .Q(\DD1/cbBit [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cbBit_4  (
    .C(clk_BUFGP_250),
    .D(\DD1/cbBit_mux0000 [4]),
    .R(\DD1/start ),
    .Q(\DD1/cbBit [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cbBit_3  (
    .C(clk_BUFGP_250),
    .D(\DD1/cbBit_mux0000 [3]),
    .R(\DD1/start ),
    .Q(\DD1/cbBit [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cbBit_2  (
    .C(clk_BUFGP_250),
    .D(\DD1/cbBit_mux0000 [2]),
    .R(\DD1/start ),
    .Q(\DD1/cbBit [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cbBit_1  (
    .C(clk_BUFGP_250),
    .D(\DD1/cbBit_mux0000 [1]),
    .R(\DD1/start ),
    .Q(\DD1/cbBit [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \DD1/cbBit_0  (
    .C(clk_BUFGP_250),
    .D(\DD1/cbBit_mux0000 [0]),
    .R(\DD1/start ),
    .Q(\DD1/cbBit [0])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  \DD1/_load  (
    .C(clk_BUFGP_250),
    .CE(\DD1/S ),
    .D(N1),
    .R(st_IBUF_300),
    .Q(\DD1/_load1 )
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD2/srSTX_8  (
    .C(\DD1/_sclk_43 ),
    .CLR(\DD2/srSTX_8_and0000 ),
    .D(\DD2/srSTX [7]),
    .PRE(\DD2/srSTX_8_and0001 ),
    .Q(\DD2/srSTX [8])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD2/srSTX_7  (
    .C(\DD1/_sclk_43 ),
    .CLR(\DD2/srSTX_7_and0000 ),
    .D(\DD2/srSTX [6]),
    .PRE(\DD2/srSTX_7_and0001 ),
    .Q(\DD2/srSTX [7])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD2/srSTX_6  (
    .C(\DD1/_sclk_43 ),
    .CLR(\DD2/srSTX_6_and0000 ),
    .D(\DD2/srSTX [5]),
    .PRE(\DD2/srSTX_6_and0001 ),
    .Q(\DD2/srSTX [6])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD2/srSTX_5  (
    .C(\DD1/_sclk_43 ),
    .CLR(\DD2/srSTX_5_and0000 ),
    .D(\DD2/srSTX [4]),
    .PRE(\DD2/srSTX_5_and0001 ),
    .Q(\DD2/srSTX [5])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD2/srSTX_4  (
    .C(\DD1/_sclk_43 ),
    .CLR(\DD2/srSTX_4_and0000 ),
    .D(\DD2/srSTX [3]),
    .PRE(\DD2/srSTX_4_and0001 ),
    .Q(\DD2/srSTX [4])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD2/srSTX_3  (
    .C(\DD1/_sclk_43 ),
    .CLR(\DD2/srSTX_3_and0000 ),
    .D(\DD2/srSTX [2]),
    .PRE(\DD2/srSTX_3_and0001 ),
    .Q(\DD2/srSTX [3])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD2/srSTX_2  (
    .C(\DD1/_sclk_43 ),
    .CLR(\DD2/srSTX_2_and0000 ),
    .D(\DD2/srSTX [1]),
    .PRE(\DD2/srSTX_2_and0001 ),
    .Q(\DD2/srSTX [2])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD2/srSTX_1  (
    .C(\DD1/_sclk_43 ),
    .CLR(\DD2/srSTX_1_and0000 ),
    .D(\DD2/srSTX [0]),
    .PRE(\DD2/srSTX_1_and0001 ),
    .Q(\DD2/srSTX [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD2/_Do_8  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD2/srSRX [8]),
    .Q(\DD2/_Do [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD2/_Do_7  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD2/srSRX [7]),
    .Q(\DD2/_Do [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD2/_Do_6  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD2/srSRX [6]),
    .Q(\DD2/_Do [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD2/_Do_5  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD2/srSRX [5]),
    .Q(\DD2/_Do [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD2/_Do_4  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD2/srSRX [4]),
    .Q(\DD2/_Do [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD2/_Do_3  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD2/srSRX [3]),
    .Q(\DD2/_Do [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD2/_Do_2  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD2/srSRX [2]),
    .Q(\DD2/_Do [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD2/_Do_1  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD2/srSRX [1]),
    .Q(\DD2/_Do [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \DD2/_Do_0  (
    .C(\DD1/_load_40 ),
    .CLR(RESET_IBUF_206),
    .D(\DD2/srSRX [0]),
    .Q(\DD2/_Do [0])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD2/srSTX_0  (
    .C(\DD1/_sclk_43 ),
    .CLR(\DD2/srSTX_0_and0000 ),
    .D(SRX_DAT_9_OBUF_220),
    .PRE(\DD2/srSTX_0_and0001 ),
    .Q(\DD2/srSTX [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD2/srSRX_8  (
    .C(\DD1/_sclk_43 ),
    .CE(\DD2/LOAD_inv ),
    .D(\DD2/srSRX [7]),
    .Q(\DD2/srSRX [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD2/srSRX_7  (
    .C(\DD1/_sclk_43 ),
    .CE(\DD2/LOAD_inv ),
    .D(\DD2/srSRX [6]),
    .Q(\DD2/srSRX [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD2/srSRX_6  (
    .C(\DD1/_sclk_43 ),
    .CE(\DD2/LOAD_inv ),
    .D(\DD2/srSRX [5]),
    .Q(\DD2/srSRX [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD2/srSRX_5  (
    .C(\DD1/_sclk_43 ),
    .CE(\DD2/LOAD_inv ),
    .D(\DD2/srSRX [4]),
    .Q(\DD2/srSRX [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD2/srSRX_4  (
    .C(\DD1/_sclk_43 ),
    .CE(\DD2/LOAD_inv ),
    .D(\DD2/srSRX [3]),
    .Q(\DD2/srSRX [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD2/srSRX_3  (
    .C(\DD1/_sclk_43 ),
    .CE(\DD2/LOAD_inv ),
    .D(\DD2/srSRX [2]),
    .Q(\DD2/srSRX [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD2/srSRX_2  (
    .C(\DD1/_sclk_43 ),
    .CE(\DD2/LOAD_inv ),
    .D(\DD2/srSRX [1]),
    .Q(\DD2/srSRX [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD2/srSRX_1  (
    .C(\DD1/_sclk_43 ),
    .CE(\DD2/LOAD_inv ),
    .D(\DD2/srSRX [0]),
    .Q(\DD2/srSRX [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD2/srSRX_0  (
    .C(\DD1/_sclk_43 ),
    .CE(\DD2/LOAD_inv ),
    .D(\DD1/_mosi_42 ),
    .Q(\DD2/srSRX [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD2/srSTX_8_and00011  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_8_IBUF_238),
    .O(\DD2/srSTX_8_and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \DD2/srSTX_8_and00001  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_8_IBUF_238),
    .O(\DD2/srSTX_8_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD2/srSTX_7_and00011  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_7_IBUF_237),
    .O(\DD2/srSTX_7_and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \DD2/srSTX_7_and00001  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_7_IBUF_237),
    .O(\DD2/srSTX_7_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD2/srSTX_6_and00011  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_6_IBUF_236),
    .O(\DD2/srSTX_6_and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \DD2/srSTX_6_and00001  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_6_IBUF_236),
    .O(\DD2/srSTX_6_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD2/srSTX_5_and00011  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_5_IBUF_235),
    .O(\DD2/srSTX_5_and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \DD2/srSTX_5_and00001  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_5_IBUF_235),
    .O(\DD2/srSTX_5_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD2/srSTX_4_and00011  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_4_IBUF_234),
    .O(\DD2/srSTX_4_and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \DD2/srSTX_4_and00001  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_4_IBUF_234),
    .O(\DD2/srSTX_4_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD2/srSTX_3_and00011  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_3_IBUF_233),
    .O(\DD2/srSTX_3_and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \DD2/srSTX_3_and00001  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_3_IBUF_233),
    .O(\DD2/srSTX_3_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD2/srSTX_2_and00011  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_2_IBUF_232),
    .O(\DD2/srSTX_2_and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \DD2/srSTX_2_and00001  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_2_IBUF_232),
    .O(\DD2/srSTX_2_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD2/srSTX_1_and00011  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_1_IBUF_231),
    .O(\DD2/srSTX_1_and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \DD2/srSTX_1_and00001  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_1_IBUF_231),
    .O(\DD2/srSTX_1_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD2/srSTX_0_and00011  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_0_IBUF_230),
    .O(\DD2/srSTX_0_and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \DD2/srSTX_0_and00001  (
    .I0(\DD1/_load1 ),
    .I1(STX_DAT_0_IBUF_230),
    .O(\DD2/srSTX_0_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD1/srMTX_mux0000<0>1  (
    .I0(\DD1/_load1 ),
    .I1(MTX_DAT_0_IBUF_187),
    .O(\DD1/srMTX_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD1/srMTX_mux0000<9>1  (
    .I0(\DD1/_load1 ),
    .I1(\DD1/srMTX [8]),
    .I2(MTX_DAT_9_IBUF_198),
    .O(\DD1/srMTX_mux0000 [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD1/srMTX_mux0000<8>1  (
    .I0(\DD1/_load1 ),
    .I1(\DD1/srMTX [7]),
    .I2(MTX_DAT_8_IBUF_197),
    .O(\DD1/srMTX_mux0000 [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD1/srMTX_mux0000<7>1  (
    .I0(\DD1/_load1 ),
    .I1(\DD1/srMTX [6]),
    .I2(MTX_DAT_7_IBUF_196),
    .O(\DD1/srMTX_mux0000 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD1/srMTX_mux0000<6>1  (
    .I0(\DD1/_load1 ),
    .I1(\DD1/srMTX [5]),
    .I2(MTX_DAT_6_IBUF_195),
    .O(\DD1/srMTX_mux0000 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD1/srMTX_mux0000<5>1  (
    .I0(\DD1/_load1 ),
    .I1(\DD1/srMTX [4]),
    .I2(MTX_DAT_5_IBUF_194),
    .O(\DD1/srMTX_mux0000 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD1/srMTX_mux0000<4>1  (
    .I0(\DD1/_load1 ),
    .I1(\DD1/srMTX [3]),
    .I2(MTX_DAT_4_IBUF_193),
    .O(\DD1/srMTX_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD1/srMTX_mux0000<3>1  (
    .I0(\DD1/_load1 ),
    .I1(\DD1/srMTX [2]),
    .I2(MTX_DAT_3_IBUF_192),
    .O(\DD1/srMTX_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD1/srMTX_mux0000<2>1  (
    .I0(\DD1/_load1 ),
    .I1(\DD1/srMTX [1]),
    .I2(MTX_DAT_2_IBUF_191),
    .O(\DD1/srMTX_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD1/srMTX_mux0000<1>1  (
    .I0(\DD1/_load1 ),
    .I1(\DD1/srMTX [0]),
    .I2(MTX_DAT_1_IBUF_190),
    .O(\DD1/srMTX_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD1/srMTX_mux0000<11>1  (
    .I0(\DD1/_load1 ),
    .I1(\DD1/srMTX [10]),
    .I2(MTX_DAT_11_IBUF_189),
    .O(\DD1/srMTX_mux0000 [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \DD1/srMTX_mux0000<10>1  (
    .I0(\DD1/_load1 ),
    .I1(\DD1/srMTX [9]),
    .I2(MTX_DAT_10_IBUF_188),
    .O(\DD1/srMTX_mux0000 [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD1/start1  (
    .I0(st_IBUF_300),
    .I1(\DD1/_load1 ),
    .O(\DD1/start )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \DD1/S22  (
    .I0(\DD1/cbBit [0]),
    .I1(\DD1/cbBit [7]),
    .I2(\DD1/cbBit [5]),
    .I3(\DD1/cbBit [6]),
    .O(\DD1/S22_27 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \DD1/cbBit_mux0000<4>1  (
    .I0(\DD1/cbBit [4]),
    .I1(\DD1/cbBit [3]),
    .I2(\DD1/Madd_cbBit_addsub0000_cy[2] ),
    .I3(ce_tact_OBUF_248),
    .O(\DD1/cbBit_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \DD1/cbBit_mux0000<2>1  (
    .I0(\DD1/cbBit [2]),
    .I1(\DD1/cbBit [1]),
    .I2(\DD1/cbBit [0]),
    .I3(ce_tact_OBUF_248),
    .O(\DD1/cbBit_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DD1/ce23  (
    .I0(N4),
    .I1(\DD1/ce22_73 ),
    .O(\DD1/ce )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \DD1/cbBit_mux0000<7>1  (
    .I0(\DD1/cbBit [7]),
    .I1(\DD1/cbBit [6]),
    .I2(N7),
    .I3(ce_tact_OBUF_248),
    .O(\DD1/cbBit_mux0000 [7])
  );
  IBUF   RESET_IBUF (
    .I(RESET),
    .O(RESET_IBUF_206)
  );
  IBUF   st_IBUF (
    .I(st),
    .O(st_IBUF_300)
  );
  IBUF   STX_DAT_8_IBUF (
    .I(STX_DAT[8]),
    .O(STX_DAT_8_IBUF_238)
  );
  IBUF   STX_DAT_7_IBUF (
    .I(STX_DAT[7]),
    .O(STX_DAT_7_IBUF_237)
  );
  IBUF   STX_DAT_6_IBUF (
    .I(STX_DAT[6]),
    .O(STX_DAT_6_IBUF_236)
  );
  IBUF   STX_DAT_5_IBUF (
    .I(STX_DAT[5]),
    .O(STX_DAT_5_IBUF_235)
  );
  IBUF   STX_DAT_4_IBUF (
    .I(STX_DAT[4]),
    .O(STX_DAT_4_IBUF_234)
  );
  IBUF   STX_DAT_3_IBUF (
    .I(STX_DAT[3]),
    .O(STX_DAT_3_IBUF_233)
  );
  IBUF   STX_DAT_2_IBUF (
    .I(STX_DAT[2]),
    .O(STX_DAT_2_IBUF_232)
  );
  IBUF   STX_DAT_1_IBUF (
    .I(STX_DAT[1]),
    .O(STX_DAT_1_IBUF_231)
  );
  IBUF   STX_DAT_0_IBUF (
    .I(STX_DAT[0]),
    .O(STX_DAT_0_IBUF_230)
  );
  IBUF   MTX_DAT_11_IBUF (
    .I(MTX_DAT[11]),
    .O(MTX_DAT_11_IBUF_189)
  );
  IBUF   MTX_DAT_10_IBUF (
    .I(MTX_DAT[10]),
    .O(MTX_DAT_10_IBUF_188)
  );
  IBUF   MTX_DAT_9_IBUF (
    .I(MTX_DAT[9]),
    .O(MTX_DAT_9_IBUF_198)
  );
  IBUF   MTX_DAT_8_IBUF (
    .I(MTX_DAT[8]),
    .O(MTX_DAT_8_IBUF_197)
  );
  IBUF   MTX_DAT_7_IBUF (
    .I(MTX_DAT[7]),
    .O(MTX_DAT_7_IBUF_196)
  );
  IBUF   MTX_DAT_6_IBUF (
    .I(MTX_DAT[6]),
    .O(MTX_DAT_6_IBUF_195)
  );
  IBUF   MTX_DAT_5_IBUF (
    .I(MTX_DAT[5]),
    .O(MTX_DAT_5_IBUF_194)
  );
  IBUF   MTX_DAT_4_IBUF (
    .I(MTX_DAT[4]),
    .O(MTX_DAT_4_IBUF_193)
  );
  IBUF   MTX_DAT_3_IBUF (
    .I(MTX_DAT[3]),
    .O(MTX_DAT_3_IBUF_192)
  );
  IBUF   MTX_DAT_2_IBUF (
    .I(MTX_DAT[2]),
    .O(MTX_DAT_2_IBUF_191)
  );
  IBUF   MTX_DAT_1_IBUF (
    .I(MTX_DAT[1]),
    .O(MTX_DAT_1_IBUF_190)
  );
  IBUF   MTX_DAT_0_IBUF (
    .I(MTX_DAT[0]),
    .O(MTX_DAT_0_IBUF_187)
  );
  OBUF   ce_tact_OBUF (
    .I(ce_tact_OBUF_248),
    .O(ce_tact)
  );
  OBUF   LOAD_OBUF (
    .I(\DD1/_load1 ),
    .O(LOAD)
  );
  OBUF   MOSI_OBUF (
    .I(\DD1/_mosi_42 ),
    .O(MOSI)
  );
  OBUF   SCLK_OBUF (
    .I(\DD1/_sclk1 ),
    .O(SCLK)
  );
  OBUF   MISO_OBUF (
    .I(\DD2/srSTX [8]),
    .O(MISO)
  );
  OBUF   sr_SRX_11_OBUF (
    .I(SRX_DAT_9_OBUF_220),
    .O(sr_SRX[11])
  );
  OBUF   sr_SRX_10_OBUF (
    .I(SRX_DAT_9_OBUF_220),
    .O(sr_SRX[10])
  );
  OBUF   sr_SRX_9_OBUF (
    .I(SRX_DAT_9_OBUF_220),
    .O(sr_SRX[9])
  );
  OBUF   sr_SRX_8_OBUF (
    .I(\DD2/srSRX [8]),
    .O(sr_SRX[8])
  );
  OBUF   sr_SRX_7_OBUF (
    .I(\DD2/srSRX [7]),
    .O(sr_SRX[7])
  );
  OBUF   sr_SRX_6_OBUF (
    .I(\DD2/srSRX [6]),
    .O(sr_SRX[6])
  );
  OBUF   sr_SRX_5_OBUF (
    .I(\DD2/srSRX [5]),
    .O(sr_SRX[5])
  );
  OBUF   sr_SRX_4_OBUF (
    .I(\DD2/srSRX [4]),
    .O(sr_SRX[4])
  );
  OBUF   sr_SRX_3_OBUF (
    .I(\DD2/srSRX [3]),
    .O(sr_SRX[3])
  );
  OBUF   sr_SRX_2_OBUF (
    .I(\DD2/srSRX [2]),
    .O(sr_SRX[2])
  );
  OBUF   sr_SRX_1_OBUF (
    .I(\DD2/srSRX [1]),
    .O(sr_SRX[1])
  );
  OBUF   sr_SRX_0_OBUF (
    .I(\DD2/srSRX_0_1_123 ),
    .O(sr_SRX[0])
  );
  OBUF   sr_STX_11_OBUF (
    .I(SRX_DAT_9_OBUF_220),
    .O(sr_STX[11])
  );
  OBUF   sr_STX_10_OBUF (
    .I(SRX_DAT_9_OBUF_220),
    .O(sr_STX[10])
  );
  OBUF   sr_STX_9_OBUF (
    .I(SRX_DAT_9_OBUF_220),
    .O(sr_STX[9])
  );
  OBUF   sr_STX_8_OBUF (
    .I(\DD2/srSTX [8]),
    .O(sr_STX[8])
  );
  OBUF   sr_STX_7_OBUF (
    .I(\DD2/srSTX [7]),
    .O(sr_STX[7])
  );
  OBUF   sr_STX_6_OBUF (
    .I(\DD2/srSTX [6]),
    .O(sr_STX[6])
  );
  OBUF   sr_STX_5_OBUF (
    .I(\DD2/srSTX [5]),
    .O(sr_STX[5])
  );
  OBUF   sr_STX_4_OBUF (
    .I(\DD2/srSTX [4]),
    .O(sr_STX[4])
  );
  OBUF   sr_STX_3_OBUF (
    .I(\DD2/srSTX [3]),
    .O(sr_STX[3])
  );
  OBUF   sr_STX_2_OBUF (
    .I(\DD2/srSTX [2]),
    .O(sr_STX[2])
  );
  OBUF   sr_STX_1_OBUF (
    .I(\DD2/srSTX [1]),
    .O(sr_STX[1])
  );
  OBUF   sr_STX_0_OBUF (
    .I(\DD2/srSTX_0_1_133 ),
    .O(sr_STX[0])
  );
  OBUF   sr_MRX_11_OBUF (
    .I(\DD1/srMRX [11]),
    .O(sr_MRX[11])
  );
  OBUF   sr_MRX_10_OBUF (
    .I(\DD1/srMRX [10]),
    .O(sr_MRX[10])
  );
  OBUF   sr_MRX_9_OBUF (
    .I(\DD1/srMRX [9]),
    .O(sr_MRX[9])
  );
  OBUF   sr_MRX_8_OBUF (
    .I(\DD1/srMRX [8]),
    .O(sr_MRX[8])
  );
  OBUF   sr_MRX_7_OBUF (
    .I(\DD1/srMRX [7]),
    .O(sr_MRX[7])
  );
  OBUF   sr_MRX_6_OBUF (
    .I(\DD1/srMRX [6]),
    .O(sr_MRX[6])
  );
  OBUF   sr_MRX_5_OBUF (
    .I(\DD1/srMRX [5]),
    .O(sr_MRX[5])
  );
  OBUF   sr_MRX_4_OBUF (
    .I(\DD1/srMRX [4]),
    .O(sr_MRX[4])
  );
  OBUF   sr_MRX_3_OBUF (
    .I(\DD1/srMRX [3]),
    .O(sr_MRX[3])
  );
  OBUF   sr_MRX_2_OBUF (
    .I(\DD1/srMRX [2]),
    .O(sr_MRX[2])
  );
  OBUF   sr_MRX_1_OBUF (
    .I(\DD1/srMRX [1]),
    .O(sr_MRX[1])
  );
  OBUF   sr_MRX_0_OBUF (
    .I(\DD1/srMRX [0]),
    .O(sr_MRX[0])
  );
  OBUF   sr_MTX_11_OBUF (
    .I(\DD1/srMTX [11]),
    .O(sr_MTX[11])
  );
  OBUF   sr_MTX_10_OBUF (
    .I(\DD1/srMTX [10]),
    .O(sr_MTX[10])
  );
  OBUF   sr_MTX_9_OBUF (
    .I(\DD1/srMTX [9]),
    .O(sr_MTX[9])
  );
  OBUF   sr_MTX_8_OBUF (
    .I(\DD1/srMTX [8]),
    .O(sr_MTX[8])
  );
  OBUF   sr_MTX_7_OBUF (
    .I(\DD1/srMTX [7]),
    .O(sr_MTX[7])
  );
  OBUF   sr_MTX_6_OBUF (
    .I(\DD1/srMTX [6]),
    .O(sr_MTX[6])
  );
  OBUF   sr_MTX_5_OBUF (
    .I(\DD1/srMTX [5]),
    .O(sr_MTX[5])
  );
  OBUF   sr_MTX_4_OBUF (
    .I(\DD1/srMTX [4]),
    .O(sr_MTX[4])
  );
  OBUF   sr_MTX_3_OBUF (
    .I(\DD1/srMTX [3]),
    .O(sr_MTX[3])
  );
  OBUF   sr_MTX_2_OBUF (
    .I(\DD1/srMTX [2]),
    .O(sr_MTX[2])
  );
  OBUF   sr_MTX_1_OBUF (
    .I(\DD1/srMTX [1]),
    .O(sr_MTX[1])
  );
  OBUF   sr_MTX_0_OBUF (
    .I(\DD1/srMTX [0]),
    .O(sr_MTX[0])
  );
  OBUF   SRX_DAT_11_OBUF (
    .I(SRX_DAT_9_OBUF_220),
    .O(SRX_DAT[11])
  );
  OBUF   SRX_DAT_10_OBUF (
    .I(SRX_DAT_9_OBUF_220),
    .O(SRX_DAT[10])
  );
  OBUF   SRX_DAT_9_OBUF (
    .I(SRX_DAT_9_OBUF_220),
    .O(SRX_DAT[9])
  );
  OBUF   SRX_DAT_8_OBUF (
    .I(\DD2/_Do [8]),
    .O(SRX_DAT[8])
  );
  OBUF   SRX_DAT_7_OBUF (
    .I(\DD2/_Do [7]),
    .O(SRX_DAT[7])
  );
  OBUF   SRX_DAT_6_OBUF (
    .I(\DD2/_Do [6]),
    .O(SRX_DAT[6])
  );
  OBUF   SRX_DAT_5_OBUF (
    .I(\DD2/_Do [5]),
    .O(SRX_DAT[5])
  );
  OBUF   SRX_DAT_4_OBUF (
    .I(\DD2/_Do [4]),
    .O(SRX_DAT[4])
  );
  OBUF   SRX_DAT_3_OBUF (
    .I(\DD2/_Do [3]),
    .O(SRX_DAT[3])
  );
  OBUF   SRX_DAT_2_OBUF (
    .I(\DD2/_Do [2]),
    .O(SRX_DAT[2])
  );
  OBUF   SRX_DAT_1_OBUF (
    .I(\DD2/_Do [1]),
    .O(SRX_DAT[1])
  );
  OBUF   SRX_DAT_0_OBUF (
    .I(\DD2/_Do [0]),
    .O(SRX_DAT[0])
  );
  OBUF   MRX_DAT_11_OBUF (
    .I(\DD1/_Do [11]),
    .O(MRX_DAT[11])
  );
  OBUF   MRX_DAT_10_OBUF (
    .I(\DD1/_Do [10]),
    .O(MRX_DAT[10])
  );
  OBUF   MRX_DAT_9_OBUF (
    .I(\DD1/_Do [9]),
    .O(MRX_DAT[9])
  );
  OBUF   MRX_DAT_8_OBUF (
    .I(\DD1/_Do [8]),
    .O(MRX_DAT[8])
  );
  OBUF   MRX_DAT_7_OBUF (
    .I(\DD1/_Do [7]),
    .O(MRX_DAT[7])
  );
  OBUF   MRX_DAT_6_OBUF (
    .I(\DD1/_Do [6]),
    .O(MRX_DAT[6])
  );
  OBUF   MRX_DAT_5_OBUF (
    .I(\DD1/_Do [5]),
    .O(MRX_DAT[5])
  );
  OBUF   MRX_DAT_4_OBUF (
    .I(\DD1/_Do [4]),
    .O(MRX_DAT[4])
  );
  OBUF   MRX_DAT_3_OBUF (
    .I(\DD1/_Do [3]),
    .O(MRX_DAT[3])
  );
  OBUF   MRX_DAT_2_OBUF (
    .I(\DD1/_Do [2]),
    .O(MRX_DAT[2])
  );
  OBUF   MRX_DAT_1_OBUF (
    .I(\DD1/_Do [1]),
    .O(MRX_DAT[1])
  );
  OBUF   MRX_DAT_0_OBUF (
    .I(\DD1/_Do [0]),
    .O(MRX_DAT[0])
  );
  OBUF   cb_bit_7_OBUF (
    .I(\DD1/cbBit [7]),
    .O(cb_bit[7])
  );
  OBUF   cb_bit_6_OBUF (
    .I(\DD1/cbBit [6]),
    .O(cb_bit[6])
  );
  OBUF   cb_bit_5_OBUF (
    .I(\DD1/cbBit [5]),
    .O(cb_bit[5])
  );
  OBUF   cb_bit_4_OBUF (
    .I(\DD1/cbBit [4]),
    .O(cb_bit[4])
  );
  OBUF   cb_bit_3_OBUF (
    .I(\DD1/cbBit [3]),
    .O(cb_bit[3])
  );
  OBUF   cb_bit_2_OBUF (
    .I(\DD1/cbBit [2]),
    .O(cb_bit[2])
  );
  OBUF   cb_bit_1_OBUF (
    .I(\DD1/cbBit [1]),
    .O(cb_bit[1])
  );
  OBUF   cb_bit_0_OBUF (
    .I(\DD1/cbBit [0]),
    .O(cb_bit[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD1/Mcount_cb_tact_cy<6>_rt  (
    .I0(\DD1/cb_tact [6]),
    .O(\DD1/Mcount_cb_tact_cy<6>_rt_14 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD1/Mcount_cb_tact_cy<5>_rt  (
    .I0(\DD1/cb_tact [5]),
    .O(\DD1/Mcount_cb_tact_cy<5>_rt_12 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD1/Mcount_cb_tact_cy<4>_rt  (
    .I0(\DD1/cb_tact [4]),
    .O(\DD1/Mcount_cb_tact_cy<4>_rt_10 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD1/Mcount_cb_tact_cy<3>_rt  (
    .I0(\DD1/cb_tact [3]),
    .O(\DD1/Mcount_cb_tact_cy<3>_rt_8 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD1/Mcount_cb_tact_cy<2>_rt  (
    .I0(\DD1/cb_tact [2]),
    .O(\DD1/Mcount_cb_tact_cy<2>_rt_6 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD1/Mcount_cb_tact_cy<1>_rt  (
    .I0(\DD1/cb_tact [1]),
    .O(\DD1/Mcount_cb_tact_cy<1>_rt_4 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \DD1/Mcount_cb_tact_xor<7>_rt  (
    .I0(\DD1/cb_tact [7]),
    .O(\DD1/Mcount_cb_tact_xor<7>_rt_16 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \DD1/S35  (
    .I0(\DD1/_sclk1 ),
    .I1(\DD1/S10_26 ),
    .I2(\DD1/S22_27 ),
    .I3(\DD1/ce ),
    .O(\DD1/S )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \DD1/cbBit_mux0000<3>1  (
    .I0(\DD1/cbBit [3]),
    .I1(\DD1/_sclk1 ),
    .I2(\DD1/Madd_cbBit_addsub0000_cy[2] ),
    .I3(\DD1/ce ),
    .O(\DD1/cbBit_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \DD1/cbBit_mux0000<1>1  (
    .I0(\DD1/cbBit [1]),
    .I1(\DD1/cbBit [0]),
    .I2(\DD1/_sclk1 ),
    .I3(\DD1/ce ),
    .O(\DD1/cbBit_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \DD1/cbBit_mux0000<6>1  (
    .I0(\DD1/cbBit [6]),
    .I1(\DD1/_sclk1 ),
    .I2(\DD1/Madd_cbBit_addsub0000_cy[5] ),
    .I3(\DD1/ce ),
    .O(\DD1/cbBit_mux0000 [6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \DD1/ce_tact1  (
    .I0(\DD1/_sclk1 ),
    .I1(\DD1/ce22_73 ),
    .I2(\DD1/ce10_72 ),
    .O(ce_tact_OBUF_248)
  );
  LUT4 #(
    .INIT ( 16'hECCC ))
  \DD1/srMTX_not00011  (
    .I0(\DD1/_sclk1 ),
    .I1(\DD1/_load1 ),
    .I2(\DD1/ce22_73 ),
    .I3(\DD1/ce10_72 ),
    .O(\DD1/srMTX_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \DD1/cbBit_mux0000<0>1  (
    .I0(\DD1/ce10_72 ),
    .I1(\DD1/cbBit [0]),
    .I2(\DD1/ce22_73 ),
    .I3(\DD1/_sclk1 ),
    .O(\DD1/cbBit_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \DD1/_sclk_mux00001  (
    .I0(\DD1/ce10_72 ),
    .I1(\DD1/_sclk1 ),
    .I2(\DD1/ce22_73 ),
    .O(\DD1/_sclk_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \DD1/cbBit_mux0000<5>1_SW0  (
    .I0(\DD1/cbBit [4]),
    .I1(\DD1/cbBit [3]),
    .I2(\DD1/_sclk1 ),
    .I3(N6),
    .O(N2)
  );
  LUT4 #(
    .INIT ( 16'hCC6C ))
  \DD1/cbBit_mux0000<5>1  (
    .I0(\DD1/ce22_73 ),
    .I1(\DD1/cbBit [5]),
    .I2(\DD1/ce10_72 ),
    .I3(N2),
    .O(\DD1/cbBit_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \DD1/cb_tact_or00001  (
    .I0(st_IBUF_300),
    .I1(\DD1/_load1 ),
    .I2(\DD1/ce10_72 ),
    .I3(N5),
    .O(\DD1/cb_tact_or0000 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_250)
  );
  BUFG   \DD1/_sclk_BUFG  (
    .I(\DD1/_sclk1 ),
    .O(\DD1/_sclk_43 )
  );
  BUFG   \DD1/_load_BUFG  (
    .I(\DD1/_load1 ),
    .O(\DD1/_load_40 )
  );
  INV   \DD1/Mcount_cb_tact_lut<0>_INV_0  (
    .I(\DD1/cb_tact [0]),
    .O(\DD1/Mcount_cb_tact_lut [0])
  );
  INV   \DD2/LOAD_inv1_INV_0  (
    .I(\DD1/_load1 ),
    .O(\DD2/LOAD_inv )
  );
  LUT4_L #(
    .INIT ( 16'h0020 ))
  \DD1/S10  (
    .I0(\DD1/cbBit [1]),
    .I1(\DD1/cbBit [2]),
    .I2(\DD1/cbBit [3]),
    .I3(\DD1/cbBit [4]),
    .LO(\DD1/S10_26 )
  );
  LUT4_D #(
    .INIT ( 16'h0020 ))
  \DD1/ce10  (
    .I0(\DD1/cb_tact [0]),
    .I1(\DD1/cb_tact [1]),
    .I2(\DD1/cb_tact [3]),
    .I3(\DD1/cb_tact [2]),
    .LO(N4),
    .O(\DD1/ce10_72 )
  );
  LUT4_D #(
    .INIT ( 16'h0002 ))
  \DD1/ce22  (
    .I0(\DD1/cb_tact [4]),
    .I1(\DD1/cb_tact [5]),
    .I2(\DD1/cb_tact [6]),
    .I3(\DD1/cb_tact [7]),
    .LO(N5),
    .O(\DD1/ce22_73 )
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \DD1/Madd_cbBit_addsub0000_cy<2>11  (
    .I0(\DD1/cbBit [2]),
    .I1(\DD1/cbBit [1]),
    .I2(\DD1/cbBit [0]),
    .LO(N6),
    .O(\DD1/Madd_cbBit_addsub0000_cy[2] )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \DD1/Madd_cbBit_addsub0000_cy<5>11  (
    .I0(\DD1/cbBit [5]),
    .I1(\DD1/cbBit [4]),
    .I2(\DD1/cbBit [3]),
    .I3(\DD1/Madd_cbBit_addsub0000_cy[2] ),
    .LO(N7),
    .O(\DD1/Madd_cbBit_addsub0000_cy[5] )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \DD2/srSRX_0_1  (
    .C(\DD1/_sclk_43 ),
    .CE(\DD2/LOAD_inv ),
    .D(\DD1/_mosi_42 ),
    .Q(\DD2/srSRX_0_1_123 )
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  \DD2/srSTX_0_1  (
    .C(\DD1/_sclk_43 ),
    .CLR(\DD2/srSTX_0_and0000 ),
    .D(SRX_DAT_9_OBUF_220),
    .PRE(\DD2/srSTX_0_and0001 ),
    .Q(\DD2/srSTX_0_1_133 )
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

