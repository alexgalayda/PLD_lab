module tf_VCBmCLED;

	// Inputs
	reg ce;
	reg up;
	reg [3:0] di;
	reg L;
	reg clk;
	reg clr;

	// Outputs
	wire [3:0] Q;
	wire CEO;
	wire TC;

	// Instantiate the Unit Under Test (UUT)
	VCBmCLED uut (
		.ce(ce), 
		.Q(Q), 
		.up(up), 
		.CEO(CEO), 
		.di(di), 
		.TC(TC), 
		.L(L), 
		.clk(clk), 
		.clr(clr)
	);
parameter Tclk=20; //Ïåðèîä ñèãíàëà ñèíõðîíèçàöèè 20 íñ
always begin clk=1; #(Tclk/2); clk=0; #(Tclk/2); end
// Ãåíåðàòîð ïåðèîäè÷åñêîãî ñèãíàëà ce
parameter Tce=160; //Ïåðèîä ñèãíàëà ce 160 íñ
always begin ce=0; #(7*Tce/8); ce=1; #(1*Tce/8); end //Òîëüêî öåëàÿ ÷àñòü äåëåíèÿ

	initial begin
		// Initialize Inputs
		ce = 0;
		up = 0;
		di = 0;
		L = 0;
		clk = 0;
		clr = 0;
		
	#38 ; clr= 1; //×åðåç 38 íñ 1
	#10; clr= 0; // ×åðåç 10 íñ 0
	#611; clr= 1; //×åðåç 611 íñ 1
	#270; clr = 0; // ×åðåç 270 íñ 0
	#500; L =1;
	#500; di = 11;
	#550; L =0;
	#322; up = 1;
	#350; up = 1;

	end

      
endmodule