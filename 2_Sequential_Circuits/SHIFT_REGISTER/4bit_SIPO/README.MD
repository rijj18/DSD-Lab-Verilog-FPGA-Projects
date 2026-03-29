# 🔄 4-bit SIPO Shift Register (Verilog)

## 📌 Problem Statement

Design a **4-bit Serial-In Parallel-Out (SIPO) Shift Register** using Verilog HDL.
The circuit should take serial input data and convert it into a parallel output after successive clock cycles.

---

## 🧠 Design Approach

A SIPO shift register is implemented using **4 D Flip-Flops** connected in series.

* On each **clock edge**:

  * Serial input (`din`) is loaded into the first flip-flop
  * Existing data shifts to the next stage
* After 4 clock cycles, the complete data appears at the output

### 🔁 Data Flow

```id="flow1"
din → FF0 → FF1 → FF2 → FF3 → q[3:0]
```

---

## 💻 Code Explanation

### 🔹 Inputs & Outputs

* `clk` → Clock signal
* `rst` → Reset signal
* `din` → Serial input
* `q[3:0]` → Parallel output

### 🔹 Working Logic

* When `rst = 1` → output resets to `0000`
* On every rising clock edge:

  * Data shifts left
  * New input enters LSB

### 🔹 Core Implementation

```verilog id="code1"
always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 4'b0000;
    else
        q <= {q[2:0], din};
end
```

---

## 🧪 Simulation Result

### Input Sequence Applied

```
1 → 0 → 1 → 1
```

### Output Observation

```
Clock 1 → 0001  
Clock 2 → 0010  
Clock 3 → 0101  
Clock 4 → 1011  
```

✔ Correct shifting verified
✔ Output matches expected behavior

---

## 🖼️ Visual Proof

### 🔹 RTL Schematic

![RTL Schematic](docs/sipo_schematic.png)

### 🔹 Simulation Waveform

![Simulation Waveform](docs/sipo_simulation.png)

---

## 📂 Project Structure

```id="struct1"
SIPO_Shift_Register/
│
├── src/
│   └── sipo_4bit.v
│
├── tb/
│   └── tb.v
│
├── docs/
│   ├── sipo_schematic.png
│   └── sipo_simulation.png
│
└── README.md
```

---

## 🚀 Key Learnings

* Sequential circuit design using Verilog
* Understanding of **shift registers**
* Importance of clock-driven data movement
* Writing and verifying testbenches

---

## 🎯 Applications

* Serial-to-parallel data conversion
* Data communication systems
* Temporary data storage

---

## 🏁 Conclusion

This project demonstrates a fundamental sequential circuit widely used in digital systems.
It serves as a strong foundation for advanced designs like **counters, FSMs, and communication modules**.

---
