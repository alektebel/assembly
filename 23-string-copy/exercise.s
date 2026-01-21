// Exercise 23: String Copy
.global _start
.section .data
src: .asciz "test"
dst: .skip 10
.section .text
_start:
    adr x1, src
    adr x2, dst
    // TODO: Copy string from src to dst (include null terminator)
    mov x0, #0
    mov x8, #93
    svc 0
