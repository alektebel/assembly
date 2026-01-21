# Exercise 13: Local Variables

## Learning Goals

- Allocate stack space for local variables
- Understand stack pointer (sp) management
- Learn stack frame structure
- Practice push/pop operations

## Concepts

- **Stack**: Grows downward (lower addresses)
- **Stack allocation**: `sub sp, sp, #bytes`
- **Stack deallocation**: `add sp, sp, #bytes`
- **Stack access**: `str/ldr` with sp-relative addressing

## Task

Create a function that uses 2 local variables on the stack to calculate (a+b)*c where a=5, b=3, c=4.
Result should be 32.

## Hints

```
my_function:
    sub sp, sp, #16   // allocate 16 bytes
    mov x0, #5
    str x0, [sp]      // store first local
    mov x0, #3
    str x0, [sp, #8]  // store second local
    ldr x1, [sp]
    ldr x2, [sp, #8]
    add x0, x1, x2    // a+b
    mov x1, #4
    mul x0, x0, x1    // (a+b)*c
    add sp, sp, #16   // deallocate
    ret
```

Exit with 32.
