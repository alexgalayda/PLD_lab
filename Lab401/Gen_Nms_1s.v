`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:44 02/21/2019 
// Design Name: 
// Module Name:    Gen_Nms_1s 
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
`define N 27 
module Gen_Nms_1s (input clk, output wire CEO,
						input ce, //ce1ms
						input Tmod );
parameter F1kHz =1000 ; //„астота 1 к√ц

parameter F1Hz =1 ; //„астота 1 √ц
reg[9:0]cb_Nms = 0 ; //—четчик N миллисекунд
wire[9:0]Nms = Tmod? `N : F1kHz/F1Hz ; //„исло дл€ делител€ частоты
assign CEO = ce & (cb_Nms==1) ; //1 секунда или N миллисекунд

always @(posedge clk) if (ce) begin
	cb_Nms <= (cb_Nms==1)? Nms : cb_Nms-1 ; //—чет N миллисекунд
end

endmodule