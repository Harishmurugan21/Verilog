//bus decoder 

module bus_decoder(input [3:0]address,output reg cs_1,cs_2,cs_3,cs_off);


always @ (*)begin
	cs_1=0;cs_2=0,cs_3=0,cs_off=0;

	case (address)

		3'd0:cs_1=1;
		3'd3:cs_2=1;
		3'd5:cs_3=1;
		default:cs_off=1;

	endcase
end


endmodule






