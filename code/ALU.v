module ALU(input [15:0] R1, R2, input [2:0] controlSignal, output reg[15:0] out, output reg zero);
  always @(*) begin
    zero = 0;
    case (controlSignal)
    	0: out = R2;
    	1: out = R1 + R2;
    	2: out = R1 - R2;
    	3: out = R1 & R2;
    	4: out = R1 | R2;
    	5: out = ~R2;
    	6: begin
            out = R1; 
            if (R1 == R2) zero = 1;
        end
    	7: out = R1;
    	default: out = R1;
    endcase
  end
endmodule