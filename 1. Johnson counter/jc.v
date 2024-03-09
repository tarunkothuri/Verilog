module johnson_counter (clk,rst,count);
  parameter WIDTH=4;
  input clk,rst;
  output reg [WIDTH-1:0] count;
  always@(posedge clk)
    begin
      if(rst)
        count <= 4'b0000;
      else
        count <= {~count[0],count[WIDTH-1:1]};
    end
endmodule
