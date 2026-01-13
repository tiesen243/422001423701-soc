module lab_3_12(
	input         CLOCK_50,
	input  [0:0]  KEY,
	input  [15:0] SWITCH,
	output [15:0] LEDR
);

	system u0(
		.clk_clk	                    (CLOCK_50),						
		.reset_reset_n               (KEY[0]),
		.switch_0_conduit_end_export ({16'b0, SW}),
		.led_0_conduit_end_export    ({16'b0, LEDR})
	);

endmodule
