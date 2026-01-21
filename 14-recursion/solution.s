// Exercise 14: Recursion - Solution
.global _start
.section .text
_start:
    mov x0, #5
    bl factorial
    mov x8, #93
    svc 0

factorial:
    cmp x0, #1
    ble base_case
    stp x30, x19, [sp, #-16]!
    mov x19, x0
    sub x0, x0, #1
    bl factorial
    mul x0, x19, x0
    ldp x30, x19, [sp], #16
    ret
base_case:
    mov x0, #1
    ret
