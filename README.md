This repository contains two RTL design projects implemented using **Synopsys EDA tools** (Design Compiler, VCS, and PrimeTime). The projects demonstrate fundamental building blocks of digital design—**an 8-bit Ripple Carry Adder using 1-bit Full Adder** and a **32-bit Arithmetic Logic Unit (ALU)**—with complete synthesis, simulation, and timing analysis flows.

---

## 🔧 Project 1: 8-bit Ripple Carry Adder using 1-bit Full Adder

### 📘 Description
This project implements an 8-bit Ripple Carry Adder (RCA) by cascading eight 1-bit Full Adders. Each Full Adder takes two input bits and a carry-in and produces a sum and a carry-out. The carry-out of one stage ripples into the next, forming the RCA.

### 🧠 Key Concepts
- Structural Verilog design
- Reusability of 1-bit Full Adder module
- Hierarchical design approach

### 🛠 Tools Used
- **Synopsys Design Compiler (DC)** – RTL to gate-level synthesis  
- **Synopsys VCS** – Simulation and functional verification  
- **Synopsys PrimeTime** – Static Timing Analysis (STA)

### 📁 File Structure
```

Project\_1\_8bit\_Ripple\_Carry\_Adder/
├── rtl/
│   ├── full\_adder.v
│   └── ripple\_carry\_adder.v
├── testbench/
│   └── tb\_rca.v
├── scripts/
│   ├── dc\_synthesis.tcl
│   ├── vcs\_simulation.tcl
│   └── pt\_analysis.tcl
├── reports/
│   ├── synthesis\_report.txt
│   └── timing\_report.txt
└── waveforms/
└── rca.vcd

```

---

## 🔧 Project 2: 32-bit Arithmetic Logic Unit (ALU)

### 📘 Description
This project implements a 32-bit ALU that can perform arithmetic and logical operations such as ADD, SUB, AND, OR, XOR, and SLT. The operations are selected using a 3-bit opcode. The design follows a behavioral Verilog approach and is verified through a testbench.

### 🧠 Key Concepts
- Opcode-controlled operation selection
- Behavioral modeling with `case` statements
- 32-bit datapath design

### 🛠 Tools Used
- **Synopsys Design Compiler (DC)** – Synthesis  
- **Synopsys VCS** – Functional simulation  
- **Synopsys PrimeTime** – Timing analysis and optimization

### 📁 File Structure
```

Project\_2\_32bit\_ALU/
├── rtl/
│   └── alu\_32bit.v
├── testbench/
│   └── tb\_alu.v
├── scripts/
│   ├── dc\_synthesis.tcl
│   ├── vcs\_simulation.tcl
│   └── pt\_analysis.tcl
├── reports/
│   ├── synthesis\_report.txt
│   └── timing\_report.txt
└── waveforms/
└── alu.vcd

```

---

## 📚 Topics Covered

```

Verilog VLSI DigitalDesign Synopsys RTL EDA DesignCompiler VCS PrimeTime RCA ALU TimingAnalysis Synthesis Simulation HDL Tcl FullAdder RippleCarryAdder ArithmeticLogicUnit GateLevelNetlist FunctionalVerification StaticTimingAnalysis

```

---

## 🎯 Learning Outcomes
- RTL design and modular coding in Verilog
- Testbench creation for simulation
- Use of Synopsys tools for synthesis and STA
- Tcl scripting for EDA automation
- Waveform generation and timing report analysis

---


