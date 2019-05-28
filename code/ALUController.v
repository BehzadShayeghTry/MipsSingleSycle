module ALUController(input [7:0] func, input [3:0] opcode, output reg[2:0] ALUSignal);
  always @(*) begin
    if (opcode == 4'b 1000) begin
        case (func)
            8'b 00000001: ALUSignal = 0;
            8'b 00000010: ALUSignal = 1;
            8'b 00000100: ALUSignal = 2;
            8'b 00001000: ALUSignal = 3;
            8'b 00010000: ALUSignal = 4;
            8'b 00100000: ALUSignal = 5;
            8'b 01000000: ALUSignal = 7;
            default: ALUSignal = 7;
        endcase
    end
    else begin
        case (opcode)
            4'b 1100: ALUSignal = 1;
            4'b 1101: ALUSignal = 2;
            4'b 1110: ALUSignal = 3;
            4'b 1111: ALUSignal = 4;
            4'b 0100: ALUSignal = 6;
            default: ALUSignal = 7;
        endcase
    end
  end
endmodule