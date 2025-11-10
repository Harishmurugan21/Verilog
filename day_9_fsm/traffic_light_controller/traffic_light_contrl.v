module traffic_light_controller(input clk,rst,output g_light,o_light,r_light);


parameter [1:0]  green =0,orange=1,red=2;

parameter g_time=10'd20,
o_time=10'd5,
r_time=10'd10;


reg[1:0] state,n_s;

reg [10:0] counter ;
wire zero_flag;



always @ (posedge clk)begin
	if (rst) begin
		state<=green;
		counter<=g_time;
	end
	else begin
		state<=n_s;
	 	if (counter!=0)
			counter<=counter-1;

		else begin
			case(state)
				green:counter=o_time;
				orange:counter=r_time;
				red:counter=g_time;

			endcase
		end
	end

			

end


always @ (*) begin

	n_s=state;
	case(state)

		green:begin
			if(counter==0)
				n_s=orange;
		end


		orange:begin
                        if (counter==0)
				n_s=red;
			else
				n_s=orange;
		end

		red:begin
                        if (counter==0)
				n_s=green;
			else
				n_s=red;
		end

	endcase

end


assign g_light =(state== green);
assign o_light =(state==orange);
assign r_light =(state==red);


endmodule



