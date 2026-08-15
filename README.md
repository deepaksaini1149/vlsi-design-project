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
module good_mux(
input i0,
input i1,
input sel,
output y
);

assign y = sel ? i1 : i0;

endmodule

module tb_good_mux;

reg i0;
reg i1;
reg sel;
wire y;

good_mux uut (
    .i0(i0),
    .i1(i1),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("tb_good_mux.vcd");
    $dumpvars(0, tb_good_mux);

    i0 = 0;
    i1 = 0;
    sel = 0;

    #300 $finish;
end

always #10 i0 = ~i0;
always #55 i1 = ~i1;
always #75 sel = ~sel;

endmodule

Specification
      |
      v
MUX Logic
      |
      v
Verilog RTL
      |
      v
Testbench
      |
      v
Compilation
      |
      v
Simulation
      |
      v
VCD Waveform
      |
      v
GTKWave
      |
      v
Waveform Verification
      |
      v
GitHub Documentation

Project          : 2:1 Multiplexer
HDL              : Verilog
Design Type      : Combinational Logic
Inputs           : i0, i1, sel
Output           : y
Simulator        : Icarus Verilog
Waveform Tool    : GTKWave
Waveform File    : tb_good_mux.vcd
Repository       : GitHub
Verification     : Successful
