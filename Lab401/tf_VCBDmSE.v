module tf_VCBDmSE;

	// Inputs
	reg ce;
	reg clk;
	reg s;

	// Outputs
	wire [3:0] Q;
	wire TC;
	wire CEO;

	// Instantiate the Unit Under Test (UUT)
	VCBDmSE uut (
		.ce(ce), 
		.Q(Q), 
		.clk(clk), 
		.TC(TC), 
		.s(s), 
		.CEO(CEO)
	);
parameter Tclk=20; //Ïåðèîä ñèãíàëà ñèíõðîíèçàöèè 20 íñ
always begin clk=1; #(Tclk/2); clk=0; #(Tclk/2); end
// Ãåíåðàòîð ïåðèîäè÷åñêîãî ñèãíàëà ce
parameter Tce=160; //Ïåðèîä ñèãíàëà ce 160 íñ
always begin ce=0; #(7*Tce/8); ce=1; #(1*Tce/8); end //Òîëüêî öåëàÿ ÷àñòü äåëåíèÿ

	initial begin
			s = 0; //Èñõîäíîå ñîñòîÿíèå âõîäîâ
	#380; s = 1; //×åðåç 38 íñ 1
	#10; s = 0; // ×åðåç 10 íñ 0
	#611; s = 1; //×åðåç 611 íñ 1
	#270; s = 0; // ×åðåç 270 íñ 0
	
	end
      
endmodule
