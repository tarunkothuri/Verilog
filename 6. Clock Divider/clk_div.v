module ClockDivider(
    input clk,rst,
    output reg clk_div2,
    output reg clk_div4,
    output reg clk_div8,
    output reg clk_div16
);

reg [3:0] counter;

always @(posedge clk) begin
  if(rst)
    counter <= 4'b0000;
  else begin
    counter = counter +1;
    clk_div2 <= counter[0];
    clk_div4 <= counter[1];
    clk_div8 <= counter[2];
    clk_div16 <= counter[3];
  end 
end
endmodule
