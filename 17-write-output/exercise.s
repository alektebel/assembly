// Exercise 17: Write Output
.global _start
.section .data
msg: .ascii "OK\n"
msg_len = . - msg
.section .text
_start:
    // TODO: Write "OK\n" to stdout
    mov x8, #64
    mov x0, #1
    adr x1, msg
    mov x2, msg_len
    svc 0
    mov x8, #93
    mov x0, #0
    svc 0
    // TODO: Exit with 0
