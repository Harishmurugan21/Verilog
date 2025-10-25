module d_latch_tb();

reg clk,rst,d;
wire q;
integer i;


//instantiation

d_latch inst (clk,rst,d,q);


initial 
begin
      	clk=0;
	forever #13 clk=~clk;
end

initial begin

	$monitor("time=%0t| clk=%b| rst=%b| d=%b| q=%b",$time,clk,rst,d,q);
	$dumpfile("d_latch.vcd");
	$dumpvars;


	rst=1;d=0;#2
	rst=0;d=1; #5
	/*d=0;#5
	d=1;#6*/
	
       for(i=0;i<30;i++)begin
	       d=$random;#2;
       end

	#2;

	$finish;

end
endmodule

