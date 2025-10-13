module decode_2to4_tb();
reg [1:0]a;
wire [3:0]y;

decoder_2to4 inst(a,y);

initial begin
$monitor("%0t|a=%b|y=%b|",$time,a,y);

	a=2'b00;#5;
	a=2'b01;#5;
	a=2'b10;#5;
	a=2'b11;#5;
	
    end
endmodule
