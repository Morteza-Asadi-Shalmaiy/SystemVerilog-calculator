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
five development versions are included, each representing a step in the calculator’s evolution.
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


## 🔹 Version 03 — Power Operation Validation  
Adds safe handling for exponentiation (`a ** b`)  
📁 **Folder:** [03-calculator-power](https://github.com/Morteza-Asadi-Shalmaiy/SystemVerilog-calculator/tree/main/03-calculator-power%20)

<details>
  <summary><strong>Click to view details</strong></summary>
  <br>

This version focuses on improving the power operation.

### ✨ Improvements
- Detects negative exponent inputs (`b < 0`)
- Displays a warning for invalid power operations
- If exponent is negative, result is set to `x`
- Ensures predictable behavior for exponentiation

This prevents undefined results for unsupported negative powers.

</details>



---

## 🔹 Version 04 — 12-Digit Result Limiting  
Adds overflow protection for output values  
📁 **Folder:** [04-calculator-12digit-check](https://github.com/Morteza-Asadi-Shalmaiy/SystemVerilog-calculator/tree/main/04-calculator-12digit-check)

<details>
  <summary><strong>Click to view details</strong></summary>
  <br>

This version introduces a numeric limit on the output result.

### ✨ Improvements
- Validates result range: ±999,999,999,999 (12 digits)
- If result exceeds the limit:
  - A warning is displayed
  - Output is set to `x`
- Protects system from overflow conditions

Adds major safety and numerical stability to the design.

</details>

---

## 🔹 Version 05 — Extended Error Checking  
Adds more robust and unified logical error handling  
📁 **Folder:** [05-calculator-more-checking](https://github.com/Morteza-Asadi-Shalmaiy/SystemVerilog-calculator/tree/main/05-calculator-more-checking)

<details>
  <summary><strong>Click to view details</strong></summary>
  <br>

This version expands and refines all safety mechanisms.

### ✨ Improvements
- Increased width to 64 bits for internal accuracy
- Unified invalid-result assignment (`{nb{1'bx}}`)
- Better handling for:
  - Division-by-zero  
  - Negative exponent  
  - 12-digit overflow  
- Much more consistent warning messages

This version significantly improves design safety and predictability.

</details>

---


</details>

