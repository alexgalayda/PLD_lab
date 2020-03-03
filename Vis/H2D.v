module H2D(
	input [3:0]I,	output [3:0] O,
	input clk,		output reg TC = 0
);

always @(posedge clk)
	begin
		if (I > 4'h1001)
			begin
				TC <= 1;
				O <= I - 4'h1010;
			end
		else
			O <= I;
	end
endmodule