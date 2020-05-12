module SPI_SLAVE(		input SCLK,			output wire MISO,
							input LOAD,			output wire [11:0]sr_STX,
							input MOSI,			output wire [11:0]sr_SRX,
							input clr,			output wire [11:0]DO,
							input [11:0]DI   );

parameter m		= 12;

reg [11:0]srSRX = 0;
reg [11:0]srSTX = 0;
reg [11:0]_Do	= 0;

assign sr_STX	= srSTX;
assign sr_SRX	= srSRX;
assign DO		= _Do;
assign MISO		= sr_STX[m-1];

always @(posedge SCLK) begin
	srSRX 	<= !LOAD	? ((srSRX << 1)| MOSI)	: srSRX;
end

always @(posedge LOAD or posedge clr) begin
	_Do 		<=	clr	? 0							: srSRX;
end

always @(posedge LOAD or negedge SCLK) begin
	srSTX 	<= LOAD	? DI							: srSTX << 1;
end

endmodule