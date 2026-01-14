module lab_3(
	input CLOCK_50,
	input [0:0] KEY,
	input [15:0] SW,
	output [15:0] LEDR
);
    nios_sys u0 (
        .clk_clk                   (CLOCK_50),              
        .reset_reset_n             (KEY[0]),          
        .led_conduit_end_export    (LEDR),    
        .switch_conduit_end_export ({16'b0, SW}) 
    );
endmodule
