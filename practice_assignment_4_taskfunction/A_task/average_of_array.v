module average;


reg [3:0] arr1,arr2,arr3,arr4;
reg [3:0] average;


task array_average (input [3:0] arr1,arr2,arr3,arr4,output [3:0] result);
        begin
               result =(arr1+arr2+arr3+arr4)/4;
        end
endtask


initial begin

        $monitor ("$time=%0t | arr1=%b | arr2 =%b |arr3=%b | arr4=%b |average=%d|",$time,arr1,arr2,arr3,arr4,average);
        arr1=4'd10;
	arr2=4'd10;
	arr3=4'd10;
	arr4=4'd10;
        array_average (arr1,arr2,arr3,arr4,average);
        #5;
        $finish;
end

endmodule

