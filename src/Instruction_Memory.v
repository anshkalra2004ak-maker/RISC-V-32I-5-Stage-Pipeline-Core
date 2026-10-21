
module Instruction_Memory(
    input             rst,
    input      [31:0] A,
    output     [31:0] RD
);

    reg [31:0] mem [0:1023];

    assign RD = (rst == 1'b0) ? 32'h00000000 : mem[A[31:2]];

    initial begin
        $readmemh("memfile.hex", mem);
    end

endmodule

