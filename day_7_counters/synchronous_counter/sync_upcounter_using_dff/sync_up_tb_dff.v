module sync_up_tb_tff ();

reg clk,rst;
wire [3:0]q;


sync_up_dff dut (clk,rst,q);


initial begin

	clk=0;
	forever #5 clk=~clk;
end


initial begin
	$monitor("time=%0t |clk=%b |rst=%b |q=%b| ",$time, clk,rst,q);
	$dumpfile("sync_up_dff.vcd");
	$dumpvars();


	rst=1;#5;
	rst=0;

	#101 $finish;


end

endmodule

