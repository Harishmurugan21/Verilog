module jk_latch_tb();


reg clk,rst,j,k;
wire q;


jk_latch test (clk,rst,j,k,q);


initial begin
	clk=0;
	forever #5 clk=~clk;

end

initial begin

	$monitor("time=%0t| clk=%b| rst=%b| j=%b| k=%b| q=%b",$time,clk,rst,j,k,q);
	$dumpfile("jk_latch.vcd");
	$dumpvars;


	rst=1;j=1;k=0;
	#3 rst=0;

	repeat (15) begin
		#2 {j,k}=$random%4;

	end
	

	#2 $finish;

end

endmodule






