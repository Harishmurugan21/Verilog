//design module
module ripple_adder(input [3:0]a,input[3:0]b,output [3:0]sum, output carry);
wire [2:0]cout; 
full_adder fa1(a[0],b[0],1'b0,sum[0],cout[0]);
full_adder fa2(a[1],b[1],cout[0],sum[1],cout[1]);
full_adder fa3(a[2],b[2],cout[1],sum[2],cout[2]);
full_adder fa4(a[3],b[3],cout[2],sum[3],carry);






endmodule


module full_adder(input a,b,cin,output sum,carry);
assign sum=a^b^cin;
assign carry=(a & b) | (b & cin) | (a & cin);
endmodule



//testbench
//
module adder_tb ();
reg [3:0]a,b;
wire [3:0]sum;
wire carry;

//dut instantiation
ripple_adder dut (a,b,sum,carry);

task input_gen ();
	integer i;
	begin
		for (i=0;i<20;i++)begin
			a=$random;
			b=$random;
			#5;
		end
	end
endtask

initial begin
	$monitor ("$time=%0t | a=%b[%d] |b=%b[%d] |sum=%d |carry=%b | ",$time,a,a,b,b,sum,carry);
	//call task
	input_gen;
end

endmodule
		

