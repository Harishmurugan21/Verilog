module binary_to_bcd (input [3:0]a,output  reg [7:0]y);

integer div,mod;

always @(a) begin
	if (a<10)
		y={4'b0000,a};
	
	else begin 
		 div=a/10;
		 mod=a%10;
	
		y={div[3:0],mod[3:0]};
	end	
end 
endmodule
 
		

