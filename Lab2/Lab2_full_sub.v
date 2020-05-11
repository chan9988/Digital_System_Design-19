module Lab2_full_sub(output D,B,input x,y,z);
	wire b1,b2,b3;
	Lab2_half_sub_gate_level g1(b1,b2,x,y);
	Lab2_half_sub_gate_level g2(D,b3,b1,z);
	or g3(B,b2,b3);
endmodule
