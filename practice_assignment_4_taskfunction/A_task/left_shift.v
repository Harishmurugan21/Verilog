//Create a task to simulate a left circular shift of a register value.

module left_shift;


reg [7:0] in;
reg [7:0]out;


task shift (input [7:0]in,output[7:0]result);
	begin
		result={in[6:0],in[7]};
	end
endtask


initial begin

	$monitor ("$time=%0t | in=%b | out =%b |",$time,in,out);
	in=8'd67;
	shift (in,out);
	#5;
	in=8'd100;
	shift (in,out);
end

endmodule


