module sr_ff_tb();

reg s,r,clk,rst;
wire q;


//instantiation
sr_ff dut (s,r,clk,rst,q);


//clock generation
initial begin
	clk=0;
	forever  #5 clk=~clk;
end

//stimulus generation
initial begin
	$monitor("time=%0t|clk=%b|rst=%b|s=%b|r=%b|q=%b",$time,clk,rst,s,r,q);
	$dumpfile("sr_ff.vcd");
	$dumpvars();

	s=1;r=1;rst=1;#10
	s=0;r=1;rst=0;#10
	s=0;r=0;#10
	s=1;r=0;#12

	$finish;
end

endmodule


