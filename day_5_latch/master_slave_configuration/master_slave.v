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



module master_slave (input clk,rst,d,output  q);


wire latch1_out;

d_latch d1 (clk,rst,d,latch1_out);			//clk=1 :master latch activated  reflects d
d_latch d2 (~clk,rst,latch1_out,q);			//clk=0 :slave  latch activated q reflects master latch output 
							
endmodule

//q updates value when only in negative transition 1=>0;
