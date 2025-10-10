module half_adder_tb();
reg a,b;
wire sum, carry;


half_adder inst(a,b,sum,carry);

initial begin
$monitor("%0t| a=%b| b=%b| sum=%b| carry=%b|",$time,a,b,sum,carry);
$dumpfile("wave.vcd");
$dumpvars;
a=0;b=0;#5;
a=0;b=1;#5;
a=1;b=0;#5;
a=1;b=1;#5;
$finish;
end 
endmodule
