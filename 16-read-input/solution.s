// Exercise 16: Read Input - Solution
.global _start
.section .data
buffer: .skip 1
.section .text
_start:
    mov x8, #63
    mov x0, #0
    adr x1, buffer
    mov x2, #1
    svc 0
    adr x1, buffer
    ldrb w0, [x1]
    sub x0, x0, #'0'
    add x0, x0, #1
    mov x8, #93
    svc 0
