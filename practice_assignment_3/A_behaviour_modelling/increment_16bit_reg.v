 module increment_16bit_reg;

 
 reg [15:0] register;

 initial begin
	 
	 $monitor ("$time=%0t | reg=%d | ",$time,register); 
	 register=16'b0;
	 #200 $finish;
 end
 always 
	 #5 register=register+1;


 endmodule


