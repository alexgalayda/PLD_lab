`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:21:44 02/21/2019 
// Design Name: 
// Module Name:    Gen1ms 
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
module Gen1ms (input clk, output reg ce1ms=0); //1 миллисекунда
	parameter Fclk =50000000 ; //„астота генератора синхронизации 50 ћ√ц
	parameter F1kHz =1000 ; //„астота 1 к√ц
	reg[15:0]cb_ms = 0 ; //—четчик миллисекунды
	wire ce = (cb_ms==1) ; //Tce=1ms
	//ƒелитель частоты
	always @(posedge clk) begin
			cb_ms <= ce? ((Fclk/F1kHz)) : cb_ms-1 ; //—чет миллисекунды
			ce1ms <= ce ; //1 миллисекунда
	end
endmodule