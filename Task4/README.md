# VLSI Design Internship – Task 4

## RTL Design of Finite State Machines (FSM) and Control Units

This repository contains the RTL designs, Verilog testbenches, simulation results, and report completed as part of **VLSI Design Internship – Task 4**.

The task focuses on designing and verifying **Finite State Machines (FSMs)** and applying them to control-oriented digital systems.

---

## 🛠️ Tools & Technologies

* **HDL:** Verilog HDL
* **EDA Tool:** Xilinx Vivado
* **Simulation:** Vivado Behavioral Simulation
* **Target:** FPGA / RTL Design

---

## 🎯 Objectives

The main objectives of this task are:

* Understand Finite State Machine fundamentals.
* Understand Moore and Mealy FSM architectures.
* Design FSMs using Verilog HDL.
* Implement state transition logic using synthesizable RTL.
* Develop Verilog testbenches for verification.
* Perform behavioral simulation.
* Analyze state transitions and output waveforms.
* Implement practical FSM-based control applications.

---

# 📌 Designs Implemented

## 1. Moore FSM

A three-state Moore FSM was designed with the following state sequence:

```text
S0 → S1 → S2 → S0
```

### State Encoding

| State | Encoding |
| ----- | -------- |
| S0    | `2'b00`  |
| S1    | `2'b01`  |
| S2    | `2'b10`  |

The FSM starts from **S0** after reset and transitions to the next state on every positive edge of the clock.

### Files

```text
RTL/moore_fsm.v
Testbenches/tb_moore_fsm.v
```

### Simulation

The behavioral simulation verifies the repeated state sequence:

```text
S0 → S1 → S2 → S0
```

---

## 2. Mealy FSM

A Mealy FSM was implemented where the output depends on both the **current state and input**.

The required condition is:

```text
Current State = S1
AND
Input = 1
        ↓
Output = 1
```

### State Transition

| Current State | Input | Next State | Output |
| ------------- | ----: | ---------- | -----: |
| S0            |     0 | S0         |      0 |
| S0            |     1 | S1         |      0 |
| S1            |     0 | S0         |      0 |
| S1            |     1 | S0         |      1 |

### Files

```text
RTL/mealy_fsm.v
Testbenches/tb_mealy_fsm.v
```

### Simulation

The Vivado behavioral simulation verifies that the output becomes HIGH when the FSM is in **S1** and the input is **1**.

---

## 3. Traffic Light Controller

A traffic light controller was implemented using an FSM.

### States and Outputs

| State | Light  | Binary Output |
| ----- | ------ | ------------- |
| S0    | RED    | `100`         |
| S1    | GREEN  | `001`         |
| S2    | YELLOW | `010`         |

### Output Sequence

```text
RED → GREEN → YELLOW → RED
```

or:

```text
100 → 001 → 010 → 100
```

The controller changes its state and corresponding light output synchronously with the clock.

### Files

```text
RTL/traffic_light.v
Testbenches/tb_traffic_light.v
```

### Simulation

The Vivado waveform verifies the repeated traffic-light output sequence.

---

## 4. 1011 Sequence Detector

A serial sequence detector was designed to detect the binary pattern:

```text
1011
```

### State Definitions

| State | Meaning          | Encoding |
| ----- | ---------------- | -------- |
| S0    | No matching bits | `000`    |
| S1    | `1` detected     | `001`    |
| S2    | `10` detected    | `010`    |
| S3    | `101` detected   | `011`    |

### Detection

When the FSM reaches **S3** and receives another `1`:

```text
101 + 1
   ↓
 1011
   ↓
detected = 1
```

The implementation then returns to **S1**, allowing a new sequence beginning with `1` to be detected.

### Test Input

```text
1 → 0 → 1 → 1
```

### Files

```text
RTL/sequence_detector.v
Testbenches/tb_sequence_detector.v
```

### Simulation

The Vivado behavioral simulation verifies that the `detected` output becomes HIGH after the complete `1011` pattern is received.

---

# 📊 Moore FSM vs Mealy FSM

| Feature                       | Moore FSM          | Mealy FSM                    |
| ----------------------------- | ------------------ | ---------------------------- |
| Output depends on             | Current State      | Current State + Input        |
| Input directly affects output | No                 | Yes                          |
| Main concept demonstrated     | State-based output | State and input-based output |

---

# 🔬 Verification

Each RTL design was verified using a dedicated Verilog testbench in **Xilinx Vivado Behavioral Simulation**.

The verification process included:

1. Applying reset.
2. Generating the clock.
3. Applying required input conditions.
4. Observing state transitions.
5. Observing output signals.
6. Comparing simulated behavior with the expected FSM behavior.

---

# 📈 Simulation Results

Simulation waveforms are provided in:

```text
Simulation_Screenshots/
```

The simulations demonstrate:

* Correct FSM state transitions.
* Correct reset operation.
* Correct output generation.
* Correct Mealy FSM input-dependent behavior.
* Correct traffic-light sequence.
* Successful detection of the `1011` pattern.

---

# 📁 Repository Structure

```text
VLSI-Design-Internship-Task-4/
│
├── RTL/
│   ├── moore_fsm.v
│   ├── mealy_fsm.v
│   ├── traffic_light.v
│   └── sequence_detector.v
│
├── Testbenches/
│   ├── tb_moore_fsm.v
│   ├── tb_mealy_fsm.v
│   ├── tb_traffic_light.v
│   └── tb_sequence_detector.v
│
├── Simulation_Screenshots/
│   ├── Moore_FSM.png
│   ├── Mealy_FSM.png
│   ├── Traffic_Light.png
│   └── Sequence_Detector.png
│
├── Report/
│   └── VLSI_Task_4_Report.pdf
│
└── README.md
```

---

# 📚 Concepts Learned

Through this task, the following concepts were practiced:

* Finite State Machines
* Moore FSM
* Mealy FSM
* State encoding
* State transition logic
* Sequential RTL design
* Verilog `always` blocks
* Verilog `case` statements
* Reset handling
* Testbench development
* Behavioral simulation
* Waveform analysis
* Traffic-light control
* Serial sequence detection
* Overlapping sequence detection

---

# ✅ Result

All four FSM-based RTL designs were implemented using **Verilog HDL** and verified through **Xilinx Vivado behavioral simulation**.

The simulation results demonstrate the expected state transitions and output behavior for the Moore FSM, Mealy FSM, Traffic Light Controller, and `1011` Sequence Detector.

---

## 👨‍💻 Internship Task

**VLSI Design Internship – Task 4**

**Topic:** RTL Design of Finite State Machines (FSM) and Control Units

**Tool:** Xilinx Vivado
**Language:** Verilog HDL
