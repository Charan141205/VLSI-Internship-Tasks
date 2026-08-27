`timescale 1ns / 1ps

module datapath(
    input clk,
    input we,
    input [1:0] read_addr1,
    input [1:0] read_addr2,
    input [1:0] write_addr,
    input [2:0] alu_sel,
    output [3:0] result
);

reg [3:0] registers [3:0];

wire [3:0] data1;
wire [3:0] data2;
reg [3:0] alu_result;

assign data1 = registers[read_addr1];
assign data2 = registers[read_addr2];

always @(*) begin
    case (alu_sel)
        3'b000: alu_result = data1 + data2;
        3'b001: alu_result = data1 - data2;
        3'b010: alu_result = data1 & data2;
        3'b011: alu_result = data1 | data2;
        3'b100: alu_result = data1 ^ data2;
        default: alu_result = 4'b0000;
    endcase
end

always @(posedge clk) begin
    if (we)
        registers[write_addr] <= alu_result;
end

assign result = alu_result;

endmodule
