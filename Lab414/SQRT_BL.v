`define m 18
module SQRT_BL ( 	input [2*`m-1:0] X, 	output reg[`m-1:0]Q=0,
						input st, 				output reg en=0,
						input clk);
	wire [2*`m-1:0]M=Q*Q ;
	wire DI =(M<=X);
	//---������� ����������������� �����������---
	reg[`m:0] T=0 ; //������� ������ ��������� T
	integer i ; //������ ����� for
	always @ (posedge clk) begin
		T <= st? 1<<`m :en? T>>1 : T ; //����� ��������� T ������
		Q[`m-1] <= st? 1 : T[`m]? DI : Q[`m-1] ; //�������� �������� ���� ��������� �������� Q
		for (i=`m-2 ; i>= 0; i=i-1) // ���� for
			Q[i] <= st? 0 : T[i+2]? 1 : T[i+1]? DI : Q[i] ; //�������� ���������� ���� �������� Q
		en<= st? 1 : (T[0] &en)? 0 :en ; //�������� ����������������� �����������
	end
endmodule