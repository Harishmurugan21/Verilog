module mux_4to1_tb();
reg a,b,c,d;
reg [1:0]sel;
wire y;

//mux_4to1_dataflow inst (a,b,c,d,sel,y);
//mux_4to1_behavioral inst1(a,b,c,d,sel,y);
mux_4to1 inst (a,b,c,d,sel,y);
initial begin

$monitor("%0t|i0=%b|i1=%b|i2=%b|i3=%b|sel=%b|y=%b",$time,a,b,c,d,sel,y);

	a=1;b=0;c=1;d=0;
	sel=2'b00;#5;
	sel=2'b01;#5;
	sel=2'b10;#5;
	sel=2'b11;#5;
	$finish;
end 
endmodule
