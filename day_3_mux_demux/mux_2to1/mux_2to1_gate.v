module mux_2to1_gate(input [1:0]a,sel,output y);
wire w1,w2,w3;
	
	not(w1,sel);
	and(w2,a[0],w1);
	and(w3,a[1],sel);
	or(y,w2,w3);
endmodule
