module sync_updown_4bit #(parameter n=4)
(input clk,rst,control,output reg [n-1:0]q);


always @ (posedge clk or posedge rst )
begin

	if(rst)
		q<=0;
	else 
		if (control)
			q<=q+1;
		else
			q<=q-1;


end

endmodule
