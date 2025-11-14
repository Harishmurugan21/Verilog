 module ff_tb;

reg clk,a;
reg q;

initial begin
	clk=0;
	a=1;
	#10 a=0;
	#40 a=1;
	

end

always  #5 clk=~clk;
always @ (posedge clk)begin
	q=a;
end


initial begin
	$monitor ("$time=%0t|clk=%b| a=%b | q=%b |",$time,clk,a,q);
	#70 $finish;

end


endmodule






