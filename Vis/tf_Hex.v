`timescale 1ns / 1ps

module tf_Hex;

	// Inputs
	reg [7:0] bin;

	// Outputs
	wire [9:0] bcd;

	// Instantiate the Unit Under Test (UUT)
	Hex2Dec uut (
		.bin(bin), 
		.bcd(bcd)
	);

	initial begin
		// Initialize Inputs
		bin = 8'hA;
	end
      
endmodule

