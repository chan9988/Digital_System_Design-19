module Lab3_Mealy_structural(output z,input x, clock, reset);
	wire A,NA,B,NB;
	wire JA,KA,JB,KB;
	assign JA=x;
	assign JB=A|(!x);
	assign KA=!x;
	assign KB=A|(!x);
	assign z=!(A^B^x);
	JK_ff m1(A,NA,JA,KA,clock,reset);
	JK_ff m2(B,NB,JB,KB,clock,reset);
endmodule
