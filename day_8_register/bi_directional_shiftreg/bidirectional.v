 module bi_directional #(parameter n=4)(input clk,rst,mode,r_serialin,l_serialin,output reg [n-1:0]q,output reg out);



 always @ (posedge clk or posedge rst) begin

	 if (rst)begin
		 q<=0;
	 	 out<=0;
	 end
	else if (mode)begin		//mode=1 :right shift;
		 out<=q[0];
		 q<={r_serialin,q[n-1:1]};
	 end	 
	 else begin			//mode=0 :lefft shift 
		 out<=q[3];
		 q<={q[n-2:0],l_serialin};
		end
 end
 
/* always @ (posedge clk) begin
	 if (mode)
		 out<=q[0];
	 else
		 out<=q[3];
 end*/

 endmodule

