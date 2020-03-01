module tf_VCD4RE;

	// Inputs
	reg clk;
	reg ce;
	reg R;

	// Outputs
	wire TC;
	wire CEO;
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	VCD4RE uut (
		.clk(clk), 
		.TC(TC), 
		.ce(ce), 
		.CEO(CEO), 
		.R(R), 
		.Q(Q)
	);

parameter Tclk=20; //Ïåðèîä ñèãíàëà ñèíõðîíèçàöèè 20 íñ
always begin clk=1; #(Tclk/2); clk=0; #(Tclk/2); end
// Ãåíåðàòîð ïåðèîäè÷åñêîãî ñèãíàëà ce
parameter Tce=160; //Ïåðèîä ñèãíàëà ce 160 íñ
always begin ce=0; #(5*Tce/8); ce=1; #(3*Tce/8); end //Òîëüêî öåëàÿ ÷àñòü äåëåíèÿ

	initial begin
			R = 0; //Èñõîäíîå ñîñòîÿíèå âõîäîâ
	#100; R = 1; //×åðåç 38 íñ 1
	#10; R = 0; // ×åðåç 10 íñ 0
	

	end
      
endmodule
