// Exercise 18: File Operations
.global _start
.section .data
filename: .asciz "test.txt"
data: .ascii "data"
data_len = . - data
.section .text
_start:
    // TODO: openat file
    // TODO: write data
    // TODO: close
    // TODO: exit 0
