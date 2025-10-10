module all_gate_tb();
reg a,b;
wire y_and,y_or,y_nand,y_nor,y_xor,y_xnor,y_not;


all_gate dut(a,b,y_and,y_or,y_nand,y_nor,y_xor,y_xnor,y_not);

initial begin
$monitor("time | a| b| and| or| nand| nor| xor| xnor| not");
$monitor("%0t  |%b|%b|  %b| %b|   %b|  %b|  %b|   %b|   %b|",$time,a,b,y_and,y_or,y_nand,y_nor,y_xor,y_xnor,y_not);
$dumpfile("wave.vcd");
$dumpvars;

a=0;b=0;#5;
a=0;b=1;#5;
a=1;b=0;#5;
a=1;b=1;#5;
$finish;
end
endmodule

