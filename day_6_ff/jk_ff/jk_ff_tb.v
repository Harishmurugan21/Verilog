module jk_ff_tb();

reg j,k,clk,rst;
wire q;
integer i;


//instantiation
jk_ff dut (j,k,clk,rst,q);


//clock generation
initial begin
	clk=0;
	forever  #5 clk=~clk;
end

//stimulus generation
initial begin
	$monitor("time=%0t| clk=%b| rst=%b| j=%b| k=%b| q=%b",$time,clk,rst,j,k,q);
	$dumpfile("jk_ff.vcd");
	$dumpvars();


	/*j=1;k=1;rst=1;#10
	j=0;k=1;rst=0;#10
	j=0;k=0;#10
	j=1;k=0;#12
	
	rst=1;j=1;k=0;#5
	rst=0;#5
	repeat (15)begin
		j=$random;
		k=$random;
		#3;
	end	
	#2;
	$finish;*/

       for(i=0;i<15;i++)begin
	       if (i<3)begin
		       j=$random;
		       k=$random;
		       rst=1;#5;
		end


		else begin
		       j=$random;
                       k=$random;
                       rst=0;#5;
	       end	

       end
		#2;
		$finish;
end 

endmodule










