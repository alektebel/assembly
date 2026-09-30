// Exercise 02: Registers
// Practice moving data between registers and loading immediate values

.global _start

.section .text
_start:
    // TODO: Load the value 42 into register x0
    mov x0, #42
    // TODO: Copy the value from x0 to x1
    mov x1, x0
    // TODO: Load the value 100 into register x2
    mov x2, #100
    // TODO: Copy the value from x2 to x3
    mov x3, x2
    // TODO: Exit with the value from x0 (should be 42)

    mov x8, #93
    // Remember: exit syscall is 93, exit code goes in x0
    svc 0
