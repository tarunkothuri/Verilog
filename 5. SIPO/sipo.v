module sipo (clk,rst,si,po);
  parameter WIDTH = 4;
  input wire clk,rst,si;
  output reg [WIDTH-1:0] po;
  reg [WIDTH-1:0] temp;
  
  always@(posedge clk) begin
    if(rst)
      po <= 4'b0000;
    else begin
      temp <= {si,temp[WIDTH-1:1]};
    end
    po <= temp;
  end
endmodule
    
