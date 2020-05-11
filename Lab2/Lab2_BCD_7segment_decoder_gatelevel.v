module Lab2_BCD_7segment_decoder_getlevel(output[6:0]A,input [3:0]D);
	wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9;
	wire nD0,nD1,nD2,nD3;
	not (nD0,D[0]),(nD1,D[1]),(nD2,D[2]),(nD3,D[3]);
	and (w0,nD3,nD2,nD1,nD0),(w1,nD3,nD2,nD1,D[0]),(w2,nD3,nD2,D[1],nD0),(w3,nD3,nD2,D[1],D[0]);
	and (w4,nD3,D[2],nD1,nD0),(w5,nD3,D[2],nD1,D[0]),(w6,nD3,D[2],D[1],nD0);
	and (w7,nD3,D[2],D[1],D[0]),(w8,D[3],nD2,nD1,nD0),(w9,D[3],nD2,nD1,D[0]);
	or (A[0],w0,w2,w3,w5,w6,w7,w8,w9);
	or (A[1],w0,w1,w2,w3,w4,w7,w8,w9);
	or (A[2],w0,w1,w3,w4,w5,w6,w7,w8,w9);
	or (A[3],w0,w2,w3,w5,w6,w8,w9);
	or (A[4],w0,w2,w6,w8);
	or (A[5],w0,w4,w5,w6,w8,w9);
	or (A[6],w2,w3,w4,w5,w6,w8,w9);
endmodule
