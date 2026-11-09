# Task 5 – Processor Datapath Design and Verification Using Verilog HDL

## 📌 Overview

This task focuses on the design, verification, and integration of core **Processor Datapath Components** using **Verilog HDL** and **Xilinx Vivado**. The datapath constitutes the execution engine of a CPU, responsible for operand fetching, arithmetic/logic computation, temporary register storage, memory interfacing, and computational result write-back.

---

## 🎯 Objectives

- Design a 4-bit Arithmetic Logic Unit (ALU) supporting arithmetic (ADD, SUB) and bitwise logic operations (AND, OR, XOR).
- Implement a 4×4-bit Multi-Port Register File with synchronous write and asynchronous read capabilities.
- Implement a 4×4-bit Random Access Memory (RAM) with read/write enable control.
- Implement a 4×4-bit Read-Only Memory (ROM) storing pre-programmed data.
- Integrate the Register File and ALU into a unified **Mini Processor Datapath** supporting internal operand routing and write-back.
- Verify each module and the integrated datapath through behavioral simulation in Xilinx Vivado.

---

## 🛠️ Tools & Technologies

| Tool / Technology | Purpose |
|-------------------|---------|
| **Xilinx Vivado** | RTL synthesis, module elaboration, and simulation |
| **Vivado Simulator (xsim)** | Behavioral simulation and waveform analysis |
| **Verilog HDL** | Synthesizable RTL design and self-checking testbenches |

---

## 📂 Submodules & Datapath Blocks

| Submodule | Description | Design Source | Testbench | Waveform |
|-----------|-------------|---------------|-----------|----------|
| [ALU](ALU/) | 4-bit Arithmetic Logic Unit (5 operations) | [`alu.v`](ALU/alu.v) | [`tb_alu.v`](ALU/tb_alu.v) | [Waveform](ALU/alu_waveform.png) |
| [Register File](Register_File/) | 4×4-bit Multi-Port Register File | [`register_file.v`](Register_File/register_file.v) | [`tb_register_file.v`](Register_File/tb_register_file.v) | [Waveform](Register_File/register_file_waveform.png) |
| [RAM](RAM/) | 4×4-bit Synchronous Random Access Memory | [`ram.v`](RAM/ram.v) | [`tb_ram.v`](RAM/tb_ram.v) | [Waveform](RAM/ram_waveform.png) |
| [ROM](ROM/) | 4×4-bit Read-Only Memory lookup | [`rom.v`](ROM/rom.v) | [`tb_rom.v`](ROM/tb_rom.v) | [Waveform](ROM/rom_waveform.png) |
| [Datapath](Datapath/) | Integrated Register File + ALU + Write-Back | [`datapath.v`](Datapath/datapath.v) | [`tb_datapath.v`](Datapath/tb_datapath.v) | [Waveform](Datapath/datapath_waveform.png) |

---

## 🔬 Component Details

### 1. Arithmetic Logic Unit (ALU)
Operates on two 4-bit inputs `A` and `B` controlled by 3-bit selector `sel`:

| `sel` | Operation | Description | Test Case (`A=1010`, `B=0011`) | Output `Y` |
|:---:|:---:|:---|:---:|:---:|
| `3'b000` | **ADD** | Binary Addition (`A + B`) | `1010 + 0011` | `1101` (13) |
| `3'b001` | **SUB** | Binary Subtraction (`A - B`) | `1010 - 0011` | `0111` (7) |
| `3'b010` | **AND** | Bitwise AND (`A & B`) | `1010 & 0011` | `0010` (2) |
| `3'b011` | **OR** | Bitwise OR (`A \| B`) | `1010 \| 0011` | `1011` (11) |
| `3'b100` | **XOR** | Bitwise XOR (`A ^ B`) | `1010 ^ 0011` | `1001` (9) |

---

### 2. Register File
- **Storage:** Four 4-bit registers (`R0`, `R1`, `R2`, `R3`).
- **Addressing:** 2-bit address (`00` → R0, `01` → R1, `10` → R2, `11` → R3).
- **Control:** Synchronous write on `posedge clk` when write enable `we = 1`. Continuous asynchronous read.

---

### 3. Random Access Memory (RAM)
- **Dimensions:** 4 locations × 4-bit data width.
- **Operations:** Synchronous read and write controlled by `we` on the active clock edge.

---

### 4. Read-Only Memory (ROM)
- **Predefined Memory Contents:**
  - `Addr 00` → `4'b1010`
  - `Addr 01` → `4'b1100`
  - `Addr 10` → `4'b0110`
  - `Addr 11` → `4'b1111`

---

### 5. Integrated Mini Datapath
Combines dual-read register ports with the ALU and enables **result write-back**:

```
[Register File (R0..R3)] ──(read_addr1)──> data1 ──┐
                         ──(read_addr2)──> data2 ──┼──> [ ALU ] ──> result
            ▲                                      │
            └──────────(write_addr, we)────────────┴── [Write-Back Bus]
```

- In the testbench, `R0 = 1010` and `R1 = 0011`.
- `alu_sel = 3'b000` performs `ADD` → Result = `1101`.
- Asserting `we = 1` with `write_addr = 2'b10` writes `1101` directly into `R2`.
- Subsequent read back of `R2` verifies persistent storage.

---

## 📁 Folder Structure

```
Task-5/
├── ALU/
│   ├── alu.v
│   ├── tb_alu.v
│   ├── alu_waveform.png
│   └── README.md
├── Datapath/
│   ├── datapath.v
│   ├── tb_datapath.v
│   ├── datapath_waveform.png
│   └── README.md
├── RAM/
│   ├── ram.v
│   ├── tb_ram.v
│   ├── ram_waveform.png
│   └── README.md
├── Register_File/
│   ├── register_file.v
│   ├── tb_register_file.v
│   ├── register_file_waveform.png
│   └── README.md
├── Report/
│   └── VLSI_Task_5_Report.docx
├── ROM/
│   ├── rom.v
│   ├── tb_rom.v
│   ├── rom_waveform.png
│   └── README.md
└── README.md
```

---

## 📈 Verification & Results

Behavioral simulations in Vivado validated all ALU operations, memory read/write timings, and closed-loop datapath write-back functionality.
