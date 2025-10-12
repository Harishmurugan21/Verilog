module mux_4to1(input [3:0]a,input[1:0]sel,output y);
assign y=(sel==2'b00)?a[0]:
	(sel==2'b01)?a[1]:
	 (sel==2'b10)?a[2]:
		     a[3];
endmodule

module mux_2to1(input i0,i1,sel,output y);
	assign y=sel?i1:i0;
endmodule



module mux_8to1_by_4to1(input [7:0]a,input[2:0]sel,output y);

wire y1,y2;

mux_4to1 inst1 (a[3:0],sel[1:0],y1);
mux_4to1 inst2 (a[7:4],sel[1:0],y2);//1st level  modules hirarchy


mux_2to1 inst3(y1,y2,sel[2],y);//2nd level module 
endmodule
  	
