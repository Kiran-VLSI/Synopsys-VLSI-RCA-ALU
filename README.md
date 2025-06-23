# Synopsys-VLSI-RCA-ALU (RTL to GDSII Flow)

This repository contains two digital design projects—**8-bit Ripple Carry Adder using 1-bit Full Adders** and a **32-bit Arithmetic Logic Unit (ALU)**—implemented using **Synopsys EDA tools**. Both designs follow the **complete RTL to GDSII digital IC design flow**, including RTL coding, synthesis, simulation, timing analysis, placement, routing, and final GDSII generation.

---

## 🚀 Projects Overview

### 🔧 Project 1: 8-bit Ripple Carry Adder using 1-bit Full Adder

#### 📘 Description:
- A structural Verilog design that builds an 8-bit adder by connecting eight 1-bit Full Adders in series.
- Demonstrates hierarchical and modular RTL design principles.

### 🔧 Project 2: 32-bit Arithmetic Logic Unit (ALU)

#### 📘 Description:
- A behavioral Verilog design that performs ADD, SUB, AND, OR, XOR, and SLT operations.
- Operation is selected using a 3-bit opcode.
- Designed with reusability and functional coverage in mind.

---

Thanks! Based on your input, here is the **final updated section** for your `README.md` that clearly highlights the Synopsys EDA tools used and their purpose in the **complete RTL to GDSII design flow**:

---

## 🛠️ Synopsys EDA Tools Used

This complete **RTL to GDSII digital IC design flow** is achieved with the help of the following **Synopsys EDA tools**:

### 🔹 **Synopsys VCS® (Verilog Compiler Simulator)**

> Used for compiling and simulating RTL code and testbenches. It verifies the functional correctness of the design before synthesis.

### 🔹 **Synopsys Verdi®**

> An advanced debugging platform used to analyze simulation waveforms, view design hierarchy, and trace signals across the design. Integrated with VCS for visual debugging.

### 🔹 **Synopsys Design Compiler®**

> Performs logic synthesis — converts Verilog RTL code into a technology-mapped gate-level netlist optimized for area, power, and timing.

### 🔹 **Synopsys IC Compiler™ (ICC)**

> A complete physical design tool used for:

* Floorplanning
* Power planning
* Placement
* Clock Tree Synthesis (CTS)
* Routing
* GDSII file generation

---

You can place this section under **🧱 RTL to GDSII Flow** or make it a separate section in your `README.md` like:

```markdown
## 🛠️ Synopsys EDA Tools Used
...
```

Would you like me to generate the full final `README.md` including this section?

## 📂 Repository Structure

```

Synopsys-VLSI-RCA-ALU/
├── Project\_1\_8bit\_Ripple\_Carry\_Adder/
│   ├── rtl/
│   ├── testbench/
│   ├── scripts/
│   ├── reports/
│   ├── waveforms/
│   └── gds/
│       └── rca\_final.gds
│
├── Project\_2\_32bit\_ALU/
│   ├── rtl/
│   ├── testbench/
│   ├── scripts/
│   ├── reports/
│   ├── waveforms/
│   └── gds/
│       └── alu\_final.gds

```

---

## 🧠 Topics Covered

```

Verilog VLSI RTL-to-GDSII Synopsys DesignCompiler VCS PrimeTime ICCompiler Floorplanning PowerPlanning Placement Routing ClockTreeSynthesis GDSII HDL DigitalDesign Synthesis Simulation TimingAnalysis StaticTimingAnalysis FullAdder ALU

```

---

## 🎯 Learning Outcomes

- Hierarchical RTL design using Verilog
- Writing and verifying testbenches
- Synthesis, simulation, and STA using Synopsys tools
- Tcl scripting for automation
- Hands-on full flow: from RTL to GDSII
- Exposure to physical design concepts and layout generation

---

