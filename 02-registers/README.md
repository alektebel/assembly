# Exercise 02: Registers

## Learning Goals

- Understand ARM64 general purpose registers
- Learn to move data between registers
- Master immediate value loading
- Understand register sizes (x vs w registers)
- Practice register manipulation

## Concepts

- **64-bit registers**: x0-x30 (64-bit)
- **32-bit registers**: w0-w30 (lower 32 bits of x registers)
- **Immediate values**: Constants loaded with `mov` or `movz`
- **Register aliases**: x30 is also called `lr` (link register)
- **Zero register**: xzr/wzr always reads as zero

## ARM64 Instructions Covered

- `mov`: Move register or immediate to register
- `movz`: Move 16-bit immediate with zero extension
- `movk`: Move 16-bit immediate, keeping other bits

## Task

Write a program that:
1. Loads the value 42 into x0
2. Copies x0 to x1
3. Loads the value 100 into x2
4. Copies x2 to x3
5. Exits with the value from x0 (should be 42)

This exercise doesn't print anything - it just demonstrates register operations. The test will check the exit code.

## Hints

1. Use `mov x0, #42` to load immediate value 42
2. Use `mov x1, x0` to copy x0 to x1
3. The exit syscall uses x0 as the exit code

## Testing

```bash
make test
```

The program should exit with code 42.

## References

- [ARM64 Register Overview](https://developer.arm.com/documentation/102374/0101/Registers)
- [MOV Instruction](https://developer.arm.com/documentation/dui0801/g/A64-General-Instructions/MOV--register-)
