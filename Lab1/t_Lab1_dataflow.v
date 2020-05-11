module t_Lab1_getelevel;
	wire f;
	reg a,b,c,d;
	Lab1_dataflow M1(f,a,b,c,d);
	initial
		begin
		a=1'b0;b=1'b0;c=1'b0;d=1'd0;
		#100 a=1'b0;b=1'b0;c=1'b0;d=1'd1;
		#100 a=1'b0;b=1'b0;c=1'b1;d=1'd0;
		#100 a=1'b0;b=1'b0;c=1'b1;d=1'd1;	
		#100 a=1'b0;b=1'b1;c=1'b0;d=1'd0;
		#100 a=1'b0;b=1'b1;c=1'b0;d=1'd1;
		#100 a=1'b0;b=1'b1;c=1'b1;d=1'd0;
		#100 a=1'b0;b=1'b1;c=1'b1;d=1'd1;
		#100 a=1'b1;b=1'b0;c=1'b0;d=1'd0;
		#100 a=1'b1;b=1'b0;c=1'b0;d=1'd1;
		#100 a=1'b1;b=1'b0;c=1'b1;d=1'd0;
		#100 a=1'b1;b=1'b0;c=1'b1;d=1'd1;
		#100 a=1'b1;b=1'b1;c=1'b0;d=1'd0;
		#100 a=1'b1;b=1'b1;c=1'b0;d=1'd1;
		#100 a=1'b1;b=1'b1;c=1'b1;d=1'd0;
		#100 a=1'b1;b=1'b1;c=1'b1;d=1'd1;
		end
	initial #1600 $finish;
endmodule


