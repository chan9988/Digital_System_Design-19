module Lab2_half_sub_behavior(output reg D,B,input x,y);
	always @(x or y)
		if(x==0) D=y;
		else D=!y;
	always @(x or y)
		if(x==0) B=y;
		else B=1'b0;
endmodule
