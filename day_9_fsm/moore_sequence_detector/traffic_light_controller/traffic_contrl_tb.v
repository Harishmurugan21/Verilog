`timescale 1ns/1ps
module traffic_contrl_tb ();
reg clk,rst;
wire green_light ,orange_light,red_light;

traffic_light_controller #(.g_time(30),.o_time(5),.r_time(10)) dut (clk,rst,green_light ,orange_light,red_light);

initial begin
	clk=0;
	forever #5 clk=~clk;
end

initial begin
	$monitor ("time=%0t | clk=%b |rst=%b|green_light =%b|orange_light=%b|red_light=%b|",$time,clk,rst,green_light,orange_light,red_light);
	$dumpfile("traffic_contrl.vcd");
	$dumpvars();

	rst=1;#10;
	rst=0;#5;


	#501 $finish;
end

endmodule
	
	

