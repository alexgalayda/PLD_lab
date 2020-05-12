`include "CONST.v"
module Gen_FSK_byte (
		input clk, 			output wire ce_bit, //������� ���
		input st, 			output reg en_tx=0, //�������� ��������
		input [7:0]dat, 	output wire TXD, //���� ������
		input [7:0]Mamp, 	output wire [11:0]FSK_SH, //����� ��������� �������� output wire S, //���� ���������
								output wire ce_SIN, // ������ ���������
								output wire ce_sd,  //������ ������������� ���������
								output wire S ); //���� SIN
	//--Mamp[7:0] - ��������� ��������� SIN, AMPsin=NA*Mamp/128 (NA=2000)
	wire [11:0]SIN; //���������
	assign FSK_SH = en_tx? SIN+`SH : `SH ; //����� ��������� ��������
	parameter Macc=50000 ; //������� ������������ ����������� �������
	reg [15:0]ACC_ce=0 ; //����������� ����������� ������� ������� ce
	wire ce = (ACC_ce+`F1ce>=Macc) ; //������ ������������ ������������
	reg [6:0] cb_tact=0 ; //������� �����
	assign ce_bit = (cb_tact==`NP) & ce ; // ������ ce_bit 1/1200Hz
	reg [3:0] cb_bit=0; //������� ���
	wire ce_end = (cb_bit==`Nbit+1) & ce_bit ; // ����� �����
	wire T_dat = (cb_bit>0) & (cb_bit<(`Nbit+1)) ; // �������� ������
	reg [7:0] sr_dat =0 ; //������� ������ ������
	assign TXD = ((cb_bit==0) & en_tx)? 0 : T_dat? sr_dat[0] : 1 ; //���� ������
	always @ (posedge clk) begin
		ACC_ce <= st? 0 : ce? (ACC_ce+`F1ce)-Macc : ACC_ce+`F1ce ;
		cb_tact <= (st | ce_bit)? 1 : ce? cb_tact+1 : cb_tact ;
		cb_bit <= st? 0 : (ce_bit & en_tx)? cb_bit+1 : cb_bit ;
		en_tx <= st? 1 : ce_end? 0 : en_tx ;
		sr_dat <= st? dat : (T_dat & ce_bit)? sr_dat>>1 : sr_dat ;
	end
	//--��������� ���������: TXD=0 Fsin=2200Hz, TXD=1 Fsin=1200Hz
	Gen_FSK_SIN DD1 (
			.clk(clk), 		.S(S), //S=1 sin>0
			.D(TXD), 		.SIN(SIN), //���������
			.Mamp(Mamp), 	.ce_SIN(ce_SIN), //������ ���������
								.ce_sd(ce_sd)); //������ ������������� ���������
endmodule