module MASTER_TEST;

	// Inputs
	reg clk;
	reg st;
	reg [11:0] DI;
	reg clr;
	reg MISO;

	// Outputs
	wire LOAD;
	wire SCLK;
	wire MOSI;
	wire [11:0] DO;
	wire [11:0] sr_MTX;
	wire [11:0] sr_MRX;
	wire [7:0] cb_bit;
	wire ce_tact;
	wire ce;

	// Instantiate the Unit Under Test (UUT)
	SPI_MASTER uut (
		.clk(clk), 
		.LOAD(LOAD), 
		.st(st), 
		.SCLK(SCLK), 
		.DI(DI), 
		.MOSI(MOSI), 
		.clr(clr), 
		.DO(DO), 
		.MISO(MISO), 
		.sr_MTX(sr_MTX), 
		.sr_MRX(sr_MRX), 
		.cb_bit(cb_bit), 
		.ce_tact(ce_tact), 
		.ce(ce)
	);
	parameter Tclk=20;
	always begin clk=1; #(Tclk/2); clk=0; #(Tclk/2); end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		st = 0;
		DI[11:0] = 12'b011100000011;
		clr = 0;
		MISO = 0;
		// Wait 100 ns for global reset to finish
		#100
		#20 st = 1;
		#20 st = 0;
		#13000 DI[11:0] = 12'b101001010101;
		#20 st = 1;
		#20 st = 0;
		// Add stimulus here
	end
endmodule

