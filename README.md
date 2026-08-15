# vlsi-design-project
# 2:1 Multiplexer – Verilog RTL Design and Simulation

## Project Overview

This project implements and verifies a 2:1 Multiplexer (MUX) using Verilog HDL.

The RTL design is written in Verilog, verified using a Verilog testbench, simulated using Icarus Verilog, and the generated VCD waveform is analyzed using GTKWave.

The complete project demonstrates the RTL design and verification workflow from writing the Verilog code to simulation, waveform analysis, and GitHub documentation.

---

## Objective

- To design a 2:1 Multiplexer using Verilog HDL.
- To create a Verilog testbench for functional verification.
- To compile the design using Icarus Verilog.
- To run the simulation and generate a VCD waveform.
- To analyze the waveform using GTKWave.
- To verify the functional behavior of the multiplexer.
- To document the complete project using Git and GitHub.

---

## 2:1 Multiplexer

A Multiplexer (MUX) is a combinational digital circuit that selects one input from multiple inputs and sends the selected input to a single output.

A 2:1 MUX has:

- Two data inputs: `i0` and `i1`
- One select input: `sel`
- One output: `y`

### Selection Operation

```text
sel = 0  ->  y = i0
sel = 1  ->  y = i1
