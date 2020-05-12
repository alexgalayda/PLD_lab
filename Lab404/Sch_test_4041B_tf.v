module Sch_test_4041B_tf;

	// Inputs
	reg tx_clk;
	reg st;
	reg [7:0] tx_dat;
	reg rx_clk;

	// Outputs
	wire UTXD;
	wire [3:0] cb_bit_tx;
	wire en_rx_byte;
	wire [7:0] sr_dat;
	wire [3:0] cb_bit_rx;
	wire ok_rx_byte;
	wire start_rx;
	wire T_start;
	wire T_dat;
	wire T_stop;
	wire ce_tact;
	wire ce_bit;

	// Instantiate the Unit Under Test (UUT)
	Sch_test_URXD1B uut (
		.tx_clk(tx_clk), 
		.st(st), 
		.tx_dat(tx_dat), 
		.rx_clk(rx_clk), 
		.UTXD(UTXD), 
		.cb_bit_tx(cb_bit_tx), 
		.en_rx_byte(en_rx_byte), 
		.sr_dat(sr_dat), 
		.cb_bit_rx(cb_bit_rx), 
		.ok_rx_byte(ok_rx_byte), 
		.start_rx(start_rx), 
		.T_start(T_start), 
		.T_dat(T_dat), 
		.T_stop(T_stop), 
		.ce_tact(ce_tact), 
		.ce_bit(ce_bit)
	);
	always begin tx_clk = 1'b0; #10 tx_clk = 1'b1; #10; end
	always begin rx_clk = 1'b0; #10 rx_clk = 1'b1; #10; end
	initial begin
	st = 0; 
	tx_dat = 0;
	#1000; st = 1; tx_dat = 8'b10000010;
	#20; st = 0;
	end
      
endmodule

