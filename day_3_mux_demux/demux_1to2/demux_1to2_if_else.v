module demux_1to2 (input a,sel,output reg [1:0]y);

always @(*) begin
	y=2'b00;
	if(sel)
	    y[1]=a;
	else   
	    y[0]=a;
     end
endmodule
