module V_Sch_Lab414_F95(
		input F50MHz, //������ ���������� F50MHz NEXYS-2
//--����������� �������� ������ FSK---------------
		input BTN2, //inc DAT
		input BTN1, //dec DAT
//--��������� ���������� ��������� FSK------------
		input BTN3,/*inc Mamp*/ 	output wire [7:0] LED, //����������
		input BTN0,/*dec Mamp*/
//--��������� ������� FSK-------------------------
											output wire JB1,//en_tx
											output wire JB2,//UTXD
											output wire JB3,//S ���� FSK SIN
											output wire JB4,//st_SADC
//--SPI_DAC8043------------------------------------
											output wire JA1,//ce_bit
											output wire JA8,//SCLK_DAC_8043
											output wire JA9,//SDAT_DAC_8043
											output wire JA10,//NLD_DAC_8043
//--SPI_AD7895--------------------------------------
		input JC8,/*SDAT*/ 			output wire JC7,//SCLK_AD7895
		input JC9,/*BUSY*/ 			output wire JC10,//St_ADC
//--������������� ������� FSK � ������ DISPLAY------
		input [3:0]SW, //���������� ������� ������ � ������������ ������
//--�������� FSK �����------------------------------
											output wire JD1, // en_rx_byte
											output wire JD2, //URXD - �������������� ������ FSK
											output wire JD3, //OCD - ������ �����������
											output wire JD4, //st_SDAC
//--���� ��������� ������������ ��������� DISPLAY---
											output wire [4:0]AN, //����� ����������� ���������
											output wire [6:0]seg, //��������
											output wire seg_P); //�����
	wire clk, ce10ms, ce100ms, ce1s, en_rx_byte, st_SDAC, st_SADC ;
assign JB4 = st_SADC ;
assign JD1 = en_rx_byte ;
wire [7:0]TX_DAT ; //������ ���������� ������� FSK
wire [7:0] Mamp ; //��������� ��������� ������� FSK
wire [11:0]FSK_SH; //����� ���������� FSK_byte
wire [11:0]MFSK ; //����� ������ ��� ADC_95
wire [11:0]FSK_IN = SW[3]? FSK_SH : MFSK ;//�������������
//---���������� ����� ������� �������������---
BUFG DD1 (.I(F50MHz), .O(clk));
//--��������� ������� FSK_byte----------------
Gen_FSK_byte DD2 (
	.clk(clk), .S(JB3),
	.st(ce100ms), 	.FSK_SH(FSK_SH),
	.dat(TX_DAT), 	.ce_SIN(JD4),
	.Mamp(Mamp), 	.TXD(JB2),
						.en_tx(JB1),
						.ce_bit(JA1),
						.ce_sd(st_SDAC));
//--��������� ��������� ������� FSK----------------
BTN_REG_AMP DD3 (
	.clk(clk), 		.M(Mamp),
	.BTN_UP(BTN3),
	.BTN_DOWN(BTN0),
	.ce(ce10ms));
//--����������� ��������� ������ ������� FSK-------
BTN_REG_DAT DD4 (
	.clk(clk), 		.DAT(TX_DAT),
	.BTN_UP(BTN2),
	.BTN_DOWN(BTN1),
	.ce(ce10ms));
//--SPI_DAC8043------------------------------------
SPI_DAC8043 DD5 (
	.clk(clk), 		.SCLK(JA8),
	.st(st_SDAC), 	.SDAT(JA9),
	.DI(FSK_SH), 	.NLD(JA10));
//--��� FSK �������
ADC_95 DD6 (
	.clk(clk), 		.ADC_5000(MFSK),//ADC_5000=(Uin/5.000V)*5000
	.SDAT(JC8), 	.st_ADC(JC10), //Convst
	.st(st_SADC), 	.SCLK(JC7), //�������� �������������
	.BUSY(JC9));
//--�������� FSK �����------------------------------
wire [7:0]RX_DAT ; //������ FSK_RXD - ��������� ������� FSK
wire [15:0]Amin ; //����������� ��������� FSK
wire[15:0]TX_RX_DAT={TX_DAT,RX_DAT} ;
wire[11:0]bf_AMP ;
wire[15:0]AMPdec ;
wire[12:0]bf_SH ;
wire[15:0]SHdec ;
wire[15:0]AF1dec ;
wire[15:0]AF2dec ;
FSK_FRXD DD7 ( .RX_dat(RX_DAT), //�������� ����
	.FSK_IN(FSK_IN), 	.st_SADC(st_SADC), //����� ��� AD7895
	.clk(clk), 			.en_rx_byte(en_rx_byte), //JD1
	.st(ce1s), 			.URXD(JD2), //JD2
							.OCD(JD3), //JD3
							.Amin(Amin), //����������� ��������� FSK
							.SHdec(SHdec), //�������� (DEC)
							.AMPdec(AMPdec), //��������� (DEC)
							.AF1dec(AF1dec), //������ ���������
							.AF2dec(AF2dec), //������ ���������
							.bf_SH (bf_SH), //�������� (HEX)
							.bf_AMP (bf_AMP));//��������� (HEX)
//--������������ ������ ��� DISPLAY
wire[15:0]disp_dat= (SW[2:0]==0)? TX_RX_DAT :
(SW[2:0]==1)? 	Amin :
(SW[2:0]==2)? 	SHdec :
(SW[2:0]==3)? 	AMPdec :
(SW[2:0]==4)? 	AF1dec :
(SW[2:0]==5)? 	AF2dec :
(SW[2:0]==6)? 	{3'b000,bf_SH} :
					{4'b0000,bf_AMP};
//--���� ���������� ������������ ���������
DISPLAY DD8 ( .clk(clk), .AN(AN), //�����
	.dat(disp_dat), 	.seg(seg), //��������
	.PTR(SW[2:0]),		.seg_P(seg_P), //�����
							.ce10ms(ce10ms), //10 ����������
							.ce100ms(ce100ms),//100 ����������
							.ce1s(ce1s)); //1 �������
//--������ ��������� �����������
LED_BL DD9 (.DI(Mamp), .DO(LED), //Mamp-�������� ������ ���� ���������
				.E(en_rx_byte)); //en_rx_byte - �������� ��� ����������

endmodule
