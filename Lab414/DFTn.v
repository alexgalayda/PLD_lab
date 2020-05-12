`include "CONST.v"
module DFTn (
			input[11:0]X, 		output wire [10:0]modY, //��������� ���������
			input ce, 			output wire [17:0]Wre, //�������� ����� ����������� ���������
			input clk, 			output wire [17:0]Wim, //������ ����� ����������� ���������
			input st, 			output wire [11:0]WXre, //�������� ����� ������������ X(k) �� W(k)
			input ce_bit, 		output wire [11:0]WXim, //������ ����� ������������ X(k) �� W(k)
			input [6:0]n, 		output reg [18:0]Yre=0, //����������� �������� ������ ������������
									output reg [18:0]Yim=0, //����������� ������ ������ ������������
									output wire [35:0]SQreim, //����� ��������� Yre � Yim
									output wire [6:0]k, //����� ����������� ��������� k=|k*n|modNP
									output reg [7:0]ACC=0); //����������� ������ ���������� ����������
	assign k =(ACC>=`NP)? ACC-`NP : ACC[6:0] ; //k=ACC �� ������ NP
	//--��������� �� ���������� ��������� Wre=cos(2*pi*n*k/N)
	MULT18x12 DD1 ( 	.X(X), .WX(WXre),
							.W(Wre),
							.clk(clk)			);
	//--��������� �� ���������� ��������� Wim=sin(2*pi*n*k/N)
	MULT18x12 DD2 ( 	.X(X), .WX(WXim),
							.W(Wim),
							.clk(clk)			);
	//--������� �������� ����� Wre ���������� ����������
	ROM_18x100_Wre DD3 ( .k(k), .Wre(Wre));
	//--������� ������ ����� Wim ���������� ����������
	ROM_18x100_Wim DD4 ( .k(k), .Wim(Wim));
	reg st_SQRT=0 ; //����� ���������� �����
	reg tce_bit=0 , tst=0;
	reg [18:0] bfYre=0 ; reg [18:0] bfYim=0 ; // ����� Yre � Yim � ����� Tbit
	wire CO = (ACC>=`NP) & ce ; //������ ����������� ������������
	always @ (posedge clk) begin
		tce_bit <= ce_bit ; tst <= st ; //������� �� Tclk=20ns=1/50Mhz
		ACC <= (ce_bit)? 0 : CO? (ACC+n)-`NP : ce? ACC+n : ACC;
		Yre <= (tst | tce_bit)? {{7{WXre[11]}},WXre} : ce? Yre+{{7{WXre[11]}},WXre} : Yre ;
		Yim <= (tst | tce_bit)? {{7{WXim[11]}},WXim} : ce? Yim+{{7{WXim[11]}},WXim} : Yim ;
		bfYre <= ce_bit? Yre : bfYre ;
		bfYim <= ce_bit? Yim : bfYim ;
		st_SQRT <= tce_bit ;
	end
	wire S_Yre=bfYre[18] ; wire S_Yim=bfYim[18] ; //����� ����
	wire [17:0]modYre = S_Yre? -bfYre : bfYre ; //������ ����� bfYre
	wire [17:0]modYim = S_Yim? -bfYim : bfYim ; //������ ����� bfYim
	wire [35:0]SQre = modYre[17:0]*modYre[17:0] ; //������� ������ ����� bfYre
	wire [35:0]SQim = modYim[17:0]*modYim[17:0] ; //������� ������ ����� bfYim
	assign SQreim = SQre+SQim ; //����� ��������� ���� Yre � Yim
	wire [17:0]SQRT ;
	assign modY = (SQRT*1310)>>16 ; //������� �� 50, � �� �� 100
	//--������ ���������� ����������� �����
	SQRT_BL DD5 (	.X(SQreim), 	.Q(SQRT),
						.st(st_SQRT),
						.clk(clk)					);
endmodule