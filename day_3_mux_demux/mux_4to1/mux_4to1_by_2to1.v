module mux_2to1(input i0,i1,sel,output y);
	assign y=sel?i1:i0;
endmodule


module mux_4to1(input i0,i1,i2,i3,input [1:0] sel,output y);

wire out1,out2;
mux_2to1 inst1(i0,i1,sel[0],out1);
mux_2to1 inst2(i2,i3,sel[0],out2);


mux_2to1 inst(out1,out2,sel[1],y);
endmodule


