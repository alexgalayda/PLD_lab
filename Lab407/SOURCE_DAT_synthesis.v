module SOURCE_DAT (
MASTER_dat, SLAVE_dat
);
  output [11 : 0] MASTER_dat;
  output [11 : 0] SLAVE_dat;
  wire SLAVE_dat_0_OBUF_24;
  wire SLAVE_dat_2_OBUF_25;
  GND   XST_GND (
    .G(SLAVE_dat_0_OBUF_24)
  );
  VCC   XST_VCC (
    .P(SLAVE_dat_2_OBUF_25)
  );
  OBUF   MASTER_dat_11_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(MASTER_dat[11])
  );
  OBUF   MASTER_dat_10_OBUF (
    .I(SLAVE_dat_2_OBUF_25),
    .O(MASTER_dat[10])
  );
  OBUF   MASTER_dat_9_OBUF (
    .I(SLAVE_dat_2_OBUF_25),
    .O(MASTER_dat[9])
  );
  OBUF   MASTER_dat_8_OBUF (
    .I(SLAVE_dat_2_OBUF_25),
    .O(MASTER_dat[8])
  );
  OBUF   MASTER_dat_7_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(MASTER_dat[7])
  );
  OBUF   MASTER_dat_6_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(MASTER_dat[6])
  );
  OBUF   MASTER_dat_5_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(MASTER_dat[5])
  );
  OBUF   MASTER_dat_4_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(MASTER_dat[4])
  );
  OBUF   MASTER_dat_3_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(MASTER_dat[3])
  );
  OBUF   MASTER_dat_2_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(MASTER_dat[2])
  );
  OBUF   MASTER_dat_1_OBUF (
    .I(SLAVE_dat_2_OBUF_25),
    .O(MASTER_dat[1])
  );
  OBUF   MASTER_dat_0_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(MASTER_dat[0])
  );
  OBUF   SLAVE_dat_11_OBUF (
    .I(SLAVE_dat_2_OBUF_25),
    .O(SLAVE_dat[11])
  );
  OBUF   SLAVE_dat_10_OBUF (
    .I(SLAVE_dat_2_OBUF_25),
    .O(SLAVE_dat[10])
  );
  OBUF   SLAVE_dat_9_OBUF (
    .I(SLAVE_dat_2_OBUF_25),
    .O(SLAVE_dat[9])
  );
  OBUF   SLAVE_dat_8_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(SLAVE_dat[8])
  );
  OBUF   SLAVE_dat_7_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(SLAVE_dat[7])
  );
  OBUF   SLAVE_dat_6_OBUF (
    .I(SLAVE_dat_2_OBUF_25),
    .O(SLAVE_dat[6])
  );
  OBUF   SLAVE_dat_5_OBUF (
    .I(SLAVE_dat_2_OBUF_25),
    .O(SLAVE_dat[5])
  );
  OBUF   SLAVE_dat_4_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(SLAVE_dat[4])
  );
  OBUF   SLAVE_dat_3_OBUF (
    .I(SLAVE_dat_2_OBUF_25),
    .O(SLAVE_dat[3])
  );
  OBUF   SLAVE_dat_2_OBUF (
    .I(SLAVE_dat_2_OBUF_25),
    .O(SLAVE_dat[2])
  );
  OBUF   SLAVE_dat_1_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(SLAVE_dat[1])
  );
  OBUF   SLAVE_dat_0_OBUF (
    .I(SLAVE_dat_0_OBUF_24),
    .O(SLAVE_dat[0])
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

