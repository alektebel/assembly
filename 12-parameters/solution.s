// Exercise 12: Parameters - Solution
// Function that adds two parameters

.global _start

.section .text
_start:
    mov x0, #15
    mov x1, #27
    bl add_two
    // x0 contains result (42)
    mov x8, #93
    svc 0

add_two:
    add x0, x0, x1
    ret
