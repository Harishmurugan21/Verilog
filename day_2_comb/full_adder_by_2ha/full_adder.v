module half_adder(input a,b, output sum,carry);//gatelevell
xor(sum,a,b);
and(carry,a,b);
endmodule


module full_adder(input a,b,cin, output sum,carry);//by inst subodule
wire sumout1,carry1,carry2;
half_adder ha1(a,b,sumout1,carry1);
half_adder ha2(sumout1,cin,sum,carry2);
or(carry,carry1,carry2);
endmodule


