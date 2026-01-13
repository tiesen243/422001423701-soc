module lab_3_3(
	input        CLOCK_50,
	input  [0:0] KEY,
	input  [3:0] SWITCH,
	output [6:0] HEX0
);

	system u0(
		.clk_clk	                    (CLOCK_50),						
		.reset_reset_n               (KEY[0]),
		.switch_0_conduit_end_export ({4'b0, SW}),
		.led_0_conduit_end_export    ({7'b0, HEX0})
	);

endmodule
