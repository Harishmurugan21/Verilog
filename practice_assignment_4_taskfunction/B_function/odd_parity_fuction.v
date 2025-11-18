module sum_twovalue;

reg [7:0] in1;
integer out;

function check_odd_parity (input [7:0]in1 );
         
	 begin
		 check_odd_parity=^in1;
	 end
		
endfunction


initial begin

        $monitor ("$time=%0t |in=%b |out=%0b |",$time,in1,out);

        in1=8'd20;
        //in2=8'd15;
        out=check_odd_parity (in1);
end
endmodule



