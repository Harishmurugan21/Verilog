//Design a task that accepts an 8-bit input and outputs its binary reversed form.

module reverse_the_binary;
reg [7:0] in;
reg [7:0] out;


task binary_reverse (input [7:0] value,output [7:0] result);
	integer i;
	
	begin
		for  (i=0;i<8;i++)begin
			result[i]=value[7-i];
		end
	end
endtask

initial begin
	$monitor ("$time=%0t |in=%b | reversed_value=%b | ",$time,in,out);
	in=8'd100;
	binary_reverse(in,out);
	$finish;
end
endmodule

		
