module ripple_adder_tb();
reg [3:0]a,b;

wire [3:0]sum;
wire carry;




ripple_adder inst(a,b,sum,carry);



initial begin
	$monitor("%0t|a=%b|b=%b|sum=%b|carry=%b",$time,a,b,sum,carry);
		

	a=4'b0000;b=4'b0000;#5;
	a=4'b0001;b=4'b0001;#5;
	a=4'b1111;b=4'b0101;#5;
	a=4'b1111;b=4'b1111;#5;
	$finish;
end
endmodule

