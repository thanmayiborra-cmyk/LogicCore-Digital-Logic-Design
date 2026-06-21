# LogicCore-Digital-Logic-Design
Digital logic design project in Verilog featuring a 4-bit adder, ALU, traffic light FSM, and UART transmitter, simulated and verified using testbenches.
# LogicCore

A set of small digital logic projects in Verilog - built to apply what I learned in my Digital Logic Design and VLSI coursework, instead of just theory and lab exams.

## What's in here

- four_bit_adder - basic combinational adder, adds two 4-bit numbers with carry
- traffic_light_fsm - a state machine that cycles RED -> GREEN -> YELLOW, sequential logic with a clock and reset
- alu_4bit - a small ALU that does ADD, SUB, AND, OR, XOR, NOT, and shifts, based on an opcode
- uart_tx - a UART transmitter that sends a byte serially (start bit, 8 data bits, stop bit) - same basic idea used in real microcontroller communication

Each module has its own testbench to check it actually works.

## How to run

I used EDA Playground (free, browser-based, no install needed) with Icarus Verilog as the simulator. For each module:
1. Paste the design file into the Design box
2. Paste the matching _tb file into the Testbench box
3. Run

## Notes

This started as just the adder and FSM, then I added the ALU and UART after to cover more of what I'd actually studied (microprocessors, digital communication). The UART one took the longest to get right since it involves timing and bit-by-bit transmission, not just combinational logic.

## Possible next steps

Possible next steps

- Combine the ALU and adder into a larger digital processing unit
- Add a UART receiver module
- Implement SPI communication modules
- Simulate the design on FPGA development boards
- Extend the traffic light controller with pedestrian crossing support.
