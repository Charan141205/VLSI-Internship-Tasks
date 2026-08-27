`timescale 1ns / 1ps

module tb_rom;

reg [1:0] addr;
wire [3:0] data_out;

rom uut (
    .addr(addr),
    .data_out(data_out)
);

initial begin

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
