// parameterized priority encoder;

module p_encoder #(parameter in_w)(input [in_w-1:0] in,output reg [($clog2(in_w))-1:0] out );
  
  always_comb begin
    //casez(in)
    
    out=0;
    //valid=|in;
  
    for(int i=0;i<=in_w;i++)begin
      if(in[i]==1)begin
        out=i;
        break;//break
      end
    end
      
      
    //endcase
  end
endmodule
      
      

