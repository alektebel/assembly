// Exercise 04: Memory Load/Store - Solution
// Load two values from memory, add them, store result, and exit with result

.global _start

.section .data
    value1: .word 15
    value2: .word 12
    result: .word 0

.section .text
_start:
    // Load value1 into x0
    adr x1, value1
    ldr x0, [x1]

    // Load value2 into x2
    adr x1, value2
    ldr x2, [x1]

    // Add them together
    add x0, x0, x2      // x0 = 15 + 12 = 27

    // Store result to memory
    adr x1, result
    str x0, [x1]

    // Load result back into x0 (for exit code)
    adr x1, result
    ldr x0, [x1]

    // Exit with result (27)
    mov x8, #93
    svc 0
