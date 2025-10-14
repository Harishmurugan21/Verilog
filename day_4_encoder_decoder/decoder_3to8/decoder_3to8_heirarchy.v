module decoder_2to4(input [1:0]a,input en,output [3:0]y);

	assign y[0]=en&~a[1]&~a[0];
	assign y[1]=en&~a[1]&a[0];
	assign y[2]=en&a[1]&~a[0];
	assign y[3]=en&a[1]&a[0];
endmodule


//top module
module decoder_3to8(input [2:0]a,output [7:0] y);

	wire [3:0]y1,y2;
	decoder_2to4 inst1(a[1:0],~a[2],y1);
	decoder_2to4 inst2(a[1:0],a[2],y2);

	assign y={y2,y1};
endmodule
