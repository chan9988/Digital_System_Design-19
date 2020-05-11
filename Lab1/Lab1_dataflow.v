module Lab1_dataflow(f,a,b,c,d);
	output f;
	input a,b,c,d;
	
	assign f=((a||c)&&(d||b))||((!b||c)&&(d||a));
endmodule
