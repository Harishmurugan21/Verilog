module binary_to_bcd_tb ();

reg [3:0]a;
wire [7:0]y;


binary_to_bcd inst (a,y);


initial begin
	$monitor("time=%0t | a=%d |y=%b |",$time,a,y);


	repeat(5)begin
		a=$random;#2;

	end
end

endmodule

