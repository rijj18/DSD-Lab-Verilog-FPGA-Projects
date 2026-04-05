# 🚦 Traffic Light Controller using Verilog (FSM Based Design)

## 📌 Overview

This project implements a **Traffic Light Controller** using **Finite State Machine (FSM)** in Verilog.
The design is fully **synthesizable** and avoids the use of `#delay`, making it suitable for **FPGA implementation**.

---

## 🎯 Objectives

* Design a **3-state traffic light system** (RED,YELLOW,GREEN)
* Implement **FSM-based control logic**
* Use a **counter for timing control**
* Verify functionality using **testbench simulation**

---

## 🧠 Design Approach

The system is divided into two main blocks:

### 🔹 1. Sequential Block (State Register)

* Updates state on clock edge
* Handles reset condition
* Maintains timing using a counter

### 🔹 2. Combinational Block (Next State Logic)

* Determines next state based on:

  * Current state
  * Counter value
* Generates output signals (r, y ,g)

---

## 🔄 State Transition

```text
RED → YELLOW → GREEN → RED
```

| State  | Output |
| ------ | ------ |
| RED    | r = 1  |
| YELLOW  | y = 1  |
| GREEN | g = 1  |

---

## ⏱ Timing Control

* Implemented using a **4-bit counter**
* Each state holds for a fixed number of clock cycles
* GREEN state has shorter duration (real-world behavior)

---

## 📂 Project Structure

```
Traffic-Light-Controller/
│
├── rtl/
│   └── traffic_light_fsm.v
│
├── sim/
│   └── tb_traffic_light.v
│
├── results/
│   └── waveform.png
│
└── README.md
```

---

## 🔗 Source Code

* 🔹 [RTL Code (traffic_light_fsm.v)](./rtl/traffic_light_fsm.v)
* 🔹 [Testbench (tb_traffic_light.v)](./sim/tb_traffic_light.v)

---

## 🧪 Simulation

Simulation was performed using **Xilinx Vivado**.

### ✔ Observations:

* Proper state transitions observed
* Outputs follow correct sequence:

RED → YELLOW → GREEN → RED


* Timing controlled via counter (no delay statements)

---

## 📸 Simulation Waveform

> Add your waveform screenshot below:

![Waveform](./results/waveform.png)

---

## ⚠️ Key Highlights

* ✔ Fully **synthesizable design**
* ✔ No use of `#delay` (hardware-accurate)
* ✔ Proper **FSM modeling (2 always blocks)**
* ✔ Clean separation of logic and timing


## 🏁 Conclusion

This project demonstrates a **fundamental digital design concept** using FSM and highlights the importance of **timing control in hardware systems**.

---

