// Exercise 20: Exit Codes
.global _start
.section .text
_start:
    mov x0, #5
    // TODO: Check if positive (>0), negative (<0), or zero
    // Exit with 1 if positive, 2 if negative, 0 if zero
