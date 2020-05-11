module Lab1_gatelevel(f,a,b,c,d);
	output f;
	input a,b,c,d;
	wire w1,w2,w3,w4,w5,w6,w;
	
	or g1(w1,a,c);
	or g2(w2,d,b);
	not g3(w,b);
	or g4(w3,w,c);
	or g5(w4,d,a);
	and g6(w5,w1,w2);
	and g7(w6,w3,w4);
	or g8(f,w5,w6);
	
endmodule
