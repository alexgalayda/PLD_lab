module Test_Mes_AMP_SH(
	//--������� ���������� Gen_FSK_byte
	input clk, 			output wire [11:0]FSK_SH,//������ FSK
	input st, 			output wire S, //���� SIN
	input [7:0]dat, 	output wire ce_SIN, //������� ������� SIN
	input [7:0]Mamp, 	output wire ce_tx_bit, //������� ���
							output wire en_tx, //�������� ��������
							output wire TXD, //������������ ������
							//--������� ���������� �������� � ���������
							output wire [11:0] DFSK_SH, //����������� ������ FSK
							output wire [12:0] SH, //��������
							output wire [11:0] AMP, //���������
							output wire OCD //������ ���������� ������
);
	//--��������� Gen_FSK_byte
	Gen_FSK_byte DD1 (
			.clk(clk), 			.FSK_SH(FSK_SH),
			.st(st), 			.S(S),
			.dat(dat), 			.ce_SIN(ce_SIN),
			.Mamp(Mamp), 		.ce_bit(ce_tx_bit),
									.en_tx(en_tx),
									.TXD(TXD),
									.ce_sd(ce_sd));
	//--���������� �������� � ���������--------
	Mes_AMP_SH DD2(
			.FSK_SH(FSK_SH), 	.DFSK_SH(DFSK_SH),//����������� ������ FSK_SH
			.clk(clk), 			.bf_SH(SH), //��������
			.res(st), 			.AMP(AMP), //���������
									.ce_Fd(ce_Fd), //����� �������������
									.OCD(OCD));
	endmodule
