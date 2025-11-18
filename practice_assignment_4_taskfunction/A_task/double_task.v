

module  double_task;

reg a;
reg b;
reg out;

task task_1 (input in1,in2,output result);
	integer c;
	begin
		
		c=in1^in2;
		task_2(c,result);
	end
endtask

task task_2 (input in,output out);
	begin
	out=~in;
	end
endtask

initial begin
	$monitor ("$time=%0t | a=%b | b=%b | out=%b |" ,$time,a,b,out);
	a=1;b=1;
	task_1(a,b,out);
	#5;
	$finish;
end

endmodule

