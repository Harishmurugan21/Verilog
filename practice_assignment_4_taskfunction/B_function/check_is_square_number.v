//35. Write a function that checks if the input is power of 2.


module is_squarenum;

integer in;
reg out;

function check_issquare (input integer a);
	check_issquare=(a != 0) && ((a & (a-1)) == 0);
endfunction

initial begin
	$monitor ("in=%0b | out=%0d |",in,out);

	in=64;
	out=check_issquare(in);
	#5;
	in=8;
	out =check_issquare(in);
	#5;
	in=100;
	out=check_issquare(in);
end
endmodule
