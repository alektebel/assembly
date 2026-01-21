// Exercise 15: Multiple Returns - divmod(17, 5)
.global _start
.section .text
_start:
    mov x0, #17
    mov x1, #5
    bl divmod
    // x0 = quotient (3), x1 = remainder (2)
    mov x8, #93
    svc 0

// TODO: Implement divmod function
// Returns quotient in x0, remainder in x1
divmod:
