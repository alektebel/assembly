// Exercise 23: String Copy - Solution
.global _start
.section .data
src: .asciz "test"
dst: .skip 10
.section .text
_start:
    adr x1, src
    adr x2, dst
loop:
    ldrb w3, [x1], #1
    strb w3, [x2], #1
    cbnz w3, loop
    mov x0, #0
    mov x8, #93
    svc 0
