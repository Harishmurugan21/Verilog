module encoder_4to2 (input [3:0]a,output  [1:0]y);
 
 assign y[0]=a[1]|a[3];
 assign y[1]=a[2]|a[3];
 
endmodule


