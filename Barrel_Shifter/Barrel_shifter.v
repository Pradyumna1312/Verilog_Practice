module barrel_shifter(Data, dir, bits_shift, bits_data);
	input [7:0] Data;
	input dir;
	input [2:0] bits_shift;
	output reg [7:0] bits_data;
	always@*
		begin
			case({dir, bits_shift})	
				4'b0001: bits_data = {Data[0],Data[7:1]};
				4'b0010: bits_data = {Data[1:0],Data[7:2]};
				4'b0011: bits_data = {Data[2:0],Data[7:3]};
				4'b0100: bits_data = {Data[3:0],Data[7:4]};
				4'b0101: bits_data = {Data[4:0],Data[7:5]};
				4'b0110: bits_data = {Data[5:0],Data[7:6]};
				4'b0111: bits_data = {Data[6:0],Data[7]};
				4'b1001: bits_data = {Data[6:0],Data[7]};
				4'b1010: bits_data = {Data[5:0],Data[7:6]};
				4'b1011: bits_data = {Data[4:0],Data[7:5]};
				4'b1100: bits_data = {Data[3:0],Data[7:4]};
				4'b1101: bits_data = {Data[2:0],Data[7:3]};
				4'b1110: bits_data = {Data[1:0],Data[7:2]};
				4'b1111: bits_data = {Data[0],Data[7:1]};
				default: bits_data = Data;
			endcase
		end
endmodule