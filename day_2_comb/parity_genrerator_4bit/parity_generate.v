//dataflow modelling
module parity_generator (input [3:0]a,output y);//even  parity generator
	assign y=^a;
endmodule





//behavioural modelling
module parity_generator_behavioural(input [3:0]a,output reg y);

	always @ (a)
	y=^a;
endmodule

