`timescale 1ns / 1ps

module tb_traffic_light;

reg clk;
reg reset;

wire [2:0] light;

traffic_light uut (
    .clk(clk),
    .reset(reset),
    .light(light)
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
