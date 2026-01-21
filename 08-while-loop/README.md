# Exercise 08: While Loop

## Learning Goals

- Implement while-loop pattern in assembly
- Use condition-checked loops
- Practice pre-condition testing
- Distinguish from for-loop patterns

## Concepts

- **While loop**: Test condition before each iteration
- **Pre-condition**: Check before entering loop body
- **CBZ/CBNZ**: Compare and branch if zero/non-zero
- Difference from for-loop: condition checked first

## ARM64 Instructions Covered

- `cbz`: Compare and branch if zero
- `cbnz`: Compare and branch if not zero

## Task

Write a program that counts how many times you can subtract 7 from 100 before reaching 0 or less.

Start with 100, keep subtracting 7 while value > 0, count iterations.

Expected: 100, 93, 86, 79, 72, 65, 58, 51, 44, 37, 30, 23, 16, 9, 2
That's 14 subtractions (exit with 14).

## Hints

1. Structure:
   ```
   mov x0, #100    // value
   mov x1, #0      // count
   loop:
       cmp x0, #0
       ble done       // if value <= 0, exit loop
       sub x0, x0, #7
       add x1, x1, #1
       b loop
   done:
       mov x0, x1     // move count to exit code
   ```

## Testing

```bash
make test
```

The program should exit with code 14.

## References

- [CBZ/CBNZ Instructions](https://developer.arm.com/documentation/dui0801/g/A64-General-Instructions/CBZ)
