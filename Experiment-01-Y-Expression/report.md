# Experiment 1 – Structural Modeling of Y = (ab)' + cd'

---

## Aim
To design, implement, and simulate the Boolean function  
Y = (ab)' + cd'
using structural Verilog, and verify its correctness through waveform analysis.

---

## Introduction
Structural modeling represents digital circuits using interconnected logic gates.  
This experiment focuses on implementing a Boolean expression at the gate level, similar to actual hardware implementation used in FPGA and ASIC design.

By decomposing the expression into gates and wiring them together, we build a detailed understanding of RTL-level circuit construction.

---

## Theory

### Boolean Expression
Y = (ab)' + cd'

## Design Files
All design-related files for Experiment 1 are included in this directory:

- 📄 **[Structural Verilog Model](structural_model.v)**
- 📄 **[Behavioral Verilog Model](behavioral_model.v)**
- 🧪 **[Structural Testbench](testbench.v)**
- 🧪 **[Behavioral Testbench](testbench_behav.v)**
- 🖼️ **[Schematic Diagram](exp1_schematic.jpg)**
- 📉 **[Simulation Waveform](waveform.jpg)**

All files were developed and simulated using **Xilinx Vivado**.

---

## Methodology

### 1. Structural Coding
- Logic gates were instantiated individually.
- Intermediate wires were defined for gate outputs.
- Final expression was constructed using interconnected gate outputs.

### 2. Behavioral Coding
- Used high-level Verilog operators (`&`, `~`, `|`) to validate functional correctness.
- Served as a reference model for comparison.

### 3. Testbench Design
- All possible input combinations of `a`, `b`, `c`, and `d` were applied.
- `$monitor` and time delays were used for real-time output inspection.
- Both structural and behavioral models were tested under identical stimulus.

### 4. Simulation & Verification
- Waveform outputs were generated using Vivado Simulator.
- Outputs were checked against the truth table.
- Structural and behavioral waveforms were compared for functional equivalence.

---

## Observation

### Functional Behavior
- Y becomes **1** when:
  - `(ab)' = 1` → meaning **a AND b** is **0**
  - OR when `cd' = 1` → meaning **c = 1** and **d = 0**

### Truth Table Snippet

| a | b | c | d | (ab)' | d' | cd' | Y |
|---|---|---|---|--------|-----|------|---|
| 0 | 0 | 0 | 0 |   1    |  1  |  0   | 1 |
| 0 | 1 | 1 | 0 |   1    |  1  |  1   | 1 |
| 1 | 1 | 1 | 1 |   0    |  0  |  0   | 0 |
| 1 | 0 | 1 | 0 |   1    |  1  |  1   | 1 |

### Waveform Verification
- Waveforms confirm correct transitions for all gate outputs.
- No glitches or hazards observed.
- Structural and behavioral outputs match exactly.

---

## Conclusion
The Boolean expression  
Y = (ab)' + cd' 
was successfully implemented using structural Verilog.  
Simulation results validated correct functionality by matching behavioral model outputs and truth-table expectations.

This experiment strengthened understanding of:
- Gate-level digital design  
- Structural HDL modeling  
- Testbench development  
- Waveform analysis  
- Hardware-representative RTL design  

These concepts form a strong foundation for roles in FPGA development, RTL design, digital verification, and core electronics engineering.

---

## Skills Demonstrated
- Structural Verilog coding  
- Boolean logic decomposition  
- Testbench creation & simulation  
- Vivado workflow (simulation + waveform analysis)  
- Documentation & version control (GitHub)  

---
