module lab_5_2(
	input  CLOCK_50,
	input  [1:0] KEY,
	input  [1:0] SW,
	output [6:0] HEX7, HEX6, HEX5, HEX4
);
	system u0(
		.clk_clk									  (CLOCK_50),
		.reset_reset_n 						  (KEY[0]),
		.hex_0_external_connection_export  (HEX7),
		.hex_1_external_connection_export  (HEX6),
		.hex_2_external_connection_export  (HEX5),
		.hex_3_external_connection_export  (HEX4),
		.switch_external_connection_export (SW[1:0]),
		.button_external_connection_export (KEY[1])
	);
endmodule
