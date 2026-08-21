# Ternary Operator 2:1 MUX — Sky130 RTL-to-Gate-Level Flow

## Overview

This project implements a 2:1 multiplexer using Verilog RTL and demonstrates the complete RTL-to-gate-level synthesis flow using the Sky130 standard-cell library.

## Design

The multiplexer uses a ternary operator:

    y = sel ? i1 : i0;

When `sel = 0`, the output `y` follows `i0`.

When `sel = 1`, the output `y` follows `i1`.

## Files

- `ternary_operator_mux.v` — RTL design
- `tb_ternary_operator_mux.v` — Testbench
- `ternary_operator_mux_net.v` — Synthesized Sky130 gate-level netlist
- `tb_ternary_operator_mux_rtl.vcd` — RTL simulation waveform
- `tb_ternary_operator_mux_gate.vcd` — Gate-level simulation waveform

## Flow

RTL Design
→ RTL Simulation
→ GTKWave
→ Yosys Synthesis
→ Sky130 Technology Mapping
→ Gate-Level Netlist
→ Gate-Level Simulation
→ GTKWave

## Tools

- Icarus Verilog
- GTKWave
- Yosys
- ABC
- Sky130 standard-cell library

## Synthesis Result

Yosys successfully synthesized the design and mapped the MUX to Sky130 standard cells.

The synthesized design contained:

- 4 ports
- 5 wire bits
- 1 logic cell
- 1 MUX cell

## Verification

Both RTL simulation and gate-level simulation completed successfully for 300 ns.

The generated VCD files can be opened using GTKWave for waveform verification.
