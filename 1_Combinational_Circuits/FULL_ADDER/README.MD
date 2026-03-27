# ➕ Full Adder using Verilog HDL

## 📌 Overview

A **Full Adder** is a combinational digital circuit that performs the addition of three binary inputs:

* Two significant bits: **A, B**
* One carry input: **Cin**

It produces:

* **Sum (S)**
* **Carry-out (Cout)**

---

## 🧠 Theory

A Full Adder adds three 1-bit numbers and generates a 2-bit result.

### ➤ Inputs:

* `A` → First operand
* `B` → Second operand
* `Cin` → Carry input

### ➤ Outputs:

* `S` → Sum
* `Cout` → Carry output

---

## ⚙️ Boolean Equations

### 🔹 Sum:

```
S = A ⊕ B ⊕ Cin
```

### 🔹 Carry:

```
Cout = (A · B) + (Cin · (A ⊕ B))
```

---

## 🔌 Circuit Design

The Full Adder can be implemented using:

* **2 XOR gates** → for Sum
* **2 AND gates** → partial carry
* **1 OR gate** → final carry

### 📷 Schematic

👉 [View Circuit Diagram](./fa_schematic.png)

---

## 📊 Truth Table

| A | B | Cin | Sum (S) | Carry (Cout) |
| - | - | --- | ------- | ------------ |
| 0 | 0 | 0   | 0       | 0            |
| 0 | 0 | 1   | 1       | 0            |
| 0 | 1 | 0   | 1       | 0            |
| 0 | 1 | 1   | 0       | 1            |
| 1 | 0 | 0   | 1       | 0            |
| 1 | 0 | 1   | 0       | 1            |
| 1 | 1 | 0   | 0       | 1            |
| 1 | 1 | 1   | 1       | 1            |

---

## 💻 Verilog Implementations

### 🔸 Gate-Level Modeling

👉 [gateleveltype.v](./gateleveltype.v)

---

### 🔸 Dataflow Modeling

👉 [dataflowtype.v](./dataflowtype.v)

---

### 🔸 Behavioral Modeling

👉 [behavioraltype.v](./behavioraltype.v)

---

## 🧪 Testbench

👉 [tb.v](./tb.v)

---

## 📈 Simulation Result

👉 [View Waveform](./fa_simulation.png)

✔ All outputs match the expected truth table
✔ No undefined (`X`) or high-impedance (`Z`) values

---

## ⚙️ Tools Used

* Verilog HDL
* Xilinx Vivado

---

## 🎯 Learning Outcomes

* Understand Full Adder working
* Learn different Verilog modeling styles
* Write and simulate testbenches
* Analyze waveform results

---

## 🚀 Conclusion

The Full Adder is successfully implemented and verified using:

* Gate-level
* Dataflow
* Behavioral modeling

All results are validated through simulation.

---

> 💡 This experiment is fundamental for understanding arithmetic circuits and is widely asked in viva and interviews.
