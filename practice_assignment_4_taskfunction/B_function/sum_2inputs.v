module sum_twovalue;

reg [7:0] in1,in2;
integer out;

function integer sum (input [7:0]a,b );
	sum=a+b;
endfunction


initial begin

	$monitor ("$time=%0t |a=%b |a=%b |out=%0b |",$time,in1,in2,out);

	in1=8'd20;
	in2=8'd15;
	out=sum (in1,in2);
end
endmodule


