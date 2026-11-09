# Task 2 – Verilog HDL & RTL Design of Combinational Circuits

## 📌 Overview

This task focuses on hardware description using **Verilog HDL** and **Register Transfer Level (RTL)** modeling for fundamental combinational circuits. All modules were designed, simulated, and functionally verified using **Xilinx Vivado 2025.2**.

---

## 🎯 Objectives

- Master syntax and modeling styles in Verilog HDL (continuous assignment using `assign`).
- Implement fundamental logic gates and combinational arithmetic blocks in synthesizable RTL.
- Develop self-checking testbenches with comprehensive input stimuli covering all truth table combinations.
- Perform behavioral simulation in Vivado and verify timing/logic waveforms against theoretical truth tables.

---

## 🛠️ Tools & Environment

| Tool | Purpose |
|------|---------|
| **Xilinx Vivado 2025.2** | RTL synthesis, project management, and behavioral simulation |
| **Vivado Simulator (xsim)** | Waveform analysis and functional verification |
| **Verilog HDL** | Hardware description language for design and testbenches |

---

## 📂 Submodules & Circuits Implemented

| Submodule | Description | Design Source | Testbench | Waveform |
|-----------|-------------|---------------|-----------|----------|
| [Logic Gates](Logic_Gates/) | 6 basic gates (AND, OR, NOT, NAND, NOR, XOR) | [`logicgates.v`](Logic_Gates/logicgates.v) | [`tb_logicgates.v`](Logic_Gates/tb_logicgates.v) | [Waveform](Logic_Gates/logic_gates_waveform.png) |
| [Half Adder](Half_Adder/) | 1-bit Half Adder (`Sum = A ^ B`, `Carry = A & B`) | [`halfadder.v`](Half_Adder/halfadder.v) | [`tb_halfadder.v`](Half_Adder/tb_halfadder.v) | [Waveform](Half_Adder/half_adder_waveform.png) |
| [Full Adder](Full_Adder/) | 1-bit Full Adder with carry input (`Cin`) | [`full_adder.v`](Full_Adder/full_adder.v) | [`tb_full_adder.v`](Full_Adder/tb_full_adder.v) | [Waveform](Full_Adder/full_adder_waveform.png) |

---

## 🔬 Circuit Summaries

### 1. Logic Gates
Models all six primary logic operations using continuous assignment:
```verilog
assign y_and  = a & b;
assign y_or   = a | b;
assign y_not  = ~a;
assign y_nand = ~(a & b);
assign y_nor  = ~(a | b);
assign y_xor  = a ^ b;
```
- **Truth Table Verification:**
  - `00` → AND: 0, OR: 0, NOT(A): 1, NAND: 1, NOR: 1, XOR: 0
  - `01` → AND: 0, OR: 1, NOT(A): 1, NAND: 1, NOR: 0, XOR: 1
  - `10` → AND: 0, OR: 1, NOT(A): 0, NAND: 1, NOR: 0, XOR: 1
  - `11` → AND: 1, OR: 1, NOT(A): 0, NAND: 0, NOR: 0, XOR: 0

---

### 2. Half Adder
Performs binary addition of two 1-bit inputs:
- `Sum = a ^ b`
- `Carry = a & b`

---

### 3. Full Adder
Adds three 1-bit inputs (`a`, `b`, `cin`) to produce `sum` and `cout`:
- `Sum = a ^ b ^ cin`
- `Cout = (a & b) | (b & cin) | (a & cin)`

---

## 📁 Folder Structure

```
Task-2/
├── Full_Adder/
│   ├── full_adder.v
│   ├── tb_full_adder.v
│   ├── full_adder_waveform.png
│   └── README.md
├── Half_Adder/
│   ├── halfadder.v
│   ├── tb_halfadder.v
│   ├── half_adder_waveform.png
│   └── README.md
├── Logic_Gates/
│   ├── logicgates.v
│   ├── tb_logicgates.v
│   ├── logic_gates_waveform.png
│   └── README.md
├── Report/
│   └── VLSI_Task_2_Report.docx
└── README.md
```

---

## 📈 Verification & Results

All three designs were simulated in Xilinx Vivado 2025.2. Each testbench exercised every valid input combination with `#10` time step delays. Simulated waveforms confirmed 100% agreement with expected truth table outputs.
