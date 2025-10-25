module master_slave_tb ();

reg clk,rst,d;
wire q;

master_slave dut (clk,rst,d,q);


initial begin 
	clk=0;
	forever #5 clk=~clk;

end

initial begin

	$monitor ("Time=%0t | clk=%b | rst=%b | d=%b | q=%b ",$time,clk,rst,d,q);
	$dumpfile("master_slave.vcd");
	$dumpvars();

	rst=1;d=1;#3;
	rst=0;
	repeat (30)begin
		d=$random;#3;


	end	
	$finish;
end

endmodule

