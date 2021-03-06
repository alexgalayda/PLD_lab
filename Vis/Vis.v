module Vis(
	input F50MHz, 	output wire [3:0] AN, 
	input [7:0]SW,	output wire [7:0] SEG,
	input BTN0,		output wire [7:0] LED
	);

wire CE1MS;

wire clk;
BUFG DD0 (.I(F50MHz), .O(clk));

reg BTN0_r = 0;
reg BTN0_2r = 0;

always @(posedge clk)
	begin
		BTN0_r <= BTN0;
		BTN0_2r <= BTN0_r;
	end
	
wire BTN0_pulse = BTN0_r & !BTN0_2r;

reg Q = 0;
always @(posedge clk)
	Q <= BTN0_pulse? !Q : Q;
	
reg [15:0] dat = 16'h0;
wire [9:0] Dec_dat;
Hex2Dec DD5( .bin(SW), .bcd(Dec_dat));

always @(posedge clk)
	dat <= Q? Dec_dat : SW;

DISPLAY DD6(
	.clk(clk), .AN(AN),
	.dat(dat), .SEG(SEG),
	.PTR(Q), .ce1ms(CE1MS)
);

OBUF8 DD7(.I(SW[7:0]), .O(LED[7:0]));

endmodule
