module async_up_2bit();

reg clk,rst;
wire [1:0]q;


async_upcounter_2bit inst (clk,rst,q);

initial begin
	clk=0;
	forever #5 clk=~clk;

end


initial begin
	$monitor ("$time=%0t |clk =%b | rst=%b | q=%b|",$time,clk,rst,q);
	$dumpfile("async_up_2bit.vcd");
	$dumpvars();

	rst=1;#5;
	rst=0;

	#101 $finish;


end 

endmodule
