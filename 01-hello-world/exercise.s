// Exercise 01: Hello World
// Print "Hello, Assembly!" to stdout and exit with code 0

.global _start      // Make _start visible to linker

.section .data
    // TODO: Define your message here
    // Use: msg: .ascii "your message\n"
    // TODO: Define message length
    // Use: msg_len = . - msg

.section .text
_start:
    // TODO: Write syscall to print message
    // 1. Load syscall number 64 (write) into x8
    // 2. Load file descriptor 1 (stdout) into x0
    // 3. Load address of msg into x1
    // 4. Load msg_len into x2
    // 5. Call svc 0

    // TODO: Exit syscall
    // 1. Load syscall number 93 (exit) into x8
    // 2. Load exit code 0 into x0
    // 3. Call svc 0
