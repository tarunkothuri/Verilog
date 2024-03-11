module siso_reg (clk,rst,in,out);
  parameter WIDTH = 4;
  input clk,rst,in;
  output out;
  reg [WIDTH-1:0] temp;
  always@(posedge clk) begin
    if(rst)
      temp <= 0;
    else
      temp <= {in, temp[WIDTH-1:1]};
  end
  assign out = temp[0];
endmodule
