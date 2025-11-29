# Experiment 2 – 4×1 Multiplexer (Structural & Behavioral Modeling)

---

## Aim
To design and simulate a **4-to-1 multiplexer (4×1 MUX)** using structural and behavioral Verilog, and verify its functionality through waveform analysis.

---

## Introduction
A multiplexer selects one input from several data inputs based on control signals.  
A 4×1 multiplexer has:

- 4 data inputs: I0, I1, I2, I3  
- 2 select lines: S1, S0  
- 1 output: Y  

This experiment implements the 4×1 MUX using:

1. **Structural modeling** (gate-level)  
2. **Behavioral modeling** (RTL-level)

---

## Theory

### Truth Table

| S1 | S0 | Y  |
|----|----|----|
| 0  | 0  | I0 |
| 0  | 1  | I1 |
| 1  | 0  | I2 |
| 1  | 1  | I3 |

### Structural Logic Expression
\[
Y = \overline{S1}\,\overline{S0}\,I0 + \overline{S1}\,S0\,I1 + S1\,\overline{S0}\,I2 + S1\,S0\,I3
\]

Structural modeling uses:
- NOT gates  
- AND gates  
- OR gates  

### Behavioral Logic
Uses `case` statement based on `{S1, S0}`.

---

## Design Files

- 📄 **[Structural Verilog Model](mux4to1_structural.v)**  
- 📄 **[Behavioral Verilog Model](mux4to1_behavioral.v)**  
- 🧪 **[Testbench](mux_tb.v)**  
- 🖼️ **[Schematic Diagram](schematic.jpg)**
- 📉 **[Simulation Waveform](simulation.jpg)** 

All files are included in this experiment directory.

---

## Methodology

### 1. Structural Modeling
- Intermediate inverted signals generated (`S1_bar`, `S0_bar`)
- Four AND terms implemented for each input line
- Final output obtained using OR gate

### 2. Behavioral Modeling
- `case({S1, S0})` used to assign the correct input to Y
- More concise and similar to RTL used in industry

### 3. Testbench
- Exhaustive testing of all select-line combinations
- Stimulus applied with delays for clear waveform separation
- Output monitored in real-time

### 4. Simulation
- Verified using Vivado Simulator
- Waveform confirms correct output for each selector value

---

## Observation

- Structural and behavioral models produce **identical results**
- Output matches truth table for all combinations
- Waveform shows clean switching without glitches
- Correct input is selected for each select-line pair

### Example:
- If S1 S0 = **10**, output Y = **I2**  
- If S1 S0 = **01**, output Y = **I1**

---

## Conclusion
A **4×1 multiplexer** was successfully implemented using structural and behavioral Verilog.  
Simulation results confirm correct logical operation and validate both models.

The experiment strengthens understanding of:
- Combinational circuit design  
- Truth table to logic implementation  
- Structural (gate-level) modeling  
- Behavioral (RTL-level) modeling  
- Testbench writing and waveform verification  

---

## Skills Demonstrated
- Gate-level digital circuit implementation  
- Case-based conditional modeling  
- Testbench construction  
- Vivado simulation and waveform analysis  
- GitHub documentation and file structuring  

---
