# verilog-calculator
🧮 A modular, parameterized 12-digit digital calculator designed in Verilog HDL

made in https://edaplayground.com
for testing for yourself follow this setups in https://edaplayground.com :
Testbench + Design :
SystemVerilog/Verilog

Tools & Simulators :
Icarus Verilog 12.0

Compile Options
-Wall -g2012

design.sv is the right panel & testbench.sv is the left Panel


---


# Version 01 — Base Calculator [01-calculator-base](https://github.com/Morteza-Asadi-Shalmaiy/SystemVerilog-calculator/tree/main/01-calculator-base)

Basic 5-operation module + simple testbench.
<details>
This is the initial version of the digital calculator implemented in Verilog/SystemVerilog.

### Features
- Supports 5 operations: `+`, `-`, `*`, `/`, `**`
- Signed inputs and outputs
- Parameterized width (`nb`)
- Basic testbench for functional testing
- No special error handling yet

This version serves as the foundation for all later improvements.
</details>


---


# Version 02 — Division-by-Zero Handling [02-calculator-division](https://github.com/Morteza-Asadi-Shalmaiy/SystemVerilog-calculator/tree/main/02-calculator-division)
Adds divide-by-zero check.
<details>
In this version, the calculator design is improved by adding safe handling for division operations.

### Added Features
- Detects division by zero (`b == 0`)
- Prints a simulation warning using `$display`
- Prevents invalid division results
- Keeps operation logic identical to Version 01 for other operations

A safer and more robust design compared to the base version.
</details>


---
