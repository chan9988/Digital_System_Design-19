module t_Lab2_half_sub;
	wire D,B;
	reg x,y;
	Lab2_half_sub_behavior m1(D,B,x,y);
	initial
	    begin
		x=1'b0; y=1'b0;
		#100 x=1'b0; y=1'b1;
		#100 x=1'b1; y=1'b0;
		#100 x=1'b1; y=1'b1;
            end
	initial #400 $finish;
endmodule
