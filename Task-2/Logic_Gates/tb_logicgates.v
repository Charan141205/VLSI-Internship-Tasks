`timescale 1ns / 1ps

module tb_logic_gates;

reg A, B;

wire AND_Y;
wire OR_Y;
wire NOT_Y;
wire NAND_Y;
wire NOR_Y;
wire XOR_Y;

// Instantiate all gates

and_gate U1(
    .A(A),
    .B(B),
    .Y(AND_Y)
);

or_gate U2(
    .A(A),
    .B(B),
    .Y(OR_Y)
);

not_gate U3(
    .A(A),
    .Y(NOT_Y)
);

nand_gate U4(
    .A(A),
    .B(B),
    .Y(NAND_Y)
);

nor_gate U5(
    .A(A),
    .B(B),
    .Y(NOR_Y)
);

xor_gate U6(
    .A(A),
    .B(B),
    .Y(XOR_Y)
);

// Apply test vectors

initial begin

    A = 0; B = 0;
    #10;

    A = 0; B = 1;
    #10;

    A = 1; B = 0;
    #10;

    A = 1; B = 1;
    #10;

    $finish;

end

endmodule
