
module moore_tb ();

reg clk,rst,in;
wire out;

moore_1011 test (clk,rst,in,out);



initial begin
	clk=0;
	forever  #5 clk=~clk;
end



initial begin
	$monitor("time=%0t | clk=%b |rst=%b | in=%b | out=%b",$time,clk,rst,in,out);
	$dumpfile("moore_1011.vcd");
	$dumpvars;


	rst=1;in=1;#10;
	rst=0;
	in=1;#10;
	in=1;#10;
	in=0;#10;
	in=0;#10;
	in=1;#10;
	in=0;#10;
	in=1;#10;
	in=1;#10;
	in=1;#10;

	#1 $finish;



end
endmodule












