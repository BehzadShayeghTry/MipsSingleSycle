module RegisterFile(input clk, input [15:0] writeData, input writeEnable, output [15:0] RiOutput, RjOutput,
						input [15:0] instructionOutput, input winUpdate);
	wire [1:0] wrOutput;
	wire [2:0] wrShifted;
	wire [2:0] Ri, Rj;

	WindowReg wr(winUpdate, instructionOutput[7], instructionOutput[1:0], wrOutput);
    assign wrShifted = wrOutput << 1;
    assign Ri = instructionOutput[11:10] + wrShifted;
    assign Rj = instructionOutput[9:8] + wrShifted;
    RegisterFilePure rfp(clk, Ri, Rj, Ri, writeData, writeEnable, RiOutput, RjOutput);
    
endmodule