module Lab3_Pos_Edge_D_FF_gatelevel(output Q,NQ,input D,clock);
	wire w1,w2,w3,w4;
	nand #(2) a1(w1,D,w2);
	nand #(2) a2(w2,clock,w1,w3);
	nand #(2) a3(w3,clock,w4);
	nand #(2) a4(w4,w1,w3);
	Lab3_SbRb_Latch_gatelevel a5(Q,NQ,w3,w2);
endmodule
