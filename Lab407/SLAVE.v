module SLAVE(	input SCLK,		output wire [11:0] MRX_DAT,
					input MOSI,		output wire [11:0] MTX_DAT,
					input [11:0]DI,output wire [11:0] DO,
					input LOAD,		output wire MISO,
					input clr);

parameter m 		= 12;
reg    [11:0]sr_MRX  = 0;
reg [11:0]slave_buf  = 0;
reg           _miso  = 0;
reg    [11:0]sr_MTX  = 0;
reg 				 _Do  = 0;
 
assign MRX_DAT = slave_buf;
assign MISO = _miso;
assign MTX_DAT = sr_MTX;
assign D0 = _Do;

always @(posedge SCLK) begin
	sr_MRX    <= (sr_MRX << 1) | MOSI;
	slave_buf <= LOAD ? sr_MRX : slave_buf;
	sr_MTX   <= LOAD ? DI      : sr_MTX << 1;
	_miso     <= sr_MTX[m-1];
end

always @(posedge LOAD or posedge clr) begin
	_Do		<= clr 			? 0 : sr_MTX;
end

endmodule
