module Sch_test_URXD1B(input tx_clk,
								input st,
								input [7:0] tx_dat,
								input rx_clk,
								output wire UTXD,
								output wire [3:0] cb_bit_tx,
								output wire en_rx_byte,
								output wire [7:0] sr_dat,
								output wire [7:0] rx_sr_dat,
								output wire [3:0] cb_bit_rx,
								output wire ok_rx_byte,
								output wire start_rx,
								output wire T_start,
								output wire T_dat,
								output wire T_stop,
								output wire ce_tact,
								output wire ce_bit
 );

UTXD1B DD1 (.clk(tx_clk), .UTXD(UTXD), .cb_bit(cb_bit_tx), .st(st), .sr_dat(rx_sr_dat));

URXD1B DD2 (.Inp(UTXD), .en_rx_byte(en_rx_byte), .clk(rx_clk), .sr_dat(sr_dat), .cb_bit(cb_bit_rx),
	.ok_rx_byte(ok_rx_byte), .start(start_rx), .T_start(T_start), .T_dat(T_dat),
	.T_stop(T_stop), .ce_tact(ce_tact), .ce_bit(ce_bit));

endmodule
