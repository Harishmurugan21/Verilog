module jk_latch (input clk,rst,j,k,output reg q);

always @ (*)
begin
	if (rst)
		q<=0;
	else begin
		if (clk)  begin

			case({j,k})
			2'b00:q<=q;     //no change
			2'b01:q<=1'b0;  //resert condition
			2'b10:q<=1'b1;  //set condition
			2'b11:q<=~q;    //toggle
			endcase
		end
		
		else
			q<=q;


	end
end 
endmodule


			
			
	


