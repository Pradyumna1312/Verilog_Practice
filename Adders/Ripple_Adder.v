module RA(input [3:0] A,B, input Cin, output [3:0] S, output Cout);
wire C1, C2, C3;
FA f1(A[0],B[0],Cin,S[0],C1);
FA f2(A[1],B[1],C1,S[1],C2);
FA f3(A[2],B[2],C2,S[2],C3);
FA f4(A[3],B[3],C3,S[3],Cout);
endmodule
