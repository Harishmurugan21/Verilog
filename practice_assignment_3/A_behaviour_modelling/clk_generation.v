
//clock generator using forever


module clk_generation;

reg clk;

parameter clock=20;  //(clock cycle time period)

//set initial value
initial begin
	clk=0;
forever  #(clock/2) clk=~clk;
end


initial  begin
	$monitor ("$time=%0t | clk=%b|",$time,clk);
	#101 $finish;
end

endmodule


