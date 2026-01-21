// Exercise 21: String Length
.global _start
.section .data
str: .asciz "Hello"
.section .text
_start:
    adr x1, str
    mov x0, #0
    // TODO: Loop through string until null byte, count length
    // Exit with length
