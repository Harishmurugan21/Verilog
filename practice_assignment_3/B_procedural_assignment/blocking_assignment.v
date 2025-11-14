module blocking_assignment;

reg a,b;

initial begin
	a<=0;
	b<=a;
	#1;
	$display ("$time=%0t | a=%b| b=%b |",$time,a,b);
end
endmodule

