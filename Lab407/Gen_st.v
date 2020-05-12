module Gen_st(		input clk, input BTN, output wire ce_st   );


parameter Tclk=20;//Tclk = 20 ns;
parameter Trep =  1000000;//1000us = 1000000 ns;
parameter N = Trep/Tclk;

reg [15:0]cb_tact=0;
assign ce_st = (cb_tact == N-1) & BTN;
always @(posedge clk) begin
cb_tact <= ce_st? 0: cb_tact+1;
end

endmodule