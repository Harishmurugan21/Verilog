module sr_ff(input s,r,clk, rst,output reg q);

always @ (posedge clk or posedge rst)//asynchronous reset
   begin
	if(rst)
		q=0;	//if rst=1 then q=0 is executed
	else
	case({s,r})
	2'b00:q<=q;
	2'b01:q<=0;
	2'b10:q<=1;
	2'b11:q<=x;
	endcase

	
   end

endmodule


