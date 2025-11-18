module toggle;

reg clk;

task toggle_task(output reg sig);
begin
    sig = 0;    // start value
    #1;
    forever #10 sig = ~sig;   // toggle every 10 time units
end
endtask


initial begin
    $monitor("time=%0t | clk=%b", $time, clk);

                  // initialize
    fork
        toggle_task(clk); // run toggle task forever
	begin
       	#100 $finish;     // stop simulation
	end
    join
end

endmodule




