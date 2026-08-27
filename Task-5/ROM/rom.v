`timescale 1ns / 1ps

module rom(
    input [1:0] addr,
    output reg [3:0] data_out
);

always @(*) begin
    case(addr)
        2'b00: data_out = 4'b1010;
        2'b01: data_out = 4'b1100;
        2'b10: data_out = 4'b0110;
        2'b11: data_out = 4'b1111;
        default: data_out = 4'b0000;
    endcase
end

endmodule
