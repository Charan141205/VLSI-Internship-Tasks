`timescale 1ns / 1ps

module sequence_detector(
    input clk,
    input reset,
    input in,
    output reg detected
);

reg [2:0] state;

parameter S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b011;

always @(posedge clk or posedge reset) begin

    if (reset) begin
        state <= S0;
        detected <= 1'b0;
    end

    else begin

        case (state)

            // No matching bits
            S0: begin
                detected <= 1'b0;

                if (in)
                    state <= S1;
                else
                    state <= S0;
            end

            // Detected "1"
            S1: begin
                detected <= 1'b0;

                if (in)
                    state <= S1;
                else
                    state <= S2;
            end

            // Detected "10"
            S2: begin
                detected <= 1'b0;

                if (in)
                    state <= S3;
                else
                    state <= S0;
            end

            // Detected "101"
            S3: begin
                if (in) begin
                    detected <= 1'b1;
                    state <= S1;
                end
                else begin
                    detected <= 1'b0;
                    state <= S2;
                end
            end

            default: begin
                state <= S0;
                detected <= 1'b0;
            end

        endcase

    end

end

endmodule
