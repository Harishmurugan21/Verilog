module demux_3to8_tb();
reg [2:0]a;
wire [7:0]y;

decoder_3to8 inst(a,y);

initial begin
	$monitor("time=%0t|a=%b|y=%b",$time,a,y);
	a=3'b000;#5;
	for(integer i=1;i<8;i++)begin
	a=i;#5;
      end
      end
endmodule 
