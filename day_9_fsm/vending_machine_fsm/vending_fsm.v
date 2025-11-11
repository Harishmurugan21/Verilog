module vending_fsm (input clk,rst,input[4:0]in,output dispence ,change);//product cost=20,input cost only= 5 or 10


parameter [2:0]  idle=0,five=1,ten=2,fifteen=3,twenty=4,twentyfive=5;

reg [2:0] state,n_s;

always @ (posedge clk)begin
	if(rst)
		state<=idle;
	else 
		state<=n_s;
end

//state transition
always @ (*) begin
	case (state)
		idle:begin
			if (in==5'd5)
				n_s=five;
			else if (in==5'd10)
				n_s=ten;
			else
				n_s=idle;
		end

		five:begin
                        if (in==5'd5)
                                n_s=ten;
                        else if (in==5'd10)
                                n_s=fifteen;
                        else
                                n_s=five;
                end

		ten:begin
                        if (in==5'd5)
                                n_s=fifteen;
                        else if (in==5'd10)
                                n_s=twenty;
                        else
                                n_s=ten;
                end


		fifteen:begin
                        if (in==5'd5)
                                n_s=twenty;
                        else if (in==5'd10)
                                n_s=twentyfive;
                        else
                                n_s=fifteen;
                end


		twenty:n_s=idle;

		twentyfive:n_s=idle;

	endcase
end

assign dispence=(state==twenty)||(state==twentyfive);
assign change=(state==twentyfive);

endmodule
                        
