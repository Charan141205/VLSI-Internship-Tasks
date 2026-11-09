# VLSI Design Internship – Complete Tasks Portfolio

![Verilog](https://img.shields.io/badge/HDL-Verilog-blue?style=for-the-badge&logo=code)
![EDA Tool](https://img.shields.io/badge/EDA-Xilinx_Vivado_2025.2-red?style=for-the-badge&logo=xilinx)
![Simulation](https://img.shields.io/badge/Simulation-Vivado_xsim-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

This repository contains the complete portfolio of digital design assignments, synthesizable **Verilog HDL** RTL modules, self-checking simulation testbenches, behavioral timing waveforms, and technical reports completed during my **VLSI Design Internship** at **Maincrafts**.

---

## 👨‍💻 Author Details

- **Author:** Lagisetty Vidya Charan
- **Institution:** Mohan Babu University
- **Department:** Electronics and Communication Engineering
- **Program:** VLSI Design Internship (Maincrafts)
- **Tools:** Xilinx Vivado 2025.2, Vivado Simulator, Logisim

---

## 📑 Table of Contents

1. [Repository Architecture](#-repository-architecture)
2. [Task Overview Matrix](#-task-overview-matrix)
3. [Task 1 – Introduction to VLSI Design Flow & Digital Logic Simulation](#-task-1--introduction-to-vlsi-design-flow--digital-logic-simulation)
4. [Task 2 – RTL Design of Combinational Circuits](#-task-2--rtl-design-of-combinational-circuits)
5. [Task 3 – Sequential Circuit Design and Simulation](#-task-3--sequential-circuit-design-and-simulation)
6. [Task 4 – RTL Design of Finite State Machines (FSM) & Control Units](#-task-4--rtl-design-of-finite-state-machines-fsm--control-units)
7. [Task 5 – Processor Datapath Design and Verification](#-task-5--processor-datapath-design-and-verification)
8. [EDA Tools & Simulation Workflow](#-eda-tools--simulation-workflow)
9. [Verification Methodology](#-verification-methodology)

---

## 📁 Repository Architecture

The repository is organized symmetrically across all 5 tasks, featuring modular directories, RTL sources, testbenches, timing waveforms, documentation, and formal reports:

```
VLSI-Internship-Tasks/
├── Task-1/                                 # Introduction to VLSI & Logisim Simulations
│   ├── Report/
│   │   └── VLSI_Task_1_Report.docx         # Comprehensive technical report
│   ├── Screenshots/                        # Logisim gate and adder simulation captures
│   │   ├── and_gate.png
│   │   ├── or_gate.png
│   │   ├── not_gate.png
│   │   ├── nand_gate.png
│   │   ├── nor_gate.png
│   │   ├── xor_gate.png
│   │   └── half_adder.png
│   └── README.md
│
├── Task-2/                                 # Combinational Circuit RTL Design
│   ├── Full_Adder/
│   │   ├── full_adder.v                    # 1-bit full adder with carry-in
│   │   ├── tb_full_adder.v                 # Exhaustive 8-pattern testbench
│   │   ├── full_adder_waveform.png         # Vivado simulation timing waveform
│   │   └── README.md
│   ├── Half_Adder/
│   │   ├── halfadder.v                     # 1-bit half adder
│   │   ├── tb_halfadder.v
│   │   ├── half_adder_waveform.png
│   │   └── README.md
│   ├── Logic_Gates/
│   │   ├── logicgates.v                    # 6 basic combinational gates
│   │   ├── tb_logicgates.v
│   │   ├── logic_gates_waveform.png
│   │   └── README.md
│   ├── Report/
│   │   └── VLSI_Task_2_Report.docx
│   └── README.md
│
├── Task-3/                                 # Sequential Circuit RTL Design
│   ├── 4_Bit_Counter/
│   │   ├── counter4.v                      # Synchronous 4-bit up-counter with reset
│   │   ├── tb_counter4.v
│   │   ├── counter4_waveform.png
│   │   └── README.md
│   ├── 4_Bit_Register/
│   │   ├── register4.v                     # 4-bit parallel data storage register
│   │   ├── tb_register4.v
│   │   ├── register4_waveform.png
│   │   └── README.md
│   ├── D_Flipflop/
│   │   ├── d_flipflop.v                    # Positive edge-triggered D flip-flop
│   │   ├── tb_d_flipflop.v
│   │   ├── d_flipflop_waveform.png
│   │   └── README.md
│   ├── JK_Flipflop/
│   │   ├── jk_flipflop.v                   # Universal JK flip-flop (Hold/Reset/Set/Toggle)
│   │   ├── tb_jk_flipflop.v
│   │   ├── jk_flipflop_waveform.png
│   │   └── README.md
│   ├── Report/
│   │   └── VLSI_Task_3_Report.docx
│   └── README.md
│
├── Task-4/                                 # Finite State Machines & Control Units
│   ├── Mealy_FSM/
│   │   ├── mealy_fsm.v                     # State & input-dependent output FSM
│   │   ├── tb_mealy_fsm.v
│   │   ├── mealy_fsm_waveform.png
│   │   └── README.md
│   ├── Moore_FSM/
│   │   ├── moore_fsm.v                     # 3-state cyclical Moore FSM
│   │   ├── tb_moore_fsm.v
│   │   ├── moore_fsm_waveform.png
│   │   └── README.md
│   ├── Sequence_Detector/
│   │   ├── sequence_detector.v             # Overlapping '1011' serial bitstream detector
│   │   ├── tb_sequence_detector.v
│   │   ├── sequence_detector_waveform.png
│   │   └── README.md
│   ├── Traffic_Light_Controller/
│   │   ├── traffic_light_controller.v      # 3-phase RED-GREEN-YELLOW controller
│   │   ├── tb_traffic_light_controller.v
│   │   ├── traffic_light_waveform.png
│   │   └── README.md
│   ├── Report/
│   │   └── VLSI_Task_4_Report.docx
│   └── README.md
│
├── Task-5/                                 # Processor Datapath & Verification
│   ├── ALU/
│   │   ├── alu.v                           # 4-bit ALU (ADD, SUB, AND, OR, XOR)
│   │   ├── tb_alu.v
│   │   ├── alu_waveform.png
│   │   └── README.md
│   ├── Datapath/
│   │   ├── datapath.v                      # Mini datapath with ALU result write-back
│   │   ├── tb_datapath.v
│   │   ├── datapath_waveform.png
│   │   └── README.md
│   ├── RAM/
│   │   ├── ram.v                           # 4x4-bit synchronous RAM with WE control
│   │   ├── tb_ram.v
│   │   ├── ram_waveform.png
│   │   └── README.md
│   ├── Register_File/
│   │   ├── register_file.v                 # 4x4-bit dual-access register file
│   │   ├── tb_register_file.v
│   │   ├── register_file_waveform.png
│   │   └── README.md
│   ├── ROM/
│   │   ├── rom.v                           # 4x4-bit combinational lookup ROM
│   │   ├── tb_rom.v
│   │   ├── rom_waveform.png
│   │   └── README.md
│   ├── Report/
│   │   └── VLSI_Task_5_Report.docx
│   └── README.md
│
├── .gitignore                              # Comprehensive EDA and Vivado ignores
└── README.md                               # Repository portfolio homepage
```

---

## 📊 Task Overview Matrix

| Task | Topic | Key Circuits / Modules | Primary Focus | Verification Tool | Documentation |
|:---:|:---|:---|:---|:---:|:---:|
| **[Task 1](Task-1/)** | VLSI Fundamentals & Logic | 6 Basic Gates, Half Adder | VLSI Design Flow, Gate Modeling | Logisim | [Task 1 Docs](Task-1/README.md) |
| **[Task 2](Task-2/)** | Combinational RTL Design | Logic Gates, Half Adder, Full Adder | Continuous assignment (`assign`), Vivado RTL | Vivado 2025.2 | [Task 2 Docs](Task-2/README.md) |
| **[Task 3](Task-3/)** | Sequential Circuit Design | D-FF, JK-FF, 4-bit Register, 4-bit Counter | Clocking, edge-triggering, storage, reset | Vivado 2025.2 | [Task 3 Docs](Task-3/README.md) |
| **[Task 4](Task-4/)** | FSM & Control Units | Moore FSM, Mealy FSM, Traffic Light, 1011 Sequence Detector | State transition logic, sequence detection | Vivado 2025.2 | [Task 4 Docs](Task-4/README.md) |
| **[Task 5](Task-5/)** | Processor Datapath | 4-bit ALU, RegFile, RAM, ROM, Datapath Write-Back | CPU building blocks, ALU write-back | Vivado 2025.2 | [Task 5 Docs](Task-5/README.md) |

---

## 🔬 Task 1 – Introduction to VLSI Design Flow & Digital Logic Simulation

- **Objective:** Master the complete 9-stage VLSI design flow from system specification to silicon fabrication and validate basic digital logic gates.
- **VLSI Flow:** System Spec → Architecture → RTL Design → Functional Verification → Synthesis → Physical Design → Timing & Power (STA) → Fabrication → Testing.
- **Implementations:** Logisim simulation of AND, OR, NOT, NAND, NOR, XOR gates and a Half Adder.
- **Key Artifacts:** Detailed report in [`Task-1/Report/VLSI_Task_1_Report.docx`](Task-1/Report/VLSI_Task_1_Report.docx) and simulation screenshots in [`Task-1/Screenshots/`](Task-1/Screenshots/).

---

## 🔬 Task 2 – RTL Design of Combinational Circuits

- **Objective:** RTL modeling and functional verification of combinational building blocks using continuous assignments in Verilog HDL.
- **Circuits Implemented:**
  1. **Logic Gates:** Parallel modeling of AND, OR, NOT, NAND, NOR, XOR gates.
  2. **Half Adder:** `Sum = A ^ B`, `Carry = A & B`.
  3. **Full Adder:** `Sum = A ^ B ^ Cin`, `Cout = (A & B) | (B & Cin) | (A & Cin)`.
- **Simulation:** Vivado 2025.2 behavioral simulation verifying all input combinations.

---

## 🔬 Task 3 – Sequential Circuit Design and Simulation

- **Objective:** Synchronous digital design using clocked behavioral blocks (`always @(posedge clk)`).
- **Circuits Implemented:**
  1. **D Flip-Flop:** Captures `D` on the clock positive edge (`Q <= D`).
  2. **JK Flip-Flop:** Implements Hold (`00`), Reset (`01`), Set (`10`), and Toggle (`11`) modes without race-around conditions.
  3. **4-Bit Register:** Parallel synchronous 4-bit data latching.
  4. **4-Bit Binary Counter:** Synchronous up-counter (`count <= count + 1`) with active-high synchronous reset.

---

## 🔬 Task 4 – RTL Design of Finite State Machines (FSM) & Control Units

- **Objective:** Architect synthesizable state machines for control-oriented applications.
- **Circuits Implemented:**
  1. **Moore FSM:** Cycles through states `S0 → S1 → S2 → S0` with output strictly tied to state.
  2. **Mealy FSM:** High-speed reactive control; asserts `out = 1` when `state == S1` and `in == 1`.
  3. **Traffic Light Controller:** Three-state controller sequencing `RED (100) → GREEN (001) → YELLOW (010) → RED`.
  4. **1011 Serial Sequence Detector:** Detects sequence `1011` with pattern overlapping using a 4-state architecture.

---

## 🔬 Task 5 – Processor Datapath Design and Verification

- **Objective:** Design, verify, and interconnect the foundational building blocks of a microprocessor execution unit.
- **Circuits Implemented:**
  1. **4-Bit ALU:** Executes `ADD`, `SUB`, `AND`, `OR`, and `XOR` controlled by a 3-bit opcode.
  2. **Register File:** 4×4-bit multi-register storage bank with synchronous write and dual read ports.
  3. **RAM:** 4×4-bit synchronous memory with write-enable (`we`) control.
  4. **ROM:** 4×4-bit pre-programmed lookup memory.
  5. **Mini Processor Datapath:** Integrates register reading, ALU computation, and clocked write-back to destination register `R2`.

---

## 🛠️ EDA Tools & Simulation Workflow

### Using Xilinx Vivado (GUI)
1. Open Vivado and create a new RTL project.
2. Add target module (`<module>.v`) to **Design Sources**.
3. Add testbench (`tb_<module>.v`) to **Simulation Sources**.
4. Click **Run Simulation → Run Behavioral Simulation**.
5. Inspect generated waveforms in the Vivado Waveform Viewer.

### Using Icarus Verilog & GTKWave (CLI)
To run simulations via open-source command-line tools:
```bash
# Example: Simulating the ALU module
cd Task-5/ALU
iverilog -o sim_alu.vvp alu.v tb_alu.v
vvp sim_alu.vvp
# If a VCD dump is enabled:
gtkwave alu_waveform.vcd
```

---

## 📈 Verification Methodology

All digital designs were validated under rigorous functional verification:
1. **Reset Assertion & Deassertion:** Ensuring predictable initial states upon power-on.
2. **Clock Generation:** Stable periodic oscillation modeled via `always #5 clk = ~clk;` (100 MHz clock frequency).
3. **Exhaustive Stimulus:** Combinational circuits stimulated across 100% of input truth table states.
4. **Edge Timing Alignment:** Signals changed on negative clock edges (`@(negedge clk)`) in testbenches to eliminate setup/hold race conditions during simulation.
5. **Waveform Archival:** Captured waveforms are embedded across each submodule documentation for review.
