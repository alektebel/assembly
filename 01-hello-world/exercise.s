// Exercise 01: Hello World
// Print "Hello, Assembly!" to stdout and exit with code 0

.global _start      // Make _start visible to linker

.section .data
    // TODO: Define your message here
    // Use: msg: .ascii "your message\n"
    msg: .ascii "Hello, Assembly!\n"
    // TODO: Define message length
    // Use: msg_len = . - msg
    msg_len = .- msg

.section .text
_start:
    // TODO: Write syscall to print message
    // 1. Load syscall number 64 (write) into x8
    mov x8, #64
    // 2. Load file descriptor 1 (stdout) into x0
    mov x0, #1
    // 3. Load address of msg into x1
    adr x1, msg
    // 4. Load msg_len into x2
    mov x2, msg_len
    // 5. Call svc 0
    svc #0

    // TODO: Exit syscall
    // 1. Load syscall number 93 (exit) into x8
    mov x8, #93
    // 2. Load exit code 0 into x0
    mov x0, #0
    // 3. Call svc 0
    svc #0
