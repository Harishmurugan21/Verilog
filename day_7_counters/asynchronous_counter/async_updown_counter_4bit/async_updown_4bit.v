module t_ff(input clk,rst,output reg q);


always @ (posedge clk or posedge rst)

begin
	if (rst)
		q<=0;
	else
		q<=~q;
end

endmodule


module async_updown_4bit (input clk,rst,control,output  [3:0]q);	//control=1 =>upcount    control=0=>downcount;


wire sel1,sel2,sel3;

t_ff t1 (clk,rst,q[0]);

assign sel1=control?q[0]:~q[0];

t_ff t2 (sel1,rst,q[1]);

assign sel2=control?q[1]:~q[1];

t_ff t3 (sel2,rst,q[2]);

assign sel3=control?q[2]:~q[2];

t_ff t4 (sel3,rst,q[3]);




endmodule
