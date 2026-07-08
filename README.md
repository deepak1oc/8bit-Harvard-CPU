# 8-bit Harvard Architecture CPU

> A synthesizable 8-bit Harvard Architecture CPU designed in Verilog HDL featuring modular RTL implementation, functional verification, and FPGA synthesis.

---

## Overview

This project implements an 8-bit Harvard Architecture CPU using Verilog HDL. The processor follows the Harvard architecture by employing separate instruction and data memories, enabling simultaneous instruction fetch and data access. The design adopts a modular RTL approach and has been functionally verified through simulation before FPGA synthesis.

---

## Key Features

- 8-bit Harvard Architecture
- Separate Instruction and Data Memory
- Modular RTL Design
- Verilog HDL Implementation
- Functional Verification
- FPGA Synthesis
- Arithmetic Logic Unit (ALU)
- Register File
- Program Counter
- Instruction Memory (ROM)
- Data Memory (RAM)

---

## CPU Specifications

| Parameter | Value |
|-----------|-------|
| Architecture | Harvard |
| Data Width | 8-bit |
| Instruction Width | 16-bit |
| Register File | 8 × 8-bit Registers |
| Programming Language | Verilog HDL |
| Design Style | RTL |
| Verification | Simulation Testbench |
| Target Platform | FPGA |

---

## RTL Modules

The processor consists of the following hardware modules:

- CPU Top Module
- Program Counter (PC)
- Instruction Memory (ROM)
- Register File
- Arithmetic Logic Unit (ALU)
- Data Memory (RAM)

---

## Design Flow

1. RTL Design using Verilog HDL
2. Functional Simulation
3. RTL Verification
4. FPGA Synthesis
5. Timing Analysis

---

## Repository Structure

```text
8bit-Harvard-CPU/
│
├── rtl/
│   └── harvard_cpu.v
│
├── tb/
│   └── harvard_cpu_tb.v
│
├── README.md
└── LICENSE
```

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- RTL Design Methodology
- Functional Simulation
- FPGA Synthesis

---

## Future Enhancements

- Pipelined CPU Architecture
- Interrupt Handling
- Branch Instructions
- UART Peripheral Integration
- SPI Interface
- I²C Interface
- Cache Memory
- RISC-V Based Processor

---

## Author

**Sai Deepak Kodukulla**

Electronics and Communication Engineering Student

**Areas of Interest**
- RTL Design
- ASIC Design
- Digital Design
- FPGA Design
- Computer Architecture

---

## License

This project is released under the MIT License.
