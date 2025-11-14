module toggles_1bit;

reg in;

initial begin 
	in=0;
	$display ("time=%0t | in_toggle=%b|",$time,in);
end
always begin
	#4 in=~in;
	$display ("time=%0t | in_toggle=%b|",$time,in);
end
initial
#101 $finish;

endmodule



