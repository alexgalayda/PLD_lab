module tf_Test_MES_AMP_SH;

	// Inputs
	reg clk;
	reg st;
	reg [7:0] dat;
	reg [7:0] Mamp;

	// Outputs
	wire [11:0] FSK_SH;
	wire S;
	wire ce_SIN;
	wire ce_tx_bit;
	wire en_tx;
	wire TXD;
	wire [11:0] DFSK_SH;
	wire [12:0] SH;
	wire [11:0] AMP;
	wire OCD;

	// Instantiate the Unit Under Test (UUT)
	Test_Mes_AMP_SH uut (
		.clk(clk), 
		.FSK_SH(FSK_SH), 
		.st(st), 
		.S(S), 
		.dat(dat), 
		.ce_SIN(ce_SIN), 
		.Mamp(Mamp), 
		.ce_tx_bit(ce_tx_bit), 
		.en_tx(en_tx), 
		.TXD(TXD), 
		.DFSK_SH(DFSK_SH), 
		.SH(SH), 
		.AMP(AMP), 
		.OCD(OCD)
	);

	always begin clk=0; #10; clk=1; #10; end
	initial begin
		st = 0; Mamp = 0; dat = 0;
		#1000000; st = 1; Mamp = 128;
		#20; st = 0;
		#3000000; st = 1; Mamp = 64;
		#20; st = 0;
		#3000000; st = 1; Mamp = 32;
		#20; st = 0;
		#3000000; st = 1; Mamp = 16;
		#20; st = 0;
		#3000000; st = 1; Mamp = 8;
		#20; st = 0;
	end
endmodule