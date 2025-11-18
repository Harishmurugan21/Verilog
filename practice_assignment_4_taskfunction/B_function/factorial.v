//Write a recursive function to compute factorial using automatic.

module find_factorial;

integer a;
integer out;


function integer factorial (input integer in);
	integer temp;
	integer i;
	begin
		temp=1;
		for (i=1;i<=in;i++)begin
			temp=temp*i;
		end
		factorial=temp;
	end

endfunction


initial begin
	$monitor ("$time=%0t | a=%0d | factorial=%0d|",$time,a,out);
	a=4;
	out=factorial(a);
	#5;
	a=3;
	out=factorial(a);
	#10;
	$finish;
end

endmodule

