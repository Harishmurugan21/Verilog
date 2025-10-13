module demux_1to4(input a,input[1:0]s,output [3:0]y);

assign  y[0]=(~s[1]&~s[0])?a:1'b0;
assign	y[1]=(~s[1]&s[0])?a:1'b0;
assign  y[2]=(s[1]&~s[0])?a:1'b0;
assign  y[3]=(s[1]&s[0])?a:1'b0;


endmodule

