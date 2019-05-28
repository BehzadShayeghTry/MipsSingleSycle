module RegisterFilePure(input clk, input [2:0] R1point, R2point, writeRpoint, input [15:0] writeData, input writeEnable, output reg[15:0] R1, R2);
    reg [15:0] Registers [0:7];

    initial begin
    	Registers[0] = 0;
    	Registers[1] = 0;
    	Registers[2] = 0;
    	Registers[3] = 0;
    	Registers[4] = 0;
    	Registers[5] = 0;
    	Registers[6] = 0;
    	Registers[7] = 0;
    end

    always @(*) begin
		Registers[0] = 0;
		R1 = Registers[R1point];
		R2 = Registers[R2point];
    end

    always @(negedge clk)
		if (writeEnable) Registers[writeRpoint] = writeData;

endmodule