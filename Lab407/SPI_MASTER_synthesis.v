module SPI_MASTER (
  clk, clr, ce_tact, ce, LOAD, st, MOSI, SCLK, MISO, DO, sr_MRX, sr_MTX, cb_bit, DI
);
  input clk;
  input clr;
  output ce_tact;
  output ce;
  output LOAD;
  input st;
  output MOSI;
  output SCLK;
  input MISO;
  output [11 : 0] DO;
  output [11 : 0] sr_MRX;
  output [11 : 0] sr_MTX;
  output [7 : 0] cb_bit;
  input [11 : 0] DI;
  wire DI_0_IBUF_12;
  wire DI_10_IBUF_13;
  wire DI_11_IBUF_14;
  wire DI_1_IBUF_15;
  wire DI_2_IBUF_16;
  wire DI_3_IBUF_17;
  wire DI_4_IBUF_18;
  wire DI_5_IBUF_19;
  wire DI_6_IBUF_20;
  wire DI_7_IBUF_21;
  wire DI_8_IBUF_22;
  wire DI_9_IBUF_23;
  wire MISO_IBUF_38;
  wire \Madd_cbBit_addsub0000_cy[2] ;
  wire \Madd_cbBit_addsub0000_cy[5] ;
  wire \Mcount_cb_tact_cy<1>_rt_44 ;
  wire \Mcount_cb_tact_cy<2>_rt_46 ;
  wire \Mcount_cb_tact_cy<3>_rt_48 ;
  wire \Mcount_cb_tact_cy<4>_rt_50 ;
  wire \Mcount_cb_tact_cy<5>_rt_52 ;
  wire \Mcount_cb_tact_cy<6>_rt_54 ;
  wire \Mcount_cb_tact_xor<7>_rt_56 ;
  wire N0;
  wire N1;
  wire N10;
  wire N11;
  wire N12;
  wire N7;
  wire N9;
  wire S;
  wire S10_73;
  wire S22_74;
  wire _load_88;
  wire _mosi_89;
  wire _sclk_90;
  wire _sclk_mux0000;
  wire cb_tact_or0000;
  wire ce10_126;
  wire ce22_127;
  wire ce_OBUF_128;
  wire ce_tact_OBUF_130;
  wire clk_BUFGP_132;
  wire clr_IBUF_134;
  wire srMRX_0_1_136;
  wire srMTX_not0001;
  wire st_IBUF_198;
  wire start;
  wire [6 : 0] Mcount_cb_tact_cy;
  wire [0 : 0] Mcount_cb_tact_lut;
  wire [7 : 0] Result;
  wire [11 : 0] _Do;
  wire [7 : 0] cbBit;
  wire [7 : 0] cbBit_mux0000;
  wire [7 : 0] cb_tact;
  wire [11 : 0] srMRX;
  wire [11 : 0] srMTX;
  wire [11 : 0] srMTX_mux0000;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDRE #(
    .INIT ( 1'b1 ))
  _load (
    .C(clk_BUFGP_132),
    .CE(S),
    .D(N1),
    .R(st_IBUF_198),
    .Q(_load_88)
  );
  FDR #(
    .INIT ( 1'b0 ))
  cbBit_0 (
    .C(clk_BUFGP_132),
    .D(cbBit_mux0000[0]),
    .R(start),
    .Q(cbBit[0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cbBit_1 (
    .C(clk_BUFGP_132),
    .D(cbBit_mux0000[1]),
    .R(start),
    .Q(cbBit[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cbBit_2 (
    .C(clk_BUFGP_132),
    .D(cbBit_mux0000[2]),
    .R(start),
    .Q(cbBit[2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cbBit_3 (
    .C(clk_BUFGP_132),
    .D(cbBit_mux0000[3]),
    .R(start),
    .Q(cbBit[3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cbBit_4 (
    .C(clk_BUFGP_132),
    .D(cbBit_mux0000[4]),
    .R(start),
    .Q(cbBit[4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cbBit_5 (
    .C(clk_BUFGP_132),
    .D(cbBit_mux0000[5]),
    .R(start),
    .Q(cbBit[5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cbBit_6 (
    .C(clk_BUFGP_132),
    .D(cbBit_mux0000[6]),
    .R(start),
    .Q(cbBit[6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cbBit_7 (
    .C(clk_BUFGP_132),
    .D(cbBit_mux0000[7]),
    .R(start),
    .Q(cbBit[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srMTX_0 (
    .C(clk_BUFGP_132),
    .CE(srMTX_not0001),
    .D(srMTX_mux0000[0]),
    .Q(srMTX[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srMTX_1 (
    .C(clk_BUFGP_132),
    .CE(srMTX_not0001),
    .D(srMTX_mux0000[1]),
    .Q(srMTX[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srMTX_2 (
    .C(clk_BUFGP_132),
    .CE(srMTX_not0001),
    .D(srMTX_mux0000[2]),
    .Q(srMTX[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srMTX_3 (
    .C(clk_BUFGP_132),
    .CE(srMTX_not0001),
    .D(srMTX_mux0000[3]),
    .Q(srMTX[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srMTX_4 (
    .C(clk_BUFGP_132),
    .CE(srMTX_not0001),
    .D(srMTX_mux0000[4]),
    .Q(srMTX[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srMTX_5 (
    .C(clk_BUFGP_132),
    .CE(srMTX_not0001),
    .D(srMTX_mux0000[5]),
    .Q(srMTX[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srMTX_6 (
    .C(clk_BUFGP_132),
    .CE(srMTX_not0001),
    .D(srMTX_mux0000[6]),
    .Q(srMTX[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srMTX_7 (
    .C(clk_BUFGP_132),
    .CE(srMTX_not0001),
    .D(srMTX_mux0000[7]),
    .Q(srMTX[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srMTX_8 (
    .C(clk_BUFGP_132),
    .CE(srMTX_not0001),
    .D(srMTX_mux0000[8]),
    .Q(srMTX[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srMTX_9 (
    .C(clk_BUFGP_132),
    .CE(srMTX_not0001),
    .D(srMTX_mux0000[9]),
    .Q(srMTX[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srMTX_10 (
    .C(clk_BUFGP_132),
    .CE(srMTX_not0001),
    .D(srMTX_mux0000[10]),
    .Q(srMTX[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srMTX_11 (
    .C(clk_BUFGP_132),
    .CE(srMTX_not0001),
    .D(srMTX_mux0000[11]),
    .Q(srMTX[11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  _sclk (
    .C(clk_BUFGP_132),
    .D(_sclk_mux0000),
    .R(_load_88),
    .Q(_sclk_90)
  );
  FD #(
    .INIT ( 1'b0 ))
  _mosi (
    .C(clk_BUFGP_132),
    .D(srMTX[11]),
    .Q(_mosi_89)
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_0 (
    .C(_sclk_90),
    .D(MISO_IBUF_38),
    .Q(srMRX[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_1 (
    .C(_sclk_90),
    .D(srMRX[0]),
    .Q(srMRX[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_2 (
    .C(_sclk_90),
    .D(srMRX[1]),
    .Q(srMRX[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_3 (
    .C(_sclk_90),
    .D(srMRX[2]),
    .Q(srMRX[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_4 (
    .C(_sclk_90),
    .D(srMRX[3]),
    .Q(srMRX[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_5 (
    .C(_sclk_90),
    .D(srMRX[4]),
    .Q(srMRX[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_6 (
    .C(_sclk_90),
    .D(srMRX[5]),
    .Q(srMRX[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_7 (
    .C(_sclk_90),
    .D(srMRX[6]),
    .Q(srMRX[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_8 (
    .C(_sclk_90),
    .D(srMRX[7]),
    .Q(srMRX[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_9 (
    .C(_sclk_90),
    .D(srMRX[8]),
    .Q(srMRX[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_10 (
    .C(_sclk_90),
    .D(srMRX[9]),
    .Q(srMRX[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_11 (
    .C(_sclk_90),
    .D(srMRX[10]),
    .Q(srMRX[11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_0 (
    .C(_load_88),
    .CLR(clr_IBUF_134),
    .D(srMRX[0]),
    .Q(_Do[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_1 (
    .C(_load_88),
    .CLR(clr_IBUF_134),
    .D(srMRX[1]),
    .Q(_Do[1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_2 (
    .C(_load_88),
    .CLR(clr_IBUF_134),
    .D(srMRX[2]),
    .Q(_Do[2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_3 (
    .C(_load_88),
    .CLR(clr_IBUF_134),
    .D(srMRX[3]),
    .Q(_Do[3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_4 (
    .C(_load_88),
    .CLR(clr_IBUF_134),
    .D(srMRX[4]),
    .Q(_Do[4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_5 (
    .C(_load_88),
    .CLR(clr_IBUF_134),
    .D(srMRX[5]),
    .Q(_Do[5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_6 (
    .C(_load_88),
    .CLR(clr_IBUF_134),
    .D(srMRX[6]),
    .Q(_Do[6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_7 (
    .C(_load_88),
    .CLR(clr_IBUF_134),
    .D(srMRX[7]),
    .Q(_Do[7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_8 (
    .C(_load_88),
    .CLR(clr_IBUF_134),
    .D(srMRX[8]),
    .Q(_Do[8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_9 (
    .C(_load_88),
    .CLR(clr_IBUF_134),
    .D(srMRX[9]),
    .Q(_Do[9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_10 (
    .C(_load_88),
    .CLR(clr_IBUF_134),
    .D(srMRX[10]),
    .Q(_Do[10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_11 (
    .C(_load_88),
    .CLR(clr_IBUF_134),
    .D(srMRX[11]),
    .Q(_Do[11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_tact_0 (
    .C(clk_BUFGP_132),
    .D(Result[0]),
    .R(cb_tact_or0000),
    .Q(cb_tact[0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_tact_1 (
    .C(clk_BUFGP_132),
    .D(Result[1]),
    .R(cb_tact_or0000),
    .Q(cb_tact[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_tact_2 (
    .C(clk_BUFGP_132),
    .D(Result[2]),
    .R(cb_tact_or0000),
    .Q(cb_tact[2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_tact_3 (
    .C(clk_BUFGP_132),
    .D(Result[3]),
    .R(cb_tact_or0000),
    .Q(cb_tact[3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_tact_4 (
    .C(clk_BUFGP_132),
    .D(Result[4]),
    .R(cb_tact_or0000),
    .Q(cb_tact[4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_tact_5 (
    .C(clk_BUFGP_132),
    .D(Result[5]),
    .R(cb_tact_or0000),
    .Q(cb_tact[5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_tact_6 (
    .C(clk_BUFGP_132),
    .D(Result[6]),
    .R(cb_tact_or0000),
    .Q(cb_tact[6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_tact_7 (
    .C(clk_BUFGP_132),
    .D(Result[7]),
    .R(cb_tact_or0000),
    .Q(cb_tact[7])
  );
  MUXCY   \Mcount_cb_tact_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Mcount_cb_tact_lut[0]),
    .O(Mcount_cb_tact_cy[0])
  );
  XORCY   \Mcount_cb_tact_xor<0>  (
    .CI(N0),
    .LI(Mcount_cb_tact_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_cb_tact_cy<1>  (
    .CI(Mcount_cb_tact_cy[0]),
    .DI(N0),
    .S(\Mcount_cb_tact_cy<1>_rt_44 ),
    .O(Mcount_cb_tact_cy[1])
  );
  XORCY   \Mcount_cb_tact_xor<1>  (
    .CI(Mcount_cb_tact_cy[0]),
    .LI(\Mcount_cb_tact_cy<1>_rt_44 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_cb_tact_cy<2>  (
    .CI(Mcount_cb_tact_cy[1]),
    .DI(N0),
    .S(\Mcount_cb_tact_cy<2>_rt_46 ),
    .O(Mcount_cb_tact_cy[2])
  );
  XORCY   \Mcount_cb_tact_xor<2>  (
    .CI(Mcount_cb_tact_cy[1]),
    .LI(\Mcount_cb_tact_cy<2>_rt_46 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_cb_tact_cy<3>  (
    .CI(Mcount_cb_tact_cy[2]),
    .DI(N0),
    .S(\Mcount_cb_tact_cy<3>_rt_48 ),
    .O(Mcount_cb_tact_cy[3])
  );
  XORCY   \Mcount_cb_tact_xor<3>  (
    .CI(Mcount_cb_tact_cy[2]),
    .LI(\Mcount_cb_tact_cy<3>_rt_48 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_cb_tact_cy<4>  (
    .CI(Mcount_cb_tact_cy[3]),
    .DI(N0),
    .S(\Mcount_cb_tact_cy<4>_rt_50 ),
    .O(Mcount_cb_tact_cy[4])
  );
  XORCY   \Mcount_cb_tact_xor<4>  (
    .CI(Mcount_cb_tact_cy[3]),
    .LI(\Mcount_cb_tact_cy<4>_rt_50 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_cb_tact_cy<5>  (
    .CI(Mcount_cb_tact_cy[4]),
    .DI(N0),
    .S(\Mcount_cb_tact_cy<5>_rt_52 ),
    .O(Mcount_cb_tact_cy[5])
  );
  XORCY   \Mcount_cb_tact_xor<5>  (
    .CI(Mcount_cb_tact_cy[4]),
    .LI(\Mcount_cb_tact_cy<5>_rt_52 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_cb_tact_cy<6>  (
    .CI(Mcount_cb_tact_cy[5]),
    .DI(N0),
    .S(\Mcount_cb_tact_cy<6>_rt_54 ),
    .O(Mcount_cb_tact_cy[6])
  );
  XORCY   \Mcount_cb_tact_xor<6>  (
    .CI(Mcount_cb_tact_cy[5]),
    .LI(\Mcount_cb_tact_cy<6>_rt_54 ),
    .O(Result[6])
  );
  XORCY   \Mcount_cb_tact_xor<7>  (
    .CI(Mcount_cb_tact_cy[6]),
    .LI(\Mcount_cb_tact_xor<7>_rt_56 ),
    .O(Result[7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \srMTX_mux0000<0>1  (
    .I0(_load_88),
    .I1(DI_0_IBUF_12),
    .O(srMTX_mux0000[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \srMTX_mux0000<9>1  (
    .I0(_load_88),
    .I1(srMTX[8]),
    .I2(DI_9_IBUF_23),
    .O(srMTX_mux0000[9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \srMTX_mux0000<8>1  (
    .I0(_load_88),
    .I1(srMTX[7]),
    .I2(DI_8_IBUF_22),
    .O(srMTX_mux0000[8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \srMTX_mux0000<7>1  (
    .I0(_load_88),
    .I1(srMTX[6]),
    .I2(DI_7_IBUF_21),
    .O(srMTX_mux0000[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \srMTX_mux0000<6>1  (
    .I0(_load_88),
    .I1(srMTX[5]),
    .I2(DI_6_IBUF_20),
    .O(srMTX_mux0000[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \srMTX_mux0000<5>1  (
    .I0(_load_88),
    .I1(srMTX[4]),
    .I2(DI_5_IBUF_19),
    .O(srMTX_mux0000[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \srMTX_mux0000<4>1  (
    .I0(_load_88),
    .I1(srMTX[3]),
    .I2(DI_4_IBUF_18),
    .O(srMTX_mux0000[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \srMTX_mux0000<3>1  (
    .I0(_load_88),
    .I1(srMTX[2]),
    .I2(DI_3_IBUF_17),
    .O(srMTX_mux0000[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \srMTX_mux0000<2>1  (
    .I0(_load_88),
    .I1(srMTX[1]),
    .I2(DI_2_IBUF_16),
    .O(srMTX_mux0000[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \srMTX_mux0000<1>1  (
    .I0(_load_88),
    .I1(srMTX[0]),
    .I2(DI_1_IBUF_15),
    .O(srMTX_mux0000[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \srMTX_mux0000<11>1  (
    .I0(_load_88),
    .I1(srMTX[10]),
    .I2(DI_11_IBUF_14),
    .O(srMTX_mux0000[11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \srMTX_mux0000<10>1  (
    .I0(_load_88),
    .I1(srMTX[9]),
    .I2(DI_10_IBUF_13),
    .O(srMTX_mux0000[10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  start1 (
    .I0(st_IBUF_198),
    .I1(_load_88),
    .O(start)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  S22 (
    .I0(cbBit[0]),
    .I1(cbBit[7]),
    .I2(cbBit[5]),
    .I3(cbBit[6]),
    .O(S22_74)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \cbBit_mux0000<4>1  (
    .I0(cbBit[4]),
    .I1(cbBit[3]),
    .I2(\Madd_cbBit_addsub0000_cy[2] ),
    .I3(ce_tact_OBUF_130),
    .O(cbBit_mux0000[4])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \cbBit_mux0000<2>1  (
    .I0(cbBit[2]),
    .I1(cbBit[1]),
    .I2(cbBit[0]),
    .I3(ce_tact_OBUF_130),
    .O(cbBit_mux0000[2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  ce23 (
    .I0(N9),
    .I1(ce22_127),
    .O(ce_OBUF_128)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \cbBit_mux0000<7>1  (
    .I0(cbBit[7]),
    .I1(cbBit[6]),
    .I2(N12),
    .I3(ce_tact_OBUF_130),
    .O(cbBit_mux0000[7])
  );
  IBUF   clr_IBUF (
    .I(clr),
    .O(clr_IBUF_134)
  );
  IBUF   st_IBUF (
    .I(st),
    .O(st_IBUF_198)
  );
  IBUF   MISO_IBUF (
    .I(MISO),
    .O(MISO_IBUF_38)
  );
  IBUF   DI_11_IBUF (
    .I(DI[11]),
    .O(DI_11_IBUF_14)
  );
  IBUF   DI_10_IBUF (
    .I(DI[10]),
    .O(DI_10_IBUF_13)
  );
  IBUF   DI_9_IBUF (
    .I(DI[9]),
    .O(DI_9_IBUF_23)
  );
  IBUF   DI_8_IBUF (
    .I(DI[8]),
    .O(DI_8_IBUF_22)
  );
  IBUF   DI_7_IBUF (
    .I(DI[7]),
    .O(DI_7_IBUF_21)
  );
  IBUF   DI_6_IBUF (
    .I(DI[6]),
    .O(DI_6_IBUF_20)
  );
  IBUF   DI_5_IBUF (
    .I(DI[5]),
    .O(DI_5_IBUF_19)
  );
  IBUF   DI_4_IBUF (
    .I(DI[4]),
    .O(DI_4_IBUF_18)
  );
  IBUF   DI_3_IBUF (
    .I(DI[3]),
    .O(DI_3_IBUF_17)
  );
  IBUF   DI_2_IBUF (
    .I(DI[2]),
    .O(DI_2_IBUF_16)
  );
  IBUF   DI_1_IBUF (
    .I(DI[1]),
    .O(DI_1_IBUF_15)
  );
  IBUF   DI_0_IBUF (
    .I(DI[0]),
    .O(DI_0_IBUF_12)
  );
  OBUF   ce_tact_OBUF (
    .I(ce_tact_OBUF_130),
    .O(ce_tact)
  );
  OBUF   ce_OBUF (
    .I(ce_OBUF_128),
    .O(ce)
  );
  OBUF   LOAD_OBUF (
    .I(_load_88),
    .O(LOAD)
  );
  OBUF   MOSI_OBUF (
    .I(_mosi_89),
    .O(MOSI)
  );
  OBUF   SCLK_OBUF (
    .I(_sclk_90),
    .O(SCLK)
  );
  OBUF   DO_11_OBUF (
    .I(_Do[11]),
    .O(DO[11])
  );
  OBUF   DO_10_OBUF (
    .I(_Do[10]),
    .O(DO[10])
  );
  OBUF   DO_9_OBUF (
    .I(_Do[9]),
    .O(DO[9])
  );
  OBUF   DO_8_OBUF (
    .I(_Do[8]),
    .O(DO[8])
  );
  OBUF   DO_7_OBUF (
    .I(_Do[7]),
    .O(DO[7])
  );
  OBUF   DO_6_OBUF (
    .I(_Do[6]),
    .O(DO[6])
  );
  OBUF   DO_5_OBUF (
    .I(_Do[5]),
    .O(DO[5])
  );
  OBUF   DO_4_OBUF (
    .I(_Do[4]),
    .O(DO[4])
  );
  OBUF   DO_3_OBUF (
    .I(_Do[3]),
    .O(DO[3])
  );
  OBUF   DO_2_OBUF (
    .I(_Do[2]),
    .O(DO[2])
  );
  OBUF   DO_1_OBUF (
    .I(_Do[1]),
    .O(DO[1])
  );
  OBUF   DO_0_OBUF (
    .I(_Do[0]),
    .O(DO[0])
  );
  OBUF   sr_MRX_11_OBUF (
    .I(srMRX[11]),
    .O(sr_MRX[11])
  );
  OBUF   sr_MRX_10_OBUF (
    .I(srMRX[10]),
    .O(sr_MRX[10])
  );
  OBUF   sr_MRX_9_OBUF (
    .I(srMRX[9]),
    .O(sr_MRX[9])
  );
  OBUF   sr_MRX_8_OBUF (
    .I(srMRX[8]),
    .O(sr_MRX[8])
  );
  OBUF   sr_MRX_7_OBUF (
    .I(srMRX[7]),
    .O(sr_MRX[7])
  );
  OBUF   sr_MRX_6_OBUF (
    .I(srMRX[6]),
    .O(sr_MRX[6])
  );
  OBUF   sr_MRX_5_OBUF (
    .I(srMRX[5]),
    .O(sr_MRX[5])
  );
  OBUF   sr_MRX_4_OBUF (
    .I(srMRX[4]),
    .O(sr_MRX[4])
  );
  OBUF   sr_MRX_3_OBUF (
    .I(srMRX[3]),
    .O(sr_MRX[3])
  );
  OBUF   sr_MRX_2_OBUF (
    .I(srMRX[2]),
    .O(sr_MRX[2])
  );
  OBUF   sr_MRX_1_OBUF (
    .I(srMRX[1]),
    .O(sr_MRX[1])
  );
  OBUF   sr_MRX_0_OBUF (
    .I(srMRX_0_1_136),
    .O(sr_MRX[0])
  );
  OBUF   sr_MTX_11_OBUF (
    .I(srMTX[11]),
    .O(sr_MTX[11])
  );
  OBUF   sr_MTX_10_OBUF (
    .I(srMTX[10]),
    .O(sr_MTX[10])
  );
  OBUF   sr_MTX_9_OBUF (
    .I(srMTX[9]),
    .O(sr_MTX[9])
  );
  OBUF   sr_MTX_8_OBUF (
    .I(srMTX[8]),
    .O(sr_MTX[8])
  );
  OBUF   sr_MTX_7_OBUF (
    .I(srMTX[7]),
    .O(sr_MTX[7])
  );
  OBUF   sr_MTX_6_OBUF (
    .I(srMTX[6]),
    .O(sr_MTX[6])
  );
  OBUF   sr_MTX_5_OBUF (
    .I(srMTX[5]),
    .O(sr_MTX[5])
  );
  OBUF   sr_MTX_4_OBUF (
    .I(srMTX[4]),
    .O(sr_MTX[4])
  );
  OBUF   sr_MTX_3_OBUF (
    .I(srMTX[3]),
    .O(sr_MTX[3])
  );
  OBUF   sr_MTX_2_OBUF (
    .I(srMTX[2]),
    .O(sr_MTX[2])
  );
  OBUF   sr_MTX_1_OBUF (
    .I(srMTX[1]),
    .O(sr_MTX[1])
  );
  OBUF   sr_MTX_0_OBUF (
    .I(srMTX[0]),
    .O(sr_MTX[0])
  );
  OBUF   cb_bit_7_OBUF (
    .I(cbBit[7]),
    .O(cb_bit[7])
  );
  OBUF   cb_bit_6_OBUF (
    .I(cbBit[6]),
    .O(cb_bit[6])
  );
  OBUF   cb_bit_5_OBUF (
    .I(cbBit[5]),
    .O(cb_bit[5])
  );
  OBUF   cb_bit_4_OBUF (
    .I(cbBit[4]),
    .O(cb_bit[4])
  );
  OBUF   cb_bit_3_OBUF (
    .I(cbBit[3]),
    .O(cb_bit[3])
  );
  OBUF   cb_bit_2_OBUF (
    .I(cbBit[2]),
    .O(cb_bit[2])
  );
  OBUF   cb_bit_1_OBUF (
    .I(cbBit[1]),
    .O(cb_bit[1])
  );
  OBUF   cb_bit_0_OBUF (
    .I(cbBit[0]),
    .O(cb_bit[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_tact_cy<1>_rt  (
    .I0(cb_tact[1]),
    .O(\Mcount_cb_tact_cy<1>_rt_44 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_tact_cy<2>_rt  (
    .I0(cb_tact[2]),
    .O(\Mcount_cb_tact_cy<2>_rt_46 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_tact_cy<3>_rt  (
    .I0(cb_tact[3]),
    .O(\Mcount_cb_tact_cy<3>_rt_48 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_tact_cy<4>_rt  (
    .I0(cb_tact[4]),
    .O(\Mcount_cb_tact_cy<4>_rt_50 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_tact_cy<5>_rt  (
    .I0(cb_tact[5]),
    .O(\Mcount_cb_tact_cy<5>_rt_52 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_tact_cy<6>_rt  (
    .I0(cb_tact[6]),
    .O(\Mcount_cb_tact_cy<6>_rt_54 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_tact_xor<7>_rt  (
    .I0(cb_tact[7]),
    .O(\Mcount_cb_tact_xor<7>_rt_56 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  S35 (
    .I0(_sclk_90),
    .I1(S10_73),
    .I2(S22_74),
    .I3(ce_OBUF_128),
    .O(S)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \cbBit_mux0000<3>1  (
    .I0(cbBit[3]),
    .I1(_sclk_90),
    .I2(\Madd_cbBit_addsub0000_cy[2] ),
    .I3(ce_OBUF_128),
    .O(cbBit_mux0000[3])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \cbBit_mux0000<1>1  (
    .I0(cbBit[1]),
    .I1(cbBit[0]),
    .I2(_sclk_90),
    .I3(ce_OBUF_128),
    .O(cbBit_mux0000[1])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \cbBit_mux0000<6>1  (
    .I0(cbBit[6]),
    .I1(_sclk_90),
    .I2(\Madd_cbBit_addsub0000_cy[5] ),
    .I3(ce_OBUF_128),
    .O(cbBit_mux0000[6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  ce_tact1 (
    .I0(_sclk_90),
    .I1(ce22_127),
    .I2(ce10_126),
    .O(ce_tact_OBUF_130)
  );
  LUT4 #(
    .INIT ( 16'hECCC ))
  srMTX_not00011 (
    .I0(_sclk_90),
    .I1(_load_88),
    .I2(ce22_127),
    .I3(ce10_126),
    .O(srMTX_not0001)
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \cbBit_mux0000<0>1  (
    .I0(ce10_126),
    .I1(cbBit[0]),
    .I2(ce22_127),
    .I3(_sclk_90),
    .O(cbBit_mux0000[0])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  _sclk_mux00001 (
    .I0(ce10_126),
    .I1(_sclk_90),
    .I2(ce22_127),
    .O(_sclk_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \cbBit_mux0000<5>1_SW0  (
    .I0(cbBit[4]),
    .I1(cbBit[3]),
    .I2(_sclk_90),
    .I3(N11),
    .O(N7)
  );
  LUT4 #(
    .INIT ( 16'hCC6C ))
  \cbBit_mux0000<5>1  (
    .I0(ce22_127),
    .I1(cbBit[5]),
    .I2(ce10_126),
    .I3(N7),
    .O(cbBit_mux0000[5])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  cb_tact_or00001 (
    .I0(st_IBUF_198),
    .I1(_load_88),
    .I2(ce10_126),
    .I3(N10),
    .O(cb_tact_or0000)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_132)
  );
  INV   \Mcount_cb_tact_lut<0>_INV_0  (
    .I(cb_tact[0]),
    .O(Mcount_cb_tact_lut[0])
  );
  LUT4_L #(
    .INIT ( 16'h0020 ))
  S10 (
    .I0(cbBit[1]),
    .I1(cbBit[2]),
    .I2(cbBit[3]),
    .I3(cbBit[4]),
    .LO(S10_73)
  );
  LUT4_D #(
    .INIT ( 16'h0020 ))
  ce10 (
    .I0(cb_tact[0]),
    .I1(cb_tact[1]),
    .I2(cb_tact[3]),
    .I3(cb_tact[2]),
    .LO(N9),
    .O(ce10_126)
  );
  LUT4_D #(
    .INIT ( 16'h0002 ))
  ce22 (
    .I0(cb_tact[4]),
    .I1(cb_tact[5]),
    .I2(cb_tact[6]),
    .I3(cb_tact[7]),
    .LO(N10),
    .O(ce22_127)
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \Madd_cbBit_addsub0000_cy<2>11  (
    .I0(cbBit[2]),
    .I1(cbBit[1]),
    .I2(cbBit[0]),
    .LO(N11),
    .O(\Madd_cbBit_addsub0000_cy[2] )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \Madd_cbBit_addsub0000_cy<5>11  (
    .I0(cbBit[5]),
    .I1(cbBit[4]),
    .I2(cbBit[3]),
    .I3(\Madd_cbBit_addsub0000_cy[2] ),
    .LO(N12),
    .O(\Madd_cbBit_addsub0000_cy[5] )
  );
  FD #(
    .INIT ( 1'b0 ))
  srMRX_0_1 (
    .C(_sclk_90),
    .D(MISO_IBUF_38),
    .Q(srMRX_0_1_136)
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

