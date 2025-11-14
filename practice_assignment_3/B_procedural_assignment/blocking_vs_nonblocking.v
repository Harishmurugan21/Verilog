module blocking_assignment;

reg a,b;

initial begin
	a=0;
	b=a;
	#1;
	$display ("$time=%0t | a=%b| b=%b |",$time,a,b);
end
endmodule




module non_blocking_assignment;

reg a,b;

initial begin
	a<=0;
	b<=a;
	#1;
	$display ("$time=%0t | a=%b| b=%b |",$time,a,b);
end
endmodule




/*
blocking 
-->executes imediattly and blocks the next statement untill assignment, even in same simulation time;


non_blocking
--->schedule all rhs value in (active region) and update at the end of the simulation time (at NBA region);

