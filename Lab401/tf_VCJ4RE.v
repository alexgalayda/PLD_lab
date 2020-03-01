module tf_VCJ4RE;

	// Inputs
	reg ce;
	reg clk;
	reg R;

	// Outputs
	wire TC;
	wire CEO;
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	VCJ4RE uut (
		.ce(ce), 
		.TC(TC), 
		.clk(clk), 
		.CEO(CEO), 
		.R(R), 
		.Q(Q)
	);

	parameter Tclk=20; //Ïåðèîä ñèãíàëà ñèíõðîíèçàöèè 20 íñ
always begin clk=1; #(Tclk/2); clk=0; #(Tclk/2); end
// Ãåíåðàòîð ïåðèîäè÷åñêîãî ñèãíàëà ce
parameter Tce=160; //Ïåðèîä ñèãíàëà ce 160 íñ
always begin ce=0; #(7*Tce/8); ce=1; #(1*Tce/8); end //Òîëüêî öåëàÿ ÷àñòü äåëåíèÿ

	initial begin
		// Initialize Inputs
		
		ce = 0;
		R = 0;
#380; R = 1; //×åðåç 38 íñ 1
	#10;R = 0; // ×åðåç 10 íñ 0
	#611;R = 1; //×åðåç 611 íñ 1
	#270;R = 0; // ×åðåç 270 íñ 0

        
		// Add stimulus here

	end
      
endmodule

