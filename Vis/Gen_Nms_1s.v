module Gen_Nms_1s(
	input clk,	output wire CEO,
	input ce
);
parameter F1kHz = 1000;
reg[9:0]cb_ms = 0;
wire[9:0]Nms = F1kHz;
 
assign CEO = ce & (cb_ms==1);
always @(posedge clk) if (ce) begin
	cb_ms <= (cb_ms==1)? Nms : cb_ms-1 ;
end
endmodule