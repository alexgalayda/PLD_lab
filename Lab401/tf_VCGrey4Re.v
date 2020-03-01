module tf_VCGrey4Re;

	// Inputs
	reg clk;
	reg ce;
	reg r;

	// Outputs
	wire [3:0] Y;
	wire CEO;
	wire TC;

	// Instantiate the Unit Under Test (UUT)
	VCGrey4Re uut (
		.clk(clk), 
		.Y(Y), 
		.ce(ce), 
		.CEO(CEO), 
		.r(r), 
		.TC(TC)
	);
parameter Tclk=20; //Ïåðèîä ñèãíàëà ñèíõðîíèçàöèè 20 íñ
always begin clk=1; #(Tclk/2); clk=0; #(Tclk/2); end
// Ãåíåðàòîð ïåðèîäè÷åñêîãî ñèãíàëà ce
parameter Tce=160; //Ïåðèîä ñèãíàëà ce 160 íñ
always begin ce=0; #(7*Tce/8); ce=1; #(1*Tce/8); end //Òîëüêî öåëàÿ ÷àñòü äåëåíèÿ

	initial begin
		// Initialize Inputs
		
		ce = 0;
		r = 0;
#380; r = 1; //×åðåç 38 íñ 1
	#10;r = 0; // ×åðåç 10 íñ 0
	#611;r = 1; //×åðåç 611 íñ 1
	#270;r = 0; // ×åðåç 270 íñ 0

        
		// Add stimulus here

	end
      
endmodule

