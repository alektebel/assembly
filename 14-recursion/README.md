# Exercise 14: Recursion

## Learning Goals

- Implement recursive functions
- Understand stack usage in recursion
- Master base case and recursive case
- Practice link register preservation

## Task

Implement factorial(5) recursively. Result: 5! = 120

## Hints

```
factorial:  // x0 = n
    cmp x0, #1
    ble base_case
    stp x30, x19, [sp, #-16]!  // save lr and x19
    mov x19, x0                 // save n
    sub x0, x0, #1
    bl factorial                // factorial(n-1)
    mul x0, x19, x0             // n * factorial(n-1)
    ldp x30, x19, [sp], #16    // restore
    ret
base_case:
    mov x0, #1
    ret
```
