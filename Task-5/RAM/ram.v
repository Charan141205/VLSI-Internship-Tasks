`timescale 1ns / 1ps

module ram(
    input clk,
    input we,
    input [1:0] addr,
    input [3:0] data_in,
    output reg [3:0] data_out
);

reg [3:0] memory [3:0];

always @(posedge clk) begin
    if (we)
        memory[addr] <= data_in;
    else
        data_out <= memory[addr];
end

endmodule
