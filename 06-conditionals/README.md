# Exercise 06: Conditionals

## Learning Goals

- Understand comparison operations
- Master conditional branching
- Learn the CMP instruction and condition flags
- Practice if-else logic in assembly

## Concepts

- **CMP**: Compare instruction - subtracts operands and sets flags
- **Condition codes**:
  - `eq` - equal (Z flag set)
  - `ne` - not equal (Z flag clear)
  - `lt` - less than (signed)
  - `le` - less than or equal (signed)
  - `gt` - greater than (signed)
  - `ge` - greater than or equal (signed)
- **Conditional branches**: `beq`, `bne`, `blt`, `bgt`, etc.
- **Labels**: Named locations in code for branching

## ARM64 Instructions Covered

- `cmp`: Compare two registers or register with immediate
- `beq`, `bne`, `blt`, `bgt`, etc.: Conditional branch instructions
- `b`: Unconditional branch

## Task

Write a program that:
1. Compares two numbers: 15 and 10
2. If the first number is greater, exit with code 1
3. If the first number is less, exit with code 2
4. If they're equal, exit with code 3

Since 15 > 10, the program should exit with code 1.

## Hints

1. Load both values into registers
2. Use `cmp x0, x1` to compare
3. Use `bgt` (branch if greater than) to jump to appropriate code
4. Each branch target is a label followed by code
5. Use unconditional `b` to skip other branches after taking one

Example structure:
```
    cmp x0, x1
    bgt greater
    blt less
    b equal
greater:
    // code for greater
less:
    // code for less
equal:
    // code for equal
```

## Testing

```bash
make test
```

The program should exit with code 1.

## References

- [CMP Instruction](https://developer.arm.com/documentation/dui0801/g/A64-General-Instructions/CMP--immediate-)
- [Condition Codes](https://developer.arm.com/documentation/dui0801/g/Condition-Codes/Condition-code-suffixes)
