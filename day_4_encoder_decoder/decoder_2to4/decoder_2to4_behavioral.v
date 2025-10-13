module decoder_2to4(input [1:0]a,output reg [3:0]y);

always @(*)begin
      y=4'b0000;
      case(a)
	2'b00:y[0]=1;
 	2'b01:y[1]=1;
        2'b10:y[2]=1;
        2'b11:y[3]=1;
      endcase
end 
endmodule


