module lab_2_3(
	input 		 CLOCK_50,
	input  [0:0] KEY,
	input  [3:0] SW,
	output [6:0] HEX0
);
	system nios_system(
		.clk_clk (CLOCK_50),
		.reset_reset_n (KEY[0]),
		.switch_external_connection_export ({4'd0,SW}),
		.led_external_connection_export ({7'd0,HEX0})
	);
endmodule
