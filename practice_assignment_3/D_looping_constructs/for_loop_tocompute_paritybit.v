//use for loop to compute the parity bit of 8 bit signal;

//even parity
module parity_gen_using_for;


reg [7:0] byte;
reg parity;

integer i;


initial begin

	byte =8'd5;
	parity=0;


	for (i=0;i<8;i=i+1)begin
		parity=parity^byte[i];
		#1;
	end

	$display (" $time=%0t | inputbyte=%b |paritybit=%b |",$time,byte,parity);

end

endmodule

