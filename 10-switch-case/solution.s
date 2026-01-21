// Exercise 10: Switch Case - Solution
// Implement switch-case logic for value 2

.global _start

.section .text
_start:
    // Load the value to switch on
    mov x0, #2

    // Compare and branch for each case
    cmp x0, #1
    beq case1
    cmp x0, #2
    beq case2
    cmp x0, #3
    beq case3
    b default

case1:
    mov x0, #10
    b exit

case2:
    mov x0, #20
    b exit

case3:
    mov x0, #30
    b exit

default:
    mov x0, #0

exit:
    mov x8, #93
    svc 0
