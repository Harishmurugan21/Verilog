module decoder_3to8(input [2:0]a ,output reg [7:0]y);

always@(*) begin 
	y=8'b00000000;	
   	
	for(integer i=0;i<8;i++)begin
	if(a==i)
		y[i]=1;
     end
     end
endmodule

	
