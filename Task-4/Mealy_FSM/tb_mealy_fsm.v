`timescale 1ns / 1ps

module tb_mealy_fsm;

reg clk;
reg reset;
reg in;

wire out;

mealy_fsm uut (
    .clk(clk),
    .reset(reset),
    .in(in),
    .out(out)
);

initial begin
    clk = 0;
end

always #5 clk = ~clk;

initial begin

    reset = 1;
    in = 0;

    #10;

    reset = 0;

    // S0, input = 1 → S1
    #10 in = 1;

    // S1, input = 1 → output = 1
    #10 in = 1;

    // Return to S0
    #10 in = 0;

    // Test input = 0 in S0
    #10 in = 0;

    #10 $finish;

end

endmodule
