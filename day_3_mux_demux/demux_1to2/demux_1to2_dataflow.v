module demux_1to2_dataflow(input a,sel,output [1:0] y);

	assign y[1]=(sel==1)?a:1'b0;
	assign y[0]=(sel==0)?a:1'b0;
endmodule    
	        	
