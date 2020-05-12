module DISPLAY (
  clk, ce1ms, seg_P, AN, seg, dat
);
  input clk;
  output ce1ms;
  output seg_P;
  output [3 : 0] AN;
  output [6 : 0] seg;
  input [15 : 0] dat;
  wire AN_1_OBUF_4;
  wire AN_2_OBUF_5;
  wire AN_3_OBUF_6;
  wire \Mcount_cb_1ms_cy<10>_rt_9 ;
  wire \Mcount_cb_1ms_cy<11>_rt_11 ;
  wire \Mcount_cb_1ms_cy<12>_rt_13 ;
  wire \Mcount_cb_1ms_cy<13>_rt_15 ;
  wire \Mcount_cb_1ms_cy<14>_rt_17 ;
  wire \Mcount_cb_1ms_cy<1>_rt_19 ;
  wire \Mcount_cb_1ms_cy<2>_rt_21 ;
  wire \Mcount_cb_1ms_cy<3>_rt_23 ;
  wire \Mcount_cb_1ms_cy<4>_rt_25 ;
  wire \Mcount_cb_1ms_cy<5>_rt_27 ;
  wire \Mcount_cb_1ms_cy<6>_rt_29 ;
  wire \Mcount_cb_1ms_cy<7>_rt_31 ;
  wire \Mcount_cb_1ms_cy<8>_rt_33 ;
  wire \Mcount_cb_1ms_cy<9>_rt_35 ;
  wire \Mcount_cb_1ms_xor<15>_rt_37 ;
  wire Mmux_dig_3_38;
  wire Mmux_dig_31_39;
  wire Mmux_dig_32_40;
  wire Mmux_dig_33_41;
  wire Mmux_dig_4_42;
  wire Mmux_dig_41_43;
  wire Mmux_dig_42_44;
  wire Mmux_dig_43_45;
  wire N0;
  wire N1;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire ce;
  wire ce17_85;
  wire ce1ms_OBUF_87;
  wire ce37_88;
  wire ce50_89;
  wire ce8_90;
  wire clk_BUFGP_92;
  wire dat_0_IBUF_109;
  wire dat_10_IBUF_110;
  wire dat_11_IBUF_111;
  wire dat_12_IBUF_112;
  wire dat_13_IBUF_113;
  wire dat_14_IBUF_114;
  wire dat_15_IBUF_115;
  wire dat_1_IBUF_116;
  wire dat_2_IBUF_117;
  wire dat_3_IBUF_118;
  wire dat_4_IBUF_119;
  wire dat_5_IBUF_120;
  wire dat_6_IBUF_121;
  wire dat_7_IBUF_122;
  wire dat_8_IBUF_123;
  wire dat_9_IBUF_124;
  wire seg_0_OBUF_136;
  wire seg_1_OBUF_137;
  wire seg_2_OBUF_138;
  wire seg_3_OBUF_139;
  wire seg_4_OBUF_140;
  wire seg_5_OBUF_141;
  wire seg_6_OBUF_142;
  wire seg_P_OBUF_144;
  wire [14 : 0] Mcount_cb_1ms_cy;
  wire [0 : 0] Mcount_cb_1ms_lut;
  wire [15 : 0] Result;
  wire [15 : 0] cb_1ms;
  wire [1 : 0] cb_dig;
  wire [3 : 0] dig;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD #(
    .INIT ( 1'b0 ))
  ce1ms_3 (
    .C(clk_BUFGP_92),
    .D(ce),
    .Q(ce1ms_OBUF_87)
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_2 (
    .C(clk_BUFGP_92),
    .D(Result[2]),
    .R(ce),
    .Q(cb_1ms[2])
  );
  FDS #(
    .INIT ( 1'b0 ))
  cb_1ms_0 (
    .C(clk_BUFGP_92),
    .D(Result[0]),
    .S(ce),
    .Q(cb_1ms[0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_1 (
    .C(clk_BUFGP_92),
    .D(Result[1]),
    .R(ce),
    .Q(cb_1ms[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_5 (
    .C(clk_BUFGP_92),
    .D(Result[5]),
    .R(ce),
    .Q(cb_1ms[5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_3 (
    .C(clk_BUFGP_92),
    .D(Result[3]),
    .R(ce),
    .Q(cb_1ms[3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_4 (
    .C(clk_BUFGP_92),
    .D(Result[4]),
    .R(ce),
    .Q(cb_1ms[4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_6 (
    .C(clk_BUFGP_92),
    .D(Result[6]),
    .R(ce),
    .Q(cb_1ms[6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_7 (
    .C(clk_BUFGP_92),
    .D(Result[7]),
    .R(ce),
    .Q(cb_1ms[7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_10 (
    .C(clk_BUFGP_92),
    .D(Result[10]),
    .R(ce),
    .Q(cb_1ms[10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_8 (
    .C(clk_BUFGP_92),
    .D(Result[8]),
    .R(ce),
    .Q(cb_1ms[8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_9 (
    .C(clk_BUFGP_92),
    .D(Result[9]),
    .R(ce),
    .Q(cb_1ms[9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_11 (
    .C(clk_BUFGP_92),
    .D(Result[11]),
    .R(ce),
    .Q(cb_1ms[11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_12 (
    .C(clk_BUFGP_92),
    .D(Result[12]),
    .R(ce),
    .Q(cb_1ms[12])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_15 (
    .C(clk_BUFGP_92),
    .D(Result[15]),
    .R(ce),
    .Q(cb_1ms[15])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_13 (
    .C(clk_BUFGP_92),
    .D(Result[13]),
    .R(ce),
    .Q(cb_1ms[13])
  );
  FDR #(
    .INIT ( 1'b0 ))
  cb_1ms_14 (
    .C(clk_BUFGP_92),
    .D(Result[14]),
    .R(ce),
    .Q(cb_1ms[14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  cb_dig_0 (
    .C(clk_BUFGP_92),
    .CE(ce),
    .D(\Result<0>1 ),
    .Q(cb_dig[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  cb_dig_1 (
    .C(clk_BUFGP_92),
    .CE(ce),
    .D(\Result<1>1 ),
    .Q(cb_dig[1])
  );
  MUXF5   Mmux_dig_2_f5_2 (
    .I0(Mmux_dig_43_45),
    .I1(Mmux_dig_33_41),
    .S(cb_dig[1]),
    .O(dig[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dig_43 (
    .I0(cb_dig[0]),
    .I1(dat_3_IBUF_118),
    .I2(dat_7_IBUF_122),
    .O(Mmux_dig_43_45)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dig_33 (
    .I0(cb_dig[0]),
    .I1(dat_11_IBUF_111),
    .I2(dat_15_IBUF_115),
    .O(Mmux_dig_33_41)
  );
  MUXF5   Mmux_dig_2_f5_1 (
    .I0(Mmux_dig_42_44),
    .I1(Mmux_dig_32_40),
    .S(cb_dig[1]),
    .O(dig[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dig_42 (
    .I0(cb_dig[0]),
    .I1(dat_2_IBUF_117),
    .I2(dat_6_IBUF_121),
    .O(Mmux_dig_42_44)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dig_32 (
    .I0(cb_dig[0]),
    .I1(dat_10_IBUF_110),
    .I2(dat_14_IBUF_114),
    .O(Mmux_dig_32_40)
  );
  MUXF5   Mmux_dig_2_f5_0 (
    .I0(Mmux_dig_41_43),
    .I1(Mmux_dig_31_39),
    .S(cb_dig[1]),
    .O(dig[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dig_41 (
    .I0(cb_dig[0]),
    .I1(dat_1_IBUF_116),
    .I2(dat_5_IBUF_120),
    .O(Mmux_dig_41_43)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dig_31 (
    .I0(cb_dig[0]),
    .I1(dat_9_IBUF_124),
    .I2(dat_13_IBUF_113),
    .O(Mmux_dig_31_39)
  );
  MUXF5   Mmux_dig_2_f5 (
    .I0(Mmux_dig_4_42),
    .I1(Mmux_dig_3_38),
    .S(cb_dig[1]),
    .O(dig[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dig_4 (
    .I0(cb_dig[0]),
    .I1(dat_0_IBUF_109),
    .I2(dat_4_IBUF_119),
    .O(Mmux_dig_4_42)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dig_3 (
    .I0(cb_dig[0]),
    .I1(dat_8_IBUF_123),
    .I2(dat_12_IBUF_112),
    .O(Mmux_dig_3_38)
  );
  MUXCY   \Mcount_cb_1ms_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Mcount_cb_1ms_lut[0]),
    .O(Mcount_cb_1ms_cy[0])
  );
  XORCY   \Mcount_cb_1ms_xor<0>  (
    .CI(N0),
    .LI(Mcount_cb_1ms_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_cb_1ms_cy<1>  (
    .CI(Mcount_cb_1ms_cy[0]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<1>_rt_19 ),
    .O(Mcount_cb_1ms_cy[1])
  );
  XORCY   \Mcount_cb_1ms_xor<1>  (
    .CI(Mcount_cb_1ms_cy[0]),
    .LI(\Mcount_cb_1ms_cy<1>_rt_19 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_cb_1ms_cy<2>  (
    .CI(Mcount_cb_1ms_cy[1]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<2>_rt_21 ),
    .O(Mcount_cb_1ms_cy[2])
  );
  XORCY   \Mcount_cb_1ms_xor<2>  (
    .CI(Mcount_cb_1ms_cy[1]),
    .LI(\Mcount_cb_1ms_cy<2>_rt_21 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_cb_1ms_cy<3>  (
    .CI(Mcount_cb_1ms_cy[2]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<3>_rt_23 ),
    .O(Mcount_cb_1ms_cy[3])
  );
  XORCY   \Mcount_cb_1ms_xor<3>  (
    .CI(Mcount_cb_1ms_cy[2]),
    .LI(\Mcount_cb_1ms_cy<3>_rt_23 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_cb_1ms_cy<4>  (
    .CI(Mcount_cb_1ms_cy[3]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<4>_rt_25 ),
    .O(Mcount_cb_1ms_cy[4])
  );
  XORCY   \Mcount_cb_1ms_xor<4>  (
    .CI(Mcount_cb_1ms_cy[3]),
    .LI(\Mcount_cb_1ms_cy<4>_rt_25 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_cb_1ms_cy<5>  (
    .CI(Mcount_cb_1ms_cy[4]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<5>_rt_27 ),
    .O(Mcount_cb_1ms_cy[5])
  );
  XORCY   \Mcount_cb_1ms_xor<5>  (
    .CI(Mcount_cb_1ms_cy[4]),
    .LI(\Mcount_cb_1ms_cy<5>_rt_27 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_cb_1ms_cy<6>  (
    .CI(Mcount_cb_1ms_cy[5]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<6>_rt_29 ),
    .O(Mcount_cb_1ms_cy[6])
  );
  XORCY   \Mcount_cb_1ms_xor<6>  (
    .CI(Mcount_cb_1ms_cy[5]),
    .LI(\Mcount_cb_1ms_cy<6>_rt_29 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_cb_1ms_cy<7>  (
    .CI(Mcount_cb_1ms_cy[6]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<7>_rt_31 ),
    .O(Mcount_cb_1ms_cy[7])
  );
  XORCY   \Mcount_cb_1ms_xor<7>  (
    .CI(Mcount_cb_1ms_cy[6]),
    .LI(\Mcount_cb_1ms_cy<7>_rt_31 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_cb_1ms_cy<8>  (
    .CI(Mcount_cb_1ms_cy[7]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<8>_rt_33 ),
    .O(Mcount_cb_1ms_cy[8])
  );
  XORCY   \Mcount_cb_1ms_xor<8>  (
    .CI(Mcount_cb_1ms_cy[7]),
    .LI(\Mcount_cb_1ms_cy<8>_rt_33 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_cb_1ms_cy<9>  (
    .CI(Mcount_cb_1ms_cy[8]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<9>_rt_35 ),
    .O(Mcount_cb_1ms_cy[9])
  );
  XORCY   \Mcount_cb_1ms_xor<9>  (
    .CI(Mcount_cb_1ms_cy[8]),
    .LI(\Mcount_cb_1ms_cy<9>_rt_35 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_cb_1ms_cy<10>  (
    .CI(Mcount_cb_1ms_cy[9]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<10>_rt_9 ),
    .O(Mcount_cb_1ms_cy[10])
  );
  XORCY   \Mcount_cb_1ms_xor<10>  (
    .CI(Mcount_cb_1ms_cy[9]),
    .LI(\Mcount_cb_1ms_cy<10>_rt_9 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_cb_1ms_cy<11>  (
    .CI(Mcount_cb_1ms_cy[10]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<11>_rt_11 ),
    .O(Mcount_cb_1ms_cy[11])
  );
  XORCY   \Mcount_cb_1ms_xor<11>  (
    .CI(Mcount_cb_1ms_cy[10]),
    .LI(\Mcount_cb_1ms_cy<11>_rt_11 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_cb_1ms_cy<12>  (
    .CI(Mcount_cb_1ms_cy[11]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<12>_rt_13 ),
    .O(Mcount_cb_1ms_cy[12])
  );
  XORCY   \Mcount_cb_1ms_xor<12>  (
    .CI(Mcount_cb_1ms_cy[11]),
    .LI(\Mcount_cb_1ms_cy<12>_rt_13 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_cb_1ms_cy<13>  (
    .CI(Mcount_cb_1ms_cy[12]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<13>_rt_15 ),
    .O(Mcount_cb_1ms_cy[13])
  );
  XORCY   \Mcount_cb_1ms_xor<13>  (
    .CI(Mcount_cb_1ms_cy[12]),
    .LI(\Mcount_cb_1ms_cy<13>_rt_15 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_cb_1ms_cy<14>  (
    .CI(Mcount_cb_1ms_cy[13]),
    .DI(N0),
    .S(\Mcount_cb_1ms_cy<14>_rt_17 ),
    .O(Mcount_cb_1ms_cy[14])
  );
  XORCY   \Mcount_cb_1ms_xor<14>  (
    .CI(Mcount_cb_1ms_cy[13]),
    .LI(\Mcount_cb_1ms_cy<14>_rt_17 ),
    .O(Result[14])
  );
  XORCY   \Mcount_cb_1ms_xor<15>  (
    .CI(Mcount_cb_1ms_cy[14]),
    .LI(\Mcount_cb_1ms_xor<15>_rt_37 ),
    .O(Result[15])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  seg_P1 (
    .I0(cb_dig[0]),
    .I1(cb_dig[1]),
    .O(seg_P_OBUF_144)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  Mdecod_AN31 (
    .I0(cb_dig[0]),
    .I1(cb_dig[1]),
    .O(AN_3_OBUF_6)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  Mdecod_AN21 (
    .I0(cb_dig[1]),
    .I1(cb_dig[0]),
    .O(AN_2_OBUF_5)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  Mdecod_AN11 (
    .I0(cb_dig[0]),
    .I1(cb_dig[1]),
    .O(AN_1_OBUF_4)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_cb_dig_xor<1>11  (
    .I0(cb_dig[1]),
    .I1(cb_dig[0]),
    .O(\Result<1>1 )
  );
  LUT4 #(
    .INIT ( 16'h445C ))
  Mrom_seg41 (
    .I0(dig[3]),
    .I1(dig[0]),
    .I2(dig[2]),
    .I3(dig[1]),
    .O(seg_4_OBUF_140)
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  Mrom_seg21 (
    .I0(dig[1]),
    .I1(dig[3]),
    .I2(dig[2]),
    .I3(dig[0]),
    .O(seg_2_OBUF_138)
  );
  LUT4 #(
    .INIT ( 16'h0941 ))
  Mrom_seg61 (
    .I0(dig[1]),
    .I1(dig[2]),
    .I2(dig[3]),
    .I3(dig[0]),
    .O(seg_6_OBUF_142)
  );
  LUT4 #(
    .INIT ( 16'h6032 ))
  Mrom_seg51 (
    .I0(dig[1]),
    .I1(dig[3]),
    .I2(dig[0]),
    .I3(dig[2]),
    .O(seg_5_OBUF_141)
  );
  LUT4 #(
    .INIT ( 16'hE448 ))
  Mrom_seg111 (
    .I0(dig[0]),
    .I1(dig[2]),
    .I2(dig[1]),
    .I3(dig[3]),
    .O(seg_1_OBUF_137)
  );
  LUT4 #(
    .INIT ( 16'hA118 ))
  Mrom_seg31 (
    .I0(dig[1]),
    .I1(dig[3]),
    .I2(dig[0]),
    .I3(dig[2]),
    .O(seg_3_OBUF_139)
  );
  LUT4 #(
    .INIT ( 16'h2812 ))
  Mrom_seg11 (
    .I0(dig[0]),
    .I1(dig[1]),
    .I2(dig[2]),
    .I3(dig[3]),
    .O(seg_0_OBUF_136)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  ce17 (
    .I0(cb_1ms[14]),
    .I1(cb_1ms[15]),
    .I2(cb_1ms[12]),
    .I3(cb_1ms[13]),
    .O(ce17_85)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  ce37 (
    .I0(cb_1ms[6]),
    .I1(cb_1ms[4]),
    .I2(cb_1ms[5]),
    .I3(cb_1ms[7]),
    .O(ce37_88)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  ce50 (
    .I0(cb_1ms[0]),
    .I1(cb_1ms[1]),
    .I2(cb_1ms[2]),
    .I3(cb_1ms[3]),
    .O(ce50_89)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  ce64 (
    .I0(ce8_90),
    .I1(ce17_85),
    .I2(ce37_88),
    .I3(ce50_89),
    .O(ce)
  );
  IBUF   dat_15_IBUF (
    .I(dat[15]),
    .O(dat_15_IBUF_115)
  );
  IBUF   dat_14_IBUF (
    .I(dat[14]),
    .O(dat_14_IBUF_114)
  );
  IBUF   dat_13_IBUF (
    .I(dat[13]),
    .O(dat_13_IBUF_113)
  );
  IBUF   dat_12_IBUF (
    .I(dat[12]),
    .O(dat_12_IBUF_112)
  );
  IBUF   dat_11_IBUF (
    .I(dat[11]),
    .O(dat_11_IBUF_111)
  );
  IBUF   dat_10_IBUF (
    .I(dat[10]),
    .O(dat_10_IBUF_110)
  );
  IBUF   dat_9_IBUF (
    .I(dat[9]),
    .O(dat_9_IBUF_124)
  );
  IBUF   dat_8_IBUF (
    .I(dat[8]),
    .O(dat_8_IBUF_123)
  );
  IBUF   dat_7_IBUF (
    .I(dat[7]),
    .O(dat_7_IBUF_122)
  );
  IBUF   dat_6_IBUF (
    .I(dat[6]),
    .O(dat_6_IBUF_121)
  );
  IBUF   dat_5_IBUF (
    .I(dat[5]),
    .O(dat_5_IBUF_120)
  );
  IBUF   dat_4_IBUF (
    .I(dat[4]),
    .O(dat_4_IBUF_119)
  );
  IBUF   dat_3_IBUF (
    .I(dat[3]),
    .O(dat_3_IBUF_118)
  );
  IBUF   dat_2_IBUF (
    .I(dat[2]),
    .O(dat_2_IBUF_117)
  );
  IBUF   dat_1_IBUF (
    .I(dat[1]),
    .O(dat_1_IBUF_116)
  );
  IBUF   dat_0_IBUF (
    .I(dat[0]),
    .O(dat_0_IBUF_109)
  );
  OBUF   ce1ms_OBUF (
    .I(ce1ms_OBUF_87),
    .O(ce1ms)
  );
  OBUF   seg_P_OBUF (
    .I(seg_P_OBUF_144),
    .O(seg_P)
  );
  OBUF   AN_3_OBUF (
    .I(AN_3_OBUF_6),
    .O(AN[3])
  );
  OBUF   AN_2_OBUF (
    .I(AN_2_OBUF_5),
    .O(AN[2])
  );
  OBUF   AN_1_OBUF (
    .I(AN_1_OBUF_4),
    .O(AN[1])
  );
  OBUF   AN_0_OBUF (
    .I(seg_P_OBUF_144),
    .O(AN[0])
  );
  OBUF   seg_6_OBUF (
    .I(seg_6_OBUF_142),
    .O(seg[6])
  );
  OBUF   seg_5_OBUF (
    .I(seg_5_OBUF_141),
    .O(seg[5])
  );
  OBUF   seg_4_OBUF (
    .I(seg_4_OBUF_140),
    .O(seg[4])
  );
  OBUF   seg_3_OBUF (
    .I(seg_3_OBUF_139),
    .O(seg[3])
  );
  OBUF   seg_2_OBUF (
    .I(seg_2_OBUF_138),
    .O(seg[2])
  );
  OBUF   seg_1_OBUF (
    .I(seg_1_OBUF_137),
    .O(seg[1])
  );
  OBUF   seg_0_OBUF (
    .I(seg_0_OBUF_136),
    .O(seg[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<1>_rt  (
    .I0(cb_1ms[1]),
    .O(\Mcount_cb_1ms_cy<1>_rt_19 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<2>_rt  (
    .I0(cb_1ms[2]),
    .O(\Mcount_cb_1ms_cy<2>_rt_21 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<3>_rt  (
    .I0(cb_1ms[3]),
    .O(\Mcount_cb_1ms_cy<3>_rt_23 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<4>_rt  (
    .I0(cb_1ms[4]),
    .O(\Mcount_cb_1ms_cy<4>_rt_25 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<5>_rt  (
    .I0(cb_1ms[5]),
    .O(\Mcount_cb_1ms_cy<5>_rt_27 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<6>_rt  (
    .I0(cb_1ms[6]),
    .O(\Mcount_cb_1ms_cy<6>_rt_29 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<7>_rt  (
    .I0(cb_1ms[7]),
    .O(\Mcount_cb_1ms_cy<7>_rt_31 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<8>_rt  (
    .I0(cb_1ms[8]),
    .O(\Mcount_cb_1ms_cy<8>_rt_33 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<9>_rt  (
    .I0(cb_1ms[9]),
    .O(\Mcount_cb_1ms_cy<9>_rt_35 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<10>_rt  (
    .I0(cb_1ms[10]),
    .O(\Mcount_cb_1ms_cy<10>_rt_9 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<11>_rt  (
    .I0(cb_1ms[11]),
    .O(\Mcount_cb_1ms_cy<11>_rt_11 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<12>_rt  (
    .I0(cb_1ms[12]),
    .O(\Mcount_cb_1ms_cy<12>_rt_13 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<13>_rt  (
    .I0(cb_1ms[13]),
    .O(\Mcount_cb_1ms_cy<13>_rt_15 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_cy<14>_rt  (
    .I0(cb_1ms[14]),
    .O(\Mcount_cb_1ms_cy<14>_rt_17 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cb_1ms_xor<15>_rt  (
    .I0(cb_1ms[15]),
    .O(\Mcount_cb_1ms_xor<15>_rt_37 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_92)
  );
  INV   \Mcount_cb_1ms_lut<0>_INV_0  (
    .I(cb_1ms[0]),
    .O(Mcount_cb_1ms_lut[0])
  );
  INV   \Mcount_cb_dig_xor<0>11_INV_0  (
    .I(cb_dig[0]),
    .O(\Result<0>1 )
  );
  LUT4_L #(
    .INIT ( 16'h0008 ))
  ce8 (
    .I0(cb_1ms[8]),
    .I1(cb_1ms[9]),
    .I2(cb_1ms[10]),
    .I3(cb_1ms[11]),
    .LO(ce8_90)
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

