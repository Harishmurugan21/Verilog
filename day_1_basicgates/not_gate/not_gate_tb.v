
module not_gate_tb();
reg a;
wire y;


not_gate dut(a,y);
initial begin
$monitor("time=%0t|a=%b|y=%b",$time,a,y);
$dumpfile("wave.vcd");
$dumpvars(0,not_gate_tb);


	a=0;#5;
        a=0;#5;// output not displayed becoz no change in output
        a=1;#5;
        a=1;#5;
	$finish;
end 
endmodule
		
