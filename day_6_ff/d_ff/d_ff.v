module d_ff(input d,clk, rst,output reg q);

always @ (posedge clk or posedge rst)//asynchronous reset
   begin
	if(rst)
		q=0;//if rst=1 then q=0 is executed
	else
	       	q=d;
   end

endmodule

//when reset changes 0to1  d imediately goes to 0.if rst=0 then during each
//positive transition of clk  q=d
