`timescale 1ns/1ps;
module d_ff_tb();

reg clk,d,rst;
wire q;

// module instansiation
d_ff dut (d,clk,rst,q);


//clock generation
initial begin
	clk=0;
end

always #5 clk=~clk;

//stimulus generation
initial begin
	$monitor("d=%b|rst=%b|clk=%b|q=%b|%0t",d,rst,clk,q,$time);
	$dumpfile("d_ff.vcd");
	$dumpvars;

	rst=1;d=1;#5
	rst=0;d=1;#5
	d=0;#5
	d=1;#6
	$finish;
   end
endmodule
