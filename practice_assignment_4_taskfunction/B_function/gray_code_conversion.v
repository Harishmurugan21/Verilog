//39. Write a function that returns the Gray code of a 4-bit binary number.

module convert_to_gray_code;

reg [3:0] in;
reg [3:0] gray_out;


function [3:0] convert_gray (input [4:0]in);
	reg [3:0] temp;
	integer i;
	begin
		temp[3]=in[3];
		for (i=2;i>=0;i--)begin
			temp[i]=in[i+1]^in[i];
		end
		convert_gray=temp;
	end
endfunction 

initial begin
	$monitor ("binary_in =%b  | gray_out=%b |",in,gray_out );
	in=4'd10;
	gray_out=convert_gray (in);
end

endmodule
	



