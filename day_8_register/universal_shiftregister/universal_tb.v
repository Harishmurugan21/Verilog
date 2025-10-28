module bidirectional_tb ();
reg clk,rst,r_serialin,l_serialin;
reg [1:0]sel;
reg [3:0]parallel_in;
wire [3:0]q;
wire out;


universal inst (clk,rst,r_serialin,l_serialin,sel,parallel_in,q,out);

initial begin
	clk=0;
end

always #5 clk=~clk;

//stimulus generation
initial begin
	$monitor("time=%0t |clk=%b |rst=%b| sel=%b | r_serialin=%b | l_serialin=%b | parallel_in=%b |q=%b| out=%b ",$time,clk,rst,sel,r_serialin,l_serialin,parallel_in,q,out);
	$dumpfile("universal.vcd");
	$dumpvars;

	rst=1;sel=10;#10;
	rst=0;
	repeat (6)begin
		r_serialin=$random;
		l_serialin=$random;
		#10;
	end
	sel=11;
	repeat (6)begin
		parallel_in=$random;
		#10;
	end	


	#2 $finish;
end

endmodule

