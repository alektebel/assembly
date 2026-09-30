// Exercise 16: Read Input
.global _start
.section .data
buffer: .skip 1
.section .text
_start:
    // TODO: Read 1 byte from stdin into buffer
    mov x8, #63
    mov x0, #0
    adr x1, buffer
    mov x2, #1
    // TODO: Load byte, convert ASCII to number
    svc 0
    ldrb w0, [x1]
    sub x0, x0, #'0'
    add x0, x0, #1
    mov x8, #93
    svc 0
    // TODO: Add 1
    // TODO: Exit with result
