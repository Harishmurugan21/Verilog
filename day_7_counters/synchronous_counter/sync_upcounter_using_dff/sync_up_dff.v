module d_ff(input clk, rst,d,output reg q);

always @ (posedge clk or posedge rst)//asynchronous reset
   begin
	if(rst)
		q=0;//if rst=1 then q=0 is executed
	else
	       	q=d;
   end

endmodule



module sync_up_dff  (input clk,rst,output [3:0]q);

wire [3:0] din;


assign din[0]=~q[0];	//lsb q[0] sitches for every clk; 
assign din[1]=q[1]^~q[0];
assign din[2]=q[2]^(~q[1]&~q[0]);
assign din[3]=q[3]^(~q[2]&~q[1]&~q[0]);



d_ff d1(clk,rst,din[0],q[0]);
d_ff d2(clk,rst,din[1],q[1]);
d_ff d3(clk,rst,din[2],q[2]);
d_ff d4(clk,rst,din[3],q[3]);

endmodule







