# Pipelined MIPS datapath simulator
The goal of this project is to implement a low-level cycle-accurate pipelined
MIPS datapath simulator in verilog. Simulating the datapath includes simulating all of its storage
components (register file, memories, and pipeline registers) and all of its control signals.

__Instruction set architecture (ISA):__ The simulator supports the following MIPS
instructions:

-Arithmetic: add, sub, addi

-Load/Store: lw, sw

-Logic: and, or, sll, srl, andi, ori

-Control flow: beq, bne

-Comparison: slt

