module SLAVE_TEST;

	// Inputs
	reg SCLK;
	reg LOAD;
	reg MOSI;
	reg clr;
	reg [11:0] DI;

	// Outputs
	wire MISO;
	wire [11:0] sr_STX;
	wire [11:0] sr_SRX;
	wire [11:0] DO;

	// Instantiate the Unit Under Test (UUT)
	SPI_SLAVE uut (
		.SCLK(SCLK), 
		.MISO(MISO), 
		.LOAD(LOAD), 
		.sr_STX(sr_STX), 
		.MOSI(MOSI), 
		.sr_SRX(sr_SRX), 
		.clr(clr), 
		.DO(DO), 
		.DI(DI)
	);

	initial begin
		// Initialize Inputs
		SCLK = 0;
		LOAD = 0;
		MOSI = 0;
		clr = 0;
		DI = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

