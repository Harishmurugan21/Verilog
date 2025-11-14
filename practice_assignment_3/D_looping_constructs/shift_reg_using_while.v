//use whiile loop to shift reg untill msb is1;


module shift_reg;


reg [7:0] register;


initial 
	register=8'd1;


always @ (register) begin

	while(!register[7]==1)begin
		register<={register[6:0],register[7]};
		#1;
		$display ("$time=%0t | register=%b | ",$time,register);

	end

end

endmodule

