module comparator_4bit (input [3:0] a,b,output  equal ,a_greater,b_greater);


assign     equal=(a==b);
assign a_greater=(a>b);
assign b_greater=(a<b);


endmodule



	



