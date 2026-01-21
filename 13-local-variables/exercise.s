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
    // TODO: Store 5 as first local variable
    // TODO: Store 3 as second local variable
    // TODO: Load both, add them
    // TODO: Multiply by 4
    // TODO: Deallocate stack
    // TODO: Return with result in x0
