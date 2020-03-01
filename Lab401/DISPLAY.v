`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:24:20 02/21/2019 
// Design Name: 
// Module Name:    DISPLAY 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DISPLAY( input clk, output wire [3:0] AN,
	input [15:0]dat, output wire [7:0] SEG,
	input [1:0]PTR, output wire ce1ms);
	wire [3:0]Dig;
	wire [1:0]Adr_dig ;
	
	//Генератор "анодов"
	Gen4an DD1( .clk(clk), .q(Adr_dig),
	.ce(ce1ms), .an(AN));
	
	// Мультиплексор цифр
	MUX16_4 DD2 ( .dat(dat), .do(Dig),
	.adr(Adr_dig));
	
	// Дешифратор семи сегментных символов цифр
	D7seg DD3 ( .dig(Dig), .seg(SEG[6:0]));
	
	// Генератор точки
	Gen_P DD4 ( .adr_An(Adr_dig), .seg_P(SEG[7]),
	.ptr(PTR) );
	
	// Генератор ce1ms
	Gen1ms DD5 (.clk(clk), .ce1ms(ce1ms));
	
endmodule
