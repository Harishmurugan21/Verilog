module mux_16to1_tb();
reg [15:0]a;
reg [3:0]sel;
wire y;


//mux_16to1 dut (a,sel,y);
mux_16to1_heirarchy inst (a,sel,y);

   initial begin
	   $monitor("%0t|a=%b|sel=%b|y=%b|",$time,a,sel,y);
	a=1010110011110100;
	sel=4'b0001;#5;
	sel=4'b0010;#5;
	sel=4'b1000;#5;
	sel=4'b1101;#5;
	sel=4'b1111;#5;
	$finish;
   end
endmodule 
