module t_ff_tb();

reg t,clk,rst;
wire q;
integer i;


//instantiation
t_ff dut (clk,rst,t,q);


//clock generation
initial begin
	clk=0;
	forever  #5 clk=~clk;
end

//stimulus generation
initial begin
	$monitor("time=%0t| clk=%b| rst=%b| t=%b| q=%b",$time,clk,rst,t,q);
	$dumpfile("jk_ff.vcd");
	$dumpvars();
	


	t=1;rst=1;#5;
	rst=0;#5

	repeat(5)begin
		t=$random;#4;
	end
	$finish;
end

endmodule

