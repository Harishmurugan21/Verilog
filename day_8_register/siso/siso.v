module siso (input clk,rst,serial_in,output reg [3:0]q,output serial_out);

always @ (posedge clk or posedge rst) begin
	if (rst)
		q<=0;
	else
		q<={serial_in,q[3:1]};
end 
	assign serial_out=q[0];


endmodule 


