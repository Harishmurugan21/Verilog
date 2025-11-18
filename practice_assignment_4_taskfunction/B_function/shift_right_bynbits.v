//37. Implement a function that shifts input righti by n bits.

module shift_right;


reg [7:0]in;
reg [7:0] out;


function [7:0] shift (input [7:0] in,input integer time_to_shift);

	integer i;
	reg [7:0] temp;
	begin
		temp=in;
		for(i=1;i<=time_to_shift;i++)begin
			temp={temp[0],temp[7:1]};
		 $display ("in=%b | out=%b |",in,temp);
		end
		shift=temp;

	end

endfunction

initial begin
	//$monitor ("in=%b | out=%b |",in,out);
	in=8'd10;

	out=shift(in,3);

end
endmodule
