module MUX64_16(	input [11:0]A,		output wire [11:0]DO,
						input [11:0]B,
						input [11:0]C,
						input [11:0]D,
						input [1:0]S   );

assign DO = (S==0)? A:
				(S==1)? B:
				(S==2)? C: D;
endmodule