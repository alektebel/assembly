// Exercise 07: Simple Loop
// Sum numbers from 1 to 10 using a loop

.global _start

.section .text
_start:
    // TODO: Initialize sum to 0
    mov x0, #0
    // TODO: Initialize counter to 10
    mov x1, #10
    // TODO: Create loop label
    loop:
    // TODO: Add counter to sum
    add x0, x0, #1
    // TODO: Decrement counter and set flags
    // Hint: subs x1, x1, #1
    subs x1, x1, #1
    // TODO: Branch back to loop if counter != 0
    // Hint: bne loop
    bne loop
    // TODO: Exit with sum (should be 55)
    mov x8, #93
    svc 0
