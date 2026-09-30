// Exercise 10: Switch Case
// Implement switch-case logic for value 2

.global _start

.section .text
_start:
    // TODO: Load the value to switch on (use 2)
    mov x0, #2
    // TODO: Compare with 1, branch to case1 if equal
    cmp x0, #1
    beq case1
    // TODO: Compare with 2, branch to case2 if equal
    cmp x0, #2
    beq case2
    // TODO: Compare with 3, branch to case3 if equal
    cmp x0, #3
    beq case3
    // TODO: If no match, branch to default
    b default
    // TODO: case1 label - exit with 10
    case1:
    	mov x8, #93
	mov x0, #10
	svc 0
    // TODO: case2 label - exit with 20
    case2:
    	mov x8, #93
	mov x0, #20
	svc 0
    // TODO: case3 label - exit with 30
    case3:
        mov x8, #93
	mov x0, #30
	svc 0
    // TODO: default label - exit with 0
    default:
        mov x0, #0
	mov x8, #93
	svc 0
    // TODO: exit label - exit syscall
    exit:
    	mov x8, #93
	svc 0

