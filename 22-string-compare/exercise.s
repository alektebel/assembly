// Exercise 22: String Compare
.global _start
.section .data
str1: .asciz "abc"
str2: .asciz "abc"
.section .text
_start:
    adr x1, str1
    adr x2, str2
    // TODO: Compare strings byte by byte
    // Exit with 0 if equal, 1 if not
