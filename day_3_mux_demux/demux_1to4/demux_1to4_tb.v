module mux_1to4_tb();
reg a;
reg [1:0]sel;
wire [3:0]y;

demux_1to4 test (a,sel,y);


initial begin
$monitor("%0t|a=%b|sel=%b|y=%b|",$time,a,sel,y);
  
        a=1;sel=00;#5;
	sel=01;#5;
	sel=10;#5;
	sel=11;#5;
	$finish;
    end
endmodule		 
