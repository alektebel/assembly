# Exercise 04: Memory Load/Store

## Learning Goals

- Understand memory addressing in ARM64
- Master LDR (load register) and STR (store register)
- Learn different addressing modes
- Practice reading and writing memory

## Concepts

- **LDR**: Load data from memory into a register
- **STR**: Store data from a register into memory
- **Addressing modes**:
  - Register indirect: `[x0]` - use address in x0
  - Register + offset: `[x0, #8]` - use address in x0 plus 8
  - Pre-indexed: `[x0, #8]!` - add offset to x0, then use it
  - Post-indexed: `[x0], #8` - use x0, then add offset to it
- **Word sizes**:
  - `ldr/str` - 64-bit (8 bytes)
  - `ldrh/strh` - 16-bit (2 bytes)
  - `ldrb/strb` - 8-bit (1 byte)

## ARM64 Instructions Covered

- `ldr`: Load register from memory
- `str`: Store register to memory
- `adr`: Load address of label into register

## Task

Write a program that:
1. Loads a value from memory location `value1`
2. Loads a value from memory location `value2`
3. Adds them together
4. Stores the result in memory location `result`
5. Loads the result and exits with it as exit code

Memory contents:
- `value1`: 15
- `value2`: 12
- Expected result: 27

## Hints

1. Use `adr` to get the address of a label
2. Use `ldr` with `[address]` syntax to load from memory
3. Use `str` to write back to memory
4. Remember to load the result before exiting

## Testing

```bash
make test
```

The program should exit with code 27.

## References

- [LDR Instruction](https://developer.arm.com/documentation/dui0801/g/A64-General-Instructions/LDR--immediate-)
- [STR Instruction](https://developer.arm.com/documentation/dui0801/g/A64-General-Instructions/STR--immediate-)
- [Addressing Modes](https://developer.arm.com/documentation/102374/0101/Loads-and-stores---addressing)
