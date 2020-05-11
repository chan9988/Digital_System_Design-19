module Lab2_half_sub_gate_level(output D,B, input x,y);
	wire x_not;
	not g1(x_not,x);
	and g2(B,x_not,y);
	xor g3(D,x,y);
endmodule
