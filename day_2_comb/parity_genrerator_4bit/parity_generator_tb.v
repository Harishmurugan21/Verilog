module parity_generator_tb();
reg [3:0]a;
wire y;


parity_generator_behavioural inst (a,y);

initial begin 
$monitor("%0t|a=%b|y=%b|",$time,a,y);
$dumpfile("wave.vcd");
$dumpvars;
	a=4'b0001;#5;
	a=4'b0011;#5;
	a=4'b1111;#5;
	$finish;
end 
endmodule















