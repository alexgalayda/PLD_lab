module Sch_Lab407ND(	input F50MHz,		output wire JC2,
							input BTN0,			output wire JB1,
							input [2:0]SW,		output wire JB2,
							input JC1,			output wire JB3,
							input BTN1,			output wire JC3,
							input JA1,			output wire JB4,
							input JA2,			output wire LED0,
							input JA3,			output wire JC4,
							                  output JA7,			
													output wire [3:0]AN,
							input JB7,			output wire [6:0]seg,
													output wire seg_P);

wire clk,st,LOAD, SCLK, MOSI, MISO;
wire [11:0]MTX_DAT,STX_DAT;
wire [11:0]MRX_DAT,SRX_DAT;
wire [11:0]DISPL_dat;

BUFG DD1		(	.I(F50MHz),	.O(clk)	);

Gen_st DD2	(	.clk(clk), .BTN(BTN1),	.ce_st(st)	);

SOURCE_DAT DD3	(	.MASTER_dat(MTX_DAT),	.SLAVE_dat(STX_DAT)	);



SPI_MASTER DD4	(	.clk(clk),		.LOAD(JB1),
						.st(st),			.SCLK(JB2),
						.MISO(MISO),		.MOSI(JB3),
						.clr(BTN0),		.ce_tact(JC3),
						.DI(MTX_DAT),	.DO(MRX_DAT)	);

M2_1 DD5_0	(	.A(JA1),		.Q(LOAD),
				.B(JB1),
				.S(SW[2])					);

M2_1 DD5_1	( .A(JA2),		.Q(SCLK),
				.B(JB2),
				.S(SW[2])					);

M2_1 DD5_2	(.A(JA3),		.Q(MOSI),
				.B(JB3),
				.S(SW[2])					);
				
M2_1 DD5_4	(.A(JB7),		.Q(MISO),
				.B(JA7),
				.S(SW[2])					);
				


				
				
SPI_SLAVE DD6	(	.DI(STX_DAT),	.DO(SRX_DAT),
						.SCLK(SCLK),		.MISO(JA7),
						.LOAD(LOAD),
						.clr(BTN0),
						.MOSI(MOSI)								);
						
MUX64_16 DD7	(	.A(MTX_DAT),	.DO(DISPL_dat),
						.B(MRX_DAT),
						.C(STX_DAT),
						.D(SRX_DAT),
						.S(SW[1:0])								);
						
DISPLAY	DD8	(	.clk(clk),					.ce1ms(JC4),
						.dat({1'b0,DISPL_dat}),	.AN(AN),
														.seg(seg),
														.seg_P(seg_P)	);
						
INV DD9	(	.I(LOAD),	.O(LED0)	);
assign JC2 = st;				
		
endmodule