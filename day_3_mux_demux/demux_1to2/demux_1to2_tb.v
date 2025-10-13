module demux_1to2_tb();
reg a,sel;
wire [1:0]y;

//demux_1to2 inst(a,sel,y);
demux_1to2_dataflow inst(a,sel,y);
initial begin

$monitor("%0t|a=%b|sel=%b|y=%b",$time,a,sel,y);

	a=1;
	sel=0;#5;
	a=0;
	sel=1;#5;
	$finish;
   
   end
endmodule
