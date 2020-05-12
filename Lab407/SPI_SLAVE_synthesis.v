module SPI_SLAVE (
  clr, LOAD, MOSI, SCLK, MISO, DO, sr_SRX, sr_STX, DI
);
  input clr;
  input LOAD;
  input MOSI;
  input SCLK;
  output MISO;
  output [11 : 0] DO;
  output [11 : 0] sr_SRX;
  output [11 : 0] sr_STX;
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
  wire LOAD_IBUF_37;
  wire LOAD_IBUF1;
  wire LOAD_inv;
  wire MOSI_IBUF_42;
  wire N0;
  wire SCLK_BUFGP_45;
  wire clr_IBUF_59;
  wire srSRX_0_1_61;
  wire srSTX_0_1_74;
  wire srSTX_0_and0000;
  wire srSTX_0_and0001;
  wire srSTX_10_and0000;
  wire srSTX_10_and0001;
  wire srSTX_11_and0000;
  wire srSTX_11_and0001;
  wire srSTX_1_and0000;
  wire srSTX_1_and0001;
  wire srSTX_2_and0000;
  wire srSTX_2_and0001;
  wire srSTX_3_and0000;
  wire srSTX_3_and0001;
  wire srSTX_4_and0000;
  wire srSTX_4_and0001;
  wire srSTX_5_and0000;
  wire srSTX_5_and0001;
  wire srSTX_6_and0000;
  wire srSTX_6_and0001;
  wire srSTX_7_and0000;
  wire srSTX_7_and0001;
  wire srSTX_8_and0000;
  wire srSTX_8_and0001;
  wire srSTX_9_and0000;
  wire srSTX_9_and0001;
  wire [11 : 0] _Do;
  wire [11 : 0] srSRX;
  wire [11 : 0] srSTX;
  GND   XST_GND (
    .G(N0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_0 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(MOSI_IBUF_42),
    .Q(srSRX[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_1 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(srSRX[0]),
    .Q(srSRX[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_2 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(srSRX[1]),
    .Q(srSRX[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_3 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(srSRX[2]),
    .Q(srSRX[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_4 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(srSRX[3]),
    .Q(srSRX[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_5 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(srSRX[4]),
    .Q(srSRX[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_6 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(srSRX[5]),
    .Q(srSRX[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_7 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(srSRX[6]),
    .Q(srSRX[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_8 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(srSRX[7]),
    .Q(srSRX[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_9 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(srSRX[8]),
    .Q(srSRX[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_10 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(srSRX[9]),
    .Q(srSRX[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_11 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(srSRX[10]),
    .Q(srSRX[11])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_0 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_0_and0000),
    .D(N0),
    .PRE(srSTX_0_and0001),
    .Q(srSTX[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_0 (
    .C(LOAD_IBUF_37),
    .CLR(clr_IBUF_59),
    .D(srSRX[0]),
    .Q(_Do[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_1 (
    .C(LOAD_IBUF_37),
    .CLR(clr_IBUF_59),
    .D(srSRX[1]),
    .Q(_Do[1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_2 (
    .C(LOAD_IBUF_37),
    .CLR(clr_IBUF_59),
    .D(srSRX[2]),
    .Q(_Do[2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_3 (
    .C(LOAD_IBUF_37),
    .CLR(clr_IBUF_59),
    .D(srSRX[3]),
    .Q(_Do[3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_4 (
    .C(LOAD_IBUF_37),
    .CLR(clr_IBUF_59),
    .D(srSRX[4]),
    .Q(_Do[4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_5 (
    .C(LOAD_IBUF_37),
    .CLR(clr_IBUF_59),
    .D(srSRX[5]),
    .Q(_Do[5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_6 (
    .C(LOAD_IBUF_37),
    .CLR(clr_IBUF_59),
    .D(srSRX[6]),
    .Q(_Do[6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_7 (
    .C(LOAD_IBUF_37),
    .CLR(clr_IBUF_59),
    .D(srSRX[7]),
    .Q(_Do[7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_8 (
    .C(LOAD_IBUF_37),
    .CLR(clr_IBUF_59),
    .D(srSRX[8]),
    .Q(_Do[8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_9 (
    .C(LOAD_IBUF_37),
    .CLR(clr_IBUF_59),
    .D(srSRX[9]),
    .Q(_Do[9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_10 (
    .C(LOAD_IBUF_37),
    .CLR(clr_IBUF_59),
    .D(srSRX[10]),
    .Q(_Do[10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  _Do_11 (
    .C(LOAD_IBUF_37),
    .CLR(clr_IBUF_59),
    .D(srSRX[11]),
    .Q(_Do[11])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_1 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_1_and0000),
    .D(srSTX[0]),
    .PRE(srSTX_1_and0001),
    .Q(srSTX[1])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_2 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_2_and0000),
    .D(srSTX[1]),
    .PRE(srSTX_2_and0001),
    .Q(srSTX[2])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_3 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_3_and0000),
    .D(srSTX[2]),
    .PRE(srSTX_3_and0001),
    .Q(srSTX[3])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_4 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_4_and0000),
    .D(srSTX[3]),
    .PRE(srSTX_4_and0001),
    .Q(srSTX[4])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_5 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_5_and0000),
    .D(srSTX[4]),
    .PRE(srSTX_5_and0001),
    .Q(srSTX[5])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_6 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_6_and0000),
    .D(srSTX[5]),
    .PRE(srSTX_6_and0001),
    .Q(srSTX[6])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_7 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_7_and0000),
    .D(srSTX[6]),
    .PRE(srSTX_7_and0001),
    .Q(srSTX[7])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_8 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_8_and0000),
    .D(srSTX[7]),
    .PRE(srSTX_8_and0001),
    .Q(srSTX[8])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_9 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_9_and0000),
    .D(srSTX[8]),
    .PRE(srSTX_9_and0001),
    .Q(srSTX[9])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_10 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_10_and0000),
    .D(srSTX[9]),
    .PRE(srSTX_10_and0001),
    .Q(srSTX[10])
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_11 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_11_and0000),
    .D(srSTX[10]),
    .PRE(srSTX_11_and0001),
    .Q(srSTX[11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  srSTX_9_and00011 (
    .I0(LOAD_IBUF1),
    .I1(DI_9_IBUF_23),
    .O(srSTX_9_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  srSTX_9_and00001 (
    .I0(LOAD_IBUF1),
    .I1(DI_9_IBUF_23),
    .O(srSTX_9_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  srSTX_8_and00011 (
    .I0(LOAD_IBUF1),
    .I1(DI_8_IBUF_22),
    .O(srSTX_8_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  srSTX_8_and00001 (
    .I0(LOAD_IBUF1),
    .I1(DI_8_IBUF_22),
    .O(srSTX_8_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  srSTX_7_and00011 (
    .I0(LOAD_IBUF1),
    .I1(DI_7_IBUF_21),
    .O(srSTX_7_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  srSTX_7_and00001 (
    .I0(LOAD_IBUF1),
    .I1(DI_7_IBUF_21),
    .O(srSTX_7_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  srSTX_6_and00011 (
    .I0(LOAD_IBUF1),
    .I1(DI_6_IBUF_20),
    .O(srSTX_6_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  srSTX_6_and00001 (
    .I0(LOAD_IBUF1),
    .I1(DI_6_IBUF_20),
    .O(srSTX_6_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  srSTX_5_and00011 (
    .I0(LOAD_IBUF1),
    .I1(DI_5_IBUF_19),
    .O(srSTX_5_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  srSTX_5_and00001 (
    .I0(LOAD_IBUF1),
    .I1(DI_5_IBUF_19),
    .O(srSTX_5_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  srSTX_4_and00011 (
    .I0(LOAD_IBUF1),
    .I1(DI_4_IBUF_18),
    .O(srSTX_4_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  srSTX_4_and00001 (
    .I0(LOAD_IBUF1),
    .I1(DI_4_IBUF_18),
    .O(srSTX_4_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  srSTX_3_and00011 (
    .I0(LOAD_IBUF1),
    .I1(DI_3_IBUF_17),
    .O(srSTX_3_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  srSTX_3_and00001 (
    .I0(LOAD_IBUF1),
    .I1(DI_3_IBUF_17),
    .O(srSTX_3_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  srSTX_2_and00011 (
    .I0(LOAD_IBUF1),
    .I1(DI_2_IBUF_16),
    .O(srSTX_2_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  srSTX_2_and00001 (
    .I0(LOAD_IBUF1),
    .I1(DI_2_IBUF_16),
    .O(srSTX_2_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  srSTX_1_and00011 (
    .I0(LOAD_IBUF1),
    .I1(DI_1_IBUF_15),
    .O(srSTX_1_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  srSTX_1_and00001 (
    .I0(LOAD_IBUF1),
    .I1(DI_1_IBUF_15),
    .O(srSTX_1_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  srSTX_11_and00011 (
    .I0(LOAD_IBUF1),
    .I1(DI_11_IBUF_14),
    .O(srSTX_11_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  srSTX_11_and00001 (
    .I0(LOAD_IBUF1),
    .I1(DI_11_IBUF_14),
    .O(srSTX_11_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  srSTX_10_and00011 (
    .I0(LOAD_IBUF1),
    .I1(DI_10_IBUF_13),
    .O(srSTX_10_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  srSTX_10_and00001 (
    .I0(LOAD_IBUF1),
    .I1(DI_10_IBUF_13),
    .O(srSTX_10_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  srSTX_0_and00011 (
    .I0(LOAD_IBUF1),
    .I1(DI_0_IBUF_12),
    .O(srSTX_0_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  srSTX_0_and00001 (
    .I0(LOAD_IBUF1),
    .I1(DI_0_IBUF_12),
    .O(srSTX_0_and0000)
  );
  IBUF   LOAD_IBUF (
    .I(LOAD),
    .O(LOAD_IBUF1)
  );
  IBUF   clr_IBUF (
    .I(clr),
    .O(clr_IBUF_59)
  );
  IBUF   MOSI_IBUF (
    .I(MOSI),
    .O(MOSI_IBUF_42)
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
    .I(srSTX[11]),
    .O(MISO)
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
  OBUF   sr_SRX_11_OBUF (
    .I(srSRX[11]),
    .O(sr_SRX[11])
  );
  OBUF   sr_SRX_10_OBUF (
    .I(srSRX[10]),
    .O(sr_SRX[10])
  );
  OBUF   sr_SRX_9_OBUF (
    .I(srSRX[9]),
    .O(sr_SRX[9])
  );
  OBUF   sr_SRX_8_OBUF (
    .I(srSRX[8]),
    .O(sr_SRX[8])
  );
  OBUF   sr_SRX_7_OBUF (
    .I(srSRX[7]),
    .O(sr_SRX[7])
  );
  OBUF   sr_SRX_6_OBUF (
    .I(srSRX[6]),
    .O(sr_SRX[6])
  );
  OBUF   sr_SRX_5_OBUF (
    .I(srSRX[5]),
    .O(sr_SRX[5])
  );
  OBUF   sr_SRX_4_OBUF (
    .I(srSRX[4]),
    .O(sr_SRX[4])
  );
  OBUF   sr_SRX_3_OBUF (
    .I(srSRX[3]),
    .O(sr_SRX[3])
  );
  OBUF   sr_SRX_2_OBUF (
    .I(srSRX[2]),
    .O(sr_SRX[2])
  );
  OBUF   sr_SRX_1_OBUF (
    .I(srSRX[1]),
    .O(sr_SRX[1])
  );
  OBUF   sr_SRX_0_OBUF (
    .I(srSRX_0_1_61),
    .O(sr_SRX[0])
  );
  OBUF   sr_STX_11_OBUF (
    .I(srSTX[11]),
    .O(sr_STX[11])
  );
  OBUF   sr_STX_10_OBUF (
    .I(srSTX[10]),
    .O(sr_STX[10])
  );
  OBUF   sr_STX_9_OBUF (
    .I(srSTX[9]),
    .O(sr_STX[9])
  );
  OBUF   sr_STX_8_OBUF (
    .I(srSTX[8]),
    .O(sr_STX[8])
  );
  OBUF   sr_STX_7_OBUF (
    .I(srSTX[7]),
    .O(sr_STX[7])
  );
  OBUF   sr_STX_6_OBUF (
    .I(srSTX[6]),
    .O(sr_STX[6])
  );
  OBUF   sr_STX_5_OBUF (
    .I(srSTX[5]),
    .O(sr_STX[5])
  );
  OBUF   sr_STX_4_OBUF (
    .I(srSTX[4]),
    .O(sr_STX[4])
  );
  OBUF   sr_STX_3_OBUF (
    .I(srSTX[3]),
    .O(sr_STX[3])
  );
  OBUF   sr_STX_2_OBUF (
    .I(srSTX[2]),
    .O(sr_STX[2])
  );
  OBUF   sr_STX_1_OBUF (
    .I(srSTX[1]),
    .O(sr_STX[1])
  );
  OBUF   sr_STX_0_OBUF (
    .I(srSTX_0_1_74),
    .O(sr_STX[0])
  );
  BUFGP   SCLK_BUFGP (
    .I(SCLK),
    .O(SCLK_BUFGP_45)
  );
  BUFG   LOAD_IBUF_BUFG (
    .I(LOAD_IBUF1),
    .O(LOAD_IBUF_37)
  );
  INV   LOAD_inv1_INV_0 (
    .I(LOAD_IBUF1),
    .O(LOAD_inv)
  );
  FDE #(
    .INIT ( 1'b0 ))
  srSRX_0_1 (
    .C(SCLK_BUFGP_45),
    .CE(LOAD_inv),
    .D(MOSI_IBUF_42),
    .Q(srSRX_0_1_61)
  );
  FDCP_1 #(
    .INIT ( 1'b0 ))
  srSTX_0_1 (
    .C(SCLK_BUFGP_45),
    .CLR(srSTX_0_and0000),
    .D(N0),
    .PRE(srSTX_0_and0001),
    .Q(srSTX_0_1_74)
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

