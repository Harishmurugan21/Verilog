 module ff_exchange_value;
reg clk;
reg q1,q2;


initial begin
	clk=0;
	q1=0;q2=1;
	forever #5 clk=~clk;
end


always @ (posedge clk)begin
	
	q2<=q1;
	q1<=q2;
end

initial begin
	$monitor ("$time=%0t | clk=%b | q1=%b | q2=%b |",$time,clk,q1,q2);
	#51 $finish;
end


endmodule




