// Exercise 03: Arithmetic
// Calculate: (10 + 5) * 2 - 3 = 27

.global _start

.section .text
_start:
    // TODO: Calculate (10 + 5) * 2 - 3

    // Step 1: Calculate 10 + 5, store in x0
    // Hint: mov x0, #10
    //       mov x1, #5
    //       add x0, x0, x1
    mov x0, #10
    mov x1, #5
    add x0, x0, x1
    // Step 2: Multiply result by 2, store in x0
    // Hint: mov x1, #2
    //       mul x0, x0, x1
    mov x1, #2
    mul x0, x0, x1

    // Step 3: Subtract 3 from result, store in x0
    // Hint: sub x0, x0, #3
    sub x0, x0, #3
    // TODO: Exit with result in x0
    // The exit syscall number is 93
    mov x8, #93
    svc 0
