# Exercise 16: Read Input

## Learning Goals

- Use read syscall to get user input
- Understand file descriptors (stdin = 0)
- Practice buffer management

## Task

Read one byte from stdin, add 1 to it (ASCII digit), exit with numeric value.
If input is '5', exit with 6.

## Hints

Read syscall: x8=63, x0=0 (stdin), x1=buffer address, x2=bytes to read

```
.data
    buffer: .skip 1
.text
    mov x8, #63
    mov x0, #0
    adr x1, buffer
    mov x2, #1
    svc 0
    ldrb w0, [x1]
    sub x0, x0, #'0'  // ASCII to number
    add x0, x0, #1
    // exit
```
