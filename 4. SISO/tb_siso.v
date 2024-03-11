// Code your testbench here
// or browse Examples
module tb_siso_reg;
  parameter WIDTH = 4; 
  reg clk,rst,in;
  wire out;
  
  siso_reg dut (
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out)
  );
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    rst = 1;
    in = 0;
    #10 rst = 0;
    #20 in = 1;
    #25 in = 0;
    #20 in = 1;
    #25 in = 0;
    #20 in = 1;
    #25 in = 0;
    #20 in = 1;
    
    #500 $finish;
  end
  
  initial begin
    $dumpfile("siso_reg_tb.vcd");
    $dumpvars(0, tb_siso_reg);
    #5 $display("Time = %0t, count = %b", $time, out);
  end
endmodule
