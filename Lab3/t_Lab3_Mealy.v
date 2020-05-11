module t_Lab3_Mealy;
	wire z;
	reg x,clock,reset;
	Lab3_Mealy_structural m1(z,x,clock,reset);
	initial
	    begin
		clock=0;
		forever #5 clock=~clock;
	    end
	initial fork
		reset=1;
		x=0;
		#1 reset=0;
		#2 reset=1;
		#10 x=1;
		#20 x=0;
		#30 x=1;
		#60 x=0;
	join
	initial #100 $finish;
endmodule
