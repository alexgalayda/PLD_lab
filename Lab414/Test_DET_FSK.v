module Test_DET_FSK(
		//-----������� Gen_FSK_byte-------------------
		input clk, 			output wire [11:0]FSK_SH,//FSK ������
		input st, 			output wire S, //���� SIN
		input [7:0]dat, 	output wire ce_SIN, //������ SIN
		input [7:0]Mamp, 	output wire en_tx, //�������� ��������
								output wire TX_bit, //��� �����������
								output wire ce_tx_bit,//������� ��� �����������
		//-----������� ��������� FSK-----------------
								output wire [11:0] DFSK_SH,//����������� ������ FSK_SH
								output wire OCD, // OCD=(mod_DFSK>=AMP/2)
								output wire [11:0] AMP, //���������
								output wire [12:0] bf_SH, //��������
								output wire FSK_tact, //������ FSK_tact Ttact=1/F1=833us
								output wire [6:0]cb_tact, //������� �����
								output wire FSK_start, //����� ������ ���
								output wire FSK_en_rx, //�������� ������ ���
								output wire[3:0]cb_rx_bit, //������� �������� ���
								output wire FSK_res, //������� "������" � �����
								output wire[10:0]F1_AMP, //��������� ������ ���������
								output wire[10:0]F2_AMP, //��������� ������ ���������
								output wire RX_bit, //�������������� ��� �� DFT
								output wire [6:0]cb_FSK_res,  //������� �����
								output wire ok_rx_bit);
//--��������� Gen_FSK_byte
	Gen_FSK_byte DD1 (
			.clk(clk), 		.FSK_SH(FSK_SH),
			.st(st), 		.S(S),
			.dat(dat), 		.ce_SIN(ce_SIN),
			.Mamp(Mamp), 	.ce_bit(ce_tx_bit),
								.en_tx(en_tx),
								.TXD(TX_bit));
								
//--�������� FSK
	DET_FSK DD2 ( 	.DFSK_SH(DFSK_SH), //����������� ������ FSK_SH
						.FSK_SH(FSK_SH), 	.OCD(OCD), // OCD=(mod_DFSK>=AMP/2)
						.clk(clk), 			.AMP(AMP), //���������
												.bf_SH(bf_SH), //����� ��������
												.FSK_tact(FSK_tact), //������ FSK_tact= 833us
												.cb_tact(cb_tact), //������� �����
												.FSK_start(FSK_start), //����� ������ ���
												.FSK_en_rx(FSK_en_rx),//�������� ������ ���
												.cb_rx_bit(cb_rx_bit), //������� �������� ���
												.FSK_res(FSK_res), //������� "������" � �����
												.F1_AMP(F1_AMP), //��������� ������ ���������
												.F2_AMP(F2_AMP), //��������� ������ ���������
												.RX_bit(RX_bit), //������������� ��� �� DFT
												.cb_FSK_res(cb_FSK_res),  //������� �����
												.ok_rx_bit(ok_rx_bit) );
endmodule
