module switch(
	input 				iClk,
	input 				iReset_n,
	input 				iChip_select_n,
	input 				iRead_n,
	output reg [31:0] oSwitch,
	
	input 	  [31:0] iSwitch
);
	always @ (posedge iClk) begin
		if (~iReset_n) oSwitch <= 32'h0;
		else if (~iChip_select_n && ~iRead_n) oSwitch <= iSwitch;
	end
endmodule
