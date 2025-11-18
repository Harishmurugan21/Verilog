//16. Write a task that counts the number of 1s in an 8-bit input.

module count_1ns;

reg [7:0] in;
integer count;



task counting (input [7:0]in,output integer out);
	integer i;
	integer temp;
	begin
		temp=3'b0;
		for (i=0;i<8;i++)begin
			if (in[i])
				temp=temp+1;
		end
		out=temp;
	end

endtask


initial begin

	$monitor ("$time=%0t  | in=%b | number of ones=%0b |",$time,in,count);
	in=8'd13;
	counting (in,count);
end

endmodule





