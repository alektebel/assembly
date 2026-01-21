// Exercise 25: Buffer Operations
.global _start
.section .data
buffer: .byte 1, 2, 3, 4, 5
buffer_len = 5
.section .text
_start:
    adr x1, buffer
    mov x2, #buffer_len
    // TODO: Reverse the buffer in place
    // Exit with first element (should be 5 after reversal)
