module jk_ff (input j,k,clk,rst,output reg q);

always @ (posedge clk or posedge rst) 

begin
	if(rst)
	   q<=0;
	
	else
	case({j,k})
	 
	2'b00:q<=q;        //no change
	2'b01:q<=1'b0;     //reset condition
	2'b10:q<=1'b1;     //set condition
	2'b11:q<=~q;       //toggle previous value
	
	endcase
end


endmodule
