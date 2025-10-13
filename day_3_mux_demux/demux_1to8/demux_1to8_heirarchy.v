 module demux_1to2 (input a,sel,output reg [1:0]y) ;

always @(*) begin
	y=2'b00;
	if(sel)
	  y[1]=a;
	else
	  y[0]=a;
     end
endmodule 

module demux_1to4 (input a,input [1:0]sel,output reg [3:0]y);

always@(*)begin
	y=4'b0000;
	case(sel)
	2'b00:y[0]=a;
	2'b01:y[1]=a;
	2'b10:y[2]=a;
	2'b11:y[3]=a;
        endcase
   end 
endmodule  



module demux_1to8 (input a,input [2:0]sel,output [7:0]y);
wire [1:0]w;
demux_1to2 inst1(a,sel[2],w);
demux_1to4 inst2(w[0],sel[1:0],y[3:0]);
demux_1to4 inst3(w[1],sel[1:0],y[7:4]);

endmodule

