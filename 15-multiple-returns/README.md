# Exercise 15: Multiple Returns

## Learning Goals

- Return multiple values from functions
- Use multiple registers for return values
- Understand convention for multiple returns

## Task

Create function `divmod` that returns both quotient and remainder of 17 / 5.
Return quotient in x0, remainder in x1.
Exit with quotient (3).

## Hints

```
divmod:  // x0 = dividend, x1 = divisor
    udiv x2, x0, x1    // quotient
    msub x3, x2, x1, x0  // remainder = dividend - (quotient * divisor)
    mov x0, x2         // return quotient in x0
    mov x1, x3         // return remainder in x1
    ret
```
