module sync_up_tb ();

reg clk,rst;
wire [3:0]q;


sync_up_4bit dut (clk,rst,q);


initial begin

	clk=0;
	forever #5 clk=~clk;
end


initial begin
	$monitor("time=%0t |clk=%b |rst=%b |q=%b| ",$time, clk,rst,q);
	$dumpfile("sync_up_4bit.vcd");
	$dumpvars();


	rst=1;#10;
	rst=0;

	#101 $finish;


end

endmodule

