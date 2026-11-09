`timescale 1ns / 1ps

module tb_sequence_detector;

reg clk;
reg reset;
reg in;

wire detected;

sequence_detector uut (
    .clk(clk),
    .reset(reset),
    .in(in),
    .detected(detected)
);

initial begin
    clk = 0;
end

always #5 clk = ~clk;

initial begin

    reset = 1;
    in = 0;

    #12 reset = 0;

    // Send 1
    @(negedge clk);
    in = 1;

    // Send 0
    @(negedge clk);
    in = 0;

    // Send 1
    @(negedge clk);
    in = 1;

    // Send 1 -> 1011 detected
    @(negedge clk);
    in = 1;

    // Extra 0 to show detection returns LOW
    @(negedge clk);
    in = 0;

    #10 $finish;

end

endmodule
