module Lab3_SbRb_Latch_gatelevel(output Q, NQ, input Sb,Rb);
	nand #(2) A1(Q,Sb,NQ);
	nand #(2) A2(NQ,Rb,Q);
endmodule
