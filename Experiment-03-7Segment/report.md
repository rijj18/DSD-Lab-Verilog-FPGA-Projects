# 📘 Experiment 03: Binary to 7-Segment Converter

## 🎯 Aim

To design and verify a Binary to 7-Segment Converter using Verilog HDL for displaying decimal digits (0–9).

---

## 📖 Overview

A 7-segment display is a widely used output device in digital systems for representing numerical data. It consists of seven LEDs labeled **a–g**, which are selectively activated to display digits.

In this experiment, a **4-bit binary input (ABCD)** is mapped to corresponding segment outputs (**a–g**) using combinational logic implemented in Verilog HDL.

---

## ⚙️ Design Approach

* The system is modeled using **behavioral Verilog**.
* A `case` statement is used to map each input combination (0–9) to its respective 7-segment output.
* Outputs are defined as a **7-bit vector**, where each bit corresponds to a segment (a–g).
* A default condition is included to handle invalid inputs (10–15), ensuring safe output behavior.

---

## 🧠 Truth Table (Common Cathode Configuration)

| Decimal | Input (ABCD) | a b c d e f g |
| ------- | ------------ | ------------- |
| 0       | 0000         | 1 1 1 1 1 1 0 |
| 1       | 0001         | 0 1 1 0 0 0 0 |
| 2       | 0010         | 1 1 0 1 1 0 1 |
| 3       | 0011         | 1 1 1 1 0 0 1 |
| 4       | 0100         | 0 1 1 0 0 1 1 |
| 5       | 0101         | 1 0 1 1 0 1 1 |
| 6       | 0110         | 1 0 1 1 1 1 1 |
| 7       | 0111         | 1 1 1 0 0 0 0 |
| 8       | 1000         | 1 1 1 1 1 1 1 |
| 9       | 1001         | 1 1 1 1 0 1 1 |

---

## 🧪 Simulation & Verification

The design was simulated using a Verilog testbench in **Xilinx Vivado / ModelSim**.

* Inputs were applied sequentially from **0 to 9**
* Corresponding outputs were observed in the waveform
* The output values matched the expected 7-segment encoding
* Invalid inputs (10–15) resulted in all segments OFF

---

## 📊 Results

* Correct segment activation observed for all decimal inputs (0–9)
* Output values (e.g., `7E`, `30`, `6D`) correspond to segment encoding in hexadecimal form
* Simulation confirms accurate combinational mapping

---

## ⚠️ Design Considerations

* The implementation assumes a **common cathode display** (logic HIGH = segment ON)
* Segment ordering must remain consistent (a–g)
* Hexadecimal values are derived by grouping the 7-bit output with a leading zero

---

## ✅ Conclusion

The Binary to 7-Segment Converter was successfully implemented and verified.
The design accurately converts 4-bit binary inputs into appropriate display outputs, demonstrating correct combinational logic behavior.

---

