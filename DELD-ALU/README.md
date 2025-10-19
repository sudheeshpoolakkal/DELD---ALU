# 4-Bit ALU Project Report

> **Group 8 - Digital Electronics and Logic System Design (PBEOT304)**  
> Department of Electrical and Computer Engineering  
> College of Engineering, Trivandrum  
> Academic Year 2025-26 (Odd Semester)

## Project Overview

This repository contains the complete LaTeX source and documentation for our 4-Bit Arithmetic Logic Unit (ALU) project report. The project demonstrates the design, simulation, and hardware implementation of a functional 4-bit ALU using discrete digital components.

## Team Members

- **GOWRIKRISHNA V** (Roll No. 29)
- **GOWTHAM KRISHNA P K** (Roll No. 30)
- **HARIKRISHNAN SANTHOSH** (Roll No. 31)
- **HARIKRISHNA S** (Roll No. 32)
- **SUDHEESH P** (Roll No. 64)

**Project Guide:** Saina Deepthi (Lecturer)

## Features

### Implemented Operations
- **Arithmetic:** Addition, Subtraction, Multiplication, Division
- **Logic:** Bitwise AND, OR, XOR
- **Comparison:** Magnitude comparison

### Key Components
- 4-bit Ripple Carry Adder/Subtractor
- 4-bit Multiplier (shift-and-add algorithm)
- 4-bit Divider (restoring division)
- Logic Operations Unit
- Control Unit with Multiplexer

## Repository Structure

```
DELD-ALU/
├── thesis.tex              # Main LaTeX document
├── references.bib          # Bibliography
├── images/                 # Circuit diagrams and logos (13 images)
├── 0-prematter/           # Title page, certificates, dedication
├── 1-frontmatter/         # Abstract, acknowledgements, glossary
├── 2-mainmatter/          # Main chapters and appendix
├── 3-backmatter/          # Committee, CV pages
├── COMPILE.sh             # Compilation script
└── README.md              # This file
```

## Compilation

### Requirements
- LaTeX distribution (TeX Live, MiKTeX, etc.)
- Required packages: `nomencl`, `graphicx`, `natbib`, `amsmath`, etc.

### Quick Compile

```bash
./COMPILE.sh
```

### Manual Compilation

```bash
pdflatex thesis.tex
bibtex thesis
pdflatex thesis.tex
pdflatex thesis.tex
```

### Online Compilation (Overleaf)

1. Upload the entire `DELD-ALU` folder as a ZIP file to [Overleaf](https://www.overleaf.com)
2. The project will compile automatically

## Report Contents

### Chapters
1. **Introduction** - Motivation and project scope
2. **Objectives** - Design, operational, and educational goals
3. **Methodology** - Problem analysis, design, simulation, hardware, testing
4. **Implementation** - Detailed circuit diagrams and descriptions
5. **Results** - Simulation and hardware testing results
6. **Conclusion** - Achievements, innovation, challenges, future work

### Appendix
- Component datasheets
- Truth tables
- Project timeline
- Course information

## Circuit Diagrams

All circuit diagrams are included in the `images/` folder:
- Adder/Subtractor circuits (4 diagrams)
- Multiplier circuits (2 diagrams)
- Divider circuit
- Logic operations circuit
- 4-bit Multiplexer
- 4-bit Comparator
- Complete ALU integration diagram
- Simulation results

## Project Specifications

- **Input:** Two 4-bit operands (A and B)
- **Output:** 4-bit result (8-bit for multiplication)
- **Control Signals:** 3-bit operation selector
- **Technology:** TTL logic ICs (74LS series)
- **Simulation:** Proteus Design Suite, Logisim
- **Hardware:** Breadboard implementation

## Key Results

✅ Successfully designed and implemented all arithmetic operations  
✅ Verified logic operations (AND, OR, XOR)  
✅ Functional hardware prototype on breadboard  
✅ Simulation matches hardware results  
✅ Modular design for easy understanding and modification

## References

The project references standard digital electronics textbooks and IC datasheets:
- Floyd, T. L. - Digital Fundamentals
- Malvino & Leach - Digital Principles and Applications
- Boylestad - Electronic Devices and Circuit Theory
- Texas Instruments IC Datasheets (74LS series)

## License

This is an academic project for educational purposes at College of Engineering, Trivandrum.

## Acknowledgments

Special thanks to:
- **Saina Deepthi (Lecturer)** - Project guidance and support
- Department of Electrical and Computer Engineering, CET
- Laboratory staff for hardware resources
- Our families for continuous support

---

**Course:** Digital Electronics and Logic System Design (PBEOT304)  
**Semester:** S3 EL  
**Academic Year:** 2025-26 (Odd Semester)  
**Institution:** College of Engineering, Trivandrum

---

*Report compiled using LaTeX • Based on IIT Madras dissertation template*
