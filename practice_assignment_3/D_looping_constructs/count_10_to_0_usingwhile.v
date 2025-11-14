//count 10 to 0 using while loop;

module counter_des;

reg [3:0] counter;


initial begin
	counter=4'd10;
	$display ("time=%0t | counter=%d |",$time,counter);


	while(counter!=0)begin
		counter=counter-1;
		
		$display ("time=%0t | counter=%d |",$time,counter);

	end


end

endmodule




