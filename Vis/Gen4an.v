`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:35 02/14/2019 
// Design Name: 
// Module Name:    Gen4an 
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
module Gen4an ( input clk, output reg [1:0] q = 0, //������� ������ �����
input ce, output wire [3:0] an );
assign an = (q==0)? 4'b1110 : //��������� ����� 0 (�������)
(q==1)? 4'b1101 : //��������� ����� 1
(q==2)? 4'b1011 : //��������� ����� 2
4'b0111 ; //��������� ����� 3 (�������)
always @ (posedge clk) if (ce) begin
q <= q+1 ;
end
endmodule
