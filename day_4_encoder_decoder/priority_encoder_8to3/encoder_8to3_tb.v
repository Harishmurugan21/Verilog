module encoder_8to3_tb();
reg [7:0]a;
wire [2:0]y;
wire valid;

encoder_8to3_priority test (a,y,valid);

initial begin
$monitor("%0t|a-%b|y=%b|valid=%b|",$time,a,y,valid);


repeat (5)begin
	a=$random;#5;
   end

end 
endmodule


