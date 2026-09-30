// Exercise 06: Conditionals
// Compare two numbers and exit with different codes based on result

.global _start

.section .text
_start:
    // TODO: Load 15 into x0
    mov x0, #15
    // TODO: Load 10 into x1
    mov x1, #10
    // TODO: Compare x0 and x1
    // Hint: cmp x0, x1
    cmp x0, x1
    // TODO: Branch if greater than
    // Hint: bgt greater_label
    bgt greater_label
    // TODO: Branch if less than
    // Hint: blt less_label
    blt less_label
    // TODO: If we get here, they're equal
    // Branch to equal_label
    b equal_label
// TODO: Create label for greater case
// Load exit code 1 and exit
greater_label:
    mov x8, #94
    mov x0, #1
    svc 0
// TODO: Create label for less case
// Load exit code 2 and exit
less_label:
    mov x0, #2
    mov x8, #93
    svc 0

equal_label:
// TODO: Create label for equal case
// Load exit code 3 and exit
    mov x0, #3
    mov x8, #93
    svc 0
