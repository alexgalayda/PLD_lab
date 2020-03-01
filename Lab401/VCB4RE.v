`define m 4
module VCB4RE (input ce, output reg [`m-1:0] Q = 0,
	input clk, output wire TC,
	input R, output wire CEO);
assign TC = (Q==15) ; //Q0 & Q1 &...& Q'm-1 ==1
assign CEO = ce & TC ; //Ñèãíàë ïåðåíîñà
always @ (posedge clk) begin
	Q <= R? 0 : ce? Q+1 : Q ; /* Åñëè R=1, òî ñáðîñ â 0, èíà÷å åñëè ce=1, òî "ñóììèðîâàòü", èíà÷å "ñòîÿòü"*/
end
endmodule