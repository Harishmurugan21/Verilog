//shift register  using  non_blocking ;


module pipelined_reg;

reg in,clk;
reg [3:0]q;

initial begin
	clk=0;
	q=4'b0;
	repeat (10)begin
		in=$random;
		#10;
	end
end


always #5 clk=~clk;


always @ (posedge clk)begin
	
	q<={in,q[3:1]};
end

initial begin
	$monitor ("$time=%0t | clk=%b | in=%b | q=%b |",$time,clk,in,q);
	#151 $finish;
end


endmodule
	
 
