// Exercise 21: String Length - Solution
.global _start
.section .data
str: .asciz "Hello"
.section .text
_start:
    adr x1, str
    mov x0, #0
loop:
    ldrb w2, [x1, x0]
    cbz w2, done
    add x0, x0, #1
    b loop
done:
    mov x8, #93
    svc 0
