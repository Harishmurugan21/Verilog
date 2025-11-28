//sub module
module full_adder(input a,b,cin,output sum,carry);
assign sum=a^b^cin;
assign carry=(a & b) | (b & cin) | (a & cin);
endmodule


// top module
  

module ripple_carry #(parameter n=4) (input [n-1:0]a,b,output [n-1:0]sum,output carry_out);



//intermidiate carry wires;
wire [n:0] carry;
//set first carry in as 0 for adder;
assign carry[0]=0;

genvar i;
generate 
	
	for (i=0;i<n;i=i+1)begin:f_add
		full_adder inst (a[i],b[i],carry[i],sum[i],carry[i+1]);
	
	end
	endgenerate
	
	assign carry_out=carry[n];



endmodule





//testbench

module rca_tb;
//set parameterized module
parameter w=16;
reg [w-1:0]a,b;
wire [w-1:0]sum;
wire carry;



//dut 

ripple_carry #(.n(w)) dut (a,b,sum,carry);

//stimule gen
initial begin
	$strobe ("a=%b [%d] | b=%b [%d] | sum=%b  [%d] | carry_out =%b |",a,a,b,b,sum,sum,carry);
	a=$random;
	b=$random;

end
endmodule







