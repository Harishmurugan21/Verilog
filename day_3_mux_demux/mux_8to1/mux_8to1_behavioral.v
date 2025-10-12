module mux_8to1_behavioral(input [7:0]a,input [2:0]sel,output reg y);

always @ (*) begin
     case(sel)
	4'b000:y=a[0];
	4'b001:y=a[1];
	4'b010:y=a[2];
	4'b011:y=a[3];
	4'b100:y=a[4];
	4'b101:y=a[5];
	4'b101:y=a[6];
	4'b111:y=a[7];
     endcase	
end endmodule	
