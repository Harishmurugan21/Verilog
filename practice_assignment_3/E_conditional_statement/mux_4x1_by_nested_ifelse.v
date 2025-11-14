//4 x 1 mux using nested if-else;

module mux_4x1;

reg [3:0] data;
reg [1:0] sel;
reg out;


initial begin
	$monitor ("$time=%0t | data=%b | sel=%b | out=%b |",$time,data,sel,out);
	data=4'b1010;
	sel=2'b11;
	#5;
	sel=2'b10;
end


always @ (*) begin

	if (sel[1])begin
		if(sel[0])
			out=data[3];
		else
			out=data[2];

	end
	else begin
		if (sel[0])
			out=data[1];
		else
			out=data[0];
	end


end




endmodule


