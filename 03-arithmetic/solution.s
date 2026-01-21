// Exercise 03: Arithmetic - Solution
// Calculate: (10 + 5) * 2 - 3 = 27

.global _start

.section .text
_start:
    // Step 1: Calculate 10 + 5
    mov x0, #10
    mov x1, #5
    add x0, x0, x1      // x0 = 10 + 5 = 15

    // Step 2: Multiply by 2
    mov x1, #2
    mul x0, x0, x1      // x0 = 15 * 2 = 30

    // Step 3: Subtract 3
    sub x0, x0, #3      // x0 = 30 - 3 = 27

    // Exit with result (27)
    mov x8, #93
    svc 0
