//11. Write a task that implements a simple delay-based blinking LED simulation.


module blinking_led;


reg led_out;

task task_1 (input integer delay ,output reg result);
begin
	result=0;
	forever begin
		#delay ;
		result=~result;
		 $display ("$time=%0t | led_out=%b | ",$time,result);
	end
end

endtask


initial begin
	fork
		task_1 (10,led_out);
		#100 $finish;
	join
end	

endmodule
