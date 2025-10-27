
module d_ff(input clk, rst,d,output reg q);

always @ (posedge clk or posedge rst)//asynchronous reset
   begin
	if(rst)
		q=0;//if rst=1 then q=0 is executed
	else
	       	q=d;
   end

endmodule



module sipo (input clk,rst,serial_in,output [3:0]q);


d_ff d1 (clk,rst,serial_in,q[3]);
d_ff d2 (clk,rst,q[3],q[2]);
d_ff d3 (clk,rst,q[2],q[1]);
d_ff d4 (clk,rst,q[1],q[0]);

endmodule

