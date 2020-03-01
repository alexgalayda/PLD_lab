module VCGrey4Re ( input clk, output wire [3:0] Y, //Êîä Ãðåÿ
input ce, output wire CEO,
input r, output wire TC);
reg [4:0]q = 0;
assign TC = (q[4:0]==((1<<4) | 1)) ;
assign CEO = ce & TC ;
assign Y = q[4:1] ;

always @ (posedge clk) begin
q[0] <= (r | CEO)? 0 : ce? !q[0]: q[0] ; // Äîïîëíèòåëüíûé òðèããåð
q[1] <= (r | CEO)? 0 : ((q[0]==0) & ce)? !q[1] : q[1];
q[2] <= (r | CEO)? 0 : ((q[1:0]==((1<<1) | 1)) & ce)? !q[2] : q[2] ;
q[3] <= (r | CEO)? 0 : ((q[2:0]==((1<<2) | 1)) & ce)? !q[3] : q[3] ;
q[4] <= (r | CEO)? 0 : ((q[3:0]==((1<<3) | 1)) & ce)? !q[4] : q[4] ;
end
endmodule