module sync_updown_4bit (input clk,rst,control,output reg [3:0]q);


always @ (posedge clk )
begin
	if(rst)
		q<=4'b0;
	else 
		if (control)
			q<=q+1;
		else
			q<=q-1;


end

endmodule
