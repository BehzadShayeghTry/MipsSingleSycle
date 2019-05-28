module CA_CA2(input clk);

	wire initPC, initFR, initWR, selImm, selMemOut, beq, jump, writeFR, writeDM, readDM;
    wire [3:0] opcode;

	DataPath dp(clk, winUpdate,
            selImm, selMemOut, beq, jump,
            writeFR, writeDM, readDM, opcode);

    Controller cl(opcode, clk,
            selImm, selMemOut, beq, jump, winUpdate,
            writeFR, writeDM, readDM);

endmodule