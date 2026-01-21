// Exercise 05: Data Sections - Solution
// Define different data types and add them together

.global _start

.section .data
    my_byte: .byte 5
    my_word: .word 10
    my_quad: .quad 20

.section .text
_start:
    // Load the byte into x0
    adr x1, my_byte
    ldrb w0, [x1]       // Load byte: w0 = 5

    // Load the word into x2
    adr x1, my_word
    ldr w2, [x1]        // Load word: w2 = 10

    // Add byte and word
    add x0, x0, x2      // x0 = 5 + 10 = 15

    // Load the quad into x2
    adr x1, my_quad
    ldr x2, [x1]        // Load quad: x2 = 20

    // Add to running sum
    add x0, x0, x2      // x0 = 15 + 20 = 35

    // Exit with result (35)
    mov x8, #93
    svc 0
