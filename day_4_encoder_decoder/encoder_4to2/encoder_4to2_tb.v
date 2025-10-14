module encoder_4to2_tb();
reg [3:0]a;
wire [1:0]y;


encoder_4to2 test (a,y);
 
initial begin
$monitor("%0t|a=%b|y=%b|",$time,a,y);
a=4'b0000;#5;
a=4'b0001;#5;
a=4'b0010;#5;
a=4'b0100;#5;
a=4'b1000;#5;
$finish;
end 
endmodule

