primitive Lab1_UDP(f,a,b,c,d);
	output f;
	input a,b,c,d;
	
	table
	0 0 0 0 : 0;
	0 0 0 1 : 0;
	0 0 1 0 : 0;
	0 0 1 1 : 1;
	0 1 0 0 : 0;
	0 1 0 1 : 0;
	0 1 1 0 : 1;
	0 1 1 1 : 1;
	1 0 0 0 : 0;
	1 0 0 1 : 1;
	1 0 1 0 : 0;
	1 0 1 1 : 1;
	1 1 0 0 : 1;
	1 1 0 1 : 1;
	1 1 1 0 : 1;
	1 1 1 1 : 1;
	endtable
endprimitive
