// Exercise 14: Recursion - Factorial(5) = 120
.global _start
.section .text
_start:
    mov x0, #5
    bl factorial
    mov x8, #93
    svc 0

// TODO: Implement factorial function recursively
factorial:
    cmp x0, #1
    ble basecase
    // Base case: if n <= 1, return 1
    // Recursive case: return n * factorial(n-1)

    stp x30, x19, [sp, #-16]!
    mov x19, x0
    sub x0, x0, #1

    bl factorial

    mul x0, x19, x0

    ldp x30, x19, [sp], #16 

    ret
    // Remember to save/restore lr and any used callee-saved registers
    basecase:
    	mov x0, #1
    	ret
