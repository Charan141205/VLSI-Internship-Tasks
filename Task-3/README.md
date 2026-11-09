# Task 3 – Sequential Circuit Design and Simulation

## 📌 Overview

This task covers the design, modeling, and simulation of fundamental **Sequential Digital Circuits** using **Verilog HDL** and **Xilinx Vivado**. Unlike combinational logic, sequential circuits possess internal memory and state information that update synchronously on clock transitions.

---

## 🎯 Objectives

- Understand sequential logic fundamentals: clocking, edge-triggering, and synchronous state retention.
- Implement storage elements: **D Flip-Flop** and **JK Flip-Flop** (Hold, Reset, Set, Toggle modes).
- Implement multi-bit registers: **4-bit Register** for parallel binary data storage.
- Design synchronous counters: **4-bit Up-Counter** with active-high synchronous reset.
- Develop Verilog testbenches generating clock stimulus (`always #5 clk = ~clk;`) and signal patterns.
- Perform behavioral simulation in Vivado and verify waveforms against excitation tables.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Xilinx Vivado** | Design entry, synthesis, and behavioral simulation |
| **Vivado Simulator (xsim)** | Timing and waveform visualization |
| **Verilog HDL** | Behavioral modeling using clocked `always @(posedge clk)` blocks |

---

## 📂 Submodules & Circuits Implemented

| Submodule | Description | Design Source | Testbench | Waveform |
|-----------|-------------|---------------|-----------|----------|
| [D Flip-Flop](D_Flipflop/) | Positive edge-triggered data storage element | [`d_flipflop.v`](D_Flipflop/d_flipflop.v) | [`tb_d_flipflop.v`](D_Flipflop/tb_d_flipflop.v) | [Waveform](D_Flipflop/d_flipflop_waveform.png) |
| [JK Flip-Flop](JK_Flipflop/) | Universal flip-flop (Hold, Reset, Set, Toggle) | [`jk_flipflop.v`](JK_Flipflop/jk_flipflop.v) | [`tb_jk_flipflop.v`](JK_Flipflop/tb_jk_flipflop.v) | [Waveform](JK_Flipflop/jk_flipflop_waveform.png) |
| [4-Bit Register](4_Bit_Register/) | 4-bit parallel-in parallel-out data storage | [`register4.v`](4_Bit_Register/register4.v) | [`tb_register4.v`](4_Bit_Register/tb_register4.v) | [Waveform](4_Bit_Register/register4_waveform.png) |
| [4-Bit Counter](4_Bit_Counter/) | 4-bit synchronous binary up-counter with reset | [`counter4.v`](4_Bit_Counter/counter4.v) | [`tb_counter4.v`](4_Bit_Counter/tb_counter4.v) | [Waveform](4_Bit_Counter/counter4_waveform.png) |

---

## 🔬 Circuit Summaries

### 1. D Flip-Flop
Captures input `D` on the rising clock edge (`posedge clk`) and stores it at output `Q`.
- **Characteristic Equation:** `Q(next) = D`

### 2. JK Flip-Flop
Overcomes the indeterminate state condition of an SR flip-flop.
- `J=0, K=0` → Hold (`Q <= Q`)
- `J=0, K=1` → Reset (`Q <= 0`)
- `J=1, K=0` → Set (`Q <= 1`)
- `J=1, K=1` → Toggle (`Q <= ~Q`)

### 3. 4-Bit Register
Stores a 4-bit binary word `D[3:0]` into register `Q[3:0]` synchronously on each clock tick.

### 4. 4-Bit Binary Counter
Counts incrementally from `4'b0000` (0) to `4'b1111` (15) and rolls over back to `4'b0000`. Reset forces the count to zero.

---

## 📁 Folder Structure

```
Task-3/
├── 4_Bit_Counter/
│   ├── counter4.v
│   ├── tb_counter4.v
│   ├── counter4_waveform.png
│   └── README.md
├── 4_Bit_Register/
│   ├── register4.v
│   ├── tb_register4.v
│   ├── register4_waveform.png
│   └── README.md
├── D_Flipflop/
│   ├── d_flipflop.v
│   ├── tb_d_flipflop.v
│   ├── d_flipflop_waveform.png
│   └── README.md
├── JK_Flipflop/
│   ├── jk_flipflop.v
│   ├── tb_jk_flipflop.v
│   ├── jk_flipflop_waveform.png
│   └── README.md
├── Report/
│   └── VLSI_Task_3_Report.docx
└── README.md
```

---

## 📈 Verification & Results

All four sequential modules were simulated using Vivado Behavioral Simulator. Testbenches generated clock oscillations with a 10 ns period (`#5 clk = ~clk`). Output transitions verified positive edge synchronicity, accurate data latching, and correct toggle and counter sequences.
