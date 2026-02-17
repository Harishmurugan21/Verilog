//generate a 100 Hz Clock from a 50 MHz Clock in Verilog.

//`timescale 1ns/1ps

module clk_gen;
reg clk;
reg double_clk;
//for 50 mhz clk
parameter clk_period=20;  


initial begin
	clk=0;
	forever #(clk_period/2) clk=~clk;

end


always @ (posedge clk or negedge clk)begin
	double_clk<=~double_clk;



end




initial begin
	$monitor ("time=%0t | clk=%b | double_clk_freq =%b |",$time,clk,double_clk);

	
	double_clk=0;
	#150;
	$finish;

end
endmodule 



//module freq_mul (input clk,output out);






