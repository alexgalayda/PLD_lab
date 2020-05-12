module Test_Mes_AMP_SH(
	//--Сигналы генератора Gen_FSK_byte
	input clk, 			output wire [11:0]FSK_SH,//Сигнал FSK
	input st, 			output wire S, //Знак SIN
	input [7:0]dat, 	output wire ce_SIN, //Границы периода SIN
	input [7:0]Mamp, 	output wire ce_tx_bit, //Границы бит
							output wire en_tx, //Интервал передачи
							output wire TXD, //Передаваемые данные
							//--Сигналы измерителя смещения и амплитуды
							output wire [11:0] DFSK_SH, //Задержанный сигнал FSK
							output wire [12:0] SH, //Смещение
							output wire [11:0] AMP, //Амплитуда
							output wire OCD //Сигнал превышения порога
);
	//--Генератор Gen_FSK_byte
	Gen_FSK_byte DD1 (
			.clk(clk), 			.FSK_SH(FSK_SH),
			.st(st), 			.S(S),
			.dat(dat), 			.ce_SIN(ce_SIN),
			.Mamp(Mamp), 		.ce_bit(ce_tx_bit),
									.en_tx(en_tx),
									.TXD(TXD),
									.ce_sd(ce_sd));
	//--Измеритель смещения и амплитуды--------
	Mes_AMP_SH DD2(
			.FSK_SH(FSK_SH), 	.DFSK_SH(DFSK_SH),//Задержанный сигнал FSK_SH
			.clk(clk), 			.bf_SH(SH), //Смещение
			.res(st), 			.AMP(AMP), //Амплитуда
									.ce_Fd(ce_Fd), //Синал дискретизации
									.OCD(OCD));
	endmodule
