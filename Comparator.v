module comparator;
	input [1:0] A,B;
	output AgB;
	if (A>B)
		AgB=1;
	else AgB=0;
endmodule