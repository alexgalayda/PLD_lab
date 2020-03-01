`define m 4
module VCBDmSE (input ce, output reg [`m-1:0] Q = (1<<`m)-1,
	input clk, output wire TC,
	input s, output wire CEO);
assign TC = (Q==0) ; //Q0,Q1,...Q'm-1 ==0
assign CEO = ce & TC ; //Ñèãíàë ïåðåíîñà
always @ (posedge clk) begin
	Q <= s? ((1<<`m)-1) : ce? Q-1 : Q ; /* Åñëè s=1, òî çàïèñü 2m-1, èíà÷å åñëè ce=1, òî "âû÷è-òàòü", èíà÷å "ñòîÿòü"*/
end
endmodule