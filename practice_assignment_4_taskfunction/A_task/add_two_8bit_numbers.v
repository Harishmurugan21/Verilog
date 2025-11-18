module add_bitbit_number;

reg [7:0] a,b;
reg [8:0] out;



task adder (input [7:0]a,b);begin //task
	
	out=a+b;
	$display ("$time=%0t | out=%d |",$time,out);
end
endtask


initial begin
	//$monitor ("$time=%0t | out=%d |",$time,out);
	adder (8'd6,8'd150);	//task calling;
	
	#5;
	adder (8'd17,8'd98);
end


endmodule
