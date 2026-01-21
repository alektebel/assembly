// Exercise 25: Buffer Operations - Solution
.global _start
.section .data
buffer: .byte 1, 2, 3, 4, 5
buffer_len = 5
.section .text
_start:
    adr x1, buffer
    mov x2, #buffer_len
    sub x2, x2, #1
    add x3, x1, x2
    mov x4, #0
loop:
    cmp x4, x2
    bge done
    ldrb w5, [x1, x4]
    ldrb w6, [x3, -x4]
    strb w6, [x1, x4]
    strb w5, [x3, -x4]
    add x4, x4, #1
    b loop
done:
    ldrb w0, [x1]
    mov x8, #93
    svc 0
