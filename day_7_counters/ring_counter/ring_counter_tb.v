module ring_counter_tb ();

reg clk,rst;
wire [3:0]q;

ring_counter dut (clk,rst,q);

initial begin
	clk=0;
	forever #5 clk=~clk;
end

initial begin
	$monitor ("time=%0t |clk=%b| rst=%b |q=%b |",$time,clk,rst,q);
	$dumpfile("ring_counter.vcd");
	$dumpvars();

	rst=1;#5;
	rst=0;

	#151 $finish;

end

endmodule
