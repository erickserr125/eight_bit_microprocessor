# Eight Bit Microprocessor

In this project, I designed an eigh-bit microprocessor with a dedicated register file, data memory, instruction memory, and an ALU. I created several instructions, including:

- LW (Load data from memory to register)
- SW (Load data from register to memory)
- MV (Load data from register to register)
- MVi (Load constant to register)
- Addi (Add constant to register)
- Subi (Subtract constant from register)
- Beq (Jump to an instruction if the register is zero)
- jmp (Unconditional jump)

Since the instruction was eight bits, I designed the microprocessor to interpret any machine code input as:

OpCode(3-bits)-Function(2-bits)-Address(1-bit)-Data(2-bits)

``` XXX-XX-X-XX ```

In other words, the register file and data memory modules were limited to 2-bit data lengths. While we reduce the amount of memory stored into memory, 
we can instead implement more instructions. This is why we have eight instructions overall. 

The document ```eight_bit_microprocessor_report.pdf``` has a detailed report on the control word table and the RTL imaging of the eight-bit-microprocessor. 
