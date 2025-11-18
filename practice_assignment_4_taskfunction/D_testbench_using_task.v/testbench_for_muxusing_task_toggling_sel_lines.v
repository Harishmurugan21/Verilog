//8x1 mux design module
module mux_8to1_behavioral(input [7:0]a,input [2:0]sel,output reg y);

always @ (*) begin
     case(sel)
	3'b000:y=a[0];
	3'b001:y=a[1];
	3'b010:y=a[2];
	3'b011:y=a[3];
	3'b100:y=a[4];
	3'b101:y=a[5];
	3'b101:y=a[6];
	3'b111:y=a[7];
     endcase	
end
endmodule	




//testbench
//
module mux_tb();

reg [7:0]a;
reg [2:0]sel;
wire out;


//dut design
mux_8to1_behavioral dut (a,sel,out);


initial begin
	$monitor ("$time=%0t | a=%b | sel=%b [%d] | out=%b |",$time,a,sel,sel,out);
	for (integer i=0;i<2;i++)begin
		a=$random;
		toggle_sel;
		#5;
	end
end
task toggle_sel();
	integer i;
	begin
		for (i=0;i<8;i++)begin
			sel=i;
			#1;
		end
	end
endtask

endmodule







