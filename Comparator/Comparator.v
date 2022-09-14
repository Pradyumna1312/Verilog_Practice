module comparator(A,B,AgBr);
	input [1:0] A,B;
	output AgBr;
	reg AgB;
	assign AgBr = AgB;
	always@(A or B)
		begin
			if (A>B)
				AgB=1'b1;
			else AgB=1'b0;
		end
endmodule