module Race_Condition_Blocking;
    reg clk = 0;
    reg data_out = 1'b0; // Variable subject to the race condition

    
    always #5 clk = ~clk;

    
    always @(posedge clk) begin
        // Blocking assignment
        data_out = 1'b1; 
        $display("Time: %t, Block A executed, data_out = %b", $time, data_out);
    end

   
    always @(posedge clk) begin
        // Blocking assignment
        data_out = 1'b0;
        $display("Time: %t, Block B executed, data_out = %b", $time, data_out);
    end
    
    initial begin
        $monitor("Clock Edge: %t, Final data_out = %b", $time, data_out);
        #40 $finish;
    end
endmodule
