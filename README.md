# verilog-calculator
🧮 **A modular, parameterized 12-digit digital calculator designed in Verilog/SystemVerilog**

This project implements a fully parameterized 5-operation digital calculator, supporting:
- ✔ Addition  
- ✔ Subtraction  
- ✔ Multiplication  
- ✔ Division (with divide-by-zero protection)  
- ✔ Exponentiation (with negative-power checks)

The design is written in **SystemVerilog**, fully signed (`signed`) and scalable using parameter `nb`.

---

## 🔧 Simulation Environment (EDA Playground)
The project is compatible with **https://edaplayground.com**.  
To run the simulation:

- **Left Panel:** `testbench.sv`  
- **Right Panel:** `design.sv`  
- **Language:** SystemVerilog / Verilog  
- **Simulator:** *Icarus Verilog 12.0*  
- **Compile Options:**  *Wall -g2012*

You can copy/paste the modules directly into EDA Playground and run the simulation instantly.

---

# 📁 Versions
two development versions are included, each representing a step in the calculator’s evolution.
**Expand the sections below for detailed version history.**

<details>
  <summary><strong>Click to view diffrent versions</strong></summary>
  <br>

---

## 🔹 Version 01 — Base Calculator  
Basic 5-operation module + simple testbench  
📁 **Folder:** [01-calculator-base](https://github.com/Morteza-Asadi-Shalmaiy/SystemVerilog-calculator/tree/main/01-calculator-base)

<details>
  <summary><strong>Click to view more details</strong></summary>
  <br>

This is the initial version of the calculator.

### ✨ Features
- Supports 5 operations: `+`, `-`, `*`, `/`, `**`
- Signed inputs/outputs (`signed`)
- Parameterized width (`nb`)
- Basic testbench included
- No error or edge-case handling yet

This version is the foundation for all later improvements.

</details>

---

## 🔹 Version 02 — Division-by-Zero Handling  
Adds safe divide-by-zero protection  
📁 **Folder:** [02-calculator-division](https://github.com/Morteza-Asadi-Shalmaiy/SystemVerilog-calculator/tree/main/02-calculator-division)

<details>
  <summary><strong>Click to view details</strong></summary>
  <br>

This version enhances reliability for division operations.

### ✨ Improvements
- Detects division by zero (`b == 0`)
- Displays a simulation warning using `$display`
- Prevents undefined division results
- All other operations remain identical to Version 01

A safer and more robust design compared to the base version.

</details>

---
</details>

