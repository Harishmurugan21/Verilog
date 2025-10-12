module mux_2to1_behavioral(input [1:0]a,input sel,output reg y);

always @ (*) begin
	if(sel)
		y=a[1];
	else
		y=a[0];
end
endmodule

