module SPI_MASTER(	input clk,				output wire LOAD,
							input st,				output wire SCLK,
							input [11:0]DI,			output wire MOSI,
							input clr,				output wire [11:0]DO,
							input MISO,				output wire [11:0]sr_MTX,
														output wire [11:0]sr_MRX,
														output wire [7:0]cb_bit,
														output wire ce_tact,
														output wire ce);
														
parameter m 		= 12;
parameter Trep		= 200000;							// 200 us;
parameter Tbit 	= 2000; 								// 2 us;
parameter Tce 		= Tbit/2; 							// 1 us;
parameter Tclk 	= 20; 								// 20 ns;
parameter Fclk 	= 50000000 ; 						// 50 MHz;	
													
reg [7:0]cb_tact 	= 0; 										
reg [7:0]cbBit		= 0;									
reg		_sclk		= 0;
reg		_load		= 1;
reg 		_mosi		= 0;
reg [11:0]srMTX  	= 0;
reg [11:0]srMRX		= 0;
reg [11:0]_Do		= 0;

assign	cb_bit	= cbBit;
assign	SCLK		= _sclk;
assign	LOAD		= _load;
assign	MOSI		= _mosi;
assign	sr_MTX	= srMTX;
assign 	sr_MRX	= srMRX;
assign	DO			= _Do;
assign	start 	= (st & _load);																		
assign 	ce 		= (cb_tact == (Tce/Tclk)); 	
assign 	ce_tact 	= (ce & _sclk);						
assign 	S			= (ce_tact & (cb_bit == m-1));
assign	R			= st;
//wire 		T_stop 	= ce_tact & (cb_bit == m-1); 	// Eiiao ia?aaa?e

always @(posedge clk) begin
	_load 	<= R 				? 0 : S			? 1 			: _load;
	cb_tact 	<= (ce | start)? 0 : cb_tact+1; 
	_sclk 	<=	_load			? 0 : ce			? !SCLK		: SCLK;
	cbBit 	<= start			? 0 : ce_tact	? cb_bit + 1: cb_bit;
	
	srMTX		<= _load			? DI: ce_tact	? srMTX << 1: srMTX;
	_mosi 	<= srMTX[m-1];
end

always @(posedge SCLK) begin
	srMRX		<= (srMRX << 1) | MISO;
end

always @(posedge LOAD or posedge clr) begin
	_Do		<= clr 			? 0 : srMRX;
end

endmodule