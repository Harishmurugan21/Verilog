module bufif1_tb();
reg a,control;
wire y;

buf_if1 inst(a,control,y);
initial begin


$monitor("%0t|a=%b|control=%b|y=%b|",$time,a,control,y);


a=1;control=1;#5;
a=0;control=1;#5;
a=1;control=0;#5;
$finish;
end
endmodule

