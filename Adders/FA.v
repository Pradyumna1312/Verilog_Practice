module FA(input A,B,Cin, output S,Cout);
wire x,S;
HA h1(A,B,x,C);
HA h2(x,Cin,S,Cout);
endmodule
