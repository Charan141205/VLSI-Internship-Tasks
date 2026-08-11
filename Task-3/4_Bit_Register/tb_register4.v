module tb_register4;

reg clk;
reg [3:0] D;
wire [3:0] Q;

register4 uut (
    .clk(clk),
    .D(D),
    .Q(Q)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    clk = 0;
    D = 4'b0000;

    // Load 1010
    #10 D = 4'b1010;

    // Load 0101
    #10 D = 4'b0101;

    // Load 1111
    #10 D = 4'b1111;

    // Load 0011
    #10 D = 4'b0011;

    #10 $finish;

end

endmodule
