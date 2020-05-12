module URXD1B(input Inp,
					input clk,
					output reg en_rx_byte=0,
					output reg [7:0] sr_dat = 0,
					output reg [3:0] cb_bit=0,
					output wire ce_bit,
					output wire ce_tact,
					output wire T_start,
					output wire T_dat,
					output wire T_stop,
					output wire ok_rx_byte,
					output wire start
);
parameter Fclk=50000000 ; //50 MHz
parameter VEL = 115200 ; //115.2 kBod (из таблицы 1 вариантов)
parameter Nt = Fclk/VEL ; //~434

reg [15:0]cb_tact=0 ; //—четчик такта
reg old_Inp = 0;

assign ce_bit = (cb_tact == Nt>>1);
assign ce_tact = (cb_tact == Nt);
assign T_start = (cb_bit == 0);
assign T_dat = (cb_bit<9) & (cb_bit>0);
assign T_stop = ((cb_bit==9) & en_rx_byte);
assign ok_rx_byte = T_stop & ce_bit & Inp;
assign start = old_Inp & !Inp & !en_rx_byte;

always @(posedge clk) begin
cb_tact <= (start | ce_tact) ? 1 : cb_tact+1;
cb_bit <= start ? 0 : ((ce_tact & en_rx_byte) ? cb_bit+1 : cb_bit);
en_rx_byte <= (T_start & ce_bit & !Inp) ? 1 : ((ce_bit & T_stop) ? 0 : en_rx_byte);
sr_dat <= (ce_bit & T_dat) ? (sr_dat>>1 + Inp<<7) : sr_dat;
end
endmodule
