// Exercise 08: While Loop - Solution
// Count how many times we can subtract 7 from 100 before reaching 0 or less

.global _start

.section .text
_start:
    // Initialize value to 100
    mov x0, #100

    // Initialize counter to 0
    mov x1, #0

loop:
    // Check if value <= 0
    cmp x0, #0
    ble done

    // Subtract 7 from value
    sub x0, x0, #7

    // Increment counter
    add x1, x1, #1

    // Branch back to loop
    b loop

done:
    // Move counter to x0 for exit code
    mov x0, x1

    // Exit
    mov x8, #93
    svc 0
