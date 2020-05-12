module tf_Test_DET_FSK;

	// Inputs
	reg clk;
	reg st;
	reg [7:0] dat;
	reg [7:0] Mamp;

	// Outputs
	wire [11:0] FSK_SH;
	wire S;
	wire ce_SIN;
	wire en_tx;
	wire TX_bit;
	wire ce_tx_bit;
	wire [11:0] DFSK_SH;
	wire OCD;
	wire [11:0] AMP;
	wire [12:0] bf_SH;
	wire FSK_tact;
	wire [6:0] cb_tact;
	wire FSK_start;
	wire FSK_en_rx;
	wire [3:0] cb_rx_bit;
	wire FSK_res;
	wire [10:0] F1_AMP;
	wire [10:0] F2_AMP;
	wire RX_bit;
	wire ok_rx_bit;
	wire [6:0]cb_FSK_res;

	// Instantiate the Unit Under Test (UUT)
	Test_DET_FSK uut (
		.clk(clk), 
		.FSK_SH(FSK_SH), 
		.st(st), 
		.S(S), 
		.dat(dat), 
		.ce_SIN(ce_SIN), 
		.Mamp(Mamp), 
		.en_tx(en_tx), 
		.TX_bit(TX_bit), 
		.ce_tx_bit(ce_tx_bit), 
		.DFSK_SH(DFSK_SH), 
		.OCD(OCD), 
		.AMP(AMP), 
		.bf_SH(bf_SH), 
		.FSK_tact(FSK_tact), 
		.cb_tact(cb_tact), 
		.FSK_start(FSK_start), 
		.FSK_en_rx(FSK_en_rx), 
		.cb_rx_bit(cb_rx_bit), 
		.FSK_res(FSK_res), 
		.F1_AMP(F1_AMP), 
		.F2_AMP(F2_AMP), 
		.RX_bit(RX_bit), 
		.ok_rx_bit(ok_rx_bit),
		.cb_FSK_res(cb_FSK_res)
	);

always begin clk=0; #10; clk=1; #10; end
	initial begin
		st = 0; dat = 0; Mamp = 0; //
		#1000000; st = 1; dat = 8'h0F; Mamp = 16; //Mamp=1,2,…128
		#20; st = 0;
	end
      
endmodule

