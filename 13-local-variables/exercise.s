// Exercise 13: Local Variables
// Use stack for local variables: (5+3)*4 = 32

.global _start

.section .text
_start:
    bl calculate
    mov x8, #93
    svc 0

calculate:
    // TODO: Allocate 16 bytes on stack
    sub sp, sp, #16
    // TODO: Store 5 as first local variable
    mov x0, #5
    // TODO: Store 3 as second local variable
    str x0, [sp]
    // TODO: Load both, add them
    mov x0, #3
    str x0, [sp, #8]
    ldr x1, [sp]
    ldr x2, [sp, #8]
    // TODO: Multiply by 4
    add x0, x1, x2
    mov x1, #4
    mul x0, x0, x1

    // TODO: Deallocate stack
    add sp, sp, #16
    // TODO: Return with result in x0
    ret
    
