// Exercise 08: While Loop
// Count how many times we can subtract 7 from 100 before reaching 0 or less

.global _start

.section .text
_start:
    // TODO: Initialize value to 100
    mov x0, #100
    // TODO: Initialize counter to 0
    mov x1, #0
    // TODO: Create loop label
    loop:
    // TODO: Check if value <= 0, if so exit loop
        sub x0, x0, #7
        cmp x0, #0
	ble done
    // TODO: Subtract 7 from value
    // TODO: Increment counter
        add x1, x1, #1
    // TODO: Branch back to loop
        b loop
    // TODO: Create done label
    done:
        mov x0, x1
	mov x8, #93
	svc 0
    // TODO: Move counter to x0 and exit
