module Test_DFTn( 			output wire S, //Знак синусоиды
				input clk, 		output wire[11:0] SIN,//Синусоида
				input st, 		output wire ce_tact, //Период дискретизации DFT
				input[7:0]M, 	output wire ce_sd, //Период дискретизации синусоиды
									output wire ce_SIN, //Период синусоиды
									output wire ce_bit, //Период бит
									output wire [10:0]modY,//Амплитуда гармоники
									output wire [6:0]k, //Адрес поворотного множителя, k=|k*n|modNP
									output wire D, //Бит данных
									output wire [6:0]n		); //Номер гармоники,
	//--Таймер (генератор тактов)
	TIMER DD1 (	.clk(clk), 	.ce(ce_tact), //(Частота ce_tact 100*Fbit=100*2200Hz=220kHz)
					.st(st), 	.ce_bit(ce_bit)); //(Частота ce_bit Fbit=2200Hz)
	//--Генератор сигнала синусоиды
	//--M - множитель амплитуды (при M=128 Amp=2000)
	//--D - управление частотой (при D=0 Fsin=2200Hz, при D=1 Fsin=1200Hz)
	Gen_FSK_SIN DD2 (
		.clk(clk), 	.S(S),//S=1 sin>0
		.D(D), 		.SIN(SIN),
		.Mamp(M), 	.ce_SIN(ce_SIN), //
						.ce_sd(ce_sd)); //
	//--Вычислитель амплитуды n-й гармоники
	DFTn DD3 (
		.X(SIN), 			.modY(modY),
		.ce(ce_tact), 		.k(k),
		.clk(clk),
		.st(st),
		.ce_bit(ce_bit),
		.n(n));
	//--Генератор данных D=0,1 и номера гармоники n=1,2,...,99
	Gen_Dn DD4 (.st(ce_bit), 	.D(D),
					.clk(clk), 		.n(n));
endmodule