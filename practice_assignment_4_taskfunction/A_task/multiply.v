
//Create a task that performs multiplication and outputs the result using $display.
module multiply;

reg [7:0] in1,in2;
integer result;



task mul (input [7:0]in1,in2,output integer out);
        
       // integer temp;
        begin
		out=in1*in2;
                
        end

endtask


initial begin

        //$monitor ("$time=%0t  | in=%b | number of ones=%0b |",$time,in,count);
        in1=8'd5;
	in2=8'd10;
        mul (in1,in2,result);
	$display ("$time=%0t  | in1=%b | in2=%b |result=%0b|",$time,in1,in2,result);
end

endmodule
