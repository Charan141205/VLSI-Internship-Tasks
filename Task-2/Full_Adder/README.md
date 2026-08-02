# Full Adder using Verilog HDL

## Objective

Design and simulate a Full Adder using Verilog HDL.

## Logic

- Sum = A XOR B XOR Cin
- Cout = (A & B) | (B & Cin) | (A & Cin)

## Files

| File | Description |
|------|-------------|
| full_adder.v | RTL implementation of Full Adder |
| tb_full_adder.v | Testbench for Full Adder |

## Software Used

- Xilinx Vivado 2025.2

## Simulation

Behavioral simulation was performed using the Vivado Simulator.

## Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|------|------|
|0|0|0|0|0|
|0|0|1|1|0|
|0|1|0|1|0|
|0|1|1|0|1|
|1|0|0|1|0|
|1|0|1|0|1|
|1|1|0|0|1|
|1|1|1|1|1|

## Result

The Full Adder was successfully implemented and verified using simulation.
