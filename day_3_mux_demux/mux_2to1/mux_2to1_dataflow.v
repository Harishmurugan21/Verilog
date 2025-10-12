module mux_2to_dataflow(input [1:0]a,sel,output y);
	assign y=(~sel&a[0]|sel&a[1]);
endmodule



/*condition stattement
module mux_2to_dataflow(input [1:0]a,sel,output y);
	assign y=sel?a[1]:a[0];
endmodule

