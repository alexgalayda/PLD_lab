`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:12:27 02/21/2019 
// Design Name: 
// Module Name:    D7seg 
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
module D7seg(input [3:0] dig, output wire [6:0] seg);
                              //gfedcba
	assign seg = (dig==0)? 7'b1000000 : //0     a
						(dig==1)? 7'b1111001 : //1 f| |b
						(dig==2)? 7'b0100100 : //2   g
						(dig==3)? 7'b0110000 : //3 e| |c
						(dig==4)? 7'b0011001 : //4   d   
						(dig==5)? 7'b0010010 : //5
						(dig==6)? 7'b0000010 : //6
						(dig==7)? 7'b1111000 : //7
						(dig==8)? 7'b0000000 : //8
						(dig==9)? 7'b0010000 : //9
						(dig==10)? 7'b0001000: //A
						(dig==11) ? 7'b0000011: //b
						(dig == 12) ? 7'b1000110://c
						(dig == 13)?  7'b0100001://d
						(dig == 14)? 7'b0000110: //e
						(dig == 15)? 7'b0001110: //f
											7'b1111111 ; // 
endmodule