module and_gate_tb();
reg a,b;
wire y;

and_gate inst1(.a(a),.b(b),.c(y));
initial begin

$monitor("time=%0t|a=%b|b=%b|y=%b",$time,a,b,y);	
a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
#5 $finish;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,and_gate_tb);
end
endmodule

