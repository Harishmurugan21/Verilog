/*module tff (input clk,rst,t,output reg q);
always @(posedge clk or posedge rst)
begin
	if (rst)
		q<=0;
	else 
		if (t)
			q<=~q;
		else
			q<=q;	
end

endmodule*/


`include "../../../day_6_ff/t_ff/t_ff.v"

module sync_up_tff (input clk ,rst,output [3:0]q );

wire [3:0]t;

assign t[0]=1;             //lsb toggles for each clock pulse;
assign t[1]=q[0];
assign t[2]=q[1]&q[0];
assign t[3]=q[2]&q[1]&q[0];


t_ff t1 (clk,rst,t[0],q[0]);	//q[0] toggles for each clk
t_ff t2 (clk,rst,t[1],q[1]);	//q[1] toggles when q[0]is in 1
t_ff t3 (clk,rst,t[2],q[2]);	//q[2] toggles when q[0]and q[1] is in 1
t_ff t4 (clk,rst,t[3],q[3]);	//q[3] toggles when q[0]and q[1] and q[2] is in 1 state


endmodule

	
