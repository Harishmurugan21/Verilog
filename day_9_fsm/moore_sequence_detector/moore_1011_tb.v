
module moore_tb ();

reg clk,rst,in;
wire out;

moore_1011 test (clk,rst,in,out);



reg [3:0] in_store;
reg out_exp;


always @ (posedge clk)begin
	if (rst)
		in_store<=4'b0;
	else
		in_store<={in_store[2:0],in};
end

always @ (*)begin
       if(in_store==4'b1011)
	       out_exp<=1;
       else
	       out_exp<=0;
end


always @ (posedge clk) begin
	if (out!=out_exp)begin
		//$display ("Mismatch Occured");
		$display ("$time=%0t | out=%b | exp=%b | input_sequence=%b|fail",$time,out,out_exp,in_store);
	
		$finish;

	end
	else if (out==1'b1)
		$display ("$time=%0t | out=%b | exp=%b | input_sequence=%b|pass",$time,out,out_exp,in_store);
	
end



initial begin
	clk=0;
	forever  #5 clk=~clk;
end



initial begin
	//$monitor("time=%0t | clk=%b |rst=%b | in=%b | out=%b",$time,clk,rst,in,out);
	
	$dumpfile("moore_1011.vcd");
	$dumpvars;


	rst=1;in=1;#10;
	rst=0;
	in=1;#10;
	in=1;#10;
	in=0;#10;
	in=0;#10;
	in=1;#10;
	in=0;#10;
	in=1;#10;
	in=1;#10;
	in=1;#10;
	in=0;#10;
	in=1;#10;
	in=1;#10;
	in=0;#10;
	in=1;#10;
	in=1;#10;
	repeat (50)begin
		@(posedge clk)in=$random%2;
		
	end





	#2 $finish;



end
endmodule














