//N = 13
//VCD4RE <- VCGrey4RE <- VCB4CLED <-VCJ4RE
module Sch1(
	input F50MHz, 	output wire [3:0] AN, 
	input [7:0]SW, output wire [7:0] SEG,
	input BTN0, 	output wire [7:0] LED, 
	input BTN3
);
				
wire CEO01, CEO12, CEO23, CEO34, CEO45;
wire TC1, TC2, TC3, TC4;
wire CE1MS;
wire [15:0] dat;

wire clk;
BUFG DD0 (.I(F50MHz), .O(clk));

//Tmod = 1 -> Быстро (каждые N счетов)
//Tmod = 0 -> Медленно (каждые 1000 счетов)
Gen_Nms_1s DD1(
	.clk(clk), .CEO(CEO01),
	.ce(CE1MS),
	.Tmod(SW[7])
);

VCJ4RE DD2(
	.ce(CEO01), .TC(TC1), 
	.clk(clk), .CEO(CEO12),
	.R(BTN0), .Q(dat[3:0])
);
///
VCJ4RE DD3(
	.ce(CEO01), .TC(TC2), 
	.clk(clk), .CEO(CEO23),
	.R(BTN0), .Q(dat[7:4])
);

VCJ4RE DD4(
	.ce(CEO01), .TC(TC3), 
	.clk(clk), .CEO(CEO34),
	.R(BTN0), .Q(dat[11:8])
);

VCJ4RE DD5(
	.ce(CEO01), .TC(TC4), 
	.clk(clk), .CEO(CEO45),
	.R(BTN0), .Q(dat[15:12])
);

//VCGrey4Re DD3(
//	.clk(clk),.Y(dat[7:4]),
//	.ce(CEO12), .CEO(CEO23),
//	.r(BTN0), .TC(TC2)
//);

//VCBmCLED DD4(
//	.ce(CEO23), .Q(dat[11:8]),
//	.up(SW[6]), .CEO(CEO34),
//	.di(SW[3:0]), .TC(TC3),
//	.L(BTN3),
//	.clk(clk),
//	.clr(BTN0)
//);
			
//VCD4RE DD5(
//	.clk(clk), .TC(TC4),
//	.ce(CEO34), .CEO(CEO45),
//	.R(BTN0), .Q(dat[15:12])
//);
		 
DISPLAY DD6(
	.clk(clk), .AN(AN),
	.dat(dat), .SEG(SEG),
	.PTR(SW[5:4]), .ce1ms(CE1MS)
);

OBUF8 DD7(.I(SW[7:0]), .O(LED[7:0]));

endmodule
