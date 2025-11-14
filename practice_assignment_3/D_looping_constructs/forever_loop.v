module forever_loop;


reg a;

initial begin
	a=1;

	forever begin
		#5 a=a;
		$display ("$time=%0t | a=%b |",$time,a);
		#5 a=~a;
		$display ("$time=%0t | a=%b |",$time,a);
	end
	
	

end

initial  #100 $finish;

endmodule


	

