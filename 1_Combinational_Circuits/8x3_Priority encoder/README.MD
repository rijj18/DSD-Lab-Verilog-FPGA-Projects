# 🔢 8-to-3 Priority Encoder (Verilog)

## 📌 Overview

This project implements an **8-to-3 Priority Encoder** using Verilog HDL.
A priority encoder converts multiple input signals into a binary output, giving **priority to the highest-order input**.

* Highest priority → **y7**
* Lowest priority → **y0**

---

## ⚙️ Functionality

* **Inputs:** `y[7:0]`
* **Outputs:**

  * `a[2:0]` → Encoded output
  * `d` → Valid bit

### ✔️ Working:

* If multiple inputs are HIGH → highest priority input is selected
* If all inputs are LOW → `d = 0` (invalid)

---

## 📊 Truth Table (Simplified)

| Input Condition | Output (a) | d |
| --------------- | ---------- | - |
| 00000000        | 000        | 0 |
| 1xxxxxxx (y7)   | 111        | 1 |
| 01xxxxxx (y6)   | 110        | 1 |
| 001xxxxx (y5)   | 101        | 1 |
| ...             | ...        | 1 |

---

## 🧠 Design Approaches

### 1️⃣ Behavioral (if-else)

* Simple and intuitive
* Clearly shows priority

### 2️⃣ Case-based (`casez`)

* Uses don’t-care (`?`)
* Compact and synthesizable

### 3️⃣ Loop-based (Optimized ⭐)

* Scalable and clean
* Industry-preferred approach

---

## 🚀 Verilog Implementation

### 🔹 Optimized Loop-Based Design

```verilog
module priority_encoder_8to3 (
    input  [7:0] y,
    output reg [2:0] a,
    output reg d
);

integer i;

always @(*) begin
    a = 3'b000;
    d = 1'b0;

    for (i = 7; i >= 0; i = i - 1) begin
        if (y[i] && !d) begin
            a = i[2:0];
            d = 1'b1;
        end
    end
end

endmodule
```

---

## 🧪 Testbench

```verilog
module tb_priority_encoder;

reg [7:0] y;
wire [2:0] a;
wire d;

priority_encoder_8to3 uut (
    .y(y),
    .a(a),
    .d(d)
);

initial begin
    $monitor("y=%b a=%b d=%b", y, a, d);

    y = 8'b00000000; #10;
    y = 8'b00000001; #10;
    y = 8'b00000100; #10;
    y = 8'b10000000; #10;
    y = 8'b10101010; #10;

    $finish;
end

endmodule
```

---

## 📈 Expected Output

* For `y = 10101010` → Output: `a = 111`, `d = 1`
* For `y = 00111000` → Output: `a = 101`, `d = 1`

---

## 📁 Suggested Folder Structure

```
📦 Priority-Encoder
 ┣ 📂 combinational
 ┃ ┗ 📂 priority_encoder
 ┃   ┣ 📜 priority_encoder_8to3.v
 ┃   ┣ 📜 tb_priority_encoder.v
 ┃   ┗ 📜 README.md
```

---

## 💡 Key Learnings

* Priority logic using **if-else vs case**
* Importance of **don’t-care conditions**
* Writing **synthesizable combinational logic**
* Efficient design using **loops**

---

## 🎯 Why This Project Matters

* Fundamental digital design concept
* Frequently asked in **interviews & viva**
* Demonstrates clean RTL coding practices

---

## 👨‍💻 Author

**Rijul Sharma**
Electronics & Communication Engineering (ECE)

---

## ⭐ Tip

Add waveform screenshots from tools like **ModelSim / GTKWave** to make your repo more impressive.
