module t_Lab2_BCD_7segment_decoder;
	wire [6:0]A;
	reg [3:0]D;
	Lab2_BCD_7segment_decoder_behavior m1(A,D);
	initial
	    begin
		D=4'b0000;
		repeat(15)
		#100 D=D+4'b0001;	    	
	    end
	initial #1600 $finish;
endmodule
