// Exercise 19: Command Args - Solution
.global _start
.section .text
_start:
    ldr x0, [sp]
    mov x8, #93
    svc 0
