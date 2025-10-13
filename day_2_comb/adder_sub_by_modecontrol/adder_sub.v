module full_adder(input a,b,cin,output sum,carry);

    assign sum  = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (a & cin);
endmodule

module adder_sub (input [3:0]a,b,input control,output [3:0]out ,output cout);





wire [3:0]b_inverted=b^{4{control}};


wire [2:0] rippleout;

full_adder inst1(a[0],b_inverted[0],control,out[0],rippleout[0]);
full_adder inst2(a[1],b_inverted[1],rippleout[0],out[1],rippleout[1]);
full_adder inst3(a[2],b_inverted[2],rippleout[1],out[2],rippleout[2]);
full_adder inst4(a[3],b_inverted[3],rippleout[2],out[3],cout);


endmodule


