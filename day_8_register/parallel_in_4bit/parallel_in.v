module d_ff(input d,clk, rst,output reg q);

always @ (posedge clk or posedge rst)//asynchronous reset
   begin
	if(rst)
		q=0;//if rst=1 then q=0 is executed
	else
	       	q=d;
   end

endmodule



/*module parallel_in (input clk,rst,input [3:0] a,output  [3:0]q);

genvar i;
generate
	for (i=0;i<4;i=i+1)begin:bit_reg
		d_ff inst (a[i],clk,rst,q[i]);
	end
endgenerate

endmodule*/	


module parallel_in #(parameter n=4 ) (input clk,rst,input [n-1:0] a,output  [n-1:0]q);

genvar i;
generate
        for (i=0;i<n;i=i+1)begin:bit_reg
                d_ff inst (a[i],clk,rst,q[i]);
        end
endgenerate

endmodule
