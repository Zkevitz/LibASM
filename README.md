## LibASM

#### Overview
This project serves as an introduction to assembly language and aims to implement library functions for the x64 architecture using NASM syntax.

#### Section 
In assembly section serves as a way to organize code and data in a program. you can have multiple sections in a program and each section has a specific purpose. you can either define your own sections or use the default sections provided by the assembler.
here are some common sections:
- .text - contains the executable code
- .data - contains initialized data (variables)
- .bss - contains uninitialized data (variables)
- .rodata - contains read-only data (constants)

#### General rules 
-> Function arguments are passed in registers in this order: rdi, rsi, rdx, rcx, r8, r9
-> Return values are stored in rax
-> Registers rbx, rbp, and r12-r15 must be preserved (caller-saved)
-> Other registers can be freely modified

#### REGISTERS 
![alt text](image.png)

#### Vocabulaire supplémentaire 
- rel --> relative 
- cmp --> compare (a - b) - 
- test --> bitwise AND (a & b) - sets flags based on result
- movzx --> move with zero extension (copy source to destination, where source is usually smaller than destination (ex: movzx rax, al))
- ..got --> global offset table (stores addresses of global symbols)
- wrt --> with respect to
- [] --> access memory at address
#### Source 
- https://filippo.io/linux-syscall-table/
- https://www.youtube.com/watch?v=tmtXn2UXR3g
