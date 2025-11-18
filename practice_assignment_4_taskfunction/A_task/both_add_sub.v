module add_sum;

reg  [3:0]a,b;
reg  [4:0]sum,diff;



task add_sub (input [3:0]a,b,output [4:0]add,sub);begin //task

        add=a+b;
        sub=a-b;
        $display ("$time=%0t | a=%b | b=%b |add=%b | sub=%b |",$time,a,b,add,sub);
end
endtask


initial begin
        //$monitor ("$time=%0t | a=%d | b=%b |and=%b | or=%b |",$time,a,b,and_out,or_out);
        
	add_sub (4'd10,4'd5,sum,diff);  //task calling;

#1;
        add_sub (1,1,sum,diff);
end


endmodule

