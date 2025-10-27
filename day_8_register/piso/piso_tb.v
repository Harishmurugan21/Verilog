module piso_tb ();
reg [3:0]in;
reg clk,rst,load_shift;
wire qout;


piso inst (clk,rst,load_shift,in,qout);

initial begin
	clk=0;
end

always #5 clk=~clk;

//stimulus generation
initial begin
	$monitor("time=%0t |clk=%b |rst=%b |in=%b |load_shift=%b  qout=%b ",$time,clk,rst,in,load_shift,qout);
	$dumpfile("piso.vcd");
	$dumpvars;

	rst=0;
	load_shift=1;in=4'b1101;#10;
	load_shift=0;

	#55 $finish ;

end
endmodule


