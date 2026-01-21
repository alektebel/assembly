# Exercise 03: Arithmetic

## Learning Goals

- Master basic arithmetic operations
- Understand how ADD, SUB, and MUL work
- Learn to combine multiple operations
- Practice result verification

## Concepts

- **ADD**: Addition of registers or immediate values
- **SUB**: Subtraction of registers or immediate values
- **MUL**: Multiplication of two registers
- **Operand order**: `add x0, x1, x2` means x0 = x1 + x2
- **Three-operand form**: Destination can be different from sources

## ARM64 Instructions Covered

- `add`: Add two operands
- `sub`: Subtract second operand from first
- `mul`: Multiply two registers

## Task

Write a program that:
1. Calculates: (10 + 5) * 2 - 3
2. Exits with the result as the exit code

Expected result: (10 + 5) * 2 - 3 = 15 * 2 - 3 = 30 - 3 = 27

## Hints

1. Use registers to store intermediate results
2. Order of operations:
   - First: 10 + 5 → store in a register
   - Second: multiply that result by 2 → store in a register
   - Third: subtract 3 from that result
3. The final result should be in x0 for the exit syscall

## Testing

```bash
make test
```

The program should exit with code 27.

## References

- [ADD Instruction](https://developer.arm.com/documentation/dui0801/g/A64-General-Instructions/ADD--immediate-)
- [SUB Instruction](https://developer.arm.com/documentation/dui0801/g/A64-General-Instructions/SUB--immediate-)
- [MUL Instruction](https://developer.arm.com/documentation/dui0801/g/A64-General-Instructions/MUL)
