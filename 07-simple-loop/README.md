# Exercise 07: Simple Loop

## Learning Goals

- Implement a for-loop pattern in assembly
- Use counters and decrements
- Master loop control with branches
- Practice accumulator patterns

## Concepts

- **Loop counter**: Register that tracks iterations
- **Loop body**: Code that executes each iteration
- **Loop condition**: Check to continue or exit loop
- **Decrement and branch**: Common loop pattern in assembly

## ARM64 Instructions Covered

- `subs`: Subtract and set flags (unlike `sub`)
- `bne`: Branch if not equal (Z flag clear)
- `cbz/cbnz`: Compare and branch if zero/non-zero

## Task

Write a program that:
1. Sums the numbers from 1 to 10
2. Exits with the sum as the exit code

Expected result: 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 = 55

## Hints

1. Use one register for the counter (starts at 10, counts down to 0)
2. Use another register for the accumulator (sum)
3. Loop structure:
   ```
   mov x0, #0      // sum
   mov x1, #10     // counter
   loop:
       add x0, x0, x1    // sum += counter
       subs x1, x1, #1   // counter-- and set flags
       bne loop          // if counter != 0, loop again
   ```

## Testing

```bash
make test
```

The program should exit with code 55.

## References

- [SUBS Instruction](https://developer.arm.com/documentation/dui0801/g/A64-General-Instructions/SUBS--immediate-)
- [Loop Patterns](https://developer.arm.com/documentation/102374/0101/Branches-and-loops)
