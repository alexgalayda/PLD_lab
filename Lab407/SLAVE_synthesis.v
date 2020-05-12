module SLAVE (
  clr, LOAD, MOSI, SCLK, MISO, DO, MTX_DAT, MRX_DAT, DI
);
  input clr;
  input LOAD;
  input MOSI;
  input SCLK;
  output MISO;
  output [11 : 0] DO;
  output [11 : 0] MTX_DAT;
  output [11 : 0] MRX_DAT;
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
  wire LOAD_IBUF_25;
  wire MOSI_IBUF_28;
  wire SCLK_BUFGP_54;
  wire _miso_55;
  wire sr_MTX_0_1_81;
  wire [11 : 0] slave_buf;
  wire [11 : 0] sr_MRX;
  wire [11 : 0] sr_MTX;
  wire [11 : 0] sr_MTX_mux0000;
  FD #(
    .INIT ( 1'b0 ))
  sr_MRX_0 (
    .C(SCLK_BUFGP_54),
    .D(MOSI_IBUF_28),
    .Q(sr_MRX[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MRX_1 (
    .C(SCLK_BUFGP_54),
    .D(sr_MRX[0]),
    .Q(sr_MRX[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MRX_2 (
    .C(SCLK_BUFGP_54),
    .D(sr_MRX[1]),
    .Q(sr_MRX[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MRX_3 (
    .C(SCLK_BUFGP_54),
    .D(sr_MRX[2]),
    .Q(sr_MRX[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MRX_4 (
    .C(SCLK_BUFGP_54),
    .D(sr_MRX[3]),
    .Q(sr_MRX[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MRX_5 (
    .C(SCLK_BUFGP_54),
    .D(sr_MRX[4]),
    .Q(sr_MRX[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MRX_6 (
    .C(SCLK_BUFGP_54),
    .D(sr_MRX[5]),
    .Q(sr_MRX[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MRX_7 (
    .C(SCLK_BUFGP_54),
    .D(sr_MRX[6]),
    .Q(sr_MRX[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MRX_8 (
    .C(SCLK_BUFGP_54),
    .D(sr_MRX[7]),
    .Q(sr_MRX[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MRX_9 (
    .C(SCLK_BUFGP_54),
    .D(sr_MRX[8]),
    .Q(sr_MRX[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MRX_10 (
    .C(SCLK_BUFGP_54),
    .D(sr_MRX[9]),
    .Q(sr_MRX[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MRX_11 (
    .C(SCLK_BUFGP_54),
    .D(sr_MRX[10]),
    .Q(sr_MRX[11])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_0 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[0]),
    .Q(sr_MTX[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_1 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[1]),
    .Q(sr_MTX[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_2 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[2]),
    .Q(sr_MTX[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_3 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[3]),
    .Q(sr_MTX[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_4 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[4]),
    .Q(sr_MTX[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_5 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[5]),
    .Q(sr_MTX[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_6 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[6]),
    .Q(sr_MTX[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_7 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[7]),
    .Q(sr_MTX[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_8 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[8]),
    .Q(sr_MTX[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_9 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[9]),
    .Q(sr_MTX[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_10 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[10]),
    .Q(sr_MTX[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_11 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[11]),
    .Q(sr_MTX[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  slave_buf_0 (
    .C(SCLK_BUFGP_54),
    .CE(LOAD_IBUF_25),
    .D(sr_MRX[0]),
    .Q(slave_buf[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  slave_buf_1 (
    .C(SCLK_BUFGP_54),
    .CE(LOAD_IBUF_25),
    .D(sr_MRX[1]),
    .Q(slave_buf[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  slave_buf_2 (
    .C(SCLK_BUFGP_54),
    .CE(LOAD_IBUF_25),
    .D(sr_MRX[2]),
    .Q(slave_buf[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  slave_buf_3 (
    .C(SCLK_BUFGP_54),
    .CE(LOAD_IBUF_25),
    .D(sr_MRX[3]),
    .Q(slave_buf[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  slave_buf_4 (
    .C(SCLK_BUFGP_54),
    .CE(LOAD_IBUF_25),
    .D(sr_MRX[4]),
    .Q(slave_buf[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  slave_buf_5 (
    .C(SCLK_BUFGP_54),
    .CE(LOAD_IBUF_25),
    .D(sr_MRX[5]),
    .Q(slave_buf[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  slave_buf_6 (
    .C(SCLK_BUFGP_54),
    .CE(LOAD_IBUF_25),
    .D(sr_MRX[6]),
    .Q(slave_buf[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  slave_buf_7 (
    .C(SCLK_BUFGP_54),
    .CE(LOAD_IBUF_25),
    .D(sr_MRX[7]),
    .Q(slave_buf[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  slave_buf_8 (
    .C(SCLK_BUFGP_54),
    .CE(LOAD_IBUF_25),
    .D(sr_MRX[8]),
    .Q(slave_buf[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  slave_buf_9 (
    .C(SCLK_BUFGP_54),
    .CE(LOAD_IBUF_25),
    .D(sr_MRX[9]),
    .Q(slave_buf[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  slave_buf_10 (
    .C(SCLK_BUFGP_54),
    .CE(LOAD_IBUF_25),
    .D(sr_MRX[10]),
    .Q(slave_buf[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  slave_buf_11 (
    .C(SCLK_BUFGP_54),
    .CE(LOAD_IBUF_25),
    .D(sr_MRX[11]),
    .Q(slave_buf[11])
  );
  FD #(
    .INIT ( 1'b0 ))
  _miso (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX[11]),
    .Q(_miso_55)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sr_MTX_mux0000<0>1  (
    .I0(LOAD_IBUF_25),
    .I1(DI_0_IBUF_12),
    .O(sr_MTX_mux0000[0])
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \sr_MTX_mux0000<9>1  (
    .I0(DI_9_IBUF_23),
    .I1(LOAD_IBUF_25),
    .I2(sr_MTX[8]),
    .O(sr_MTX_mux0000[9])
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \sr_MTX_mux0000<8>1  (
    .I0(DI_8_IBUF_22),
    .I1(LOAD_IBUF_25),
    .I2(sr_MTX[7]),
    .O(sr_MTX_mux0000[8])
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \sr_MTX_mux0000<7>1  (
    .I0(DI_7_IBUF_21),
    .I1(LOAD_IBUF_25),
    .I2(sr_MTX[6]),
    .O(sr_MTX_mux0000[7])
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \sr_MTX_mux0000<6>1  (
    .I0(DI_6_IBUF_20),
    .I1(LOAD_IBUF_25),
    .I2(sr_MTX[5]),
    .O(sr_MTX_mux0000[6])
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \sr_MTX_mux0000<5>1  (
    .I0(DI_5_IBUF_19),
    .I1(LOAD_IBUF_25),
    .I2(sr_MTX[4]),
    .O(sr_MTX_mux0000[5])
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \sr_MTX_mux0000<4>1  (
    .I0(DI_4_IBUF_18),
    .I1(LOAD_IBUF_25),
    .I2(sr_MTX[3]),
    .O(sr_MTX_mux0000[4])
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \sr_MTX_mux0000<3>1  (
    .I0(DI_3_IBUF_17),
    .I1(LOAD_IBUF_25),
    .I2(sr_MTX[2]),
    .O(sr_MTX_mux0000[3])
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \sr_MTX_mux0000<2>1  (
    .I0(DI_2_IBUF_16),
    .I1(LOAD_IBUF_25),
    .I2(sr_MTX[1]),
    .O(sr_MTX_mux0000[2])
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \sr_MTX_mux0000<1>1  (
    .I0(DI_1_IBUF_15),
    .I1(LOAD_IBUF_25),
    .I2(sr_MTX[0]),
    .O(sr_MTX_mux0000[1])
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \sr_MTX_mux0000<11>1  (
    .I0(DI_11_IBUF_14),
    .I1(LOAD_IBUF_25),
    .I2(sr_MTX[10]),
    .O(sr_MTX_mux0000[11])
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \sr_MTX_mux0000<10>1  (
    .I0(DI_10_IBUF_13),
    .I1(LOAD_IBUF_25),
    .I2(sr_MTX[9]),
    .O(sr_MTX_mux0000[10])
  );
  IBUF   LOAD_IBUF (
    .I(LOAD),
    .O(LOAD_IBUF_25)
  );
  IBUF   MOSI_IBUF (
    .I(MOSI),
    .O(MOSI_IBUF_28)
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
  OBUF   MISO_OBUF (
    .I(_miso_55),
    .O(MISO)
  );
  OBUF   MTX_DAT_11_OBUF (
    .I(sr_MTX[11]),
    .O(MTX_DAT[11])
  );
  OBUF   MTX_DAT_10_OBUF (
    .I(sr_MTX[10]),
    .O(MTX_DAT[10])
  );
  OBUF   MTX_DAT_9_OBUF (
    .I(sr_MTX[9]),
    .O(MTX_DAT[9])
  );
  OBUF   MTX_DAT_8_OBUF (
    .I(sr_MTX[8]),
    .O(MTX_DAT[8])
  );
  OBUF   MTX_DAT_7_OBUF (
    .I(sr_MTX[7]),
    .O(MTX_DAT[7])
  );
  OBUF   MTX_DAT_6_OBUF (
    .I(sr_MTX[6]),
    .O(MTX_DAT[6])
  );
  OBUF   MTX_DAT_5_OBUF (
    .I(sr_MTX[5]),
    .O(MTX_DAT[5])
  );
  OBUF   MTX_DAT_4_OBUF (
    .I(sr_MTX[4]),
    .O(MTX_DAT[4])
  );
  OBUF   MTX_DAT_3_OBUF (
    .I(sr_MTX[3]),
    .O(MTX_DAT[3])
  );
  OBUF   MTX_DAT_2_OBUF (
    .I(sr_MTX[2]),
    .O(MTX_DAT[2])
  );
  OBUF   MTX_DAT_1_OBUF (
    .I(sr_MTX[1]),
    .O(MTX_DAT[1])
  );
  OBUF   MTX_DAT_0_OBUF (
    .I(sr_MTX_0_1_81),
    .O(MTX_DAT[0])
  );
  OBUF   MRX_DAT_11_OBUF (
    .I(slave_buf[11]),
    .O(MRX_DAT[11])
  );
  OBUF   MRX_DAT_10_OBUF (
    .I(slave_buf[10]),
    .O(MRX_DAT[10])
  );
  OBUF   MRX_DAT_9_OBUF (
    .I(slave_buf[9]),
    .O(MRX_DAT[9])
  );
  OBUF   MRX_DAT_8_OBUF (
    .I(slave_buf[8]),
    .O(MRX_DAT[8])
  );
  OBUF   MRX_DAT_7_OBUF (
    .I(slave_buf[7]),
    .O(MRX_DAT[7])
  );
  OBUF   MRX_DAT_6_OBUF (
    .I(slave_buf[6]),
    .O(MRX_DAT[6])
  );
  OBUF   MRX_DAT_5_OBUF (
    .I(slave_buf[5]),
    .O(MRX_DAT[5])
  );
  OBUF   MRX_DAT_4_OBUF (
    .I(slave_buf[4]),
    .O(MRX_DAT[4])
  );
  OBUF   MRX_DAT_3_OBUF (
    .I(slave_buf[3]),
    .O(MRX_DAT[3])
  );
  OBUF   MRX_DAT_2_OBUF (
    .I(slave_buf[2]),
    .O(MRX_DAT[2])
  );
  OBUF   MRX_DAT_1_OBUF (
    .I(slave_buf[1]),
    .O(MRX_DAT[1])
  );
  OBUF   MRX_DAT_0_OBUF (
    .I(slave_buf[0]),
    .O(MRX_DAT[0])
  );
  BUFGP   SCLK_BUFGP (
    .I(SCLK),
    .O(SCLK_BUFGP_54)
  );
  FD #(
    .INIT ( 1'b0 ))
  sr_MTX_0_1 (
    .C(SCLK_BUFGP_54),
    .D(sr_MTX_mux0000[0]),
    .Q(sr_MTX_0_1_81)
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

