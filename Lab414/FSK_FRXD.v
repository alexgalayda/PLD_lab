`include "CONST.v"
module FSK_FRXD ( output wire st_SADC, //����� ��� AD7895
input [11:0]FSK_IN, output wire en_rx_byte, //JD1
input clk, output wire URXD, //JD2
input st, output wire OCD, //JD3
output wire [7:0] RX_dat, //�������� ����
output wire [15:0] Amin, //����������� ���������
output wire [15:0] SHdec, //�������� (DEC)
output wire [15:0] AMPdec,//��������� (DEC)
output wire [15:0] AF1dec, //������ ���������
output wire [15:0] AF2dec, //������ ���������
output wire [12:0] bf_SH, //�������� (HEX)
output wire [11:0]bf_AMP);//��������� (HEX)
wire ok_rx_bit ;
wire [10:0] F2_AMP ; wire [10:0] F1_AMP ;
URXD_FSK_1byte DD1 ( .RXD(URXD),
.clk(clk), .RX_dat(RX_dat),
.FSK_SH(FSK_IN), .en_rx_byte(en_rx_byte),
.OCD(OCD),
.bf_AMP(bf_AMP),
.bf_SH(bf_SH),
.ce_Fd(st_SADC),
.F2_AMP(F2_AMP),
.F1_AMP(F1_AMP),
.ok_rx_bit(ok_rx_bit));
//--������� �������� ��������� ������ ��������� F1 AMP
wire [11:0]PIC_F1 ;
PIC_DET DD2 (
.A(F1_AMP), .PIC(PIC_F1),
.ce(ok_rx_bit),
.clk(clk),
.st(st));
//--������� �������� ��������� ������ ��������� F2 AMP
wire [11:0]PIC_F2 ;
PIC_DET DD3 (
.A(F2_AMP), .PIC(PIC_F2),
.ce(ok_rx_bit),
.clk(clk),
.st(st));
//--��������������� ��������� ����� PIC_AMP � �������-���������� AMPdec
BIN12_to_DEC4 DD4 ( .BIN(bf_AMP), .DEC(AMPdec),
.st(st),
.clk(clk));
//--��������������� ��������� ����� PIC_SH � �������-���������� SHdec
BIN12_to_DEC4 DD5 ( .BIN(bf_SH), .DEC(SHdec),
.st(st),
.clk(clk));
//--��������������� ��������� ����� PIC_F1 � ������� ���������� AF1dec
BIN12_to_DEC4 DD6 ( .BIN(PIC_F1), .DEC(AF1dec),
.clk(clk),
.st(st));
//--��������������� ��������� ����� PIC_F2 � ������� ���������� AF2dec
BIN12_to_DEC4 DD7 ( .BIN(PIC_F2), .DEC(AF2dec),
.clk(clk),
.st(st));
//--��������������� ��������� ����� `Amin � ������� ���������� Amin
wire [11:0]bin_Amin=`Amin ;
BIN12_to_DEC4 DD8 ( .BIN(bin_Amin),.DEC(Amin),
.clk(clk),
.st(st));
endmodule
