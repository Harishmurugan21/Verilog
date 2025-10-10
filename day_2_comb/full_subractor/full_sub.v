module full_sub(input a,b,bin,output diff,bout);

assign diff=a^b^bin;
assign bout=(~a & b) | ((~a ^ b) & bin);
endmodule
