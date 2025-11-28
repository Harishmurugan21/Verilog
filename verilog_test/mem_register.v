/*7. Write a Verilog program with the following specifications.  
1. It should have a memory of size 8x14.  
2. Write a task/function to fill all elements in the memory.  
3. Write a method to add the values stored inside the memory.  
4. Write a method to find the largest number in the memory. 
*/


module mem;


reg  [3:0]address ;
reg [7:0]data_in;


//mem cereation
reg [7:0] mem [13:0];   //14 bytes;


task write_mem(input [3:0]add,input [7:0]data );
	begin
		mem[add]=data;
	end

endtask


task find_largest (output [7:0]out_largest);
	reg [7:0]max=8'd0;
	integer i;
	begin
		for (i=0;i<14;i++)begin
			if (mem[i]>max)
				max=mem[i];
		end
		out_largest=max;

	end


endtask


	
