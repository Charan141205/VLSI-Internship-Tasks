module tb_jk_flipflop;

reg clk;
reg J;
reg K;
wire Q;

jk_flipflop uut (
    .clk(clk),
    .J(J),
    .K(K),
    .Q(Q)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    clk = 0;
    J = 0;
    K = 0;

    // 00 → No change
    #10 J = 0; K = 0;

    // 10 → Set
    #10 J = 1; K = 0;

    // 01 → Reset
    #10 J = 0; K = 1;

    // 11 → Toggle
    #10 J = 1; K = 1;

    // Toggle again
    #10 J = 1; K = 1;

    #10 $finish;

end

endmodule
