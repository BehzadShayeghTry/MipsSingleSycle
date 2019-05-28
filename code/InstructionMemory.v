module InstructionMemory(input [9:0] PC, output reg[15:0] outInstruction);
    integer               data_file    ; // file handler
    integer               scan_file    ; // file handler
    `define NULL 0
    
    reg [15:0] instructions [1:1024];

    initial begin
      data_file = $fopen("./instructions.txt", "r");
      if (data_file == `NULL) begin
        $display("data_file handle was NULL");
        $finish;
      end
    end

    integer i;
    initial begin
      for (i=0; i<27; i=i+1) begin
        scan_file = $fscanf(data_file, "%b\n", instructions[i+1]); 
      end
    end

    always @(PC) begin
        outInstruction = instructions[PC];
    end
    
endmodule