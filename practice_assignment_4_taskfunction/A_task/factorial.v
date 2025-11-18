module factorial;


reg [3:0]in;
integer fact_out;

task fact (input [3:0]num,output integer result);
	integer i;
	integer product;
begin
	product=1;
	for(i=1;i<=in;i++)begin
		product=product*i;
	end
	result= product;

end
endtask

initial begin
	$monitor ("$time=%0t | in=%b | factoril value=%d | ",$time,in,fact_out);
	in=4'd3;
	fact(in,fact_out);
	#5;
	in=4'd2;
	fact(in,fact_out);
end

endmodule




