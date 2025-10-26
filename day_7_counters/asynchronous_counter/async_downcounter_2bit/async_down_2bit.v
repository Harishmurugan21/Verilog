module t_ff(input clk,rst,output reg q);


always @ (posedge clk or posedge rst)
begin

	if (rst)
		q<=0;
	else
		q<=~q;
end

endmodule


module async_downcounter_2bit (input clk,rst,output  [1:0]q);

t_ff t1 (clk,rst,q[0]);
t_ff t2 (q[0],rst,q[1]);



endmodule



