module siso_tb ();

reg clk,rst,serial_in;
wire [3:0]q;


siso inst (clk,rst,serial_in,q);

initial begin
	clk=0;
end

always #5 clk=~clk;

//stimulus generation
initial begin
	$monitor("time=%0t |clk=%b |rst=%b |serial_in=%b | q=%b |",$time,clk,rst,serial_in,q);
	$dumpfile("siso.vcd");
	$dumpvars;


	rst=1;#10;
	rst=0;
	repeat(25)begin
		serial_in=$random;#10;
	end
	#2 $finish;
end

endmodule


