module tb_sipo;
  parameter WIDTH = 4; 
  reg clk,rst,si;
  wire [WIDTH-1:0] po;
  
  sipo dut (
    .clk(clk),
    .rst(rst),
    .si(si),
    .po(po)
  );
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    rst = 1;
    si = 0;
    #10 rst = 0;
    #15 si = 1;
    #20 si = 0;
    #15 si = 1;
    #20 si = 0;
    #20 si = 1;
    #5 si = 0;
    #300 $finish;
  end
  
  initial begin
    $dumpfile("sipo.vcd");
    $dumpvars(0, tb_sipo);
  end
endmodule
    
