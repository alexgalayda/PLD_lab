module Hex2Dec(
	input [7:0] bin, output reg [15:0] bcd = 0
);
	integer i,j;
	always @(bin) begin
		for(i = 0; i <= 9; i = i+1) bcd[i] = 0;     // initialize with zeros
		bcd[7:0] = bin[7:0];                                   // initialize with input vector
		for(i = 0; i <= 4; i = i+1)                       // iterate on structure depth
			for(j = 0; j <= i/3; j = j+1)                     // iterate on structure width
				if (bcd[8-i+4*j -: 4] > 4)                      // if > 4
					bcd[8-i+4*j -: 4] = bcd[8-i+4*j -: 4] + 4'd3; // add 3
		bcd[15:10] = 0;
		end
	endmodule
