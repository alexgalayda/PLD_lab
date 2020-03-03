module Hex2Dec(
	input [15:0]I, output reg [15:0]O,
	input clk
);

reg [3:0] TC = 0;

always @(posedge clk)
	begin
		if (I[3:0] > 4'h1001)
			begin
				TC[0] <= 1;
				O[3:0] <= I[3:0] - 4'h1010;
			end
		else
			O[3:0] <= I;
		//////////
		if (TC[0])
			begin
				I[7:4] <= I[7:4] + 1;
				TC[0] <= 0;
			end
		///////
		if (I[7:4] > 4'h1001)
			begin
				TC[1] <= 1;
				O[7:4] <= I[7:4] - 4'h1010;
			end
		else
			O[7:4] <= I;
		////////
		if (TC[1])
			begin
				I[11:8] <= I[11:8] + 1;
				TC[1] <= 0;
			end
		/////////
		if (I[11:8] > 4'h1001)
			begin
				TC[0] <= 1;
				O[11:8] <= I[11:8] - 4'h1010;
			end
		//////
		if (TC[2])
			begin
				I[15:12] <= I[15:12] + 1;
				TC[2] <= 0;
			end
		/////////
		if (I[15:12] > 4'h1001)
			begin
				TC[3] <= 1;
				O[15:12] <= I[15:12] - 4'h1010;
			end
	end

endmodule