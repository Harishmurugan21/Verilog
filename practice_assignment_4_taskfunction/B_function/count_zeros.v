//38. Create a function that counts trailing zeros in a binary number.


module count_zeros;

reg [7:0]in;
integer out;


function  integer counting (input [7:0] in);
	integer i;
	begin
		counting=0;
		for (i=0;i<8;i++)begin
			if (in[i]==0)
				counting=counting+1;
		end
	end
endfunction


initial begin
	$monitor ("in=%b| zeros_count=%0d | ",in,out);
	in=8'd14;
	out=counting(in);
	#5;
	in=8'd4;
	out=counting(in);
end


endmodule

