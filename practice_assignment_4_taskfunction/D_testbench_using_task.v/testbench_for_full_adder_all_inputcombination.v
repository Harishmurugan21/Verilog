//full_adder design module

module full_adder(input a,b,cin, output sum,carry);
assign sum=(a^b^cin);
assign carry=(a & b) | (b & cin) | (a & cin);
endmodule

//testbench for all input possible combination
//


module adder_tb ();
reg a,b,c;
wire sum,carry;

//dut 
full_adder dut (a,b,c,sum,carry);



task test_fa ();
	integer i;
	begin
		for (i=0;i<8;i++)begin
			{a,b,c}=i[2:0];
			#5;
		end
	end
endtask
initial begin
	$monitor ("$time=%0t | a=%b |b=%b |sum=%b |carry=%b | ",$time,a,b,sum,carry);
	test_fa;
end
endmodule

