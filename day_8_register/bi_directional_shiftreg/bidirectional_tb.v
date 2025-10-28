module bidirectional_tb ();
parameter n=6;
reg clk,rst,mode,r_serialin,l_serialin;
wire serial_out;
wire [n-1:0]q;


bi_directional #(.n(n))inst (clk,rst,mode,r_serialin,l_serialin,q,serial_out);

initial begin
	clk=0;
end

always #5 clk=~clk;

//stimulus generation
initial begin
	$monitor("time=%0t |clk=%b |rst=%b| mode=%b | r_serialin=%b | l_serialin=%b |q=%b| serial_out=%b ",$time,clk,rst,mode,r_serialin,l_serialin,q,serial_out);
	$dumpfile("bidirectional.vcd");
	$dumpvars;

	rst=1;mode=1;#10
	rst=0;
	repeat (15)begin
		r_serialin=$random;
		#10;
	end
	mode=0;
	repeat (15)begin
		l_serialin=$random;
		#10;
	end	
	#2 $finish;

end

endmodule
