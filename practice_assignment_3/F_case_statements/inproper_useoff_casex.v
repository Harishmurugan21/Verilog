//improper use of casex the lead to mismatch the case statement;

module casex_bug(
    input  [3:0] sel,
    output reg y
);

    always @(*) begin
        y = 0;
        casex(sel)
            4'b10x1: y = 1;   // X treated as don't care
            4'b1001: y = 0;
        endcase
    end

endmodule




//improper use of casex causes incorrect matching because casex treats X and Z as don't-care. This can make broader patterns match earlier than specific ones, causing priority bugs, incorrect decoding, and mismatches between simulation and hardware.
