module d_latch (input clk,rst,d,output reg q);

always @ (*) begin
	if (rst)
		q<=0;
	else
		if(clk)
			q<=d;
		else
			q<=q;

	end
endmodule




