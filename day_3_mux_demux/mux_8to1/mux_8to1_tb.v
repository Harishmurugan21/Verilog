module mux_8to1_tb();
reg [7:0]a;
reg [2:0]sel;
wire y;

//mux_8to1_behavioral inst1(a,sel,y);
mux_8to1_by_4to1 inst(a,sel,y);

initial begin
$monitor("%0t|a=%b|sel=%b|y=%b|",$time,a,sel,y);

	a=8'b01010110;
	sel=3'b001;#5;
	sel=3'b111;#5;
	sel=3'b101;#5;
	$finish;
end
endmodule
