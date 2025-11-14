
/*
-->All always and initial blocks execute concurrently.(statrts at exexution time 0 for both blk)

-->The simulator schedules all these processes at the same simulation time.

-->Delays (#10, #20) control when each process resumes next.

-->When a or b changes, Block 4 triggers due to the sensitivity list (a or b).
*/



module initial_vs_always ;

reg a,b,c;



//initial block
initial  begin

	//$monitor ("$time=0t |initial block-->a=%b| b=%b | c=%b |",$time,a,b,c);
	a=0;c=2;
	$display ("$time=%0t |initial block-->a=%b| b=%b | c=%b |",$time,a,b,c);
	#5 b=c+a;
	#10 c=~c;
	$display ("$time=%0t |initial block-->a=%b| b=%b | c=%b |",$time,a,b,c);

end


//always block
always begin
	#15 c=a;
	 b=~b;
	$display ("$time=%0t |always block-->a=%b| b=%b | c=%b |",$time,a,b,c);
end


always @(b) begin
	 b=c;
	 $display ("$time=%0t |always catch block-->a=%b| b=%b | c=%b |",$time,a,b,c);
 end


//sinulation ends at time 100
initial
	#100 $finish;

endmodule





