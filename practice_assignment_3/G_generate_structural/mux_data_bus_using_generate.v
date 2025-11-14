//Implement an n-bit data bus multiplexer using generate.


module n_bit_mux;


reg [3:0]a;
reg [3:0]b;
reg sel;
wire [3:0] out;


initial begin
	$monitor ("$time=%0t | a=%b | b=%b | sel=%b | out=%b |",$time,a,b,sel,out);
	a=4'd8;
	b=4'd7;
	sel=0;#5;
	sel=1;


end
	genvar i;
	generate
		 for (i=0;i<4;i=i+1)begin:mux_1bit
			assign out[i]=sel?a[i]:b[i];
		end
	endgenerate





endmodule



