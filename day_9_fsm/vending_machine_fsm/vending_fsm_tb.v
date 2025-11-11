module vending_tb ();

reg clk,rst;
reg [4:0]in;
wire dispence ,change;


vending_fsm dut (clk,rst,in,dispence,change);
initial begin
	clk=0;
	forever #5 clk=~clk;
end

initial begin
	$monitor ("time=%0t|clk=%b| rst=%b| in=%b | dispence=%b | change=%b |",$time,clk,rst,in,dispence,change);
	$dumpfile("vending.vcd");
	$dumpvars();


	rst=1;#10;
	rst=0;
	in=5'd5;#10;
	in=5'd5;#10;
	in=5'd10;#10;
	#10;
	in=5'd10;#10;
	in=5'd5;#10;
	in=5'd10;#10;
	
	

	#1 $finish;

end



endmodule

