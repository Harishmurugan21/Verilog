module create_16byte_mem_byrepeat;


reg [7:0] mem [15:0];
integer i;

initial begin

	i=0;
	repeat(16)begin
		mem[i]=$random;
		$display("mem=%0d | -->%b",i,mem[i]);
		i=i+1;
		//$display("mem=%0d | -->%0b",i,mem[i]);
		
	end

end

endmodule




