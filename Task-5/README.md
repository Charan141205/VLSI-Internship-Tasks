# Task 5 – Processor Datapath Design and Verification Using Verilog HDL

## 📌 Overview

This repository contains the implementation and verification of fundamental **processor datapath components** using **Verilog HDL** and **Xilinx Vivado** as part of the VLSI Design Internship.

The task focuses on designing individual digital hardware components, developing corresponding testbenches, performing behavioral simulations, and finally integrating the components into a simple **Mini Datapath**.

The following modules were implemented and verified:

- Arithmetic Logic Unit (ALU)
- Register File
- Random Access Memory (RAM)
- Read Only Memory (ROM)
- Mini Datapath
- ALU Result Write-Back

---

## 🎯 Objective

The objective of this task is to understand the basic building blocks of a processor datapath and their interaction.

The task involves:

1. Designing an ALU for arithmetic and logical operations.
2. Designing a register file for temporary data storage.
3. Designing RAM with read and write functionality.
4. Designing ROM with predefined data.
5. Integrating the register file and ALU into a simple datapath.
6. Verifying the functionality using Verilog testbenches.
7. Analyzing the behavioral simulation waveforms in Xilinx Vivado.

---

## 🛠️ Tools Used

- **Xilinx Vivado**
- **Verilog HDL**
- **RTL Design**
- **Behavioral Simulation**
- **Vivado Waveform Viewer**

---

# 📂 Project Structure

```text
Task-5/
│
├── alu.v
├── tb_alu.v
│
├── register_file.v
├── tb_register_file.v
│
├── ram.v
├── tb_ram.v
│
├── rom.v
├── tb_rom.v
│
├── datapath.v
├── tb_datapath.v
│
├── screenshots/
│   ├── alu_simulation.png
│   ├── register_file_simulation.png
│   ├── ram_simulation.png
│   ├── rom_simulation.png
│   └── datapath_simulation.png
│
└── README.md
