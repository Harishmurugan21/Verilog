//multiple initial block in same module;

module multiple_initial;

reg a,b;


initial begin
        $monitor ("$time=%0t |a=%b|b=%b|",$time,a,b);
        a=0;
        b=~a;
        #10 a=b;
        b=~b;

end

initial begin
        b=0;
        #15 b=0;
        a=0;
end


endmodule


