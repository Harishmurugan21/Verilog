module bcd_to_7segment_tb();
reg [3:0]a;
wire [6:0]y;


bcd_to_7segment test (a,y);

initial begin
	$monitor("%0t|a=%b|y=%b|",$time,a,y);
	for (integer i=0;i<10;i++)begin
	   a=i;#5;
	  
        end
   end	
endmodule
