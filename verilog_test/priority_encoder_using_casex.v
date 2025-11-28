//6. Design 8:3 priority encoder using casez statements.



module encoder_8to3_priority(input [7:0]a,output reg [2:0]y,output reg valid);

always @(*) begin
     valid=|a;
	casex(a)
	//a[7] data has highest priority in this case  and goes on;
	8'b1???????:y=3'b111;
	8'b01??????:y=3'b110;
	8'b001?????:y=3'b101;
	8'b0001????:y=3'b100;
	8'b00001???:y=3'b011;
	8'b000001??:y=3'b010;
	8'b0000001?:y=3'b001;
	8'b00000001:y=3'b000;
	default    :y=3'bxxx;
	
	endcase
end 
endmodule  



//testbench;
//
module encoder_tb;

reg [7:0]a;
wire [2:0]y;
wire valid_sig;


//dut 

encoder_8to3_priority  dut (a,y,valid_sig);

//stimulus generation
initial begin
	$monitor ("a=%b [%d]| out=%b[%d] | valid_sig=%b |",a,a,y,y,valid_sig);
	a=8'd0;
	#5;
	a=8'd100;
	#5;
	a=8'd1;
	#5;
	a=8'd234;
	#5;
	$finish;

end
endmodule


