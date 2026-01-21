# Exercise 11: Simple Function

## Learning Goals

- Understand function calls in ARM64
- Learn BL (branch with link) and RET instructions
- Master link register (lr/x30) usage
- Practice basic function structure

## Concepts

- **BL**: Branch with Link - saves return address in lr (x30)
- **RET**: Return from function - branches to address in lr
- **Link Register**: x30/lr holds return address
- Functions are just labeled code blocks with ret

## ARM64 Instructions Covered

- `bl`: Branch with link (call function)
- `ret`: Return from function

## Task

Write a program that:
1. Defines a function that does nothing (just returns)
2. Calls that function from _start
3. Exits with code 42

## Hints

Structure:
```
_start:
    bl my_function
    mov x0, #42
    // exit

my_function:
    ret
```

## Testing

```bash
make test
```

The program should exit with code 42.

## References

- [BL Instruction](https://developer.arm.com/documentation/dui0801/g/A64-General-Instructions/BL)
- [ARM64 Procedure Call Standard](https://developer.arm.com/documentation/102374/0101/Procedure-Call-Standard)
