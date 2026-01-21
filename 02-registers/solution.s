// Exercise 02: Registers - Solution
// Practice moving data between registers and loading immediate values

.global _start

.section .text
_start:
    // Load the value 42 into register x0
    mov x0, #42

    // Copy the value from x0 to x1
    mov x1, x0

    // Load the value 100 into register x2
    mov x2, #100

    // Copy the value from x2 to x3
    mov x3, x2

    // Exit with the value from x0 (should be 42)
    mov x8, #93         // syscall number for exit
    // x0 already contains 42
    svc 0
