module JK_ff(output reg Q,NQ,input J,K,clock,reset);
	always@(negedge reset)
		if(!reset) Q<=1'b0;
	always@(negedge reset)
		if(!reset) NQ<=1'b1;
	always@(posedge clock)
		if(clock) Q<=(J&(!Q))|((!K)&Q);
	always@(posedge clock)
		if(clock) NQ<=!((J&(!Q))|((!K)&Q));
endmodule
