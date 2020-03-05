module H2D(
	input [3:0]I,	output reg [3:0]O = 0,
	input clk,		
	input ITC,		output reg TC = 0,
	input CE, 		output reg CEO = 0
    );

always @(posedge clk)
	if (CE) begin
		if (ITC)
			begin
				TC <= (I > 4'h8) ? 1 : 0;
				O <= (I > 4'h8) ? I - 4'h9 : I + 4'h1;
			end
		else
			begin
				TC <= (I > 4'h9) ? 1 : 0;
				O <= (I > 4'h9) ? I - 4'hA : I;
			end
		CEO <= 1;
	end
endmodule