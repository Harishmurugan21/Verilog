module and_or;

reg  a,b;
reg  and_out,or_out;



task operator (input a,b,output out_and,out_or);begin //task
	
	out_and=a&b;
	out_or=a|b;
	//$display ("$time=%0t | a=%d | b=%b |and=%b | or=%b |",$time,a,b,and_out,or_out);
end
endtask


initial begin
	$monitor ("$time=%0t | a=%d | b=%b |and=%b | or=%b |",$time,a,b,and_out,or_out);
	operator (1,0,and_out,or_out);	//task calling;
	
#1;	
	operator (1,1,and_out,or_out);
end


endmodule 
