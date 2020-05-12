module MUX64_16 (
DO, A, B, C, D, S
);
  output [8 : 0] DO;
  input [8 : 0] A;
  input [8 : 0] B;
  input [8 : 0] C;
  input [8 : 0] D;
  input [1 : 0] S;
  wire A_0_IBUF_9;
  wire A_1_IBUF_10;
  wire A_2_IBUF_11;
  wire A_3_IBUF_12;
  wire A_4_IBUF_13;
  wire A_5_IBUF_14;
  wire A_6_IBUF_15;
  wire A_7_IBUF_16;
  wire A_8_IBUF_17;
  wire B_0_IBUF_27;
  wire B_1_IBUF_28;
  wire B_2_IBUF_29;
  wire B_3_IBUF_30;
  wire B_4_IBUF_31;
  wire B_5_IBUF_32;
  wire B_6_IBUF_33;
  wire B_7_IBUF_34;
  wire B_8_IBUF_35;
  wire C_0_IBUF_45;
  wire C_1_IBUF_46;
  wire C_2_IBUF_47;
  wire C_3_IBUF_48;
  wire C_4_IBUF_49;
  wire C_5_IBUF_50;
  wire C_6_IBUF_51;
  wire C_7_IBUF_52;
  wire C_8_IBUF_53;
  wire DO_0_OBUF_72;
  wire DO_1_OBUF_73;
  wire DO_2_OBUF_74;
  wire DO_3_OBUF_75;
  wire DO_4_OBUF_76;
  wire DO_5_OBUF_77;
  wire DO_6_OBUF_78;
  wire DO_7_OBUF_79;
  wire DO_8_OBUF_80;
  wire D_0_IBUF_81;
  wire D_1_IBUF_82;
  wire D_2_IBUF_83;
  wire D_3_IBUF_84;
  wire D_4_IBUF_85;
  wire D_5_IBUF_86;
  wire D_6_IBUF_87;
  wire D_7_IBUF_88;
  wire D_8_IBUF_89;
  wire Mmux_DO_3_90;
  wire Mmux_DO_31_91;
  wire Mmux_DO_32_92;
  wire Mmux_DO_33_93;
  wire Mmux_DO_34_94;
  wire Mmux_DO_35_95;
  wire Mmux_DO_36_96;
  wire Mmux_DO_37_97;
  wire Mmux_DO_38_98;
  wire Mmux_DO_4_99;
  wire Mmux_DO_41_100;
  wire Mmux_DO_42_101;
  wire Mmux_DO_43_102;
  wire Mmux_DO_44_103;
  wire Mmux_DO_45_104;
  wire Mmux_DO_46_105;
  wire Mmux_DO_47_106;
  wire Mmux_DO_48_107;
  wire S_0_IBUF_110;
  wire S_1_IBUF_111;
  MUXF5   Mmux_DO_2_f5_7 (
    .I0(Mmux_DO_48_107),
    .I1(Mmux_DO_38_98),
    .S(S_1_IBUF_111),
    .O(DO_8_OBUF_80)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_48 (
    .I0(S_0_IBUF_110),
    .I1(A_8_IBUF_17),
    .I2(B_8_IBUF_35),
    .O(Mmux_DO_48_107)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_38 (
    .I0(S_0_IBUF_110),
    .I1(C_8_IBUF_53),
    .I2(D_8_IBUF_89),
    .O(Mmux_DO_38_98)
  );
  MUXF5   Mmux_DO_2_f5_6 (
    .I0(Mmux_DO_47_106),
    .I1(Mmux_DO_37_97),
    .S(S_1_IBUF_111),
    .O(DO_7_OBUF_79)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_47 (
    .I0(S_0_IBUF_110),
    .I1(A_7_IBUF_16),
    .I2(B_7_IBUF_34),
    .O(Mmux_DO_47_106)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_37 (
    .I0(S_0_IBUF_110),
    .I1(C_7_IBUF_52),
    .I2(D_7_IBUF_88),
    .O(Mmux_DO_37_97)
  );
  MUXF5   Mmux_DO_2_f5_5 (
    .I0(Mmux_DO_46_105),
    .I1(Mmux_DO_36_96),
    .S(S_1_IBUF_111),
    .O(DO_6_OBUF_78)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_46 (
    .I0(S_0_IBUF_110),
    .I1(A_6_IBUF_15),
    .I2(B_6_IBUF_33),
    .O(Mmux_DO_46_105)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_36 (
    .I0(S_0_IBUF_110),
    .I1(C_6_IBUF_51),
    .I2(D_6_IBUF_87),
    .O(Mmux_DO_36_96)
  );
  MUXF5   Mmux_DO_2_f5_4 (
    .I0(Mmux_DO_45_104),
    .I1(Mmux_DO_35_95),
    .S(S_1_IBUF_111),
    .O(DO_5_OBUF_77)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_45 (
    .I0(S_0_IBUF_110),
    .I1(A_5_IBUF_14),
    .I2(B_5_IBUF_32),
    .O(Mmux_DO_45_104)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_35 (
    .I0(S_0_IBUF_110),
    .I1(C_5_IBUF_50),
    .I2(D_5_IBUF_86),
    .O(Mmux_DO_35_95)
  );
  MUXF5   Mmux_DO_2_f5_3 (
    .I0(Mmux_DO_44_103),
    .I1(Mmux_DO_34_94),
    .S(S_1_IBUF_111),
    .O(DO_4_OBUF_76)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_44 (
    .I0(S_0_IBUF_110),
    .I1(A_4_IBUF_13),
    .I2(B_4_IBUF_31),
    .O(Mmux_DO_44_103)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_34 (
    .I0(S_0_IBUF_110),
    .I1(C_4_IBUF_49),
    .I2(D_4_IBUF_85),
    .O(Mmux_DO_34_94)
  );
  MUXF5   Mmux_DO_2_f5_2 (
    .I0(Mmux_DO_43_102),
    .I1(Mmux_DO_33_93),
    .S(S_1_IBUF_111),
    .O(DO_3_OBUF_75)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_43 (
    .I0(S_0_IBUF_110),
    .I1(A_3_IBUF_12),
    .I2(B_3_IBUF_30),
    .O(Mmux_DO_43_102)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_33 (
    .I0(S_0_IBUF_110),
    .I1(C_3_IBUF_48),
    .I2(D_3_IBUF_84),
    .O(Mmux_DO_33_93)
  );
  MUXF5   Mmux_DO_2_f5_1 (
    .I0(Mmux_DO_42_101),
    .I1(Mmux_DO_32_92),
    .S(S_1_IBUF_111),
    .O(DO_2_OBUF_74)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_42 (
    .I0(S_0_IBUF_110),
    .I1(A_2_IBUF_11),
    .I2(B_2_IBUF_29),
    .O(Mmux_DO_42_101)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_32 (
    .I0(S_0_IBUF_110),
    .I1(C_2_IBUF_47),
    .I2(D_2_IBUF_83),
    .O(Mmux_DO_32_92)
  );
  MUXF5   Mmux_DO_2_f5_0 (
    .I0(Mmux_DO_41_100),
    .I1(Mmux_DO_31_91),
    .S(S_1_IBUF_111),
    .O(DO_1_OBUF_73)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_41 (
    .I0(S_0_IBUF_110),
    .I1(A_1_IBUF_10),
    .I2(B_1_IBUF_28),
    .O(Mmux_DO_41_100)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_31 (
    .I0(S_0_IBUF_110),
    .I1(C_1_IBUF_46),
    .I2(D_1_IBUF_82),
    .O(Mmux_DO_31_91)
  );
  MUXF5   Mmux_DO_2_f5 (
    .I0(Mmux_DO_4_99),
    .I1(Mmux_DO_3_90),
    .S(S_1_IBUF_111),
    .O(DO_0_OBUF_72)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_4 (
    .I0(S_0_IBUF_110),
    .I1(A_0_IBUF_9),
    .I2(B_0_IBUF_27),
    .O(Mmux_DO_4_99)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_DO_3 (
    .I0(S_0_IBUF_110),
    .I1(C_0_IBUF_45),
    .I2(D_0_IBUF_81),
    .O(Mmux_DO_3_90)
  );
  IBUF   A_8_IBUF (
    .I(A[8]),
    .O(A_8_IBUF_17)
  );
  IBUF   A_7_IBUF (
    .I(A[7]),
    .O(A_7_IBUF_16)
  );
  IBUF   A_6_IBUF (
    .I(A[6]),
    .O(A_6_IBUF_15)
  );
  IBUF   A_5_IBUF (
    .I(A[5]),
    .O(A_5_IBUF_14)
  );
  IBUF   A_4_IBUF (
    .I(A[4]),
    .O(A_4_IBUF_13)
  );
  IBUF   A_3_IBUF (
    .I(A[3]),
    .O(A_3_IBUF_12)
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_11)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_10)
  );
  IBUF   A_0_IBUF (
    .I(A[0]),
    .O(A_0_IBUF_9)
  );
  IBUF   B_8_IBUF (
    .I(B[8]),
    .O(B_8_IBUF_35)
  );
  IBUF   B_7_IBUF (
    .I(B[7]),
    .O(B_7_IBUF_34)
  );
  IBUF   B_6_IBUF (
    .I(B[6]),
    .O(B_6_IBUF_33)
  );
  IBUF   B_5_IBUF (
    .I(B[5]),
    .O(B_5_IBUF_32)
  );
  IBUF   B_4_IBUF (
    .I(B[4]),
    .O(B_4_IBUF_31)
  );
  IBUF   B_3_IBUF (
    .I(B[3]),
    .O(B_3_IBUF_30)
  );
  IBUF   B_2_IBUF (
    .I(B[2]),
    .O(B_2_IBUF_29)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_28)
  );
  IBUF   B_0_IBUF (
    .I(B[0]),
    .O(B_0_IBUF_27)
  );
  IBUF   C_8_IBUF (
    .I(C[8]),
    .O(C_8_IBUF_53)
  );
  IBUF   C_7_IBUF (
    .I(C[7]),
    .O(C_7_IBUF_52)
  );
  IBUF   C_6_IBUF (
    .I(C[6]),
    .O(C_6_IBUF_51)
  );
  IBUF   C_5_IBUF (
    .I(C[5]),
    .O(C_5_IBUF_50)
  );
  IBUF   C_4_IBUF (
    .I(C[4]),
    .O(C_4_IBUF_49)
  );
  IBUF   C_3_IBUF (
    .I(C[3]),
    .O(C_3_IBUF_48)
  );
  IBUF   C_2_IBUF (
    .I(C[2]),
    .O(C_2_IBUF_47)
  );
  IBUF   C_1_IBUF (
    .I(C[1]),
    .O(C_1_IBUF_46)
  );
  IBUF   C_0_IBUF (
    .I(C[0]),
    .O(C_0_IBUF_45)
  );
  IBUF   D_8_IBUF (
    .I(D[8]),
    .O(D_8_IBUF_89)
  );
  IBUF   D_7_IBUF (
    .I(D[7]),
    .O(D_7_IBUF_88)
  );
  IBUF   D_6_IBUF (
    .I(D[6]),
    .O(D_6_IBUF_87)
  );
  IBUF   D_5_IBUF (
    .I(D[5]),
    .O(D_5_IBUF_86)
  );
  IBUF   D_4_IBUF (
    .I(D[4]),
    .O(D_4_IBUF_85)
  );
  IBUF   D_3_IBUF (
    .I(D[3]),
    .O(D_3_IBUF_84)
  );
  IBUF   D_2_IBUF (
    .I(D[2]),
    .O(D_2_IBUF_83)
  );
  IBUF   D_1_IBUF (
    .I(D[1]),
    .O(D_1_IBUF_82)
  );
  IBUF   D_0_IBUF (
    .I(D[0]),
    .O(D_0_IBUF_81)
  );
  IBUF   S_1_IBUF (
    .I(S[1]),
    .O(S_1_IBUF_111)
  );
  IBUF   S_0_IBUF (
    .I(S[0]),
    .O(S_0_IBUF_110)
  );
  OBUF   DO_8_OBUF (
    .I(DO_8_OBUF_80),
    .O(DO[8])
  );
  OBUF   DO_7_OBUF (
    .I(DO_7_OBUF_79),
    .O(DO[7])
  );
  OBUF   DO_6_OBUF (
    .I(DO_6_OBUF_78),
    .O(DO[6])
  );
  OBUF   DO_5_OBUF (
    .I(DO_5_OBUF_77),
    .O(DO[5])
  );
  OBUF   DO_4_OBUF (
    .I(DO_4_OBUF_76),
    .O(DO[4])
  );
  OBUF   DO_3_OBUF (
    .I(DO_3_OBUF_75),
    .O(DO[3])
  );
  OBUF   DO_2_OBUF (
    .I(DO_2_OBUF_74),
    .O(DO[2])
  );
  OBUF   DO_1_OBUF (
    .I(DO_1_OBUF_73),
    .O(DO[1])
  );
  OBUF   DO_0_OBUF (
    .I(DO_0_OBUF_72),
    .O(DO[0])
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

