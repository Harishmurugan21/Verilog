// Code your testbench here
module tb;
  parameter w=9;
  reg [w-1:0] in;
  wire [($clog2(w))-1:0] out;
  
  //inst
  p_encoder #(w) dut (in,out);
  
  initial begin
    $monitor("in=%b(%0d)|out=%b(%0d)",in,in,out,out);
    
    in=100;
    #10;
    in=250;
    #10;
    $finish;
  end
endmodule
    

    
