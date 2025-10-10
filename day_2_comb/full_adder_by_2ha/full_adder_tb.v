module full_adder_tb();
reg a,b,cin;
wire sum,carry;


full_adder inst(a,b,cin,sum,carry);

initial begin
$monitor("%0t|a=%b|b=%b|cin=%b|sum=%b|carry=%b|",$time,a,b,cin,sum,carry);
$dumpfile("wave.vcd");
$dumpvars;


a=0;b=0;cin=0;#5;
a=0;b=0;cin=1;#5;
a=0;b=1;cin=0;#5;
a=0;b=1;cin=1;#5;
a=0;b=1;cin=0;#5;
a=0;b=1;cin=1;#5;
a=1;b=1;cin=0;#5;
a=1;b=1;cin=1;#5;
$finish;
end
endmodule


