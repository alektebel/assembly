// Exercise 17: Write Output
.global _start
.section .data
msg: .ascii "OK\n"
msg_len = . - msg
.section .text
_start:
    // TODO: Write "OK\n" to stdout
    // TODO: Exit with 0
