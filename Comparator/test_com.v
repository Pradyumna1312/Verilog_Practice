module test;
	reg [1:0] A, B;
	wire AgB;
	comparator a(.A(A), .B(B), .AgBr(AgB));
	initial 
		begin
			A=2'b00; B=2'b11;
			#24 A=2'b01; B=2'b11;
			#12 A=2'b10; B=2'b11;
			#15 A=2'b11; B=2'b11;
			
			#15 A=2'b00; B=2'b10;
			#24 A=2'b01; B=2'b10;
			#12 A=2'b10; B=2'b10;
			#15 A=2'b11; B=2'b10;
			
			#17 A=2'b00; B=2'b01;
			#24 A=2'b01; B=2'b01;
			#12 A=2'b10; B=2'b01;
			#15 A=2'b11; B=2'b01;
			
			#23 A=2'b00; B=2'b00;
			#24 A=2'b01; B=2'b00;
			#12 A=2'b10; B=2'b00;
			#15 A=2'b11; B=2'b00;
		end
	
	initial 
		begin
		$dumpfile("test.vcd");
			$dumpvars(0,test);
		end
endmodule