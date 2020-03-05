module Hex2Dec(
	input [15:0]I, output reg [15:0]O = 0,
	input clk,
	input CE
);
//output wire [15:0] B, output wire [3:0] TC, output wire [3:0] CEO,
wire [3:0] CEO;
wire [3:0] TC;
wire [15:0] B;

H2D DD1(
	.I(I[3:0]), .O(B[3:0]),
	.clk(clk), .ITC(0), .TC(TC[0]),
	.CE(CE), .CEO(CEO[0])
);

H2D DD2(
	.I(I[7:4]), .O(B[7:4]),
	.clk(clk), .ITC(TC[0]), .TC(TC[1]),
	.CE(CEO[0]), .CEO(CEO[1])
);

H2D DD3(
	.I(I[11:8]), .O(B[11:8]),
	.clk(clk), .ITC(TC[1]), .TC(TC[2]),
	.CE(CEO[1]), .CEO(CEO[2])
);

H2D DD4(
	.I(I[15:12]), .O(B[15:12]),
	.clk(clk), .ITC(TC[2]), .TC(TC[3]),
	.CE(CEO[2]), .CEO(CEO[3])
);

always @(posedge clk)
	if (CEO[3]) begin
		O <= B;
	end
	
endmodule