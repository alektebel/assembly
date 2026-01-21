// Exercise 05: Data Sections
// Define different data types and add them together

.global _start

.section .data
    // TODO: Define a byte variable 'my_byte' with value 5

    // TODO: Define a word variable 'my_word' with value 10

    // TODO: Define a quad variable 'my_quad' with value 20

.section .text
_start:
    // TODO: Load the byte into x0
    // Hint: adr x1, my_byte
    //       ldrb w0, [x1]  // Note: ldrb for byte

    // TODO: Load the word into x2
    // Hint: adr x1, my_word
    //       ldr w2, [x1]   // Note: ldr w2 for 32-bit word

    // TODO: Add byte and word
    // Hint: add x0, x0, x2

    // TODO: Load the quad into x2
    // Hint: adr x1, my_quad
    //       ldr x2, [x1]   // Note: ldr x2 for 64-bit quad

    // TODO: Add to running sum
    // Hint: add x0, x0, x2

    // TODO: Exit with result (should be 35)
