module fa(input a,b,cin,output sum,carry);


assign sum=a^b^cin;
assign carry=(a & b) | (b & cin) | (a & cin);


endmodule




module ripple_carry_adder #(parametern=8)(input [n-1:0]a,b,output [n-1:0] out,carry_out);


wire [n:0]carry_in;
assign carry_in[0]=0;   //for addition;


genvar i;
generate 
	for (i=0;i<n;i=i+1)begin:f_add
		fa inst (a[i],b[i],carry_in[i],out[i],carry_in[i+1]);

	end


endgenerate
assign carry_out= carry_in[n];

endmodule
