module Lab1_gatelevel_UDP(f,a,b,c,d);
	output f;
	input a,b,c,d;
	wire w1,w2,w3,w4,w5;
	
	Lab1_UDP M0(w1,a,b,c,d);
	not g1(w2,b);
	or g2(w3,w2,c);
	or g3(w4,d,a);
	and g4(w5,w3,w4);
	or g5(f,w5,w1);
	
	
endmodule
