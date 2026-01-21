// Exercise 06: Conditionals - Solution
// Compare two numbers and exit with different codes based on result

.global _start

.section .text
_start:
    // Load 15 into x0
    mov x0, #15

    // Load 10 into x1
    mov x1, #10

    // Compare x0 and x1
    cmp x0, x1

    // Branch based on comparison
    bgt greater         // Branch if x0 > x1
    blt less            // Branch if x0 < x1
    b equal             // Otherwise they're equal

greater:
    mov x0, #1          // Exit code 1
    mov x8, #93
    svc 0

less:
    mov x0, #2          // Exit code 2
    mov x8, #93
    svc 0

equal:
    mov x0, #3          // Exit code 3
    mov x8, #93
    svc 0
