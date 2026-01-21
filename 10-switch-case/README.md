# Exercise 10: Switch Case

## Learning Goals

- Implement switch-case logic in assembly
- Learn jump table patterns (optional advanced approach)
- Practice cascading comparisons
- Understand case selection logic

## Concepts

- **Switch-case**: Multi-way branch based on value
- **Cascading comparisons**: Check each case sequentially
- **Jump tables**: Advanced - array of branch addresses (optional)
- **Default case**: Fallback when no case matches

## Task

Write a program that implements a switch-case on a value (use 2):
- Case 1: Exit with 10
- Case 2: Exit with 20
- Case 3: Exit with 30
- Default: Exit with 0

Since the value is 2, the program should exit with code 20.

## Hints

1. Cascading approach (simpler):
   ```
   mov x0, #2         // the value to switch on

   cmp x0, #1
   beq case1
   cmp x0, #2
   beq case2
   cmp x0, #3
   beq case3
   b default

   case1:
       mov x0, #10
       b exit
   case2:
       mov x0, #20
       b exit
   case3:
       mov x0, #30
       b exit
   default:
       mov x0, #0
   exit:
       // exit syscall
   ```

## Testing

```bash
make test
```

The program should exit with code 20.

## References

- [Multi-way Branches](https://developer.arm.com/documentation/102374/0101/Branches-and-loops)
