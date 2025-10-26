module async_updown_tb_4bit();

reg clk,rst,control;
wire [3:0]q;


async_updown_4bit inst (clk,rst,control,q);

initial begin
	clk=0;
	forever #5 clk=~clk;

end


initial begin
	$monitor ("$time=%0t |clk =%b | rst=%b |control=%b |  q=%b|",$time,clk,rst,control,q);
	$dumpfile("async_updown_4bit.vcd");
	$dumpvars();

	rst=1;#5;
	rst=0;control=0;

	#101 $finish;


end 

endmodule
