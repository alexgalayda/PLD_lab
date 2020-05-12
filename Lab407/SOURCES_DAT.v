module SOURCE_DAT(	output wire [11:0]MASTER_dat,
							output wire [11:0]SLAVE_dat );

assign MASTER_dat = 12'b011100000010; //702
assign SLAVE_dat  = 12'b111001101100; //E6C

endmodule