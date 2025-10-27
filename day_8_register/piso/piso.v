module piso (input clk,rst,load_shift,input [3:0]in,output out);


reg [3:0]q;

always @ (posedge clk or posedge rst) begin
	if (rst)
		q<=4'b0;
	else if(load_shift)
		q<=in;
	else
		q<={1'b0,q[3:1]};
	
	
end
assign out=q[0];


endmodule





