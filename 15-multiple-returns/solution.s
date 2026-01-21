// Exercise 15: Multiple Returns - Solution
.global _start
.section .text
_start:
    mov x0, #17
    mov x1, #5
    bl divmod
    mov x8, #93
    svc 0

divmod:
    udiv x2, x0, x1
    msub x3, x2, x1, x0
    mov x0, x2
    mov x1, x3
    ret
