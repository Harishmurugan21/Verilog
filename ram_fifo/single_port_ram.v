module memory #(parameter width=8 ,depth=64,adder=6) (
input clk,w_en,
input [adder-1:0] address,
input [width-1:0] wr_data,
output reg [width-1:0] rd_data); 

//create memory register 
reg [width-1:0] mem [depth-1:0];	//256 bytes of memory created;

always @ (posedge clk)begin
	if (w_en)
		mem [address]<=wr_data;	//data writes in memory;
	else
		rd_data<=mem[address];
	 
	
end
endmodule



//testbench 
module memory_tb();
parameter width=8;
parameter depth=64;
parameter adder=6;
reg clk,w_en;
reg [adder-1:0] address;
reg [width-1:0] wr_data;
wire [width-1:0] rd_data;


//dut 

memory #(.width(width), .depth(depth), .adder(adder)) inst (clk,w_en,address,wr_data,rd_data);


//clk gen
initial  begin
	clk=0;
	forever #5 clk=~clk;
end


// write operation to memory;
task write_mem;
	integer i;
	begin
		w_en=1;
		for (i=0;i<depth;i++)begin
			address=i[5:0];
			wr_data=$random;
			@(posedge clk);
		end

	end
endtask

//read from memory;
task read_mem;
	integer i;
	begin
		w_en=0;
		wr_data=0;
		for(i=0;i<depth;i++)begin
			address=i[5:0];
			@(posedge clk);
		end
	end
endtask



initial begin
	$monitor ("$time=%0t | clk=%b | w_en=%b | address=%b [%d] | wr_data=%b |rd_data=%b |",$time,clk,w_en,address,address,wr_data,rd_data);
	write_mem;

	read_mem;
	
	w_en=0;
	address=6'd10;
	#10;
	w_en=1;
	address=6'd12;
	wr_data=8'd10;
	#10;
	w_en=0;
	address=6'd12;
	#5;

	$finish;
end
endmodule

