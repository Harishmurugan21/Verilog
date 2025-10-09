module or_gate_tb();
reg a,b;
wire y;

or_gate inst(a,b,y);
 initial begin
a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
#5 $finish;

end

initial begin 
$monitor("time=%0t |a=%b|b=%b|y=%b",$time,a,b,y);
$dumpfile("wave.vcd");
$dumpvars;
end
endmodule

