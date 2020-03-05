`timescale 1ns / 1ps
module tf_Vis;

	// Inputs
	reg F50MHz;
	reg [7:0] SW;
	reg BTN0;

	// Outputs
	wire [3:0] AN;
	wire [7:0] SEG;
	wire [7:0] LED;
	wire [15:0] dat;

	// Instantiate the Unit Under Test (UUT)
	Vis uut (
		.F50MHz(F50MHz), 
		.AN(AN), 
		.SW(SW), 
		.SEG(SEG), 
		.BTN0(BTN0), 
		.LED(LED),
		.dat(dat)
	);

	initial begin
		F50MHz = 0;
		SW = 0;
		BTN0 = 0;
	end
	
	initial begin
	#30 BTN0 = 1;
	#90 BTN0 = 0;
	end
	
	initial begin
	#100 SW = 8'h1;
	#100 SW = 8'h2;
	#100 SW = 8'h9;
	#100 SW = 8'h10;
	#100 SW = 8'h1A;
	#100 SW = 8'h1F;
	#100 SW = 8'hFF;
	end
	
	always #10  F50MHz = !F50MHz; 
      
endmodule

