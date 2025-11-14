//count number of 1ns in 4 bit using while loop;


module count_1ns ;


reg [3:0] in;
reg [3:0] count_out;
integer i;

initial begin
//	count_out = 4'b0;
	in=4'b1001;
	#5 in=4'b0;
	#5 in=4'b1111;
end



always @ (in)begin
	count_out=4'b0;
	i=0;

	while (i<4)begin
	
	if(in[i]==1)
		count_out=count_out+1;
	else 
		count_out=count_out;
	i=i+1;
end
$display ("$time=%0t | in=%b | count_out=%d | ",$time,in,count_out);


end

endmodule



