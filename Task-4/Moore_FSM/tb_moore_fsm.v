`timescale 1ns / 1ps

module tb_moore_fsm;

reg clk;
reg reset;

wire [1:0] state;

moore_fsm uut (
    .clk(clk),
    .reset(reset),
    .state(state)
);

initial begin
    clk = 0;
end

always #5 clk = ~clk;

initial begin

    reset = 1;

    #10;

    reset = 0;

    #50;

    $finish;

end

endmodule
