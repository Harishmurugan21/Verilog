module moore_10110_overlapping(input clk,rst,in,output out);

parameter [2:0] s0=0,s1=1,s2=2,s3=3,s4=4,s5=5;   //s3 --->seq detected   in moore state output depend on present state if fsm in s3 means seg detected;

reg[2:0] state,n_s;


always @ (posedge clk)begin		//async rst;
	if (rst)
	       state<=s0;	//idle ;
        else
	       state<=n_s;
end

always @ (*) begin
	case (state)
		s0:n_s=in?s1:s0;	//idle
		s1:n_s=in?s1:s2;	//1 detected
		s2:n_s=in?s3:s0;	//10 detected
		s3:n_s=in?s4:s2;	//101 detected
		s4:n_s=in?s1:s5;	//1011 detected
		s5:n_s=in?s3:s0;
	endcase
end
assign out=(state==s5);
endmodule



//testbench
//
module morre_tb ;
reg clk,rst;
reg in;
wire out;


//dut 
moore_10110_overlapping dut  (clk,rst,in,out);


//clk gen
initial begin
	clk=0;
	forever #5 clk=~clk;
end



initial begin
	$monitor (" clk=%b |rst=%b | in=%b | out=%b |  ",clk,rst,in,out);

	rst=1;
	#10;
	rst=0;
	repeat (50)begin
		in=$random;
		#10;
	end
	#5;
	$finish;

end

endmodule





