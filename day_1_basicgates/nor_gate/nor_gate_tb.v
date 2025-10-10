module nor_gate_tb();
reg a,b;
wire y;

nor_gate dut(a,b,y);

initial begin

$display("%0t|a=%b|b=%b|y=%b",$time,a,b,y);

a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
#5 $finish;

end
initial begin
$dumpfile("wave.vcd");
$dumpvars;
end 
endmodule
