module mux_8to1_behavioral(input [7:0]a,input [2:0]sel,output reg y);

always @ (*) begin
     case(sel)
        3'b000:y=a[0];
        3'b001:y=a[1];
        3'b010:y=a[2];
        3'b011:y=a[3];
        3'b100:y=a[4];
        3'b101:y=a[5];
        3'b101:y=a[6];
        3'b111:y=a[7];
     endcase
end 
endmodule

module mux_2to1 (input a,b,sel,output y);
	assign y=sel?b:a;
endmodule

module mux_16to1_heirarchy(input [15:0]a,input [3:0]sel,output y );

wire y1,y2;
mux_8to1_behavioral inst1 (a[7:0],sel[2:0],y1);
mux_8to1_behavioral inst2 (a[15:8],sel[2:0],y2);


mux_2to1 inst3(y1,y2,sel[3],y);
endmodule
              
