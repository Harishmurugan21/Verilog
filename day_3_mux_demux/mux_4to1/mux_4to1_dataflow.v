module mux_4to1_dataflow(input i0,i1,i2,i3,input [1:0]sel,output y);
	assign y=sel[1]?(sel[0]?i3:i2):(sel[0]?i1:i0);//ternary assignment
endmodule
