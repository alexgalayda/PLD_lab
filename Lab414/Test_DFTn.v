module Test_DFTn( 			output wire S, //���� ���������
				input clk, 		output wire[11:0] SIN,//���������
				input st, 		output wire ce_tact, //������ ������������� DFT
				input[7:0]M, 	output wire ce_sd, //������ ������������� ���������
									output wire ce_SIN, //������ ���������
									output wire ce_bit, //������ ���
									output wire [10:0]modY,//��������� ���������
									output wire [6:0]k, //����� ����������� ���������, k=|k*n|modNP
									output wire D, //��� ������
									output wire [6:0]n		); //����� ���������,
	//--������ (��������� ������)
	TIMER DD1 (	.clk(clk), 	.ce(ce_tact), //(������� ce_tact 100*Fbit=100*2200Hz=220kHz)
					.st(st), 	.ce_bit(ce_bit)); //(������� ce_bit Fbit=2200Hz)
	//--��������� ������� ���������
	//--M - ��������� ��������� (��� M=128 Amp=2000)
	//--D - ���������� �������� (��� D=0 Fsin=2200Hz, ��� D=1 Fsin=1200Hz)
	Gen_FSK_SIN DD2 (
		.clk(clk), 	.S(S),//S=1 sin>0
		.D(D), 		.SIN(SIN),
		.Mamp(M), 	.ce_SIN(ce_SIN), //
						.ce_sd(ce_sd)); //
	//--����������� ��������� n-� ���������
	DFTn DD3 (
		.X(SIN), 			.modY(modY),
		.ce(ce_tact), 		.k(k),
		.clk(clk),
		.st(st),
		.ce_bit(ce_bit),
		.n(n));
	//--��������� ������ D=0,1 � ������ ��������� n=1,2,...,99
	Gen_Dn DD4 (.st(ce_bit), 	.D(D),
					.clk(clk), 		.n(n));
endmodule