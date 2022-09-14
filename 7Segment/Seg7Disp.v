module Seg7Disp(num, Disp);
	input [3:0] num;
	output reg [7:0] Disp;
	always@*
		case(num)
			4'b0000: Disp = {1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0};
			4'b0001: Disp = {1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0};
			4'b0010: Disp = {1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0};
			4'b0011: Disp = {1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0};
			4'b0100: Disp = {1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0};
			4'b0101: Disp = {1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0};
			4'b0110: Disp = {1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0};
			4'b0111: Disp = {1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0};
			4'b1000: Disp = {1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0};
			4'b1001: Disp = {1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0};
			default: Disp = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0};
		endcase
endmodule
