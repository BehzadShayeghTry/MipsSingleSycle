module PC(input clk,input [9:0] in,output reg [9:0] out);
	initial out = 0;
	always @(posedge clk) begin
		out <= in;
	end
endmodule


