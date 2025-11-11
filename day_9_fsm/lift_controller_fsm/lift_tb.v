module lift_tb ();
reg clk,rst;
reg [2:0] req_floor;
wire [2:0]current_floor;
wire motor_up,motor_down,door_open,door_close;




lift_fsm dut (clk,rst,req_floor,current_floor,motor_up,motor_down,door_open,door_close);



initial begin
	clk=0;
	forever #5 clk=~clk;

end

initial begin
	$monitor ("$time=%0t | clk=%b |rst=%b |req_floor=%b |motor_up=%b |motor_down=%b |door_open=%b |door_close=%b |current_floor=%b |",$time,clk,rst,req_floor,motor_up,motor_down,door_open,door_close,current_floor);

	


	rst=1;#10;
	rst=0;
	req_floor=3'd3;
	#100;
	req_floor=3'b0;
	#100;
	req_floor=3'd4;
	#100;


	#1 $finish;

end

endmodule
