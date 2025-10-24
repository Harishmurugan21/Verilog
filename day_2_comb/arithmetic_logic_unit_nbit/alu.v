module full_adder(input a,b,cin,output sum,carry);

    assign sum  = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (a & cin);
endmodule

module adder_sub #(parameter n=4) (input [n-1:0]a,b,input control,output [n-1:0]out ,output cout);

wire [n-1:0]b_inverted=b^{n{control}};


wire [n-2:0] rippleout;

full_adder inst1(a[0],b_inverted[0],control,out[0],rippleout[0]);
full_adder inst2(a[1],b_inverted[1],rippleout[0],out[1],rippleout[1]);
full_adder inst3(a[2],b_inverted[2],rippleout[1],out[2],rippleout[2]);
full_adder inst4(a[3],b_inverted[3],rippleout[2],out[3],cout);


endmodule



module alu_nbit #(parameter n=4)(     //alu_nbit #(.n(6))();
input [n-1:0]a,b,			
input [n-2:0]sel,    //sel line for multiple logical operation for 8 operation;
input control,
output reg [n-1:0]y,
output cout);


wire [n-1:0]out_addsub;

//instantiation adder_sub
adder_sub #(.n(n)) inst (a,b,control,out_addsub,cout);

always @ (*) begin
	case(sel)
		3'b000:y=out_addsub;	//control=0 :addition y=sum
		3'b001:y=out_addsub;	//contol=1and sel =01:subtraction y=diff
		3'b010:y=a&b;
		3'b011:y=a|b;
		3'b100:y=~(a&b);
		3'b101:y=~(a|b);
		3'b110:y=a^b;
		3'b111:y=~(a^b);

	endcase
end

endmodule











