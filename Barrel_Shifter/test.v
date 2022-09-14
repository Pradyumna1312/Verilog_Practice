module test;
	wire [7:0] Data;
	reg dir;
	reg [2:0] bits_shift;
	wire [7:0] bits_data;
	barrel_shifter bs(Data, dir, bits_shift, bits_data);
	assign Data = 8'b10001110;
	
	
	initial
		begin
			dir = 1; bits_shift = 3'b000;
			#12 dir = 1; bits_shift = 3'b001;
			#12 dir = 1; bits_shift = 3'b010;
			#12 dir = 1; bits_shift = 3'b011;
			#12 dir = 1; bits_shift = 3'b100;
			#12 dir = 1; bits_shift = 3'b101;
			#12 dir = 1; bits_shift = 3'b110;
			#12 dir = 1; bits_shift = 3'b111;
			
			#12 dir = 0; bits_shift = 3'b000;
			#12 dir = 0; bits_shift = 3'b001;
			#12 dir = 0; bits_shift = 3'b010;
			#12 dir = 0; bits_shift = 3'b011;
			#12 dir = 0; bits_shift = 3'b100;
			#12 dir = 0; bits_shift = 3'b101;
			#12 dir = 0; bits_shift = 3'b110;
			#12 dir = 0; bits_shift = 3'b111;
			#12 dir=1; bits_shift=3'b000;
		end
	initial
		begin
			$dumpfile("test.vcd");
			$dumpvars(0,test);
		end
	
endmodule
