
//counter using repeat() loop;

module counter_by_repeat;

reg [3:0] q;
reg clk=0;

always #5 clk=~clk;

initial begin
	$monitor ("$time=%0t | q=%b |clk=%b | ",$time,q,clk);
	q=4'b0;
	repeat(8) begin
		@(posedge clk)
		q<=q+1;


		
	end

	#100 $finish;


end


endmodule




