`timescale 1ns / 1ps

module tb_datapath;

reg clk;
reg we;

reg [1:0] read_addr1;
reg [1:0] read_addr2;
reg [1:0] write_addr;

reg [2:0] alu_sel;

wire [3:0] result;

// Observe register 2 for write-back verification
wire [3:0] r2_value;

assign r2_value = uut.registers[2];

datapath uut (
    .clk(clk),
    .we(we),
    .read_addr1(read_addr1),
    .read_addr2(read_addr2),
    .write_addr(write_addr),
    .alu_sel(alu_sel),
    .result(result)
);

// Clock: 10 ns period
always #5 clk = ~clk;

initial begin

    // Initial values
    clk = 0;
    we = 0;

    read_addr1 = 2'b00;
    read_addr2 = 2'b01;
    write_addr = 2'b10;

    alu_sel = 3'b000;

    // Initialize registers
    uut.registers[0] = 4'b1010;
    uut.registers[1] = 4'b0011;
    uut.registers[2] = 4'b0000;
    uut.registers[3] = 4'b0000;

    // =====================================
    // 1. ADD
    // R0 + R1 = 1010 + 0011 = 1101
    // =====================================

    alu_sel = 3'b000;
    we = 0;
    #10;

    // =====================================
    // 2. SUB
    // R0 - R1 = 1010 - 0011 = 0111
    // =====================================

    alu_sel = 3'b001;
    we = 0;
    #10;

    // =====================================
    // 3. AND
    // 1010 & 0011 = 0010
    // =====================================

    alu_sel = 3'b010;
    we = 0;
    #10;

    // =====================================
    // 4. OR
    // 1010 | 0011 = 1011
    // =====================================

    alu_sel = 3'b011;
    we = 0;
    #10;

    // =====================================
    // 5. XOR
    // 1010 ^ 0011 = 1001
    // =====================================

    alu_sel = 3'b100;
    we = 0;
    #10;

    // =====================================
    // 6. WRITE-BACK
    // R0 + R1 = 1101
    // Write result into R2
    // =====================================

    read_addr1 = 2'b00;
    read_addr2 = 2'b01;

    alu_sel = 3'b000;

    write_addr = 2'b10;
    we = 1;

    #10;

    // Disable writing
    we = 0;

    // =====================================
    // 7. READ BACK R2
    // =====================================

    read_addr1 = 2'b10;
    read_addr2 = 2'b10;

    alu_sel = 3'b100;   // R2 XOR R2 = 0000

    #10;

    $finish;

end

endmodule
