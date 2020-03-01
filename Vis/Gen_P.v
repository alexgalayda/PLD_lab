`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:22:47 02/21/2019 
// Design Name: 
// Module Name:    Gen_P 
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
module Gen_P ( input [1:0] ptr, output wire seg_P,
	input [1:0] adr_An );
	assign seg_P = !(ptr==adr_An) ;
endmodule
