`timescale 1ns / 1ps
module tf_Hex2Dec;

	// Inputs
	reg [15:0] I;
	reg clk;
	reg CE;
	wire [15:0] B;
	wire [3:0] TC; 
	wire [3:0] CEO;

	// Outputs
	wire [15:0] O;

	// Instantiate the Unit Under Test (UUT)
	Hex2Dec uut (
		.I(I), 
		.O(O), 
		.clk(clk), 
		.B(B), .TC(TC), .CEO(CEO),
		.CE(CE)
	);

	initial begin
		// Initialize Inputs
		I = 0;
		clk = 0;
		CE = 0;
	end
      
		
	initial begin
	#30 CE = 1;
	end
	
	initial begin
	#100 I = 16'h1;
	#100 I = 16'h2;
	#100 I = 16'h9;
	#100 I = 16'hA;
	#100 I = 16'h1A;
	#100 I = 16'hAA;
	#100 I = 16'hFF;
	#100 I = 16'h1;
	end
	
	always #10 clk = !clk; 
endmodule

