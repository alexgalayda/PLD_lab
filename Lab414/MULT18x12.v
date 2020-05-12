module MULT18x12 (
input [11:0] X, output wire[11:0] WX, //WX=X*W/2^16
input [17:0] W,
input clk);
reg[27:0] P=0 ; //������� ������������ P=X*W
wire SX=X[11] ; //���� X
wire SW=W[17] ; //���� ����������� ��������� W
wire SP= SX^SW ; //���� ������������
wire [10:0]mod_X = SX? -X : X ; //������ X
wire [16:0]mod_W = SW? -W : W ; //������ ����������� ��������� W
wire [27:0]mod_P = mod_X*mod_W; //������������ ������� X � W
assign WX = P>>16 ; //������� P[27:0] �� 2^16
always @ (posedge clk) begin
P = SP? -mod_P : mod_P ; //�������������� ����� ������������
end
endmodule