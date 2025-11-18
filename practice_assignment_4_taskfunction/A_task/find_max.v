//10. Create a task that accepts 4 inputs and returns the maximum among them.


module find_largest;


reg [3:0] in[3:0];
reg [3:0] largest;


task find_max (input [3:0]in[3:0],output [3:0] result);
	reg [3:0] temp=4'b0;
	integer i;
	begin
		for (i=0;i<4;i++)begin
			if (temp<in[i])
				temp=in[i];
		end
		result=temp;
	end

endtask


initial begin
	$monitor ("$time=%0t|in[3]=%b | in[2]=%b | in[1]=%b |in[0]=%b| largest=%b",$time,in[3],in[2],in[1],in[0],largest );
	in[0]=4'd3;
	in[1]=4'd7;
	in[2]=4'd15;
	in[3]=4'd2;
	find_max(in,largest);


end
endmodule
