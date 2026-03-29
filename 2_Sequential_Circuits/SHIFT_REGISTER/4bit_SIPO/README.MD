# 🔄 4-bit SIPO Shift Register (Verilog)

## 📌 Problem Statement

Design a **4-bit Serial-In Parallel-Out (SIPO) Shift Register** using Verilog HDL.
The circuit converts serial input data into parallel output after successive clock cycles.

---

## 🧠 Design Approach

A SIPO shift register uses **4 D Flip-Flops** connected in series.

* On each clock edge:

  * New data enters from serial input (`din`)
  * Existing data shifts right
* After 4 cycles → full 4-bit output is available

```

## 🧪 Testbench Code

👉 [View Testbench File](./tb/tb.v)



## 🧪 Simulation Result

### Input Sequence

```text
1 → 0 → 1 → 1
```

### Output Progression

```text
Clock 1 → 0001  
Clock 2 → 0010  
Clock 3 → 0101  
Clock 4 → 1011  
```

✔ Verified correct shifting behavior

---

## 🖼️ Visual Proof

### 🔹 RTL Schematic

![RTL Schematic](docs/sipo_schematic.png)

### 🔹 Simulation Waveform

![Simulation Waveform](docs/sipo_simulation.png)

---

## 🚀 Key Learnings

* Sequential circuit design
* Shift register operation
* Testbench verification
* Clean project structuring

---

## 🎯 Applications

* Serial-to-parallel conversion
* Communication systems
* Data storage

---

## 🏁 Conclusion

This project demonstrates a fundamental sequential circuit and forms a base for advanced digital designs.

---
