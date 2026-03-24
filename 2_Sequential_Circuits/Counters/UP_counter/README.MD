# 4-bit Up Counter (With Load & Reset)

## 📖 Description

This project implements a **4-bit Up Counter** using Verilog HDL.

The counter increments on every clock pulse and supports:

* **Asynchronous Reset** (clears counter)
* **Synchronous Load** (loads custom value)

---

## 📥 Inputs

* `clk` → Clock signal
* `rst` → Reset signal (active HIGH)
* `ld` → Load enable
* `ldvalue[3:0]` → Value to load

---

## 📤 Output

* `dout[3:0]` → Counter output

---

## ⚙️ Working Principle

* On rising edge of `clk`:

  * If `rst = 1` → counter resets to `0000`
  * Else if `ld = 1` → loads `ldvalue`
  * Else → increments by 1

---

## 🔢 State Transition

| Clock Pulse | Output (Q3 Q2 Q1 Q0) |
| ----------- | -------------------- |
| 0           | 0000                 |
| 1           | 0001                 |
| 2           | 0010                 |
| 3           | 0011                 |
| ...         | ...                  |
| 15          | 1111                 |
| Next        | 0000                 |

---

## 📂 Project Files

* 🔗 [Verilog Code](./upcount.v)
* 🔗 [Testbench](./upcount_tb.v)
* 🔗 [Report](./report.md)

---

## 📊 Result

* Counter increments correctly on each clock cycle
* Load functionality verified
* Reset behavior works as expected

---

## 🖼️ Simulation Output

![Simulation](./simulation.jpg)

---

## 🧠 Applications

* Digital counters
* Frequency division
* Timers and clocks
* Embedded systems

---

## 🔗 Navigation

* [⬅ Back to Counters](../README.md)
* [⬅ Back to Main README](../../../README.md)
