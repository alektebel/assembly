// Exercise 13: Local Variables - Solution
// Use stack for local variables: (5+3)*4 = 32

.global _start

.section .text
_start:
    bl calculate
    mov x8, #93
    svc 0

calculate:
    sub sp, sp, #16
    mov x0, #5
    str x0, [sp]
    mov x0, #3
    str x0, [sp, #8]
    ldr x1, [sp]
    ldr x2, [sp, #8]
    add x0, x1, x2
    mov x1, #4
    mul x0, x0, x1
    add sp, sp, #16
    ret
