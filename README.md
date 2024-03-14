# Up-Down Counter Verilog Module and Testbench

This repository contains Verilog code for an up-down counter module along with its testbench for simulation. The up-down counter module is designed to count up or down based on an input signal and generate a 4-bit output.

## Files

- `upordown_counter.v`: Verilog module implementing the up-down counter.
- `tb_counter.v`: Verilog testbench for the up-down counter module.
- `tb_counter.vcd`: Output VCD file generated during simulation.

## upordown_counter Module

The `upordown_counter` module is responsible for counting up or down based on the input signal `choice`. It generates a 4-bit output `q` which represents the current count value. The counter increments or decrements on the positive edge of the clock signal (`clk`) and resets to zero when the `reset` signal is asserted.

### Ports

- `q`: Output 4-bit vector representing the count value.
- `choice`: Input signal to select count direction (0 for down, 1 for up).
- `clk`: Clock input signal.
- `reset`: Reset input signal.

## Testbench (`tb_counter`)

The testbench `tb_counter.v` verifies the functionality of the `upordown_counter` module by applying various test cases and monitoring the output signals. It generates a clock signal with a 50% duty cycle and toggles the `choice` signal to simulate both count-up and count-down scenarios. The testbench also asserts the `reset` signal at the beginning to initialize the counter.

### Simulation

The testbench is designed to be simulated using a Verilog simulator such as ModelSim or Icarus Verilog. After simulation, the waveform can be visualized using a waveform viewer tool.

## Running Simulation

To run the simulation:

1. Compile the Verilog files along with the testbench.
2. Run the simulation.
3. View the waveform and verify the functionality of the counter.

### Example Commands (using Icarus Verilog)

```bash
iverilog -o testbench tb_counter.v upordown_counter.v
vvp testbench
gtkwave tb_counter.vcd
