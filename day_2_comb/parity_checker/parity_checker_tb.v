module parity_checker_tb();

reg [4:0]a;
wire evenparity;

parity_checker inst(a,evenparity);
initial begin

	$monitor("%0t|a=%b|evenparitycheck=%b|",$time,a,evenparity);
	a=5'b00011;#5;
	a=5'b11011;#5;
	a=5'b11111;#5;
	$finish;
   end 
endmodule
