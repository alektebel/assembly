# Exercise 01: Hello World

## Learning Goals

- Understand basic ARM64 assembly program structure
- Learn how to use system calls
- Master the exit syscall
- Understand program sections (.text, .data)
- Learn to assemble and link programs

## Concepts

- **Sections**: Code goes in `.text`, data in `.data`
- **Labels**: Named positions in code/data
- **Global symbols**: `.global _start` makes entry point visible to linker
- **System calls**: Use `svc 0` to invoke kernel
- **Registers**: x0-x7 for syscall arguments, x8 for syscall number

## ARM64 Instructions Covered

- `mov`: Move immediate value or register to register
- `svc`: Supervisor call (system call)

## Task

Write a program that prints "Hello, Assembly!" to the console and exits with code 0.

You need to:
1. Define a string in the `.data` section
2. Use the write syscall (number 64) to print to stdout
3. Use the exit syscall (number 93) to terminate

### Linux ARM64 Syscalls

**write** (syscall 64):
- x0 = file descriptor (1 = stdout)
- x1 = pointer to buffer
- x2 = number of bytes to write
- x8 = 64

**exit** (syscall 93):
- x0 = exit code
- x8 = 93

## Hints

1. The string address is loaded with `adr` or `ldr` with a label
2. String length must match the actual string
3. Remember the newline character `\n` at the end
4. Syscalls are made with `svc 0`

## Testing

```bash
make test
```

Expected output:
```
Hello, Assembly!
```

Exit code should be 0.

## References

- [Linux ARM64 Syscall Table](https://arm64.syscall.sh/)
- [ARM64 Syscall Calling Convention](https://developer.arm.com/documentation/102374/0101/Procedure-Call-Standard)
