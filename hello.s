.section .text
.global main            // ← change from _start to main

main:
    mov     x0, #1                  // fd = 1 (stdout)
    adrp    x1, msg
    add     x1, x1, :lo12:msg
    mov     x2, #14                 // message length
    mov     x8, #64                 // syscall: write
    svc     #0

    mov     x0, #0                  // return 0 (success)
    ret                             // return from main (clang handles exit)

msg:
    .ascii  "Hello Termux!\n"
