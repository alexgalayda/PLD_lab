module ROM_18x100_Wim (
				input [6:0] k, 	output wire[17:0] Wim);
	reg [17:0]ROM[100:0] ;
	assign Wim = ROM[k] ; //������� Wim (��������� ������)
	initial //������������� ������ ������ �� ����� Wi100.txt
	$readmemh ("Wi100.txt", ROM, 0, 100);
endmodule