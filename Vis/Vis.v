module Vis(
	input F50MHz, 	output wire [3:0] AN , 
	input [7:0]SW,	output wire [7:0] SEG,
	input BTN0,		output wire [7:0] LED
	);

wire CE1MS;
//wire [15:0] dat;

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
	
//reg [15:0] dat = 16'h0000;
//reg [15:0] Dec_dat = 16'h0000;
//Hex2Dec DD5( .I(SW), .O(Dec_dat), .clk(clk));

//always @(posedge clk)
//	begin
//		if (Q)
//			dat[7:0] = SW;
//		else
//			dat = Dec_dat;
//	end

//clk -- часы
//dat -- 16-ти битное число
//PTR -- точка разделитель
//AN -- выбор, какую из 4 цифр дисплея использовать
//SEG -- кодировка цифры для дисплея
//se1ms -- CEO для дисплея
DISPLAY DD6(
	.clk(clk), .AN(AN),
	.dat(SW), .SEG(SEG),
	.PTR(Q), .ce1ms(CE1MS)
);

OBUF8 DD7(.I(SW[7:0]), .O(LED[7:0]));

endmodule
