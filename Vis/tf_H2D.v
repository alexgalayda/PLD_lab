`timescale 1ns / 1ps
module tf_H2D;

	// Inputs
	reg [3:0] I;
	reg clk;
	reg ITC;
	reg CE;

	// Outputs
	wire [3:0] O;
	wire TC;
	wire CEO;

	// Instantiate the Unit Under Test (UUT)
	H2D uut (
		.I(I), 
		.O(O), 
		.clk(clk), 
		.ITC(ITC), 
		.TC(TC), 
		.CE(CE), 
		.CEO(CEO)
	);

	initial begin
		// Initialize Inputs
		I = 0;
		clk = 0;
		ITC = 0;
		CE = 0;
	end
	
	initial begin
	#30 CE = 1;
	#70 ITC = 1;
	#200 ITC = 0;
	end
	
	initial begin
	#100 I = 4'h1;
	#100 I = 4'h2;
	#100 I = 4'h9;
	#100 I = 4'hA;
	#100 I = 4'hF;
	#100 I = 4'h1;
	end
	
	always #10 clk = !clk; 
		
endmodule

