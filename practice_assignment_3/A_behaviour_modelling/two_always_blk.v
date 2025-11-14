module two_always;


reg clk;
reg [3:0] a;

initial begin
       clk=0;
       a=4'b0;


end



always #5 clk=~clk;

always @(posedge clk)begin
	a<=a+1;
end

initial begin
	$monitor("$time=%0t |clk=%0t | a=%b | ",$time,clk,a);
	#100 $finish;

end


endmodule

       



