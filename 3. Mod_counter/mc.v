module mod_counter(clk,rst,count);
  parameter N = 10;
  parameter WIDTH = 4;
  input clk,rst;
  output reg [WIDTH-1:0] count;
  always@(posedge clk) begin
    if(rst)
      count <= 4'b0001;
    else begin
      if(count == N-1)
        count <= 0;
      else
        count = count+1;
    end
  end
endmodule
