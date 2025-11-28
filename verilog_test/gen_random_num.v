// Write a verilog code to generate random numbers between -100 to 100.

module gen_random;

reg signed [7:0] signed_num;



initial begin
	$display ("random value between -100 to 100");
	repeat(50)begin
		signed_num=((($random % 201 + 201) % 201)-100);
		$display ("$time=%0t |randomvalue= %d|",$time,signed_num,);
		#5;
	end

end


endmodule



