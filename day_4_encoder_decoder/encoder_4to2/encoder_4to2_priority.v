
//priority encoder
module encoder_4to2 (input [3:0]a,output reg [1:0]y);

always@(*)begin
	if (a[3]) y=11;
	else if (a[2]) y=10;
	else if (a[1]) y=2'b01;
	else if (a[0])y=2'b00;
	else y=2'bzz;
end
endmodule

