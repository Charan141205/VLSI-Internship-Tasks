module tb_counter4;

reg clk;
reg reset;
wire [3:0] count;

counter4 uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    // Initial conditions
    clk = 0;
    reset = 1;

    // Keep reset active for one clock cycle
    #10 reset = 0;

    // Counter now starts counting
    #80;

    $finish;

end

endmodule
