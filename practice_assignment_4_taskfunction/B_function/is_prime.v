//24. Implement a function to return 1 if input is a prime number, else 0.



module is_prime;

integer in;
reg  out;

function  find_is_prime (input integer in);
	reg temp;
	integer i;
	begin
		temp=1;
		for (i=2;i<=in/2;i++)begin
			if (in%i==0)
				temp=0;
		end
		find_is_prime=temp;
	end

endfunction


initial begin

	$monitor ("a=%0d |out=%b | ",in,out);
	in=3;
	out=find_is_prime(in);
end
endmodule


