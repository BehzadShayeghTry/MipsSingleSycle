module WindowReg(input clk, winUpdate, en, input [1:0] in,output reg [1:0] out);
  initial out = 0;
  always @(negedge clk) begin
    if(en & winUpdate) out = in;
    else out = out;
  end
endmodule