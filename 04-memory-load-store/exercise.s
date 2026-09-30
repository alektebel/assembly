// Exercise 04: Memory Load/Store
// Load two values from memory, add them, store result, and exit with result

.global _start

.section .data
    value1: .word 15
    value2: .word 12
    result: .word 0

.section .text
_start:
    // TODO: Load value1 into x0
    // Hint: adr x1, value1
    //       ldr x0, [x1]
    adr x1, value1
    ldr x0, [x1]
    // TODO: Load value2 into x2
    // Hint: adr x1, value2
    //       ldr x2, [x1]
    adr x1, value2
    ldr x2, [x1]

    // TODO: Add x0 and x2, store in x0
    add x0, x0, x2

    // TODO: Store result to memory
    // Hint: adr x1, result
    //       str x0, [x1]
    adr x1, result
    str x0, [x1]

    // TODO: Load result back into x0 (for exit code)
    // Hint: adr x1, result

    //       ldr x0, [x1]
    adr x1, result
    ldr x0, [x1]

    // TODO: Exit with result
    mov x8, #93
    svc 0
