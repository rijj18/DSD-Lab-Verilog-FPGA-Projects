# 🧪 Verilog-FPGA-Lab-Experiments

This repository presents a complete collection of **Digital System Design (DSD) Lab experiments**, implemented using **Verilog HDL** with industry-standard digital design practices.  
All modules were modeled, simulated, and verified in **Xilinx Vivado**, with some designs synthesized on **FPGA platforms** for hardware validation.  
Each experiment directory includes RTL code, testbenches, simulation waveforms, synthesis results (where applicable), and detailed documentation to support learning and reproduction.


---

## 🔬 **List of Experiments**

---

### **1️⃣ Structural/Behavioral Modeling of Y = (ab)' + cd'**

- 📄 [Structural Model](Experiment-01-Y-Expression/structural_model.v)  
- 📄 [Behavioral Model](Experiment-01-Y-Expression/behavioral_model.v)  
- 🧪 [TB (Structural)](Experiment-01-Y-Expression/tb_structural.v)  
- 🧪 [TB (Behavioral)](Experiment-01-Y-Expression/tb_behavioral.v)
- 🖼️ [Schematic](Experiment-01-Y-Expression/schematic.jpg)
- 🖼️ [Simulation](Experiment-01-Y-Expression/simulation.jpg)
- 📘 [Report](Experiment-01-Y-Expression/report.pdf)  

---

### **2️⃣ Multiplexers – 4-to-1 MUX**

- 📄 [Structural Model](Experiment-02-Multiplexer/mux4to1_structural.v)  
- 📄 [Behavioral Model](Experiment-02-Multiplexer/mux4to1_behavioral.v)  
- 🧪 [Testbench](Experiment-02-Multiplexer/mux_tb.v)  
- 📘 [Report](Experiment-02-Multiplexer/report.pdf)  

---

### **3️⃣ Ripple Carry Adder**

- 📄 [Full Adder](Experiment-03-Ripple-Carry-Adder/full_adder.v)  
- 📄 [Ripple Carry Adder](Experiment-03-Ripple-Carry-Adder/ripple_carry_adder.v)  
- 🧪 [Testbench](Experiment-03-Ripple-Carry-Adder/rca_tb.v)  
- 📘 [Report](Experiment-03-Ripple-Carry-Adder/report.pdf)

---

## 🔢 **Arithmetic Logic Units (ALU)**

### **4️⃣ 4-bit ALU**

- 📄 [ALU Module](Experiment-04-4bit-ALU/alu.v)  
- 🧪 [Testbench](Experiment-04-4bit-ALU/alu_tb.v)  
- 📘 [Report](Experiment-04-4bit-ALU/report.pdf)

### **2-bit ALU (FPGA Implementation)**

- 📄 [2-bit ALU Module](Experiment-05-2bit-ALU-FPGA/alu_2bit.v)  
- 🧪 [Testbench](Experiment-05-2bit-ALU-FPGA/alu_2bit_tb.v)  
- 📎 [Constraints File](Experiment-05-2bit-ALU-FPGA/xdc_constraints.xdc)  
- 📘 [Report](Experiment-05-2bit-ALU-FPGA/report.pdf)

---

## 🔁 **Shift Registers**

### **6️⃣ 4-bit Serial-In Parallel-Out (SIPO)**

- 📄 [SIPO Module](Experiment-06-SIPO-Shift-Register/sipo.v)  
- 🧪 [Testbench](Experiment-06-SIPO-Shift-Register/sipo_tb.v)  
- 📘 [Report](Experiment-06-SIPO-Shift-Register/report.pdf)

---

## 🔀 **Universal Shift Register (74194)**

### **7️⃣ IC 74194 Operations**

- 📄 [Shift Register Module](Experiment-07-Universal-Shift-Register/shift_register_74194.v)  
- 🧪 [Testbench](Experiment-07-Universal-Shift-Register/shift_register_tb.v)  
- 📘 [Report](Experiment-07-Universal-Shift-Register/report.pdf)

---

## 🔢 **Counters**

### **8️⃣ 4-bit Ripple Counter (7473 JK FF)**

- 📄 [Counter Module](Experiment-08-Ripple-Counter/ripple_counter.v)  
- 🧪 [Testbench](Experiment-08-Ripple-Counter/ripple_counter_tb.v)  
- 📘 [Report](Experiment-08-Ripple-Counter/report.pdf)

---
 
## 🎯 **Mini Project – Synchronous Presettable 4-bit Up/Down Binary Counter (SN74x169)**

A complete Verilog implementation of the **SN74x169**, a fully synchronous, presettable 4-bit up/down binary counter used in digital systems.  
The design is modeled exactly as per the datasheet timing diagrams and truth tables.

### ✔ Features Implemented
- 🟢 **4-bit synchronous binary counter**  
- 🔼 **Up-counting mode**  
- 🔽 **Down-counting mode**  
- ⏳ **Synchronous load / preset operation**  
- 📴 **Asynchronous clear**  
- 🔁 **Carry and Borrow output support**  
- 💾 **Datasheet-accurate behavior**

### 📦 Files Included
- 📄 [SN74x169 Verilog Module](Mini-Project-SN74x169/sn74x169.v)  
- 🧪 [Testbench](Mini-Project-SN74x169/sn74x169_tb.v)  
- 📎 [Constraints File (FPGA)](Mini-Project-SN74x169/constraints.xdc)  
- 📘 [Project Report](Mini-Project-SN74x169/project_report.pdf)

### 🧠 **FPGA Implementation**
- Implemented and tested on Basys-3 / Nexys-A7  
- Outputs verified using on-board LEDs  
- Fully synchronous behavior validated  

---

## 🛠 **Tools & Technologies**

- **Xilinx Vivado** (simulation + synthesis)  
- **Verilog HDL**  
- **FPGA Boards** (Basys 3 / Nexys A7 / Artix-7)  
- **Mixed Signal Oscilloscope (MSO)**  
- **Datasheet-Based IC Modeling**  
