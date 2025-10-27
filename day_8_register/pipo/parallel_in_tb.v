module parallel_in_tb ();
parameter n=3;
reg clk,rst;
reg [n-1:0]a;
wire [n-1:0]q;


parallel_in #(.n(n)) inst1 (clk,rst,a,q);


initial begin
	clk=0;
	forever #5 clk=~clk;
end


initial begin
		$monitor("Time = %0t | clk = %b | rst = %b | a = %b | q = %b ",$time, clk, rst, a, q);
		$dumpfile("parallel_in.vcd");
		$dumpvars();


		rst=1;a=$random;#10;
		rst=0;
		a=$random;#10;
		repeat (15)begin
			a=$random;#10;
		end	

		#6 $finish;
	end

	endmodule	







