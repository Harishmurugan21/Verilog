//encoder by using nested   if else;


module encoder_by_nested_if(

    input [3:0] in,      // 4-bit input
    output reg [1:0] out // 2-bit encoded output
);

always @(*) begin
    if (in[3]) begin
        out = 2'b11;      // If input[3] is high, output = 3
    end else begin
        if (in[2]) begin
            out = 2'b10;  // If input[2] is high, output = 2
        end else begin
            if (in[1]) begin
                out = 2'b01;  // If input[1] is high, output = 1
            end else begin
                if (in[0]) begin
                    out = 2'b00; // If input[0] is high, output = 0
                end else begin
                    out = 2'b00; // Default if all inputs are 0
                end
            end
        end
    end
end

endmodule



