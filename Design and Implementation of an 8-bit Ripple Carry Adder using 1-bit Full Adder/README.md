# 📘 8-bit Ripple Carry Adder using 1-bit Full Adder (RTL to GDSII)

## 📌 Project Overview

This project demonstrates the complete ASIC design flow for an **8-bit Ripple Carry Adder (RCA)** designed using multiple **1-bit Full Adders** in a structural hierarchy. The RCA performs bit-wise binary addition with ripple propagation of the carry signal across each stage. The project is implemented using Verilog HDL and processed through the full **RTL to GDSII backend flow using Synopsys EDA tools**.

---

## 🔧 Key Features

* Modular design using 1-bit Full Adder as a building block
* Structural instantiation to create an 8-bit wide adder
* Realistic carry propagation from LSB to MSB
* Fully verified using testbench with randomized and edge case inputs
* RTL-to-GDSII implementation with complete physical design reports and layout

---

## 🔸 Design Structure

Each 1-bit Full Adder accepts three inputs: A, B, and carry-in (Cin) and produces two outputs: Sum and carry-out (Cout). The Ripple Carry Adder connects these modules in sequence:
![image](https://github.com/user-attachments/assets/c8508118-a9c4-4c2f-88b7-7d3d59c3f2f1)

```
FA0 (A[0], B[0], Cin) => Cout0
FA1 (A[1], B[1], Cout0) => Cout1
...
FA7 (A[7], B[7], Cout6) => Cout7
```

Sum\[7:0] and Cout7 form the final 8-bit addition result.

---

## 📂 Folder Structure

```
8bit_RCA_Project/
├── rtl/              # Verilog modules (adder_1b.v, adder_8b.v)
├── testbench/        # Testbench (tb_rca.v)
├── scripts/          # DC and ICC scripts for synthesis and layout
├── reports/          # Area, timing, and power reports
├── waveforms/        # VCD/FSDB waveform data for debugging
├── gds/              # Final GDSII layout, DEF, netlists
└── README.md
```

---

## 📁 Key Files

* `adder_1b.v`: 1-bit Full Adder RTL module
* `adder_8b.v`: 8-bit RCA composed of 8 instances of `adder_1b`
* `tb_rca.v`: Functional testbench with corner cases and random inputs
* `dc_synth_rca.tcl`: Design Compiler synthesis script
* `rca_final.gds`: Final layout file from IC Compiler

---

## 📊 RTL to GDSII Flow Summary

1. **RTL Coding** using Verilog HDL
2. **Simulation** with VCS and waveform debug in Verdi
3. **Synthesis** using Design Compiler targeting standard cell library
4. **Physical Design** in IC Compiler: floorplanning, placement, routing
5. **Clock Tree Synthesis**, power planning, and congestion analysis
6. **DRC/LVS Checks**, and final **GDSII layout export**

---

## 🛠️ Tools Used

| Tool                      | Purpose                           |
| ------------------------- | --------------------------------- |
| Synopsys VCS®             | Functional Simulation             |
| Synopsys Verdi®           | Waveform Debugging                |
| Synopsys Design Compiler® | RTL Synthesis                     |
| Synopsys IC Compiler™     | Floorplanning, Placement, Routing |

---


## 📌 Future Enhancements

* Extend to 16-bit/32-bit RCA for higher word sizes
* Add pipelining stages to reduce delay
* Design CLA (Carry Lookahead Adder) for performance comparison
* Include synthesis and power estimation using Synopsys PrimeTime®

---
