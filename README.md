# 🧪 Verilog FPGA Lab Experiments

A comprehensive collection of **Digital System Design (DSD) experiments** implemented using **Verilog HDL**.  
All designs are modeled, simulated, and verified using **Xilinx Vivado**, with selected modules deployed on **FPGA hardware**.

---

## 🚀 Key Highlights

- ✅ RTL Design using Verilog HDL  
- ✅ Functional Simulation & Waveform Analysis  
- ✅ FPGA Implementation (Basys-3 / Nexys A7)  
- ✅ Testbench-based Verification  
- ✅ Datasheet-based Digital IC Modeling  

---

## 🔬 Experiments

### 1. Multiplexers – 4-to-1 MUX
📂 Files:
- 🔗 [Behavioral Model](Experiment-02-Multiplexer/mux4to1_behavioral.v)
- 🔗 [Structural Model](Experiment-02-Multiplexer/mux4to1_structural.v)
- 🔗 [Testbench](Experiment-02-Multiplexer/mux_tb.v)
- 📄 [Report](Experiment-02-Multiplexer/report.md)
- 🖼️ [Schematic](Experiment-02-Multiplexer/schematic.jpg)
- 🖼️ [Simulation](Experiment-02-Multiplexer/simulation.jpg)

---

### 2. Ripple Carry Adder
- 📄 Full Adder  
- 📄 Ripple Carry Adder  
- 🧪 Testbench  
- 🖼️ Schematic & Simulation  
- 📘 Report  

---

### 3. Binary to 7-segment converter
📖 **Description:**  
Converts a 4-bit binary input into corresponding signals to drive a 7-segment display (0–9)
📂 **Files:**
- 🔗 [Verilog Code](Experiment-03-7Segment/bin_to_7seg.v)
- 🔗 [Testbench](Experiment-03-7Segment/tb.v)
- 🖼️ [Simulation Output](Experiment-03-7Segment/simulation.jpg)
- 🖼️ [Schematic Output](Experiment-03-7Segment/schematic.jpg)
- 📄 [Report](Experiment-03-7Segment/report.md)
  
🧠 **Concept:**  
Each binary input activates specific segments (a–g) to display decimal digits.
  

---

### 4. Arithmetic Logic Unit (ALU)

#### 4.1 4-bit ALU
- 📄 ALU Module  
- 🧪 Testbench  
- 🖼️ Schematic & Simulation  
- 📘 Report  

#### 4.2 2-bit ALU (FPGA Implementation)
- 📄 ALU Module  
- 🧪 Testbench  
- 🖼️ Schematic & Simulation  
- 📎 Constraints File  
- 📘 Report  

---

### 5. Shift Registers

#### 5.1 4-bit SIPO (Serial-In Parallel-Out)
- 📄 Module  
- 🧪 Testbench  
- 🖼️ Schematic & Simulation  
- 📘 Report  

#### 5.2 Universal Shift Register (74194)
- 📄 Module  
- 🧪 Testbench  
- 🖼️ Schematic & Simulation  
- 📘 Report  

---

### 6. Counters

#### 6.1 4-bit Ripple Counter (7473 JK FF)
- 📄 Module  
- 🧪 Testbench  
- 🖼️ Schematic & Simulation  
- 📘 Report  

---

### 6. 🎯 Mini Project – SN74x169 Counter

A fully synchronous, presettable **4-bit up/down binary counter** modeled using Verilog.

#### ✔ Features
- 🔼 Up/Down Counting  
- ⏳ Synchronous Load  
- 📴 Asynchronous Clear  
- 🔁 Carry/Borrow Support  

#### 📦 Files
- 📄 Verilog Module  
- 🧪 Testbench  
- 🖼️ Simulation  
- 📎 Constraints File  
- 📘 Report  

#### 🧠 FPGA Implementation
- ✔ Tested on Basys-3 / Nexys A7  
- ✔ Output verified via LEDs  

---

## 🛠 Tools & Technologies

- 🔧 Xilinx Vivado  
- 💻 Verilog HDL  
- 🔌 FPGA (Artix-7 based boards)  
- 📊 Simulation Waveforms  
- 📄 Datasheet-based Design  

---

## 📌 Author

**Rijul Sharma**  
Electronics & Communication Engineering (ECE)  
Passionate about **Digital Design, FPGA & Embedded Systems**
