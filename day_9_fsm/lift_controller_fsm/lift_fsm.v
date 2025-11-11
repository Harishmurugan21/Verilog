/*
module lift_fsm (input clk,rst,input[2:0]req_floor,output [2:0] current_floor,output reg motor_up,motor_down,door_open);



parameter [2:0] g=0,f1=1,f2=2,f3=3,f4=4;

reg [2:0] state,n_s;


always @ (posedge clk)begin
	if (rst)
		state<=g;
	else 
		state<=n_s;


end


always @ (*) begin
	n_s=state;
	motor_up=0;
	motor_down=0;
	door_open=0;
	
	case (state)
		//ground
		g:begin
			if (req_floor>g)begin
				motor_up=1;
				n_s=f1;
			end
			else
				door_open=1;
		end
		

		//first floor
		f1:begin
			if (req_floor>f1)begin
                                motor_up=1;
                                n_s=f2;
                        end
                        
			else if (req_floor<f1)begin
				motor_down=1;
				n_s=g;
			end

			else
                                door_open=1;
                end
			

		//second floor
		f2:begin
                        if (req_floor>f2)begin
                                motor_up=1;
                                n_s=f3;
                        end

                        else if (req_floor<f2)begin
                                motor_down=1;
                                n_s=f1;
                        end

                        else
                                door_open=1;
                end
		

		//third floor
		f3:begin
                        if (req_floor>f3)begin
                                motor_up=1;
                                n_s=f4;
                        end

                        else if (req_floor<f3)begin
                                motor_down=1;
                                n_s=f2;
                        end

                        else
                                door_open=1;
                end
:


		//fourth floor
		f4:begin
                        

                        if (req_floor<f4)begin
                                motor_down=1;
                                n_s=f3;
                        end

                        else
                                door_open=1;
                end

	endcase

end

assign current_floor=state;

endmodule




*/


			

module lift_fsm (input clk,rst,input[2:0]req_floor,output reg [2:0] current_floor,output reg motor_up, motor_down,door_open,door_close);


parameter [2:0]  idle=0,move_up=1,move_down=2,open=3,close=4;




reg [2:0] state,n_s;

reg [2:0] open_timer;


always @ (posedge clk)begin
	if (rst)begin
		state<=idle;
		current_floor<=3'b0;
		open_timer<=3'b0;

	end
	else begin
		state<=n_s;
		case(n_s)
			move_up:current_floor<=current_floor+1;
			move_down:current_floor<=current_floor-1;
			default:current_floor<=current_floor;

		endcase


		if (state==open)
			open_timer<=open_timer+1;
		else open_timer<=3'b0;
	end

end


always @ (*)begin
	n_s=state;
	motor_up=0;
	motor_down=0;
	door_open=0;
	door_close=0;
	case (state)
		idle:begin
			if(req_floor!=current_floor)
				n_s=(req_floor>current_floor)?move_up:move_down;
			else
				n_s=door_open;
		end

		move_up:begin
			motor_up=1;
			if (req_floor==current_floor)
				n_s=open;
			else
				n_s=move_up;
		end

		move_down:begin
			motor_down=1;
			if (req_floor==current_floor)
				n_s=open;
			else
				n_s=move_down;
		end

		open:begin
			door_open=1;
			if(open_timer==3'd4)
				n_s=close;
			else
				n_s=open;
		end

		close:begin
			door_close=1;

			n_s=idle;
		end

	endcase

end

endmodule
			




	
	




