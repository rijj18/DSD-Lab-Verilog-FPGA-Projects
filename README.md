# 🧪 Verilog-FPGA-Lab-Experiments

This repository presents a complete collection of **Digital System Design (DSD) Lab experiments**, implemented using **Verilog HDL** with industry-standard digital design practices.  
All modules were modeled, simulated, and verified in **Xilinx Vivado**, with some designs synthesized on **FPGA platforms** for hardware validation.  
Each experiment directory includes RTL code, testbenches, simulation waveforms, synthesis results (where applicable), and detailed documentation to support learning and reproduction.


---

## 🔬 **List of Experiments**



### **2️⃣ Multiplexers – 4-to-1 MUX**

- 📄 [Structural Model](Experiment-01-Multiplexer/mux4to1_structural.v)  
- 📄 [Behavioral Model](Experiment-01-Multiplexer/mux4to1_behavioral.v)  
- 🧪 [Testbench](Experiment-01-Multiplexer/mux_tb.v)
- 🖼️ [Schematic](Experiment-01-Multiplexer/schematic.jpg)
- 🖼️ [Simulation](Experiment-01-Multiplexer/simulation.jpg)
- 📘 [Report](Experiment-01-Multiplexer/report.md)  

---

### **3️⃣ Ripple Carry Adder**

- 📄 [Full Adder](Experiment-02-Ripple-Carry-Adder/full_adder.v)  
- 📄 [Ripple Carry Adder](Experiment-02-Ripple-Carry-Adder/ripple_carry_adder.v)  
- 🧪 [Testbench](Experiment-02-Ripple-Carry-Adder/rca_tb.v)
- 🖼️ [Schematic](Experiment-02-Ripple-Carry-Adder/schematic.jpg)
- 🖼️ [Simulation](Experiment-02-Ripple-Carry-Adder/simulation.jpg) 
- 📘 [Report](Experiment-02-Ripple-Carry-Adder/report.md)

---

## 🔢 **Arithmetic Logic Units (ALU)**

### **4️⃣ 4-bit ALU**

- 📄 [ALU Module](Experiment-03-4bit-ALU/alu.v)  
- 🧪 [Testbench](Experiment-03-4bit-ALU/alu_tb.v)
- 🖼️ [Schematic](Experiment-03-4bit-ALU/schematic.jpg)
- 🖼️ [Simulation](Experiment-03-4bit-ALU/simulation.jpg) 
- 📘 [Report](Experiment-03-4bit-ALU/report.md)

### **2-bit ALU (FPGA Implementation)**

- 📄 [2-bit ALU Module](Experiment-04-2bit-ALU-FPGA/alu_2bit.v)  
- 🧪 [Testbench](Experiment-04-2bit-ALU-FPGA/alu_2bit_tb.v)
- 🖼️ [Schematic](Experiment-04-2bit-ALU/schematic.jpg)
- 🖼️ [Simulation](Experiment-04-2bit-ALU/simulation.jpg)  
- 📎 [Constraints File](Experiment-04-2bit-ALU-FPGA/xdc_constraints.xdc)  
- 📘 [Report](Experiment-04-2bit-ALU-FPGA/report.md)

---

## 🔁 **Shift Registers**

### **6️⃣ 4-bit Serial-In Parallel-Out (SIPO)**

- 📄 [SIPO Module](Experiment-05-SIPO-Shift-Register/sipo.v)  
- 🧪 [Testbench](Experiment-05-SIPO-Shift-Register/sipo_tb.v)
- 🖼️ [Schematic](Experiment-05-SIPO-Shift-Register/schematic.jpg)
- 🖼️ [Simulation](Experiment-05-SIPO-Shift-Register/simulation.jpg) 
- 📘 [Report](Experiment-05-SIPO-Shift-Register/report.md)

---

## 🔀 **Universal Shift Register (74194)**

### **7️⃣ IC 74194 Operations**

- 📄 [Shift Register Module](Experiment-06-Universal-Shift-Register/shift_register_74194.v)  
- 🧪 [Testbench](Experiment-06-Universal-Shift-Register/shift_register_tb.v)
- 🖼️ [Schematic](Experiment-06-Universal-Shift-Register/schematic.jpg)
- 🖼️ [Simulation](Experiment-06-Universal-Shift-Register/simulation.jpg) 
- 📘 [Report](Experiment-06-Universal-Shift-Register/report.md)

---

## 🔢 **Counters**

### **8️⃣ 4-bit Ripple Counter (7473 JK FF)**

- 📄 [Counter Module](Experiment-07-Ripple-Counter/ripple_counter.v)  
- 🧪 [Testbench](Experiment-07-Ripple-Counter/ripple_counter_tb.v)
- 🖼️ [Schematic](Experiment-07-Ripple-Counter/schematic.jpg)
- 🖼️ [Simulation](Experiment-07-Ripple-Counter/simulation.jpg) 
- 📘 [Report](Experiment-07-Ripple-Counter/report.md)

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
- 🖼️ [Simulation](Mini-Project-SN74x169/simulation.jpg) 
- 📎 [Constraints File (FPGA)](Mini-Project-SN74x169/constraints.xdc)  
- 📘 [Project Report](Mini-Project-SN74x169/project_report.md)

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
