# Exercise 09: Nested Loops

## Learning Goals

- Implement nested loops in assembly
- Manage multiple loop counters
- Practice register preservation
- Understand loop nesting patterns

## Concepts

- **Nested loops**: Loop inside another loop
- **Multiple counters**: Track each loop level separately
- **Register management**: Avoid overwriting counters
- Inner loop must complete fully for each outer iteration

## Task

Write a program that calculates: sum of (i * j) for i from 1 to 3, j from 1 to 3.

Result: (1×1 + 1×2 + 1×3) + (2×1 + 2×2 + 2×3) + (3×1 + 3×2 + 3×3)
      = (1 + 2 + 3) + (2 + 4 + 6) + (3 + 6 + 9)
      = 6 + 12 + 18
      = 36

## Hints

1. Use x0 for sum, x1 for outer counter (i), x2 for inner counter (j)
2. Structure:
   ```
   mov x0, #0      // sum
   mov x1, #3      // outer counter
   outer:
       mov x2, #3  // inner counter (reset each time!)
       inner:
           mul x3, x1, x2    // i * j
           add x0, x0, x3    // sum += i*j
           subs x2, x2, #1
           bne inner
       subs x1, x1, #1
       bne outer
   ```

## Testing

```bash
make test
```

The program should exit with code 36.

## References

- [Loop Nesting Patterns](https://developer.arm.com/documentation/102374/0101/Branches-and-loops)
