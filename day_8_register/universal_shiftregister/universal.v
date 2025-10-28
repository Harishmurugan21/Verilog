module universal 
(input clk,rst,r_serialin,l_serialin,
input [1:0]sel, 
input [3:0]parallel_in,
output reg [3:0]q,output reg out);


always @ (posedge clk or posedge rst)
begin
	if (rst)begin
		q<=0;
		out<=0;
	end
	else begin
		case(sel)
			2'b00:q<=q;			//00 -->no change
			2'b01:begin			//01 -->right shift	
				out<=q[0];
				q<={r_serialin,q[3:1]};
			end
			2'b10:begin			//10 -->lest shift
				out<=q[3];
				q={q[2:0],l_serialin};
			end
			2'b11:begin
				
				q<=parallel_in;#1;		//11 -->parallel load/in;
				out=q[0];
			end	
		endcase
end		

end				
endmodule				
	
		



		
		
