module BTN_REG_AMP(
input BTN_UP, output reg [7:0] M=8'h80, //���������
input BTN_DOWN,
input clk,
input ce);//ce1ms ��� ct10ms
reg [1:0]Q_UP ;//
reg [1:0]Q_DOWN ;//
wire st_UP= Q_UP[0] & !Q_UP[1] & ce ;//��� ������ ������ (������ �� 2)
wire st_DOWN= Q_DOWN[0] & !Q_DOWN[1] & ce ;//��� ������ ����� (�������� �� 2)
wire Mmax=(M==8'h80); //������������ �������� M=128
wire Mmin=(M==8'h01); //����������� �������� M=1
always @ (posedge clk) if (ce) begin
Q_UP <= Q_UP<<1 | BTN_UP ;//����� BTN_UP
Q_DOWN <= Q_DOWN<<1 | BTN_DOWN ;//����� BTN_DOWN
M <= (!Mmax & st_UP)? M<<1 : (!Mmin & st_DOWN)? M>>1 : M ;
end
endmodule