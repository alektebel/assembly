// Exercise 01: Hello World - Solution
// Print "Hello, Assembly!" to stdout and exit with code 0

.global _start

.section .data
    msg: .ascii "Hello, Assembly!\n"
    msg_len = . - msg

.section .text
_start:
    // Write syscall - print message
    mov x8, #64         // syscall number for write
    mov x0, #1          // file descriptor 1 (stdout)
    adr x1, msg         // address of message
    mov x2, #msg_len    // length of message
    svc 0               // make syscall

    // Exit syscall
    mov x8, #93         // syscall number for exit
    mov x0, #0          // exit code 0
    svc 0               // make syscall
