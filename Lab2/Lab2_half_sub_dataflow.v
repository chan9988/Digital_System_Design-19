module Lab2_half_sub_dateflow(output D,B, input x,y);
	assign B=(!x)&&y;
	assign D=(!x&&y)||(x&&!y);
endmodule
