module half_sub(input a,b, output diff,borrow);
assign diff=a^b;
assign borrow=~a&b;
endmodule



module full_sub(input a,b,bin, output diff,bout);

wire diff1,borrow1,borrow2;
half_sub hs1(a,b,diff1,borrow1);
half_sub hs2(diff1,bin,diff,borrow2);


or(bout,borrow1,borrow2);
endmodule

