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
    // Base case: if n <= 1, return 1
    // Recursive case: return n * factorial(n-1)
    // Remember to save/restore lr and any used callee-saved registers
