# Exercise 05: Data Sections

## Learning Goals

- Understand different data sections (.data, .bss, .rodata)
- Learn data type directives (.byte, .word, .quad, .ascii)
- Master label usage and the current location counter (.)
- Practice calculating data sizes

## Concepts

- **.data section**: Initialized data (read-write)
- **.bss section**: Uninitialized data (read-write, zero-filled)
- **.rodata section**: Read-only data (constants)
- **Data directives**:
  - `.byte` - 1 byte (8 bits)
  - `.hword` - 2 bytes (16 bits)
  - `.word` - 4 bytes (32 bits)
  - `.quad` - 8 bytes (64 bits)
  - `.ascii` - string (no null terminator)
  - `.asciz` - string (with null terminator)
- **Current location**: `.` represents current address
- **Size calculation**: `size = . - label` calculates bytes since label

## ARM64 Instructions Covered

No new instructions, focus is on data layout.

## Task

Write a program that:
1. Defines a byte variable with value 5
2. Defines a word variable with value 10
3. Defines a quad variable with value 20
4. Loads all three values
5. Adds them together (5 + 10 + 20 = 35)
6. Exits with the sum

## Hints

1. Use `.byte 5` to define a byte
2. Use `.word 10` to define a word (4 bytes)
3. Use `.quad 20` to define a quad (8 bytes)
4. Use `ldrb` to load a byte, `ldr` with proper size for word/quad
5. Remember alignment - the assembler handles this automatically

## Testing

```bash
make test
```

The program should exit with code 35.

## References

- [GNU Assembler Directives](https://sourceware.org/binutils/docs/as/Pseudo-Ops.html)
- [Data Sections](https://developer.arm.com/documentation/100067/0612/armclang-Reference/armclang-Integrated-Assembler/Data-definition-directives)
