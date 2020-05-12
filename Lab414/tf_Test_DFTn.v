module tf_Test_DFTn;

	// Inputs
	reg clk;
	reg st;
	reg [7:0] M;

	// Outputs
	wire S;
	wire [11:0] SIN;
	wire ce_tact;
	wire ce_sd;
	wire ce_SIN;
	wire ce_bit;
	wire [10:0] modY;
	wire [6:0] k;
	wire D;
	wire [6:0] n;

	// Instantiate the Unit Under Test (UUT)
	Test_DFTn uut (
		.S(S), 
		.clk(clk), 
		.SIN(SIN), 
		.st(st), 
		.ce_tact(ce_tact), 
		.M(M), 
		.ce_sd(ce_sd), 
		.ce_SIN(ce_SIN), 
		.ce_bit(ce_bit), 
		.modY(modY), 
		.k(k), 
		.D(D), 
		.n(n)
	);

	always begin clk=0; #10; clk=1; #10; end
	initial begin
	st = 0; M = 128; //
	#1000000; st = 1; M = 128; //Множитель амплитуды сигнала FSK
	#200; st = 0;
	end
		
      
endmodule

