# Exercise 12: Parameters

## Learning Goals

- Pass arguments to functions via registers
- Understand ARM64 calling convention
- Learn parameter registers (x0-x7)
- Practice function with return values

## Concepts

- **Calling convention**: First 8 arguments in x0-x7
- **Return value**: Returned in x0
- **Preserved registers**: x19-x29 must be preserved
- **Temporary registers**: x0-x18 can be modified

## ARM64 Calling Convention

Arguments: x0, x1, x2, x3, x4, x5, x6, x7
Return value: x0

## Task

Write a function `add_two` that takes two parameters and returns their sum.
Call it with 15 and 27, exit with the result (42).

## Hints

```
_start:
    mov x0, #15
    mov x1, #27
    bl add_two
    // x0 now contains result
    // exit with x0

add_two:
    add x0, x0, x1
    ret
```

## Testing

The program should exit with code 42.
