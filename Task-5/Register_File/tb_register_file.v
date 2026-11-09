`timescale 1ns / 1ps

module tb_register_file;

reg clk;
reg we;
reg [1:0] addr;
reg [3:0] data_in;
wire [3:0] data_out;

register_file uut (
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

    // Write 1010 to address 00
    #10;
    we = 1;
    addr = 2'b00;
    data_in = 4'b1010;

    #10;

    // Write 1100 to address 01
    addr = 2'b01;
    data_in = 4'b1100;

    #10;

    // Write 0110 to address 10
    addr = 2'b10;
    data_in = 4'b0110;

    #10;

    // Write 1111 to address 11
    addr = 2'b11;
    data_in = 4'b1111;

    #10;

    // Stop writing
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
