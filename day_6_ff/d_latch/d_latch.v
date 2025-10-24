 module d_latch (input clk,rst,d,output reg q);


 always @ (clk or rst or d)begin

	 if (rst)
		 q<=0;
	 else
		 if (clk)
		 	q<=d;
    	 	 else
		 	q<=q;	     //if clk=0 then hold previous state;
 end


 endmodule

