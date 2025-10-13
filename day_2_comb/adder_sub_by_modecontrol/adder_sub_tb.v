module ripple_adder_tb();
reg [3:0]a,b;
reg control;
wire [3:0]out;
wire cout;




adder_sub inst(a,b,control,out,cout);



initial begin
	$monitor("%0t|a=%b|b=%b|control=%b|out=%b|cout=%b",$time,a,b,control,out,cout);
		

	a=4'b0000;b=4'b0100;control=0;#5;
	a=4'b0001;b=4'b0001;control=0;#5;
	a=4'b1111;b=4'b0101;control=1;#5;
	a=4'b1111;b=4'b1111;control=1;#5;
	$finish;
end
endmodule
                              
