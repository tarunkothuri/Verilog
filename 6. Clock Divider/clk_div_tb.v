// Code your testbench here
// or browse Examples
module tb_ClockDivider;

  // Parameters
  //parameter CLK_PERIOD = 10; // Clock period in time units

  // Inputs
  reg clk,rst;

  // Outputs
  wire clk_div2;
  wire clk_div4;
  wire clk_div8;
  wire clk_div16;

  // Instantiate the ClockDivider module
  ClockDivider dut (
    .clk(clk),
    .rst(rst),
    .clk_div2(clk_div2),
    .clk_div4(clk_div4),
    .clk_div8(clk_div8),
    .clk_div16(clk_div16)
  );

  // Clock generation
  always #5 clk <= ~clk;

  // Dump variables for waveform tracing
  initial begin
    #10 clk = 0;
    #10 rst = 1;
    #10 rst = 0;
    
    // Simulate for some time
    #200 $finish;
  end
  
  initial begin
    $dumpfile("tb_ClockDivider.vcd");
    $dumpvars(0, tb_ClockDivider);
  end

endmodule
