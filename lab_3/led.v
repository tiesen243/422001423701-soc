module led(
	input 				    iClk,
	input 				    iReset_n,
	input 				    iChip_select_n,
	input 				    iWrite_n,
	input 	   [31:0] iLed,
	
	output reg [31:0] oLed
);
	always @ (posedge iClk) begin
		if (~iReset_n) oLed <= 32'h0;
		else if (~iChip_select_n && ~iWrite_n) oLed <= iLed;
	end
endmodule

