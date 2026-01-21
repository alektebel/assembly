// Exercise 22: String Compare - Solution
.global _start
.section .data
str1: .asciz "abc"
str2: .asciz "abc"
.section .text
_start:
    adr x1, str1
    adr x2, str2
loop:
    ldrb w3, [x1], #1
    ldrb w4, [x2], #1
    cmp w3, w4
    bne not_equal
    cbz w3, equal
    b loop
equal:
    mov x0, #0
    b exit
not_equal:
    mov x0, #1
exit:
    mov x8, #93
    svc 0
