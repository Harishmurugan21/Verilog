//counter by using if -else;


module counter_ifelse;


reg [4:0] counter;
reg rst;
reg clk;


initial begin
	$monitor ("$time=%0t | clk=%b | rst=%b | counter =%b | ",$time,clk,rst,counter);
	clk=0;
	
	rst=1;#10;
	rst=0;
end
always #5 clk=~clk;


always @ (posedge clk) begin

	if (rst)
		counter<=5'b0;
	else
		counter<=counter+1;
end


initial begin
	#101;
	$display ("simulation enda at 101 time");
	$finish;
end
endmodule







