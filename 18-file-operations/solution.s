// Exercise 18: File Operations - Solution
.global _start
.section .data
filename: .asciz "test.txt"
data: .ascii "data"
data_len = . - data
.section .text
_start:
    mov x8, #56
    mov x0, #-100
    adr x1, filename
    mov x2, #0x241
    mov x3, #0644
    svc 0
    mov x19, x0
    mov x8, #64
    mov x0, x19
    adr x1, data
    mov x2, #data_len
    svc 0
    mov x8, #57
    mov x0, x19
    svc 0
    mov x0, #0
    mov x8, #93
    svc 0
