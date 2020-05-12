module MULT18x12_no_warnings;

	// Inputs
	reg [11:0] X;
	reg [17:0] W;
	reg clk;

	// Outputs
	wire [11:0] WX;

	// Instantiate the Unit Under Test (UUT)
	MULT18x12 uut (
		.X(X), 
		.WX(WX), 
		.W(W),
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		W = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		X = (1 <<8) * 5;
		W = (1 <<8) * 3;
		
		#100;
		X = (1 <<8) * 12;
		W = (1 <<8) * 12;
		
		#100;
		X = (1 <<8) * 5;
		W = (1 <<8) * 7;
		
		#100;
		X = (1 <<4) * (-13);
		W = (1 <<12) * 2;
		// Add stimulus here

	end
      
endmodule

