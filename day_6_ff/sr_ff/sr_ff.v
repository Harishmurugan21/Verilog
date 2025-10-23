module sr_ff(input s,r,clk, rst,output reg q);

always @ (posedge clk or posedge rst)//asynchronous reset
   begin
	if(rst)
		q=0;        //if rst=1 then q=0 is executed
	else
	        if(s==0&&r==0)
			q<=q;           //no change
		else if(s==0&&r==1)
			q<=0;           //reset 
		else if(s==1&&r==0)
			q<=1;           //set
		else if(s==1&&r==1)
			q<=1'bx;        //if s=1 and r=1 then invalid condition  
		
   end

endmodule

