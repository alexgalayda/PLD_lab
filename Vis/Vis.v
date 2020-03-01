module Vis(
	input F50MHz, 	output wire [3:0] AN , 
	input [7:0]SW,	output wire [7:0] SEG,
						output wire [7:0] LED
	);
				
//wire CEO01;//, CEO12, CEO23, CEO34, CEO45;
//wire TC1, TC2, TC3, TC4;
wire CE1MS;
wire [15:0] dat;

wire clk;
BUFG DD0 (.I(F50MHz), .O(clk));

//clk -- часы
//dat -- 16-ти битное число
//PTR -- точка разделитель
//AN -- выбор, какую из 4 цифр дисплея использовать
//SEG -- кодировка цифры для дисплея
//se1ms -- CEO для дисплея
assign dat = SW;
DISPLAY DD6(
	.clk(clk), .AN(AN),
	.dat(dat), .SEG(SEG),
	.PTR(0), .ce1ms(CE1MS)
);

OBUF8 DD7(.I(SW[7:0]), .O(LED[7:0]));

endmodule
