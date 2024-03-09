module tb_johnson_counter;
  parameter WIDTH = 4;

  reg clk, rst;
  wire [WIDTH-1:0] count;

  // Instantiate the Johnson counter module
  johnson_counter uut (
    .clk(clk),
    .rst(rst),
    .count(count)
  );

  // Clock generation
  always #5 clk = ~clk;

  // Initial block
  initial begin
    clk = 0;
    rst = 1; // Apply reset initially
    #10 rst = 0; // Release reset after 10 time units

    // Simulation time
    #200 $finish;
  end

  // Dumping signals to a VCD file
  initial begin
    $dumpfile("johnson_counter_tb.vcd");
    $dumpvars(0, tb_johnson_counter);
    #5 $display("Time = %0t, count = %b", $time, count);
  end

endmodule
