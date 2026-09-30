// Exercise 09: Nested Loops
// Calculate sum of (i * j) for i=1 to 3, j=1 to 3

.global _start

.section .text
_start:
    // TODO: Initialize sum to 0
    mov x0, #0
    // TODO: Initialize outer counter to 3
    mov x1, #3
    // TODO: Outer loop label
    outer:
    // TODO: Initialize inner counter to 3 (must reset each outer iteration!)
        mov x2, #3
    // TODO: Inner loop label
        inner:
    // TODO: Multiply outer * inner counters
            mul x3, x1, x2
    // TODO: Add result to sum
            add x0, x0,  x3
    // TODO: Decrement inner counter and loop if not zero
            subs x2, x2, #1
	    bne inner
	subs x1, x1, #1
        bne outer
    // TODO: Decrement outer counter and loop if not zero 
    // TODO: Exit with sum (should be 36)
    mov x8, #93
    svc 0
