module sync_fifo #(parameter fifo_width=8,fifo_depth=32,pntr_width=5)(
	input clk,rst,w_en,r_en,
	input [width_1:0]data_in,

	output  reg [width_1:0]data_out,
	output empty,full);



//reg file file creation
reg [fifo_width-1:0] fifo [fifo_depth-1:0];	//32 bytes;

//fifo address write and read pointer ;
reg [pntr_width-1:0] w_pntr,r_pntr;

//write to fifo
always @ (posedge clk)begin
	if (rst)
		w_pntr<=0;
	else if  (w_en&&(!full))begin
		fifo[w_pntr]<=data_in;
		w_pntr<=w_pntr+1;
	end

end


//read from fifo
always @ (posedge clk)begin
	if (rst)begin
		r_pntr<=0;
		data_out<=0;
	end
	else if (r_en&&(!empty))begin
		data_out<=fifo[r_pntr];
		r_pntr<=r_pntr+1;
	end

end


//empty logic for read pointer 
assign empty=(r_pntr==w_pntr);


//full logic for write pointer
assign full=(r_pntr+1==w_pntr);
end


endmodule

		
