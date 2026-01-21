// Exercise 24: Array Operations - Solution
.global _start
.section .data
array: .word 3, 7, 2, 9, 4
array_len = 5
.section .text
_start:
    adr x1, array
    mov x2, #array_len
    ldr w0, [x1], #4
    subs x2, x2, #1
loop:
    beq done
    ldr w3, [x1], #4
    cmp w3, w0
    csel w0, w3, w0, gt
    subs x2, x2, #1
    b loop
done:
    mov x8, #93
    svc 0
