module M2_1(	input A,	output wire Q,
					input B,
					input S   );

assign Q = S? B: A;

endmodule