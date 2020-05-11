module Lab2_borrow_lookahead_sub(output [3:0]Diff,output Bout,input [3:0]X,Y,input Bin);
	wire g0,g1,g2,g3,p0,p1,p2,p3,b1,b2,b3;
	assign g0=(!X[0])&&Y[0];
	assign g1=(!X[1])&&Y[1];
	assign g2=(!X[2])&&Y[2];
	assign g3=(!X[3])&&Y[3];
	assign p0=!((X[0]&&(!Y[0]))||((!X[0])&&Y[0]));
	assign p1=!((X[1]&&(!Y[1]))||((!X[1])&&Y[1]));
	assign p2=!((X[2]&&(!Y[2]))||((!X[2])&&Y[2]));
	assign p3=!((X[3]&&(!Y[3]))||((!X[3])&&Y[3]));
	assign b1=(Bin&&p0)||g0;
	assign b2=(Bin&&p0&&p1)||(g0&&p1)||g1;
	assign b3=(Bin&&p0&&p1&&p2)||(g0&&p1&&p2)||(g1&&p2)||g2;
	assign Bout=(Bin&&p0&&p1&&p2&&p3)||(g0&&p1&&p2&&p3)||(g1&&p2&&p3)||(g2&&p3)||g3;	
	assign Diff[0]=((!p0)&&(!Bin))||((p0)&&(Bin));
	assign Diff[1]=((!p1)&&(!b1))||((p1)&&(b1));
	assign Diff[2]=((!p2)&&(!b2))||((p2)&&(b2));
	assign Diff[3]=((!p3)&&(!b3))||((p3)&&(b3));
endmodule
