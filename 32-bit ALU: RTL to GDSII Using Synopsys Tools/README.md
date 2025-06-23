# 📘 32-bit Arithmetic Logic Unit (ALU) with RTL to GDSII Flow

## 📌 Project Overview

This project demonstrates the end-to-end development of a **32-bit Arithmetic Logic Unit (ALU)** using Verilog HDL, covering the complete ASIC design flow: from RTL design to GDSII layout. The ALU supports basic arithmetic and logic operations and outputs essential status flags. The design is verified using simulation, synthesized for a standard cell library, and physically implemented with Synopsys EDA tools.

---

## 🔧 Key Functionalities

The 32-bit ALU supports four operations controlled by a 2-bit `Opcode`:

| Opcode | Operation | Description            |
| ------ | --------- | ---------------------- |
| 00     | ADD       | Adds A and B           |
| 01     | SUB       | Subtracts B from A     |
| 10     | AND       | Bitwise AND of A and B |
| 11     | OR        | Bitwise OR of A and B  |

### 🔹 Status Flags:

* `Z`: Zero flag – Set when result is zero
* `N`: Negative flag – Indicates if MSB (bit 31) of the result is 1
* `C`: Carry flag – Indicates carry-out from the most significant bit during addition/subtraction
* `V`: Overflow flag – Set when signed overflow occurs

---

## 📂 Folder Structure

```
ALU_32bit_Project/
├── rtl/              # Verilog HDL source files (ALU.v)
├── testbench/        # Testbench files (ALU_tb.v)
├── scripts/          # Synthesis, place & route scripts (TCL)
├── reports/          # Area, timing, power reports
├── waveforms/        # Simulation output waveforms (.vcd, .fsdb)
├── gds/              # Final GDSII layout, DEF, and netlist
└── README.md
```

---

## 📁 Important Files

* `rtl/ALU.v`: Main ALU RTL design
* `testbench/ALU_tb.v`: Testbench for verifying functionality and flags
* `scripts/dc_synth_alu.tcl`: Design Compiler script for synthesis
* `scripts/icc_pnr_alu.tcl`: IC Compiler script for floorplanning and routing
* `gds/alu_final.gds`: Final layout ready for fabrication

---

## 📊 RTL to GDSII Flow Summary

1. **RTL Design**: Described in Verilog with parameterizable width and opcode decoding.
2. **Simulation**: Functional simulation using Synopsys VCS® with automated testbench.
3. **Waveform Debugging**: Signal and register value verification using Synopsys Verdi®.
4. **Synthesis**: RTL is synthesized to a gate-level netlist using Synopsys Design Compiler®.
5. **Floorplanning and PnR**: IC Compiler™ is used for placement, clock tree synthesis (CTS), routing, and congestion analysis.
6. **DRC/LVS and Signoff**: Physical checks are performed, and the layout is exported as a GDSII file.

---

## 🛠️ Tools Used

| Tool                      | Role                                |
| ------------------------- | ----------------------------------- |
| Synopsys VCS®             | Functional Simulation               |
| Synopsys Verdi®           | Waveform Debugging                  |
| Synopsys Design Compiler® | RTL Synthesis to Gate-level Netlist |
| Synopsys IC Compiler™     | Physical Design & GDSII Export      |

---


## 📌 Future Enhancements

* Extend ALU to support operations like XOR, NAND, Shift Left/Right
* Add pipelining to improve performance
* Integrate with CPU datapath for real-world SoC usage
* Use Synopsys PrimeTime® for STA and power analysis


