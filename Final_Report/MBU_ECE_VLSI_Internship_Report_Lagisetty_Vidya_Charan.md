## An Internship Report

*on*

# RTL DESIGN AND VERIFICATION OF DIGITAL SYSTEMS USING VERILOG HDL

*submitted in partial fulfillment of requirements
for the award of the degree of*

# BACHELOR OF TECHNOLOGY

*in*

## ELECTRONICS AND COMMUNICATION ENGINEERING

*by*

*under the Esteemed Supervision of*

### Dr. P. V. RAMANA, M.Tech., Ph.D.

Professor, Department of ECE

### DEPARTMENT OF ELECTRONICS AND COMMUNICATION ENGINEERING

# MOHAN BABU UNIVERSITY

Sree Sainath Nagar, A. Rangampet, Tirupati – 517102

2022-2026

# MOHAN BABU UNIVERSITY

Sree Sainath Nagar, A. Rangampet - 517 102

### VISION

To be a globally respected institution with an innovative and entrepreneurial culture that offers transformative education to advance sustainability and societal good.

### MISSION

• Develop industry-focused professionals with a global perspective.

• Offer academic programs that provide transformative learning experience founded on the spirit of curiosity, innovation, and integrity.

• Create confluence of research, innovation, and ideation to bring about sustainable and socially relevant enterprises.

• Uphold high standards of professional ethics leading to harmonious relationship with environment and society.

## SCHOOL OF ENGINEERING

### VISION

To be the sought-after destination for engineering education recognized for excellence, innovation and the societal relevance and impact of its pursuits.

### MISSION

• Instil within our students fundamental engineering knowledge, a broad set of skills, and an inquisitive attitude to create innovative solutions to serve industry and community.

• Provide an experience par excellence with our state-of-the-art research, innovation, and incubation ecosystem to realise our learners' fullest potential.

• Impart continued education and research support to working professionals in engineering fields to enhance their domain expertise in the cutting-edge technologies.

• Inculcate among the engineers of tomorrow with a spirit to solve societal challenges.

### DEPARTMENT OF ELECTRONICS AND COMMUNICATION ENGINEERING

### VISION

To be a center of excellence in the fields of Electronics, Communications through teaching and research producing high quality engineering professionals and Entrepreneurs with values and ethics to meet local and global demands.

### MISSION

• Imparting knowledge through contemporary curriculum and striving for development of students with diverse background.

• Developing skills for enhancing employability of students through comprehensive training process.

• Inspiring students and faculty members for innovative research through constant interaction with research organizations and industry to meet societal needs.

• Inculcating ethics and values in students for effective engineering practice.

## B. Tech. (Electronics and Communication Engineering)

### PROGRAM EDUCATIONAL OBJECTIVES (PEOs)

After few years of graduation, the graduates of B.Tech (ECE) will be:

### PROGRAM OUTCOMES (POs)

On successful completion of the Program, the graduates of B.Tech. (ECE) Program will be able to:

### PROGRAM SPECIFIC OUTCOMES (PSOs)

### COURSE OUTCOMES (COs)

### CO-PO & CO-PSO CORRELATION MAPPING MATRIX

*Correlation Levels: 3: High; 2: Medium; 1: Low*

# MOHAN BABU UNIVERSITY

Sree Sainath Nagar, A.Rangampet - 517102

# Certificate

This is to certify that the Internship Report entitled "RTL DESIGN AND VERIFICATION OF DIGITAL SYSTEMS USING VERILOG HDL" is the bona fide work done & submitted by LAGISETTY VIDYA CHARAN (22101A04XXXX) in the Department of Electronics and Communication Engineering, School of Engineering, and is submitted to Mohan Babu University, A. Rangampet in partial fulfilment of the requirements for the award of the degree of Bachelor of Technology in Electronics and Communication Engineering during the academic year 2022-2026.

# DECLARATION

I hereby declare that the internship work entitled "RTL DESIGN AND VERIFICATION OF DIGITAL SYSTEMS USING VERILOG HDL" is an authentic and original record of the tasks, technical activities, and learning outcomes completed by me during the six-week VLSI Design Internship. This report has been prepared based on the theoretical principles studied during my academic coursework and their direct practical application in digital RTL design, testbench modeling, logic simulation, and hardware verification using Verilog HDL and Xilinx Vivado.

