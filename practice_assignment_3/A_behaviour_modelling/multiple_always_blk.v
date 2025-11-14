module multiple_always;


reg a,b,c;

initial begin
	a=0;b=0;c=0;
	$display ("$time=%0t | initial a=%b|b=%b|c=%b",$time,a,b,c);
end

always  begin
	#5 a=~a;
	$display ("$time=%0t | a=a+b --> a=%b|b=%b|c=%b",$time,a,b,c);

end

always begin 
	#10 b=a;
	$display ("$time=%0t | b=a -->a=%b|b=%b|c=%b",$time,a,b,c);


end

always @(a or b)begin
	c=a&b;
	$display ("$time=%0t | cvalue -->a=%b|b=%b|c=%b",$time,a,b,c);

end

initial #51 $finish;

endmodule








