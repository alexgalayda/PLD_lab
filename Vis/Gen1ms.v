module Gen1ms (input clk, output reg ce1ms=0); //1 
	parameter Fclk =50000000 ; //   50 
	parameter F1kHz =1000 ; // 1 
	reg[15:0]cb_ms = 0 ; // 
	wire ce = (cb_ms==1) ; //Tce=1ms
	// 
	always @(posedge clk) begin
			cb_ms <= ce? ((Fclk/F1kHz)) : cb_ms-1 ; // 
			ce1ms <= ce ; //1 
	end
endmodule