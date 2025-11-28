/*8. Design a finite state machine that has an input x and output y. The output should be 
asserted whenever x = 1 or x = 0 for three consecutive clock pulses. In other words, the 
FSM should detect the sequences 111 or 000. Overlapping sequences are allowed, so a 
sequence of four or five 0s or 1s should also output 1. */



module detect_seq (input clk,rst,x,output reg y);

parameter [2:0] s0=0,s1_1=1,s0_1=2,s2_1=3,s0_2=4;   //s3 --->seq detected   in moore state output depend on present state if fsm in s3 means seg detected;


reg[2:0] state,n_s;


always @ (posedge clk)begin		//async rst;
	if (rst)
	       state<=s0;	//idle ;
        else
	       state<=n_s;
end

always @ (*) begin
	y=0;
	
	case (state)
		s0:n_s=x?s1_1:s0_1;	//idle
		s1_1:n_s=x?s2_1:s0;	
		s2_1:begin
			if (x) begin
				y=1;
				n_s=s2_1;
			end
			else
			n_s=s0; 
		end
		s0_1:n_s=x?s0:s0_2;
	     	//s1_1:n_s=x?s0:s0_2;
		s0_2:begin
			if(~x)begin
				y=1;
				n_s=s0_2;
			end
			else
				n_s=s0;
		end


	endcase
end
endmodule


//testbench

module meally_tb ;
reg clk,rst;
reg x;
wire y;


//dut
detect_seq dut  (clk,rst,x,y);


//clk gen
initial begin
	clk=0;
	forever #5 clk=~clk;
end



initial begin
	$monitor (" clk=%b |rst=%b | x=%b | y =%b   ",clk,rst,x,y);

	rst=1;
	x=0;
	#10;
	rst=0;
	x=1;
	
	#40;

	repeat (25)begin
		x=$random;
		
		#10;
	end
	#5;
	$finish;

end

endmodule



