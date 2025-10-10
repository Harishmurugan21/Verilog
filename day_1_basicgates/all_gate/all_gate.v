module all_gate(input a,b ,output y_and,y_or,y_nand,y_nor,y_xor,y_xnor,y_not);
and (y_and,a,b);
or(y_or,a,b);
nand(y_nand,a,b);
nor(y_nor,a,b);
xor(y_xor,a,b);
//dataflow modelling
assign y_xnor=~(a^b);
assign y_not=~a;
endmodule



