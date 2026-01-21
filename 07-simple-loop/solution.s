// Exercise 07: Simple Loop - Solution
// Sum numbers from 1 to 10 using a loop

.global _start

.section .text
_start:
    // Initialize sum to 0
    mov x0, #0

    // Initialize counter to 10
    mov x1, #10

loop:
    // Add counter to sum
    add x0, x0, x1      // sum += counter

    // Decrement counter and set flags
    subs x1, x1, #1     // counter--, set flags

    // Branch back to loop if counter != 0
    bne loop            // If Z flag clear (not zero), loop

    // Exit with sum (55)
    mov x8, #93
    svc 0
