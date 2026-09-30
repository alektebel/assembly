// Exercise 11: Simple Function
// Call a function and return

.global _start

.section .text
_start:
    // TODO: Call my_function using bl
    bl my_function
    // TODO: Load 42 into x0
    mov x0, #42
    // TODO: Exit
    mov x8, #93
    svc 0
// TODO: Define my_function label
my_function:
    ret

    // TODO: Return from function using ret
