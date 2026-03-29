# 🔁 4-Bit SISO Shift Register (Serial In Serial Out)

---

## 📌 1. Problem Statement

Design and implement a **4-bit Serial-In Serial-Out (SISO) Shift Register** using Verilog HDL.
The circuit should accept serial input data and shift it through flip-flops on each clock pulse, producing serial output after 4 clock cycles.

---

## 🧠 2. Design Approach

* A **4-bit register** is implemented using sequential logic
* Data is shifted using **concatenation operator `{}`**
* **Positive edge-triggered clock** is used
* **Asynchronous reset** initializes the register to zero

### 🔧 Internal Logic:

```
shift_reg <= {shift_reg[2:0], si};
```

👉 This shifts bits left and inserts new input at LSB

---

## 💻 3. Code Explanation

### 🔹 RTL Code

👉 [View Code](./4BIT_SISO.v)
---

## 🧪 4. Simulation Result

👉 [View Waveform](./siso_simulation.jpeg)

### 🔍 Observation:

| Clock Cycle | Input (si) | Register Value | Output (so) |
| ----------- | ---------- | -------------- | ----------- |
| 1           | 1          | 0001           | 0           |
| 2           | 1          | 0011           | 0           |
| 3           | 1          | 0111           | 0           |
| 4           | 1          | 1111           | 1           |

### ✅ Conclusion:

* Data shifts correctly ✔️
* Output appears after 4 clock cycles ✔️
* Design verified successfully ✔️

---

## 🖼️ 5. Visual Proof (IMPORTANT)

### 🔸 RTL Schematic

👉 [View Schematic](./siso_schematic.png)

### 🔸 Block Design

👉 [View Block Diagram](./siso_blockdesign.png)

### 🔸 Simulation Waveform

👉 [View Simulation](./siso_simulation.jpeg)

---

## 🧪 6. Testbench

👉 [View Testbench](./tb.v)

* Generates clock signal
* Applies serial input
* Verifies shifting behavior



## 🎯 8. Applications

* Data transfer systems
* Shift operations in processors
* Serial communication
* Digital delay elements

---

