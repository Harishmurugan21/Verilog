 module demux_1to8_tb ();
reg a;
reg [2:0]sel;
wire [7:0]y;
integer i;

demux_1to8 inst(a,sel,y);
initial begin
   $monitor ("%0t|a=%b|sel=%b|y=%b|",$time,a,sel,y);

   a=1;sel=3'b000;#5;
   for(i=1;i<8;i++)begin
     sel=i;
    #5;
   end
end
endmodule
     
