module sync_updown_tb ();

reg clk,rst,mode;
wire [3:0]q;


sync_updown_4bit dut (clk,rst,mode,q);


initial begin

	clk=0;
	forever #5 clk=~clk;
end


initial begin
	$monitor("time=%0t |clk=%b |rst=%b |mode=%b |q=%b| ",$time, clk,rst,mode,q);
	$dumpfile("sync_updown_4bit.vcd");
	$dumpvars();


	rst=1;#10;
	rst=0;mode=0;

	#101 $finish;


end

endmodule
