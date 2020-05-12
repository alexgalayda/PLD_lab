module M2_1_new(	input D0,	output O,
						input D1,
						input ADDR
    );

assign O = ADDR ? D1 : D0;

endmodule
