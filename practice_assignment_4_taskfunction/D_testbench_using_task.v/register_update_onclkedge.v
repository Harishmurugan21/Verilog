//design module
module register #(parameter n=8) (input clk,rst,input [n-1:0]d,output reg [n-1:0]q);

always  @ (posedge clk)begin
	if (rst)		//synchronous reset;
		q<={n{1'b0}};
	else 
		q<=d;
end

endmodule



//testbench


module reg_tb ();
parameter n=10;
reg  clk,rst;
reg [n-1:0] d;
wire [n-1:0] q;

//dut
register #(.n(n)) inst (clk,rst,d,q);


initial begin
	clk=0;
	forever #5 clk=~clk;
end

initial begin
	$monitor ("$time=%0t | clk=%b |rst=%b | d=%b | q=%b |",$time,clk,rst,d,q);
	rst=1;#10;
	rst=0;
	drive_inputs;
	#5;
	$finish;
end

task drive_inputs;
	repeat (10)begin
		d=$random;
		#5;
	end
endtask


	

endmodule
