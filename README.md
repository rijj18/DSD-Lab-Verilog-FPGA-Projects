# Verilog FPGA Lab Experiments

A comprehensive collection of **Digital System Design (DSD)** experiments implemented using **Verilog HDL**.
All designs are modeled, simulated, and verified using **Xilinx Vivado**, with selected modules deployed on **FPGA hardware (Basys-3 / Nexys A7)**.

---

## 🚀 Key Highlights

* RTL Design using Verilog HDL
* Functional Simulation & Waveform Analysis
* FPGA Implementation (Basys-3 / Nexys A7)
* Testbench-based Verification
* Datasheet-based Digital IC Modeling

---

## 🔷 Combinational Circuits

### Multiplexers – 4-to-1 MUX

Behavioral and structural modeling implemented.

📂 View Implementation:

* 🔗 [MUX 4:1](./1_Combinational_Circuits/Multiplexers/MUX_4to1/)

---

### Ripple Carry Adder

Includes Full Adder and multi-bit Ripple Carry Adder design.

📂 View Implementation:

* 🔗 [Adders](./1_Combinational_Circuits/Adders/)

---

### Binary to 7-Segment Converter

Converts a 4-bit binary input into signals to drive a 7-segment display (0–9).

🧠 Concept:
Each binary input activates specific segments (a–g) to display decimal digits.

📂 View Implementation:

* [7-Segment](./Experiment-03-7Segment/)

---

## 🔷 Sequential Circuits

### Shift Registers

* 4-bit SIPO (Serial-In Parallel-Out)
* Universal Shift Register (74194)

📂 View:

* 🔗 [Shift Registers](./2_Sequential_Circuits/Shift_Registers/)

---

### Counters

* 4-bit Ripple Counter (7473 JK Flip-Flop)

📂 View:

* 🔗 [Counters](./2_Sequential_Circuits/Counters/)

---

## 🔷 Advanced Designs

### Arithmetic Logic Unit (ALU)

#### 4-bit ALU

* Functional simulation and verification

#### 2-bit ALU (FPGA Implementation)

* Implemented on FPGA hardware
* Includes constraints file

📂 View Implementation:

* 🔗 [ALU](./3_Advanced_Designs/ALU/)

---

## 🎯 Mini Project – SN74x169 Counter

A fully synchronous, presettable 4-bit up/down binary counter modeled using Verilog.

### ✔ Features

* Up/Down Counting
* Synchronous Load
* Asynchronous Clear
* Carry/Borrow Support

### 🧠 FPGA Implementation

* Tested on Basys-3 / Nexys A7
* Output verified via onboard LEDs

📂 Project Files:

* 🔗 [SN74x169 Counter](./4_Mini_Projects/SN74x169/)

---

## 🛠 Tools & Technologies

* Xilinx Vivado
* Verilog HDL
* FPGA (Artix-7 based boards)
* Simulation Waveforms
* Datasheet-based Design

---

## 📌 Author

**Rijul Sharma**
Electronics & Communication Engineering (ECE)

Passionate about:

* Digital Design
* FPGA Development
* Embedded Systems

