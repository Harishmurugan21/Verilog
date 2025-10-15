module comparator_4bit_tb();
reg [3:0] a,b;
wire equal,a_greater,b_greater;

comparator_4bit inst(a,b,equal,a_greater,b_greater);
 

initial begin
$monitor("%0t|a=%b|b=%b|equal=%b|a_greater=%b|b_greater=%b|",$time,a,b,equal,a_greater,b_greater);


repeat(4)begin
a=$random;
b=$random;#5;
end


end
endmodule
