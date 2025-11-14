//store the data at aevery posedge of clk by using repeat loop;

module store_data_atposeedge;



reg clk;
reg [7:0] mem [15:0];
reg [7:0]in;

integer i;


initial begin
	clk=0;
	in=8'd5;
	repeat (15)begin
		in=$random;
		#10;
	end
end
	
       
always	#5 clk=~clk;

initial begin

        i=0;
        repeat(16)begin
		@ (posedge clk)
                mem[i]=in;
                $display("mem=%0d | -->%b",i,mem[i]);
                i=i+1;
                //$display("mem=%0d | -->%0b",i,mem[i]);

        end
	$finish;

end

endmodule


 
