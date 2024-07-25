// Code your testbench here
// or browse Examples
module tb_mod_counter;
  parameter N=10;
  parameter WIDTH = 4; 
  reg clk,rst;
  wire [WIDTH-1:0] count;
  
  mod_counter dut (
    .clk(clk),
    .rst(rst),
    .count(count)
  );
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    rst = 1;
    #10 rst = 0;
    
    #200 $finish;
  end
  
  initial begin
    $dumpfile("mod_counter_tb.vcd");
    $dumpvars(0, tb_mod_counter);
    #5 $display("Time = %0t, count = %b", $time, count);
  end
endmodule
