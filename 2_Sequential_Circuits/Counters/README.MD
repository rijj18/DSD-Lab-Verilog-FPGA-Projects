# Counters (Sequential Circuits)

## 📖 Overview

This section contains implementations of various **digital counters** using Verilog HDL.

Counters are fundamental sequential circuits used for counting events, timing, and control applications.

---

## 🔢 Implemented Counters

### 🔹 4-bit Up Counter

A synchronous counter that increments its value on every clock pulse and supports **reset and load operations**.

📂 View Project:

* 🔗 [4-bit Up Counter](./UP_counter/)
* 🔗 [Verilog Code](./UP_counter/up_counter.v)
* 🔗 [Testbench](./UP_counter/tb.v)

---

### 🔹 2-bit Ring Counter

A circular shift register where a single ‘1’ rotates through flip-flops.

📂 View Project:

* 🔗 [2-bit Ring Counter](./2-BIT_ringcounter/)
* 🔗 [Verilog Code](./2-BIT_ringcounter/ring_counter.v)
* 🔗 [Testbench](./2-BIT_ringcounter/ringcount_tb.v)

---

### 🔹 2-bit Johnson Counter

A twisted ring counter where the inverted output is fed back to the input.

📂 View Project:

* 🔗 [2-bit Johnson Counter](./Johnson_Counter/)
* 🔗 [Verilog Code](./Johnson_Counter/johnson.v)
* 🔗 [Testbench](./Johnson_Counter/johnson_tb.v)

---

## ⚙️ Key Concepts Covered

* Synchronous and asynchronous reset
* Shift registers
* Feedback logic
* State transitions in sequential circuits

---

## 🔄 Comparison of Counters

| Counter Type    | States         | Key Idea                     |
| --------------- | -------------- | ---------------------------- |
| Up Counter      | 16 (for 4-bit) | Incrementing binary count    |
| Ring Counter    | n states       | Circular shift of single ‘1’ |
| Johnson Counter | 2n states      | Twisted feedback shift       |

---

## 🧠 Applications

* Digital clocks
* Frequency division
* Sequence generators
* Control systems

---

## 🔗 Navigation

* [⬅ Back to Sequential Circuits](../README.md)
* [⬅ Back to Main README](../../README.md)
