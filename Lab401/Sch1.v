//N = 13
//VCD4RE <- VCGrey4RE <- VCB4CLED <-VCJ4RE
module Sch1(
	input F50MHz, 	output wire [3:0] AN, 
	input [7:0]SW, output wire [7:0] SEG,
	input BTN0,		output wire [7:0] LED,
	input BTN1
);
				
wire CEO01, CEO12, CEO23, CEO34, CEO45;
wire TC1, TC2, TC3, TC4;
wire CE1MS;
wire [15:0] dat;

wire clk;
BUFG DD0 (.I(F50MHz), .O(clk));

reg BTN0_r = 0;
reg BTN0_2r = 0;
reg BTN1_r = 0;
reg BTN1_2r = 0;

always @(posedge clk)
	begin
		BTN0_r <= BTN0;
		BTN0_2r <= BTN0_r;
		BTN1_r <= BTN1;
		BTN1_2r <= BTN1_r;
	end
	
wire BTN0_pulse = BTN0_r & !BTN0_2r;
wire BTN1_pulse = BTN1_r & !BTN1_2r;
	
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
	.R(BTN0_pulse), .Q(dat[3:0])
);

//clr=0, L=0, ce=1 и up=1 по каждому фронту сигнала синхронизации clk, (Q<=Q+1), 
						// up=0 (Q<=Q-1)
		//L=1 не зависимо от ce по фронту сигнала синхронизации clk, Q принимает значение di (Q[`m-1:0]<=di[`m-1:0])
//clr=1 удерживает Q[`m-1:0]=0 независимо от уровней сигналов на других входах.
VCBmCLED DD3(
	.ce(CEO12), .Q(dat[7:4]),
	.up(SW[6]), .CEO(CEO23),
	.di(SW[3:0]), .TC(TC2),
	.L(BTN1_pulse),
	.clk(clk),
	.clr(BTN0_pulse)
);

VCGrey4Re DD4(
	.clk(clk),.Y(dat[11:8]),
	.ce(CEO23), .CEO(CEO34),
	.r(BTN0_pulse), .TC(TC3)
);
			
VCD4RE DD5(
	.clk(clk), .TC(TC4),
	.ce(CEO34), .CEO(CEO45),
	.R(BTN0_pulse), .Q(dat[15:12])
);

DISPLAY DD6(
	.clk(clk), .AN(AN),
	.dat(dat), .SEG(SEG),
	.PTR(0), .ce1ms(CE1MS)
);

OBUF8 DD7(.I(SW[7:0]), .O(LED[7:0]));

endmodule
