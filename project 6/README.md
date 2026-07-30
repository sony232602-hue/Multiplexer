# 2:1 Multiplexer using Verilog

## Project Overview

This project implements a **2:1 Multiplexer (MUX)** in Verilog HDL. A multiplexer selects one of two input signals based on a select line and forwards the selected input to the output.

## Truth Table

| Select | Output |
|---------|--------|
| 0 | A |
| 1 | B |

## Files

| File | Description |
|------|-------------|
| mux2x1.v | Verilog design |
| mux2x1_tb.v | Testbench |
| simulation/mux_waveform.png | Simulation waveform |
| README.md | Project documentation |

## Logic Equation

Y = (SEL) ? B : A

## Simulation

The design was verified using a Verilog simulator (e.g., Icarus Verilog with GTKWave, ModelSim, or Vivado Simulator). All input combinations were tested and the output matched the expected truth table.

## How to Run (Icarus Verilog)

Compile:

```bash
iverilog -o mux mux2x1.v mux2x1_tb.v
```

Run:

```bash
vvp mux
```

Generate waveform:

```bash
iverilog -o mux mux2x1.v mux2x1_tb.v
vvp mux
gtkwave dump.vcd
```

## Applications

- Data routing
- Digital communication systems
- CPU datapath design
- Memory selection
- FPGA and ASIC designs

## Author

Your Name