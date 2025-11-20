module dual_port_ram #(parameter width=8 ,depth=64,adder=6) (
input clk,
//pert a;
input w_en_a,
input [adder-1:0] address_a,
input [width-1:0] data_in_a,
output reg [width-1:0] rd_data_a),
//port b;
input w_en_b,
input [adder-1:0] address_b,
input [width-1:0] data_in_b,
output reg [width-1:0] rd_data_b);

//create memory register 
reg [width-1:0] mem [depth-1:0];
//for arbitration if both ports try to write on same address location;
wire contention =((w_en_a&w_en_b)&&(address_a==address_b));

always @ (posedge clk)begin
	if (w_en_a||contention)begin
		mem[address_a]<=data_in_a;
	end


	//always reads on every cycle 
	//this architecture is write first and readitys new stored data;
	rd_data_a<=mem[address_a];
end


always @ (posedge clk)begin
	//if port a and b try to write on same location it rejects port b and
	//choose port a priority
	if (w_en_b && (!contention))begin
		mem[address_b]<=data_in_b;
	end


	rd_data_b<=mem[address_b];

end

endmodule


//testbench
//

module dual_port_ram_tb ;
parameter addr=6;
parameter width=8;
parameter depth=64;
parameter clk_piriod=10;
//clk
reg clk;
//pert a;
reg w_en_a;
reg [addr-1:0] address_a;
reg [width-1:0] data_in_a;
wire [width-1:0] rd_data_a;
//port b;
reg w_en_b;
reg [addr-1:0] address_b;
reg [width-1:0] data_in_b;
wire [width-1:0] rd_data_b;
			

//dut 
dual_port_ram #(width,depth,addr) inst (
	 clk,
//pert a;
	 w_en_a,
	 address_a,
	 data_in_a,
	 rd_data_a,
//port b;
	 w_en_b,
	 address_b,
	 data_in_b,
	 rd_data_b);


 initial begin
	 clk=0;
	 
	 forever #(clk_period/2) clk=~clk;//clk cycle 10ns;
 end 
	 

//task w_port_a ()

task write_1 (input [addr-1:0]addrs,input[width_1:0]data);
	begin
	
		w_en_a=1;
		address_a=addrs;
		data_in_a=data;
		@(posedge clk)
		w_en_a=0;

		 $display ("$time=%0t | w_a=%b | adress=%b [%d],data_in_a=%b | rd_data_a=%b |",$time,w_en_a,address_a,address_a,data_in_a,rd_data_a);
	 end
 endtask


 //write task in port_b
 
task write_2 (input [addr-1:0]addrs,input[width_1:0]data);
        begin
                
                w_en_b=1;
                address_b=addrs;
                data_in_b=data;
		@(posedge clk)
		w_en_b=0;
                 $display ("$time=%0t | w_b=%b | adress=%b [%d],data_in_b=%b | rd_data_b=%b |",$time,w_en_b,address_b,address_b,data_in_b,rd_data_b);

         end
 endtask


task rd_1 (input [addr_1:0]address);





 initial begin

	//write in_port_a
	 w_en_a=1;
	 address_a=6'd23;
	 data_in_a=8'd12;
	 $display ("$time=%0t | w_a=%b | adress=%b [%d],data_in_a=%b | rd_data_a=%b |",$time,w_en_a,address_a,address_a,data_in_a,rd_data_a);
	 @(posedge clk)
	  w_en_a=1;
         address_a=6'd34;
         data_in_a=8'd16;
         $display ("$time=%0t | w_a=%b | adress=%b [%d],data_in_a=%b | rd_data_a=%b |",$time,w_en_a,address_a,address_a,data_in_a,rd_data_a);
	 @(posedge clk)



	 




