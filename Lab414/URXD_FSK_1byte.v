module URXD_FSK_1byte(output wire [11:0] DFSK_SH,//���������� ������ FSK_SH
input [11:0]FSK_SH, output wire OCD, //���������� ������
input clk, output wire [12:0] bf_SH, //����� �������� SIN_FSK
output reg[10:0] bf_AMP=0, //����� ��������� SIN_FSK
output wire RXD, //�������� ���
output wire ce_Fd, //������ �������������
output wire ok_rx_bit, //������ ������ ����
output wire en_rx_byte, //�������� ������
output wire [3:0] cb_rx_bit,//������� ���
output wire [7:0] RX_dat, //�������� ����
output wire[10:0]F2_AMP, //DFT ��������� 2-� ��������� FSK
output wire[10:0]F1_AMP);//DFT ��������� 1-� ��������� FSK
//--�������� FSK ����
wire [10:0]AMP;
DET_FSK DD1 (.FSK_SH(FSK_SH), .DFSK_SH(DFSK_SH),
.clk(clk), .OCD(OCD),
.bf_SH(bf_SH),
.AMP(AMP),
.RX_bit(RXD),
.ce_Fd(ce_Fd),
.ok_rx_bit(ok_rx_bit),
.F2_AMP(F2_AMP), //��������� ������ ���������
.F1_AMP(F1_AMP)); //��������� ������ ���������
//--�������� ������ �����
wire start_rx ;
URXD1B DD2 ( .inp(RXD), .en_rx_byte(en_rx_byte),
.clk(clk), .RX_dat(RX_dat),
.cb_bit(cb_rx_bit),
.start_rx(start_rx));
always @ (posedge clk) if (start_rx) begin
bf_AMP <= AMP ;
end
endmodule