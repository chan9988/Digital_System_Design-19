module Lab2_ripple_borrow_4_bit_sub(output [3:0]Diff, output Bout ,input [3:0]X,Y,input Bin);
	wire b1,b2,b3;
	Lab2_full_sub g1(Diff[0],b1,X[0],Y[0],Bin);
	Lab2_full_sub g2(Diff[1],b2,X[1],Y[1],b1);
	Lab2_full_sub g3(Diff[2],b3,X[2],Y[2],b2);
	Lab2_full_sub g4(Diff[3],Bout,X[3],Y[3],b3);
endmodule
