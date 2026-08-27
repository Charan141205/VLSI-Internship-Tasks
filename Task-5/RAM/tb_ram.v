`timescale 1ns / 1ps

module tb_ram;

reg clk;
reg we;
reg [1:0] addr;
reg [3:0] data_in;
wire [3:0] data_out;

ram uut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    clk = 0;
    we = 0;
    addr = 0;
    data_in = 0;

    // -------------------------
    // WRITE OPERATIONS
    // -------------------------

    // Address 00 <- 1010
    #10;
    we = 1;
    addr = 2'b00;
    data_in = 4'b1010;

    #10;

    // Address 01 <- 1100
    addr = 2'b01;
    data_in = 4'b1100;

    #10;

    // Address 10 <- 0110
    addr = 2'b10;
    data_in = 4'b0110;

    #10;

    // Address 11 <- 1111
    addr = 2'b11;
    data_in = 4'b1111;

    #10;

    // -------------------------
    // READ OPERATIONS
    // -------------------------

    we = 0;

    // Read address 00
    addr = 2'b00;
    #10;

    // Read address 01
    addr = 2'b01;
    #10;

    // Read address 10
    addr = 2'b10;
    #10;

    // Read address 11
    addr = 2'b11;
    #10;

    $finish;

end

endmodule
