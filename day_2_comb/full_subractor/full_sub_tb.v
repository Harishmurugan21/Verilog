module full_sub_tb();
reg a,b, bin;
wire diff,borrow;



//inst
full_sub  inst(a,b,bin,diff,borrow);


initial begin
        $monitor("Time=%0t | a=%b b=%b bin=%b => diff=%b bout=%b", $time, a, b, bin, diff, borrow);

        
        a=0; b=0; bin=0; #10;
        a=0; b=0; bin=1; #10;
        a=0; b=1; bin=0; #10;
        a=0; b=1; bin=1; #10;
        a=1; b=0; bin=0; #10;
        a=1; b=0; bin=1; #10;
        a=1; b=1; bin=0; #10;
        a=1; b=1; bin=1; #10;

        $finish;
	end
endmodule


