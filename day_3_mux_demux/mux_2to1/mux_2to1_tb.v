module mux_2to_tb();
reg [1:0]a;
reg sel;
wire y;

mux_2to1_behavioral inst(a,sel,y);
//mux_2to1_dataflow inst2(a,sel,y);

initial begin
$monitor("%0t|a=%b||b=%b|sel=%b|y=%b|",$time,a[0],a[1],sel,y);

	a=2'b00;sel=1;#5;
	a=2'b01;sel=0;#5;
	$finish;
end
endmodule
