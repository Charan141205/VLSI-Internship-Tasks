# VLSI Internship Tasks

This repository contains the assignments, Verilog HDL implementations, simulations, and documentation completed during my **VLSI Design Internship**.

## Tasks

- ✅ **Task 1 – Introduction to VLSI**
- ✅ **Task 2 – Verilog HDL & RTL Design of Combinational Circuits**
- ✅ **Task 3 – Sequential Circuit Design and Simulation**
- ✅ **Task 4 – RTL Design of Finite State Machines (FSM) and Control Units**
- ✅ **Task 5 – Processor Datapath Design and Verification**

## Task Overview

### Task 1 – Introduction to VLSI

Introduced the fundamentals of VLSI design, semiconductor technology, and the overall VLSI design flow.

### Task 2 – Verilog HDL & RTL Design of Combinational Circuits

Designed and simulated basic combinational circuits using Verilog HDL and RTL design methodology.

The task included:

- Logic Gates
- Half Adder
- Full Adder
- Verilog RTL implementation
- Testbench development
- Behavioral simulation and waveform verification

### Task 3 – Sequential Circuit Design and Simulation

Designed and simulated fundamental sequential circuits using Verilog HDL.

The task included:

- D Flip-Flop
- JK Flip-Flop
- 4-bit Register
- 4-bit Binary Counter
- Testbench development
- Behavioral simulation and waveform verification

### Task 4 – RTL Design of Finite State Machines (FSM) and Control Units

Designed and simulated Finite State Machines and control-oriented RTL circuits using Verilog HDL.

The task included:

- Moore FSM
- Mealy FSM
- Traffic Light Controller
- 1011 Sequence Detector
- FSM state transition design
- Verilog RTL implementation
- Testbench development
- Behavioral simulation using Xilinx Vivado
- Waveform analysis and verification

#### Moore FSM

Implemented a three-state FSM with the following state transition sequence:

```text
S0 → S1 → S2 → S0
### Task 5 – Processor Datapath Design and Verification

Designed and verified fundamental processor datapath components using **Verilog HDL** and **Xilinx Vivado**.

The task focused on designing individual processor datapath components, developing testbenches, performing behavioral simulations, and integrating the components into a simple Mini Datapath.

The task included:

- Arithmetic Logic Unit (ALU)
- Register File
- Random Access Memory (RAM)
- Read Only Memory (ROM)
- Mini Datapath
- ALU operation selection
- Register read and write operations
- RAM read and write operations
- ROM address-based data retrieval
- Datapath integration
- ALU result write-back
- Testbench development
- Behavioral simulation using Xilinx Vivado
- Waveform analysis and functional verification

#### Arithmetic Logic Unit (ALU)

Implemented a **4-bit Arithmetic Logic Unit (ALU)** capable of performing arithmetic and logical operations on two 4-bit inputs.

The ALU supports the following operations:

| `sel` | Operation | Function |
|:---:|---|---|
| `000` | Addition | `A + B` |
| `001` | Subtraction | `A - B` |
| `010` | AND | `A & B` |
| `011` | OR | `A \| B` |
| `100` | XOR | `A ^ B` |

For verification, the following input values were used:

```text
A = 1010
B = 0011
