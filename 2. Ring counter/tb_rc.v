module tb_ring_counter;
  parameter WIDTH = 4;
  reg clk,rst;
  wire [WIDTH-1:0] count;
  
  ring_counter dut (
    .clk(clk),
    .rst(rst),
    .count(count)
  );
  
  always #5 clk= ~clk;
  
  initial begin
    clk = 0;
    rst = 1;
    #10 rst = 0;
    
    #200 $finish;
  end
  
  initial begin
    $dumpfile("ring_counter_tb.vcd");
    $dumpvars(0, tb_ring_counter);
    #5 $display("Time = %0t, count = %b", $time, count);
  end
endmodule
