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

## 🧱 Full RTL to GDSII Flow

| Step | Description | Tool |
|------|-------------|------|
| 1️⃣ RTL Coding | Verilog design of Full Adder, RCA, and ALU | Any Text Editor |
| 2️⃣ Functional Simulation | RTL verification through testbench | Synopsys VCS |
| 3️⃣ Synthesis | RTL to gate-level netlist conversion | Synopsys Design Compiler |
| 4️⃣ Static Timing Analysis (STA) | Timing checks and slack analysis | Synopsys PrimeTime |
| 5️⃣ Floorplanning | Die/Cell planning, pin placement | Synopsys IC Compiler II |
| 6️⃣ Power Planning | Power ring and stripes creation | IC Compiler II |
| 7️⃣ Placement | Standard cell placement | IC Compiler II |
| 8️⃣ Clock Tree Synthesis (CTS) | Clock buffer insertion and optimization | IC Compiler II |
| 9️⃣ Routing | Metal layer routing for connections | IC Compiler II |
| 🔟 Signoff & GDSII Export | Final checks and GDSII generation | IC Compiler II |

---

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

## 🙏 Acknowledgment

Special thanks to **Latha ma'am** for continuous guidance and mentorship throughout the design process.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

```

---

✅ Let me know if you want:

* `.README.md` file download
* A sample `.tcl` script for synthesis or layout
* A matching PowerPoint or report template for project submission

Would you like me to help you generate a visual flow diagram too?