The observations, simulated waveforms, behavioral analyses, architectural schematics, and conclusions presented in this report are derived entirely from my own understanding, analysis, and execution of the assigned modules in the domain of digital VLSI systems. All hardware source codes and testbenches referenced herein have been developed, simulated, verified, and systematically archived under my GitHub repository (https://github.com/Charan141205/VLSI-Internship-Tasks).

I further declare that the material contained in this report has not been submitted, in whole or in part, to any other institution or university for the award of any degree, diploma, or academic credit. Any external technical literature, reference books, standards, or datasheets cited have been rigorously acknowledged as per accepted academic and IEEE conventions.

Signature of the Student: ___________________________

LAGISETTY VIDYA CHARAN

Roll No: 22101A04XXXX

Department of ECE, Mohan Babu University

# ACKNOWLEDGEMENTS

I express my sincere and profound gratitude to the internship mentors and the technical team at Maincrafts for granting me the invaluable opportunity to pursue this intensive internship in the domain of VLSI Design and Verilog HDL. This six-week experience has been exceptionally enriching, enabling me to bridge the critical divide between classroom circuit theory and modern industry-grade digital design workflows. It provided hands-on exposure to RTL modeling, hardware description methodologies, testbench construction, and waveform-based functional verification.

I am deeply indebted to my academic supervisor, Dr. P. V. RAMANA, M.Tech., Ph.D., Professor, Department of Electronics and Communication Engineering, for his continuous encouragement, expert technical guidance, insightful critiques, and unwavering support throughout the preparation of this report. His invaluable suggestions on hardware architecture and verification rigor substantially enhanced the depth of this work.

I extend my heartfelt thanks and deep sense of gratitude to Dr. N. SUDHAKAR REDDY, M.Tech., Ph.D., Professor and Head of the Department of Electronics and Communication Engineering, for his visionary leadership, academic facilitation, and constant encouragement in fostering an industry-aligned research and training environment.

I also place on record my sincere appreciation to the faculty members and technical staff of the Department of ECE, School of Engineering, Mohan Babu University, for their enduring moral support and educational foundation. Special thanks are accorded to the open-source EDA community and tool developers for providing robust simulation environments including Xilinx Vivado, Icarus Verilog, and GTKWave.

Lastly, I express my deepest love and heartfelt gratitude to my parents and friends, whose unflagging blessings, patience, and moral encouragement provided the cornerstone of my academic journey and inspired me to complete this internship successfully.

LAGISETTY VIDYA CHARAN

(22101A04XXXX)

# TABLE OF CONTENTS

# LIST OF TABLES

# LIST OF FIGURES

# ABSTRACT

The relentless scaling of semiconductor technology and the increasing architectural complexity of modern Systems-on-Chip (SoCs) demand robust expertise in synthesizable Register Transfer Level (RTL) design and exhaustive functional verification. This internship report presents an in-depth documentation of the six-week professional VLSI Design Internship undertaken at Maincrafts. The primary objective of the internship was to master industry-standard digital design methodologies, Hardware Description Language (HDL) modeling idioms, electronic design automation (EDA) workflows, and behavioral simulation using Verilog HDL and the Xilinx Vivado 2025.2 Design Suite.

The technical curriculum progressed across five logically sequenced design tasks: (1) Exploration of the 9-stage VLSI design flow and gate-level schematic modeling using Logisim; (2) Dataflow and RTL modeling of fundamental combinational blocks including a comprehensive 6-gate parallel module, a 1-bit Half Adder, and a 1-bit Full Adder with carry-in; (3) Behavioral modeling of clock-synchronized sequential elements comprising edge-triggered D Flip-Flops, universal JK Flip-Flops (resolving indeterminate states via toggle logic), 4-bit parallel storage registers, and 4-bit synchronous binary up-counters with active-high synchronous reset; (4) Architecting robust control units using Finite State Machines (FSMs), encompassing a 3-state cyclical Moore FSM (S0→S1→S2→S0), a high-speed conditional Mealy FSM, a 3-phase Traffic Light Controller, and a serial 1011 Sequence Detector featuring pattern overlap capability.

The core capstone of the internship culminated in an extensive Case Study on Processor Datapath Design and Verification. A modular 4-bit execution engine was engineered by tightly integrating a multi-operation Arithmetic Logic Unit (ALU supporting ADD, SUB, AND, OR, and XOR operations), a 4×4-bit dual-read register file, a 4×4-bit synchronous Random Access Memory (RAM), and a combinational Read-Only Memory (ROM). Functional correctness was rigorously confirmed using dedicated Verilog testbenches evaluating directed test vectors (A = 1010, B = 0011). Full write-back closed-loop operation was proven by latching the computed ALU result into destination register R2 and subsequently reading it back without data distortion.

Through this internship, critical competencies were established in HDL syntax standardization, race condition prevention, event-driven testbench stimulus scheduling, and waveform analysis using Vivado Simulator (xsim) and GTKWave. All hardware modules, testbenches, simulation waveforms, and engineering documentation have been systematically structured and archived under a public GitHub repository (https://github.com/Charan141205/VLSI-Internship-Tasks), providing a reproducible, industry-ready digital portfolio.

Keywords: VLSI Design Flow, Verilog HDL, Register Transfer Level (RTL), Combinational Logic, Sequential Circuits, Finite State Machines (FSM), Moore & Mealy Models, Processor Datapath, Arithmetic Logic Unit (ALU), Register File, Xilinx Vivado, Functional Verification.

# CHAPTER 1
INTRODUCTION

## 1.1 Overview of the Internship

The digital revolution of the twenty-first century has been fueled by the unprecedented evolution of Very Large Scale Integration (VLSI) circuits. As microelectronic systems scale into nanometer regimes, modern integrated circuits (ICs) incorporate billions of transistors onto a single sliver of silicon, powering everything from ultra-low-power edge IoT nodes and mobile communication processors to high-performance artificial intelligence accelerators and hyperscale cloud infrastructure. In this intensely competitive domain, Register Transfer Level (RTL) design and rigorous functional verification represent the crucial bedrock upon which reliable digital systems are engineered.

This internship was completed as a specialized technical program under the auspices of Maincrafts, spanning an intensive six-week period. The core focus of the program was centered on mastering synthesizable digital hardware description using Verilog HDL, developing advanced functional verification testbenches, and utilizing state-of-the-art Electronic Design Automation (EDA) software—specifically the Xilinx Vivado 2025.2 Design Suite. The curriculum bridged fundamental academic principles of Boolean algebra and switching theory with the demanding practical methodologies practiced across the commercial semiconductor industry.

## 1.2 Background of Semiconductor Technology & VLSI Design Flow

Gordon Moore's empirical projection in 1965—stipulating that the number of transistors on a microchip doubles approximately every two years—has sustained the semiconductor industry for over five decades. However, as silicon lithography approaches sub-atomic dimensions (3 nm, 2 nm, and beyond), classic Dennard scaling has tapered off, giving rise to acute challenges in dynamic power dissipation, static sub-threshold leakage, interconnect RC parasitic delays, and quantum tunneling phenomena. Consequently, the industry has shifted toward domain-specific micro-architectures, heterogeneous multi-core topologies, and multi-die chiplet packaging. In this complex design paradigm, post-silicon bugs carry catastrophic financial penalties, often exceeding tens of millions of dollars per mask re-spin. Hence, digital designers must adhere strictly to a standardized, deterministic VLSI design flow.

The complete industry-standard VLSI design pipeline spans nine distinct, sequential phases that transform abstract mathematical requirements into functional silicon dice:

• 1. System Specification: Defines the macro-level operational parameters of the target chip, including architectural functionality, maximum clock frequencies (target Fmax), power consumption bounds, external interface protocols, and physical packaging constraints.

• 2. Architecture Design: The architectural team partitions the overall chip into micro-architectural functional blocks, defining pipeline stages, datapath widths, control sequencing, on-chip bus topologies (e.g., AXI, AHB), and memory hierarchies.

• 3. RTL Design: Hardware description engineers model the micro-architecture using hardware description languages (HDLs) such as Verilog, SystemVerilog, or VHDL. The code describes the exact flow of data between storage registers and the combinational logic that transforms that data.

• 4. Functional Verification: The RTL implementation is tested against functional specifications using simulation testbenches. Verification engineers apply exhaustive or constrained-random input vectors to uncover architectural and logical discrepancies prior to logic synthesis.

• 5. Logic Synthesis: Synthesis tools (e.g., Vivado Synthesis, Synopsys Design Compiler) parse the synthesizable RTL constructs and translate them into a technology-mapped gate-level netlist using a target standard-cell library (comprising NAND gates, NOR gates, flip-flops, and buffers).

• 6. Physical Design: The structural netlist is converted into geometric silicon layouts. This phase involves floorplanning (macro placement and core area budgeting), power grid synthesis, placement of millions of standard cells, Clock Tree Synthesis (CTS) for skew minimisation, and automated detailed routing of metal interconnects.

• 7. Timing & Power Analysis: Static Timing Analysis (STA) verifies setup and hold constraints across all operational corners (process, voltage, temperature - PVT). Physical verification verifies Design Rule Checking (DRC) and Layout Versus Schematic (LVS) alignment.

• 8. Silicon Fabrication: The tape-out GDSII/OASIS data stream is transmitted to a semiconductor foundry (e.g., TSMC, Intel, Samsung), where photomasks are etched and multi-layer photolithography fabricates billions of transistors on circular silicon wafers.

• 9. Packaging, Testing & Validation: Wafers are diced into individual silicon dies, mounted inside protective leadframes or ball-grid arrays (BGAs), and subjected to automated test equipment (ATE) to validate functional and parametric yield.

Figure 1.1 depicts the hierarchical structure of this engineering pipeline.

*Figure 1.1: Standard 9-Stage VLSI Design Flow from Specification to Silicon*

## 1.3 Need for Internship in Digital VLSI Design

While undergraduate university curricula provide essential grounding in Boolean minimization, Karnaugh maps, and idealized digital logic, a pronounced gap frequently exists between theoretical textbook knowledge and commercial electronic design practice. In physical semiconductor devices, logic gates do not evaluate instantaneously; rather, signal propagation is constrained by finite capacitive charging times, wire parasitics, setup times, hold times, and clock jitter. Writing Verilog code as if it were procedural C software leads to catastrophic synthesis errors, such as unintended latch inferencing, severe combinational feedback loops, and multi-driven bus contentions.

The internship directly addressed this educational necessity by immersing the student in an industry-calibrated workflow. It instilled a true 'hardware mindset'—the discipline of visualizing physical registers, multiplexers, and logic gates while typing HDL constructs. Furthermore, it emphasized that modern chip design is approximately 70% verification and only 30% design. Developing rigorous testbenches with structured timing stimuli and self-checking mechanisms was cultivated as an indispensable professional skill.

## 1.4 Primary & Secondary Objectives of the Internship

The internship was formulated around clearly delineated technical and professional milestones:

### Primary Technical Objectives:

1. Master the syntax, semantics, and modeling idioms of Verilog HDL (IEEE 1364-2005 standard), distinguishing strictly between synthesizable RTL and non-synthesizable simulation constructs.

2. Implement combinational building blocks (logic gates, Half Adders, Full Adders) using continuous assignment and boolean operators.

3. Design robust, glitch-free sequential storage elements including positive edge-triggered D Flip-Flops, JK Flip-Flops with complete excitation handling, multi-bit storage registers, and synchronous counters.

4. Architect synthesizable control units using both Moore and Mealy Finite State Machine paradigms, implementing state encoding, next-state transition logic, and output decoding.

5. Design, integrate, and verify an end-to-end 4-bit processor execution datapath comprising an Arithmetic Logic Unit (ALU), multi-port register bank, synchronous RAM, combinational ROM, and closed-loop write-back routing.

6. Gain hands-on operational mastery of the Xilinx Vivado 2025.2 Design Suite, Vivado Simulator (xsim), and GTKWave.

### Secondary Professional Objectives:

1. Cultivate structured engineering debugging techniques through waveform inspection, signal tracing, and edge alignment.

2. Develop clean, human-readable coding practices enriched with descriptive commentary and standardized port naming conventions.

3. Implement version control workflows using Git and GitHub for modular repository organization and open-source documentation.

4. Enhance technical report writing and professional communication adhering to institutional academic standards.

## 1.5 Scope of the Internship

The operational scope of the internship spanned the complete frontend RTL design and functional verification stages of the digital design flow. It encompassed the mathematical derivation of switching logic, architectural partitioning, synthesizable RTL coding, testbench stimulus drafting, event-driven behavioral simulation, waveform timing analysis, and code optimization. The physical implementation steps (place, route, GDSII generation) were studied conceptually to inform synthesizability, while practical exercises focused rigorously on achieving 100% functional correctness across all operational corners.

## 1.6 Significance of the Internship in ECE Career

For an undergraduate engineer in Electronics and Communication Engineering, practical proficiency in VLSI design opens prime avenues across global semiconductor companies (e.g., Intel, Qualcomm, AMD, NVIDIA, Texas Instruments, Synopsys, Cadence). The skills acquired during this internship—hardware modeling, state machine synthesis, memory interfacing, and datapath integration—directly align with industry roles such as RTL Design Engineer, Design Verification (DV) Engineer, and FPGA Systems Engineer. Moreover, it establishes the intellectual platform required for advanced research in post-silicon validation, SystemVerilog/UVM methodologies, and RISC-V computer architectures.

## 1.7 Internship Structure & Progression Summary

The internship was structured into five progressive technical tasks designed to build cumulative competence:
• Task 1: VLSI Industry Fundamentals, Microchip Scaling, Design Flow & Logisim Digital Logic Simulation.
• Task 2: Verilog HDL Syntax & RTL Modeling of Basic Combinational Circuits (Gates, Half Adder, Full Adder).
• Task 3: RTL Modeling of Clocked Sequential Circuits (Flip-Flops, Registers, Synchronous Binary Counters).
• Task 4: Control Unit Engineering via Finite State Machines (Moore FSM, Mealy FSM, Sequence Detector, Traffic Controller).
• Task 5: Capstone Processor Datapath Integration (ALU, Register File, RAM, ROM, Closed-Loop Write-Back Verification).

## 1.8 Chapter Summary

This chapter contextualized the role of digital VLSI design within the modern semiconductor landscape, detailed the nine stages of the VLSI engineering flow, articulated the primary technical objectives of the internship, and delineated the scope and significance of the learning journey. Chapter 2 will elaborate on the software tools, hardware description languages, and simulation environments deployed throughout the internship.

# CHAPTER 2
TECHNOLOGIES USED

## 2.1 Verilog Hardware Description Language (HDL)

Verilog HDL, formalized under IEEE standard 1364-2005, is one of the premier hardware description languages utilized internationally for modeling digital electronic systems. Unlike standard sequential programming languages such as C or Python—which execute instructions linearly on a central processing unit—Verilog models the inherently concurrent, parallel physical nature of electronic circuits, where millions of gates evaluate signal transitions simultaneously in response to clock edges and voltage level shifts.

### Modeling Styles in Verilog HDL:

Verilog supports three foundational levels of hardware abstraction, each suited to distinct engineering tasks:
1. Dataflow Modeling: Hardware is described in terms of data movement and Boolean transformations using continuous assignment statements (`assign`). The right-hand side expression is continuously evaluated, and any change in operand values is immediately propagated to the left-hand net with optional propagation delay. Dataflow modeling is ideal for combinational logic circuits.
2. Behavioral Modeling: Represents the highest level of abstraction, describing the functional algorithmic behavior of a circuit using procedural blocks (`always` and `initial`). Inside procedural blocks, procedural assignment statements (`=` and `<=`), conditional statements (`if-else`), and multi-way branching (`case`) are evaluated in response to sensitivity lists (e.g., `@(posedge clk)` or `@(*)`).
3. Structural / Gate-Level Modeling: Describes hardware as an explicit netlist of interconnected logic gate primitives (`and`, `or`, `not`, `xor`) or instantiated sub-modules. It reflects the direct physical topology of hardware components and their wiring.

### Blocking versus Non-Blocking Assignments:

A foundational concept in writing synthesizable Verilog is the strict distinction between blocking and non-blocking assignments:
• Blocking Assignments (`=`): Executed sequentially in the exact order they appear in the procedural block. The statement blocks the execution of subsequent statements until its assignment is committed. Blocking assignments are used exclusively for modeling combinational logic to prevent race conditions.
• Non-Blocking Assignments (`<=`): Evaluated concurrently at the end of the simulation time step. The simulator computes the right-hand values during the evaluation phase and commits them simultaneously during the update phase. Non-blocking assignments are mandatory for modeling sequential, edge-triggered elements (flip-flops and registers) to guarantee deterministic data transfers without race conditions between clock-synchronized registers.

## 2.2 Xilinx Vivado Design Suite & Synthesis Tools

The Xilinx Vivado Design Suite 2025.2 represents an industry-standard integrated development environment (IDE) optimized for high-density FPGA development, SoC system integration, and advanced ASIC prototyping. Vivado integrates an extensive toolchain comprising the Vivado Project Navigator, RTL Elaborator, Logic Synthesizer, Placement and Routing engine, and Vivado Power Analyzer.

During this internship, Vivado served as the primary EDA engine. The RTL Elaborator parsed Verilog code syntax, resolving parameter bindings and module hierarchies. The Vivado Synthesis engine translated behavioral and dataflow constructs into generic logic gates and lookup tables (LUTs), ensuring full synthesizability and verifying that no illegal non-synthesizable delays or unbounded loops contaminated the designs.

## 2.3 Waveform Viewer & Signal Inspection

The Vivado Logic Simulator (xsim) and open-source GTKWave served as the primary diagnostic windows into internal circuit activity. The simulator executes an event-driven kernel, maintaining a discrete time-wheel. When input stimulus transitions occur, the engine re-evaluates sensitive nodes, propagating signal changes through intermediate logic gates to primary outputs.

The interactive Waveform Viewer enables multi-radix signal inspection, allowing buses to be viewed in Binary, Hexadecimal, Unsigned Decimal, or Signed 2's Complement representations. Markers, delta-time measurement cursors, and signal grouping hierarchies were extensively deployed to verify setup times, hold margins, propagation delays, and state transition sequences.

## 2.4 Simulation Methodologies & Testbench Design

Functional verification was executed using self-contained Verilog testbench modules. A testbench is a non-synthesizable simulation wrapper that instantiates the Design Under Test (DUT), drives input stimulus vectors, and monitors output response waveforms.

• Deterministic Clock Generation: Periodic clock waveforms were modeled using continuous toggle loops: `always #5 clk = ~clk;`, establishing an accurate 10 ns clock cycle corresponding to a 100 MHz clock frequency.

• Asynchronous & Synchronous Reset Assertions: Reset signals were asserted for a finite initialization window (e.g., `#10 reset = 1; #10 reset = 0;`) to purge indeterminate 'X' states and establish known starting states in all flip-flops and state registers.

• Timing Delay Management: Inter-stimulus delays (`#10`, `#20`) were calibrated to ensure signal stabilization across logic propagation paths prior to sampling.

• Edge Alignment & Race Elimination: In sequential testbenches, input transitions were synchronized to the negative clock edge (`@(negedge clk)`) so that inputs were entirely stable well prior to the active rising clock edge (`posedge clk`), completely avoiding race conditions and setup time violations during simulation.

## 2.5 Summary Table of Tools and Technologies Used

Table 2.1 summarizes the complete EDA toolset, programming languages, and simulation environments utilized during the internship.

*Table 2.1: EDA Software, Tools, and Development Platforms Used*

## 2.6 Chapter Summary

This chapter established the foundational technologies supporting the internship, analyzing the modeling idioms of Verilog HDL, contrasting blocking and non-blocking assignments, detailing the operational architecture of Xilinx Vivado 2025.2, and articulating rigorous testbench simulation methodologies. Chapter 3 will detail the practical execution of Tasks 1 through 4.

# CHAPTER 3
TASKS AND RESPONSIBILITIES

Throughout the six-week internship at Maincrafts, technical responsibilities were organized into well-defined, progressive tasks covering the spectrum of digital hardware engineering. This chapter presents the theoretical design, Verilog implementation, testbench stimuli, truth tables, and waveform verification results for Tasks 1 through 4.

## 3.1 Task 1: Overview of VLSI Industry & Design Flow

Task 1 served as the foundational phase of the internship, focusing on understanding the industrial semiconductor ecosystem, studying the nine-stage VLSI design pipeline, and implementing elementary logic gates and combinational circuits in the visual simulation environment Logisim. This visual exploration provided intuitive comprehension of signal propagation, gate delays, and Boolean equivalence prior to text-based HDL coding.

### Implementation of Basic Logic Gates in Logisim:

All six fundamental logic gates (AND, OR, NOT, NAND, NOR, XOR) were assembled using schematic primitives. Inputs were tied to interactive toggle pins, and outputs were routed to LED and binary state probes. Table 3.1 delineates the comprehensive truth table validated during this task.

*Table 3.1: Truth Table of 6 Basic Combinational Logic Gates*

Figures 3.1 through 3.6 illustrate the Logisim schematic simulations verifying all six basic logic gates.

*Figure 3.1: Logisim Simulation of 2-Input AND Gate*

*Figure 3.2: Logisim Simulation of 2-Input OR Gate*

*Figure 3.3: Logisim Simulation of Inverter (NOT Gate)*

*Figure 3.4: Logisim Simulation of 2-Input NAND Universal Gate*

*Figure 3.5: Logisim Simulation of 2-Input NOR Universal Gate*

*Figure 3.6: Logisim Simulation of 2-Input XOR Gate*

### Implementation of 1-Bit Half Adder in Logisim:

A Half Adder computes the arithmetic sum of two 1-bit binary inputs, generating a Sum and Carry bit. The Boolean equations governing the circuit are:
• Sum = A ⊕ B
• Carry = A · B
The circuit was realized in Logisim by cascading an XOR gate and an AND gate in parallel.

*Table 3.2: Truth Table of 1-bit Half Adder*

*Figure 3.7: Logisim Simulation of 1-Bit Half Adder Circuit*

## 3.2 Task 2: RTL Design & Verification of Combinational Circuits

In Task 2, transition was made from graphical schematics to formal Hardware Description Language modeling using Verilog HDL in Xilinx Vivado 2025.2. Combinational circuits are digital systems whose output values at any given instant depend solely on the current input values, without internal memory or clock dependency.

### 1. Multi-Gate Combinational Module (logicgates.v):

A unified Verilog module was developed implementing all six basic gates simultaneously using continuous assignments (`assign`). The testbench `tb_logicgates.v` systematically sequenced inputs `(a, b)` through `2'b00`, `2'b01`, `2'b10`, and `2'b11` at 10 ns intervals.

*Figure 3.8: Behavioral Simulation Waveform of 6 Basic Logic Gates in Vivado*

### 2. 1-Bit Half Adder Module (halfadder.v):

Modeled using dataflow assignments: `assign sum = a ^ b;` and `assign carry = a & b;`. The Vivado behavioral simulation waveform confirmed instantaneous response to stimulus changes, matching Table 3.2.

*Figure 3.9: Behavioral Simulation Waveform of 1-Bit Half Adder in Vivado*

### 3. 1-Bit Full Adder Module (full_adder.v):

A Full Adder incorporates a carry input (`cin`), enabling multi-bit ripple-carry arithmetic cascades. The Boolean logic is:
• Sum = a ^ b ^ cin
• Cout = (a & b) | (b & cin) | (a & cin)
The module was tested across all eight input combinations in `tb_full_adder.v`.

*Table 3.3: Truth Table of 1-bit Full Adder with Carry-In*

*Figure 3.10: Behavioral Simulation Waveform of 1-Bit Full Adder in Vivado*

## 3.3 Task 3: RTL Design of Sequential Circuits

Task 3 addressed the engineering of sequential digital circuits. Unlike combinational systems, sequential circuits employ bistable memory elements whose outputs depend on both current inputs and the historical state of the system, synchronized to a periodic clock.

### 1. Positive Edge-Triggered D Flip-Flop (d_flipflop.v):

The D Flip-Flop is the fundamental building block of digital registers and pipeline stages. It latches the data input (`D`) on the rising edge (`posedge clk`) and maintains `Q <= D` throughout the remainder of the clock cycle, ignoring any input fluctuations occurring while `clk` is at logic 0 or logic 1.

*Figure 3.11: Behavioral Simulation Waveform of Positive Edge-Triggered D Flip-Flop*

### 2. Universal JK Flip-Flop (jk_flipflop.v):

The JK Flip-Flop resolves the undefined/forbidden state condition inherent in basic SR latches. When both inputs are asserted (`J=1, K=1`), the output cleanly toggles (`Q <= ~Q`). The design was modeled using a behavioral `case ({J, K})` block.

*Table 3.4: Excitation and Characteristic Table of JK Flip-Flop*

*Figure 3.12: Behavioral Simulation Waveform of JK Flip-Flop Across All Modes*

### 3. 4-Bit Parallel Register (register4.v):

A 4-bit parallel-in parallel-out register was modeled using non-blocking assignment: `always @(posedge clk) Q <= D;`. Table 3.5 tabulates the stimulus sequence used in `tb_register4.v`.

*Table 3.5: Synchronous 4-bit Register Load Stimulus Sequence*

*Figure 3.13: Behavioral Simulation Waveform of 4-Bit Parallel Register*

### 4. Synchronous 4-Bit Binary Counter (counter4.v):

The counter module maintains an internal 4-bit state vector `count[3:0]`. When synchronous reset is asserted (`reset = 1`), the counter resets to `4'b0000`. Upon deassertion, it increments monotonically on each clock edge: `count <= count + 1'b1;`, rolling over from `4'b1111` (15) back to `4'b0000` (0).

*Figure 3.14: Behavioral Simulation Waveform of 4-Bit Binary Counter with Synchronous Reset*

## 3.4 Task 4: RTL Design & Simulation of Finite State Machines

Task 4 focused on the design of sequential control units using Finite State Machines (FSMs). FSMs constitute the intelligence of digital systems, orchestrating datapath operations, memory access cycles, and bus handshakes.

### Moore versus Mealy FSM Topologies:

• Moore FSM: The primary outputs depend exclusively on the current state register (`Output = f(State)`). Moore outputs are naturally glitch-free because state transitions occur strictly synchronously on clock edges.
• Mealy FSM: The primary outputs depend on both the current state AND the current inputs (`Output = f(State, Input)`). Mealy machines often require fewer states than Moore equivalents and react within the same clock period, though asynchronous input glitches can propagate directly to the output.

### 1. 3-State Cyclical Moore FSM (moore_fsm.v):

Cycles through three encoded states: `S0 (2'b00) → S1 (2'b01) → S2 (2'b10) → S0`. When asynchronous reset is asserted, it immediately returns to `S0`. The state register itself is exposed as the primary output.

*Table 3.7: State Transition Table for 3-State Moore FSM*

*Figure 3.15: Behavioral Simulation Waveform of 3-State Moore FSM (S0→S1→S2→S0)*

### 2. Conditional Mealy FSM (mealy_fsm.v):

A 2-state Mealy FSM was designed where output `out = 1` occurs exclusively when `state == S1` AND input `in == 1`. Table 3.8 outlines the state transitions and outputs.

*Table 3.8: State and Output Transition Table for Mealy FSM*

*Figure 3.16: Behavioral Simulation Waveform of Reactive Mealy FSM*

### 3. Overlapping 1011 Serial Sequence Detector (sequence_detector.v):

A sequence detector analyzes incoming bits serially on each clock edge to recognize target binary strings. This module detects the pattern `1011` with pattern overlap: upon detecting `1011`, the FSM transitions to state `S1` (`3'b001`) instead of resetting to `S0`, allowing the final bit `'1'` to serve as the start of a subsequent sequence. Table 3.10 outlines the 4-state progression.

*Table 3.10: State Transition Table for 1011 Serial Sequence Detector*

*Figure 3.17: Behavioral Simulation Waveform of Overlapping 1011 Sequence Detector*

### 4. 3-Phase Traffic Light Controller (traffic_light_controller.v):

Implements a synchronous traffic signal sequencer transitioning cyclically through standard phases: RED (`3'b100`) → GREEN (`3'b001`) → YELLOW (`3'b010`) → RED (`3'b100`). Output lights are decoded directly from state registers.

*Figure 3.18: Behavioral Simulation Waveform of 3-Phase Traffic Light Controller*

## 3.5 Code Optimization, Debugging, and Handling Race Conditions

During RTL development, strict synthesis guidelines were enforced to avoid common hardware bugs:
1. Complete Case Statements: In all `case` constructs, a `default` branch was included to prevent unintended latch inferencing, which occurs when an incomplete specification causes synthesis tools to infer physical transparent latches to hold unassigned states.
2. Strict Assignment Segregation: Continuous `assign` and blocking `=` statements were restricted to combinational blocks, while non-blocking `<=` statements were used exclusively in clocked `always @(posedge clk)` blocks.
3. Eliminating Testbench Race Conditions: In sequential testbenches, stimuli were driven on the falling clock edge (`@(negedge clk)`), providing a half-period setup margin (5 ns) before the DUT sampled inputs on the rising edge.

## 3.6 Professional & Documentation Responsibilities

Beyond RTL coding, professional responsibilities included rigorous source control and technical documentation. The entire codebase was restructured into standardized directories (`Task-1` through `Task-5`), verified against EDA `.gitignore` standards, and enriched with comprehensive Markdown documentation featuring truth tables, state transition diagrams, and waveform embeds.

## 3.7 Chapter Summary

This chapter detailed the execution of Tasks 1 through 4, establishing core competencies across combinational circuits, clocked sequential storage, and Finite State Machine control architectures. Chapter 4 will examine the technical, analytical, and professional learning outcomes attained.

# CHAPTER 4
LEARNING OUTCOMES

The six-week internship at Maincrafts served as a transformative learning experience that significantly augmented both domain-specific technical expertise and professional workplace capabilities. This chapter articulates the tangible learning outcomes acquired across the engineering lifecycle.

## 4.1 Technical Knowledge Enhancement

• Hardware Description Mastery: Developed native fluency in Verilog HDL syntax, behavioral constructs, continuous dataflow modeling, and procedural always blocks. Gained intuitive mastery over blocking vs. non-blocking execution semantics.

• Synchronous Digital Design Principles: Acquired deep practical understanding of clock distribution, edge-triggered state retention, setup and hold time constraints, and the prevention of metastability.

• FSM Architectural Engineering: Learned to formalize complex control problems into deterministic state transition graphs, select appropriate state encoding schemes (binary, Gray, one-hot), and design glitch-free Moore and Mealy output decoders.

• Register Transfer Logic & Memory Organization: Understood multi-port register file design, simultaneous dual-operand read decoding, write-enable qualification, and addressing mechanisms for RAM and ROM memory blocks.

## 4.2 Problem-Solving & Debugging Capabilities

• Waveform-Based Root Cause Analysis: Trained to isolate functional bugs by methodically tracing signal causality across simulation time steps in Vivado Simulator and GTKWave.

• Latch Inferencing Remediation: Identified and eradicated accidental latch inferencing by verifying full branch coverage in if-else and case constructs.

• Elimination of Simulation Delta-Cycle Races: Diagnosed and resolved subtle zero-delay delta-cycle races between stimulus drivers and DUT clock sampling through disciplined negative-edge stimulus application.

## 4.3 Industrial and EDA Tool Competency

Operating within Xilinx Vivado 2025.2 provided comprehensive familiarity with modern commercial EDA workflows. Navigating project hierarchies, running RTL elaboration, reviewing synthesis reports for resource utilization (LUTs, flip-flops, DSP slices), and configuring behavioral simulation parameters established true industrial tool fluency. Supplementary experience with command-line Icarus Verilog and GTKWave broadened versatility across both proprietary and open-source EDA platforms.

## 4.4 Professional & Workplace Skill Development

In addition to engineering proficiency, the internship nurtured core professional competencies: (1) Adherence to strict project milestones and delivery timelines; (2) Implementation of modern version control practices using Git; (3) Clear, professional technical writing complying with institutional academic guidelines; and (4) The capacity to receive mentor feedback constructively and iteratively refine engineering deliverables.

## 4.5 Project Development and Execution Skills

The progressive task structure cultivated end-to-end design lifecycle ownership: decomposing broad specifications into modular hardware blocks, developing synthesizable Verilog modules, engineering verification testbenches, and validating against theoretical truth tables. This lifecycle ownership was fully realized in the capstone datapath case study.

## 4.6 Chapter Summary

This chapter synthesized the technical, analytical, EDA, and professional learning outcomes gained throughout the internship. Chapter 5 presents the complete capstone Case Study on Processor Datapath Design and Verification.

# CHAPTER 5
CASE STUDY: PROCESSOR DATAPATH DESIGN AND VERIFICATION

## 5.1 Introduction to Processor Datapath Integration

In modern computer engineering, the central processing unit (CPU) is micro-architecturally partitioned into two collaborative sub-systems: the Control Unit and the Datapath. The Control Unit (orchestrated via Finite State Machines or microcode sequencers) generates the timing and command signals that direct the flow of data. The Datapath comprises the physical hardware structures—registers, arithmetic units, multiplexers, and internal buses—that perform data fetching, arithmetic/logical transformations, and result storage.

As the capstone project of the internship, a comprehensive Case Study was undertaken to design, simulate, and verify a complete 4-bit Mini Processor Datapath from the ground up using Verilog HDL and Xilinx Vivado. Individual functional building blocks—including a multi-function Arithmetic Logic Unit (ALU), a multi-port Register File, Random Access Memory (RAM), and Read-Only Memory (ROM)—were first designed and verified in isolation. Subsequently, these blocks were integrated into an interconnected processing loop capable of fetching two register operands, executing ALU operations, and writing the computed results back into the register bank within a single synchronous clock cycle.

## 5.2 System Architecture & Structural Block Diagram

The integrated 4-bit Mini Processor Datapath features a register-transfer micro-architecture optimized for rapid arithmetic and logical execution. Figure 5.1 illustrates the structural data routing across the system.

*Figure 5.1: Block Diagram of Integrated Mini Processor Datapath with ALU Write-Back*

## 5.3 Detailed Component RTL Design

### 1. 4-Bit Arithmetic Logic Unit (ALU - alu.v):

The ALU operates on two 4-bit binary operands (`A[3:0]` and `B[3:0]`), directed by a 3-bit operation select bus (`sel[2:0]`), producing a 4-bit output `Y[3:0]`. Modeled using an event-driven `always @(*)` procedural block, it executes five core operations as defined in Table 5.1.

*Table 5.1: 4-bit ALU Function Select, Operations, and Target Outputs*

### 2. Multi-Port Register File (register_file.v):

The register file incorporates four 4-bit registers (`reg [3:0] regfile [3:0]`). It provides synchronous write capabilities controlled by write enable (`we`) on `posedge clk`, along with continuous asynchronous data readout (`assign data_out = regfile[addr];`). Table 5.2 defines the register addressing scheme.

*Table 5.2: Register File Address Mapping and Storage Organization*

### 3. Synchronous Random Access Memory (RAM - ram.v):

The RAM module implements a 4-location × 4-bit memory matrix (`reg [3:0] memory [3:0]`). Controlled by write-enable `we`, it executes synchronous writes when `we = 1` and synchronous reads when `we = 0` on active clock edges. Table 5.3 summarizes its operation.

*Table 5.3: 4×4-bit Synchronous RAM Operations and Control Logic*

### 4. Combinational Read-Only Memory (ROM - rom.v):

The ROM block acts as permanent program/constant storage. Modeled using combinational `case(addr)`, it evaluates address transitions with zero clock cycle latency. Table 5.4 displays the hardcoded lookup contents.

*Table 5.4: 4×4-bit Pre-Programmed ROM Memory Contents*

### 5. Mini Datapath Integration & Write-Back Logic (datapath.v):

The integrated `datapath.v` module fuses the multi-port register bank and the ALU into a complete execution unit. Two simultaneous read buses (`read_addr1` and `read_addr2`) continuously decode operands `data1` and `data2`. The combinational ALU transforms these operands into `alu_result`. Under control of write enable (`we = 1`) and target address (`write_addr`), `alu_result` is latched into the destination register on the active rising clock edge (`posedge clk`).

## 5.4 Testbench Methodology & Input Verification

To validate the datapath, a dedicated testbench `tb_datapath.v` was engineered using directed stimulus vectors:
1. Initialization: Clock running at 10 ns period (`always #5 clk = ~clk;`). Register 0 preloaded with `4'b1010` (decimal 10), Register 1 preloaded with `4'b0011` (decimal 3), and Register 2 cleared to `4'b0000`.
2. Step-by-Step Functional Stimulus:
   • Step 1 (ADD): `alu_sel = 3'b000` → computes `1010 + 0011 = 1101` (13). Verified at output `result`.
   • Step 2 (SUB): `alu_sel = 3'b001` → computes `1010 - 0011 = 0111` (7). Verified at output `result`.
   • Step 3 (AND): `alu_sel = 3'b010` → computes `1010 & 0011 = 0010` (2). Verified at output `result`.
   • Step 4 (OR):  `alu_sel = 3'b011` → computes `1010 | 0011 = 1011` (11). Verified at output `result`.
   • Step 5 (XOR): `alu_sel = 3'b100` → computes `1010 ^ 0011 = 1001` (9). Verified at output `result`.
   • Step 6 (Write-Back): Set `alu_sel = 3'b000` (ADD), configure `write_addr = 2'b10` (R2), and assert `we = 1` for 10 ns.
   • Step 7 (Read-Back Verification): Deassert `we = 0`, configure `read_addr1 = 2'b10` and `read_addr2 = 2'b10`. Observe wire `r2_value` (`uut.registers[2]`) to prove persistent write-back of `4'b1101`.

## 5.5 Verilog RTL Source Code Snippets

The complete Verilog hardware implementations for the core datapath modules are provided below:

Listing 5.1: 4-bit Arithmetic Logic Unit RTL (alu.v)

Listing 5.2: Multi-Port Register File RTL (register_file.v)

Listing 5.3: Integrated Mini Datapath RTL (datapath.v)

## 5.6 Simulation Results, Waveform Analysis Tables & Outputs

Behavioral simulation in Vivado validated all sub-modules and the integrated datapath. Figures 5.2 through 5.5 present the waveforms for the ALU, Register File, RAM, and ROM.

*Figure 5.2: Behavioral Simulation Waveform of 4-Bit Arithmetic Logic Unit (ALU)*

*Figure 5.3: Behavioral Simulation Waveform of 4×4-Bit Multi-Port Register File*

*Figure 5.4: Behavioral Simulation Waveform of 4×4-Bit Synchronous RAM*

*Figure 5.5: Behavioral Simulation Waveform of 4×4-Bit Combinational ROM*

Figure 5.6 illustrates the comprehensive simulation waveform of the integrated Mini Datapath during write-back execution.

*Figure 5.6: Behavioral Simulation Waveform of Mini Processor Datapath Write-Back Execution*

Table 5.5 tabulates the exact verification sequence and verified output parameters during datapath simulation.

*Table 5.5: Verified Output Parameters for Mini Datapath Write-Back Execution*

## 5.7 Technical Challenges Faced & Debugging Solutions Applied

• Challenge: Simulation Glitches during Write-Back
  Solution: Initially, in testbench simulation, write enable was asserted concurrently with operand changes on posedge clk, leading to non-deterministic race conditions. This was resolved by driving all testbench control changes on negedge clk, guaranteeing a 5 ns setup window before the DUT posedge sampling.

• Challenge: Multi-Driver Bus Contention
  Solution: In early datapath prototypes, bidirectional internal buses created 'X' contention. The design was refactored into unidirectional multiplexer-based operand routing.

• Challenge: Combinational Loop Prevention
  Solution: Ensured the ALU output was cleanly latched into registers before feeding back into operands, preventing self-oscillating combinational feedback loops.

## 5.8 Case Study Summary & Conclusions

The Capstone Case Study successfully realized a working 4-bit microprocessor execution datapath. All mathematical, logical, memory, and register write-back operations demonstrated 100% functional fidelity matching theoretical predictions. This comprehensive project validated the culmination of all combinational, sequential, and register transfer principles learned across the internship.

# CONCLUSIONS & FUTURE SCOPE

## Conclusions

The six-week VLSI Design Internship at Maincrafts provided an exceptionally thorough, practical foundation in digital electronic systems engineering. By systematically advancing through combinational circuits, clocked sequential elements, Finite State Machines, and processor datapath integration, theoretical knowledge gained during undergraduate studies was transformed into synthesizable, industry-standard engineering capability.

1. Complete VLSI Lifecycle Comprehension: Mastered the 9-stage engineering flow, understanding how RTL code translates to gate-level netlists and silicon layout.

2. Synthesizable Verilog Proficiency: Acquired strict coding discipline distinguishing between synthesizable RTL logic and simulation testbench constructs, eliminating unintended latches and race conditions.

3. Verification Rigor: Engineered structured, event-driven testbenches achieving exhaustive stimulus coverage and validating waveforms against excitation tables.

4. Architectural Datapath Execution: Successfully realized and verified a closed-loop 4-bit microprocessor datapath integrating multi-operation ALUs, register files, and memories.

5. Industrial Tool Fluency: Attained operational mastery of the Xilinx Vivado 2025.2 Design Suite, Vivado Simulator, and GTKWave.

## Future Scope

The methodologies and competencies established during this internship serve as the foundational launchpad for several advanced VLSI engineering frontiers:
• SystemVerilog & UVM (Universal Verification Methodology): Transitioning from basic Verilog testbenches to object-oriented, constrained-random verification with functional coverage and assertions (SVA) adhering to IEEE 1800 standards.
• 32-Bit RISC-V Pipelined Processor: Scaling the 4-bit unpipelined datapath into a full 5-stage pipelined (IF, ID, EX, MEM, WB) RV32I RISC-V processor architecture supporting hazard detection, forwarding units, and branch prediction.
• FPGA Prototyping & Hardware-in-the-Loop Validation: Synthesizing the processor datapath onto physical FPGA development boards (such as the Digilent Basys 3 or ZedBoard Zynq-7000), interfacing real GPIOs, seven-segment displays, and UART peripherals.
• ASIC Physical Synthesis & Tapeout Flow: Exporting RTL designs through open-source ASIC physical design flows (e.g., OpenLane, Qflow, SkyWater 130 nm PDK) to generate DRC/LVS-clean GDSII layout geometries ready for foundry fabrication.

# REFERENCES

[1] S. Palnitkar, Verilog HDL: A Guide to Digital Design and Synthesis, 2nd ed. Upper Saddle River, NJ, USA: Prentice Hall PTR, 2003.

[2] M. D. Ciletti, Advanced Digital Design with the Verilog HDL, 2nd ed. Upper Saddle River, NJ, USA: Prentice Hall, 2010.

[3] IEEE Standard for Verilog Hardware Description Language, IEEE Std 1364-2005 (Revision of IEEE Std 1364-2001), pp. 1-590, Apr. 2006.

[4] J. Bhasker, A Verilog HDL Primer, 3rd ed. Allentown, PA, USA: Star Galaxy Publishing, 2005.

[5] D. A. Patterson and J. L. Hennessy, Computer Organization and Design: The Hardware/Software Interface (RISC-V Edition), Cambridge, MA, USA: Morgan Kaufmann, 2017.

[6] J. M. Rabaey, A. Chandrakasan, and B. Nikolic, Digital Integrated Circuits: A Design Perspective, 2nd ed. Upper Saddle River, NJ, USA: Pearson, 2003.

[7] Xilinx Inc., Vivado Design Suite User Guide: Logic Simulation (UG900), v2025.2, San Jose, CA, USA, 2025.

[8] Xilinx Inc., Vivado Design Suite User Guide: Synthesis (UG901), v2025.2, San Jose, CA, USA, 2025.

[9] Mohan Babu University, Department of Electronics and Communication Engineering, Guidelines for Internship Report Writing (HOD-ECE), Tirupati, AP, India, 2026.

[10] L. V. Charan, "VLSI-Internship-Tasks GitHub Repository," 2026. [Online]. Available: https://github.com/Charan141205/VLSI-Internship-Tasks.

