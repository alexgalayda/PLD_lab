module Test_DET_FSK(
		//-----Сигналы Gen_FSK_byte-------------------
		input clk, 			output wire [11:0]FSK_SH,//FSK сигнал
		input st, 			output wire S, //Знак SIN
		input [7:0]dat, 	output wire ce_SIN, //Период SIN
		input [7:0]Mamp, 	output wire en_tx, //Интервал передачи
								output wire TX_bit, //Бит передатчика
								output wire ce_tx_bit,//Границы бит передатчика
		//-----Сигналы детектора FSK-----------------
								output wire [11:0] DFSK_SH,//Задержанный сигнал FSK_SH
								output wire OCD, // OCD=(mod_DFSK>=AMP/2)
								output wire [11:0] AMP, //Амплитуда
								output wire [12:0] bf_SH, //Смещение
								output wire FSK_tact, //Период FSK_tact Ttact=1/F1=833us
								output wire [6:0]cb_tact, //Счетчик такта
								output wire FSK_start, //Старт приема бит
								output wire FSK_en_rx, //Интервал приема бит
								output wire[3:0]cb_rx_bit, //Счетчик принятых бит
								output wire FSK_res, //Импульс "сброса" в паузе
								output wire[10:0]F1_AMP, //Амплитуда первой гармоники
								output wire[10:0]F2_AMP, //Амплитуда второй гармоники
								output wire RX_bit, //Декодированный бит по DFT
								output wire [6:0]cb_FSK_res,  //Счетчик паузы
								output wire ok_rx_bit);
//--Генератор Gen_FSK_byte
	Gen_FSK_byte DD1 (
			.clk(clk), 		.FSK_SH(FSK_SH),
			.st(st), 		.S(S),
			.dat(dat), 		.ce_SIN(ce_SIN),
			.Mamp(Mamp), 	.ce_bit(ce_tx_bit),
								.en_tx(en_tx),
								.TXD(TX_bit));
								
//--Детектор FSK
	DET_FSK DD2 ( 	.DFSK_SH(DFSK_SH), //Задержанный сигнал FSK_SH
						.FSK_SH(FSK_SH), 	.OCD(OCD), // OCD=(mod_DFSK>=AMP/2)
						.clk(clk), 			.AMP(AMP), //Амплитуда
												.bf_SH(bf_SH), //Буфер смещения
												.FSK_tact(FSK_tact), //Период FSK_tact= 833us
												.cb_tact(cb_tact), //Счетчик такта
												.FSK_start(FSK_start), //Старт приема бит
												.FSK_en_rx(FSK_en_rx),//Интервал приема бит
												.cb_rx_bit(cb_rx_bit), //Счетчик принятых бит
												.FSK_res(FSK_res), //Импульс "сброса" в паузе
												.F1_AMP(F1_AMP), //Амплитуда первой гармоники
												.F2_AMP(F2_AMP), //Амплитуда второй гармоники
												.RX_bit(RX_bit), //Декодированый бит по DFT
												.cb_FSK_res(cb_FSK_res),  //Счетчик паузы
												.ok_rx_bit(ok_rx_bit) );
endmodule
