module sun_bitbit_number;

reg [7:0] a,b;
reg [8:0] out;



task adder (input [7:0]a,b,output [8:0] sum);begin //task

        sum=a-b;
        //$display ("$time=%0t | out=%d |",$time,out);
end
endtask


initial begin
        $monitor ("$time=%0t | out=%d |",$time,out);
        adder (8'd6,8'd1,out);    //task calling;
	

        #5;
        adder (8'd17,8'd98,out);
end


endmodule

