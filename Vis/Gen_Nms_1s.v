module Gen_Nms_1s(
	input clk,	output wire CEO,
	input ce
);
parameter F1kHz = 1000;
reg[9:0]cb_Nms = 0;
wire[9:0]Nms = F1kHz;
 
assign CEO = ce & (cb_ms==1);
always @(posedge clk) if (ce) begin
	cb_Nms <= (cb_ms==1)? Nms : cb_Nms-1 ;
end
endmodule