// Exercise 09: Nested Loops - Solution
// Calculate sum of (i * j) for i=1 to 3, j=1 to 3

.global _start

.section .text
_start:
    // Initialize sum to 0
    mov x0, #0

    // Initialize outer counter to 3
    mov x1, #3

outer:
    // Initialize inner counter to 3 (reset each time!)
    mov x2, #3

inner:
    // Multiply outer * inner counters
    mul x3, x1, x2      // x3 = i * j

    // Add result to sum
    add x0, x0, x3      // sum += i*j

    // Decrement inner counter and loop if not zero
    subs x2, x2, #1
    bne inner

    // Decrement outer counter and loop if not zero
    subs x1, x1, #1
    bne outer

    // Exit with sum (36)
    mov x8, #93
    svc 0
