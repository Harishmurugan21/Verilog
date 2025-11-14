 /*module initial_and_always;

reg a,b,c,out;



//for initial value
initial begin
	a=1;b=1;c=~a;
	#1 $display ("$time=%0t | initial values a=%b| b=%b | c=%b | ",$time,a,b,c);
end

always begin
	 c=a;
	 #10 b=c+a;

	   $display ("$time=%0t |   always block a=%b| b=%b | c=%b | ",$time,a,b,c);
   end


//simulation ends
initial
       #150 $finish;
endmodule

*/


module initial_and_always ;

reg [3:0]counter ,register;
reg in;

initial begin
	in=1;
	counter=4'b0;
	register=4'b1;
	$display ("$time=%0t| initial value -->counter=%b | register=%b|",$time,counter,register);
	#5 in=0;
	#10 in=1;
	#2 in=0;
end

always@(in) begin
	if (in)
		counter<=counter+1;
	else begin
		register<={register[2:0],register[3]};
		counter<=counter-1;
	end
	$display ("$time=%0t| at always block -->counter=%b | register=%b|",$time,counter,register);
end


endmodule


	





