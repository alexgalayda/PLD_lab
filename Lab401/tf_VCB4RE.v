module tf_VCB4RE;

	// Inputs
	reg ce;
	reg clk;
	reg R;

	// Outputs
	wire [3:0] Q;
	wire TC;
	wire CEO;

	// Instantiate the Unit Under Test (UUT)
	VCB4RE uut (
		.ce(ce), 
		.Q(Q), 
		.clk(clk), 
		.TC(TC), 
		.R(R), 
		.CEO(CEO)
	);
//Ãåíðàòîð ïåðèîäè÷åêêîãî ñèãíàëà ñèíõðîíèçàöèè clk
parameter Tclk=20; //Ïåðèîä ñèãíàëà ñèíõðîíèçàöèè 20 íñ
always begin clk=1; #(Tclk/2); clk=0; #(Tclk/2); end
// Ãåíåðàòîð ïåðèîäè÷åñêîãî ñèãíàëà ce
parameter Tce=80; //Ïåðèîä ñèãíàëà ce 160 íñ
always begin ce=0; #(7*Tce/8 + 10); ce=1; #(1*Tce/8 +10); end //Òîëüêî öåëàÿ ÷àñòü äåëåíèÿ

	initial begin
			R = 0; //Èñõîäíîå ñîñòîÿíèå âõîäîâ
	//#380; R = 1; //×åðåç 38 íñ 1
	//#10; R = 0; // ×åðåç 10 íñ 0
	//#611; R = 1; //×åðåç 611 íñ 1
	//#270; R = 0; // ×åðåç 270 íñ 0

	end
      
endmodule

