// Exercise 20: Exit Codes - Solution
.global _start
.section .text
_start:
    mov x0, #5
    cmp x0, #0
    bgt positive
    blt negative
    mov x0, #0
    b exit
positive:
    mov x0, #1
    b exit
negative:
    mov x0, #2
exit:
    mov x8, #93
    svc 0
