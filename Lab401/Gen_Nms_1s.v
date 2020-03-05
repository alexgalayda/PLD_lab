`define N 31 
module Gen_Nms_1s (
	input clk,	output wire CEO,
	input ce, 
	input Tmod
);
parameter F1kHz =1000 ;
parameter F1Hz =1 ;

reg [9:0] ct_Nms = 0;
wire[9:0] Nms = Tmod? `N-1 : ((F1kHz/F1Hz)-1) ;
assign CEO = ce & (ct_Nms==0) ;
always @(posedge clk) if (ce) begin
ct_Nms <= (ct_Nms==0)? Nms : ct_Nms-1 ;
end
endmodule
