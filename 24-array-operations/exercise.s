// Exercise 24: Array Operations
.global _start
.section .data
array: .word 3, 7, 2, 9, 4
array_len = 5
.section .text
_start:
    adr x1, array
    mov x2, #array_len
    // TODO: Find maximum value in array
    // Exit with max value
