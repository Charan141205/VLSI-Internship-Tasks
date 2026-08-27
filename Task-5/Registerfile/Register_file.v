`timescale 1ns / 1ps

module register_file(
    input clk,
    input we,
    input [1:0] addr,
    input [3:0] data_in,
    output [3:0] data_out
);

reg [3:0] regfile [3:0];

always @(posedge clk) begin
    if (we)
        regfile[addr] <= data_in;
end

assign data_out = regfile[addr];

endmodule
