module xnor_gate_tb();
reg a,b;
wire y;


xnor_gate test(a,b,y);//by port position connection

initial begin
$monitor("time=%0t|a=%b|b=%b|y=%b",$time,a,b,y);

a=0;b=0;#5;
a=0;b=1;#5;
a=1;b=0;#5;
a=1;b=1;#5;
$finish;
end 
initial begin
$dumpfile("wave.vcd");
$dumpvars;
end
endmodule
