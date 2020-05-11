module t_Lab3_SbRb_Latch_gatelevel;
	wire Q,NQ;
	reg Sb,Rb;
	Lab3_SbRb_Latch_gatelevel M1(Q,NQ,Sb,Rb);
	initial fork
	      Sb=1;
	      #10 Sb=1;
       	      #20 Sb=0;
	      #30 Sb=1;
	      #40 Sb=0;
	      #50 Sb=1;
	      #60 Sb=1;	
	join
	initial fork
	      Rb=0;
	      #10 Rb=1;
       	      #20 Rb=1;
	      #30 Rb=1;
	      #40 Rb=0;
	      #50 Rb=1;
	      #60 Rb=0;	
	join
	initial #70 $finish;
endmodule
