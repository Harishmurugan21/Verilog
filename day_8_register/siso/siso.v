module siso (input clk,rst,serial_in,output reg [3:0]q);

always @ (posedge clk or posedge rst) begin
	if (rst)
		q<=0;
	else
		q<={serial_in,q[3:1]};
end 

endmodule 


