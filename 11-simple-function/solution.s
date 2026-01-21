// Exercise 11: Simple Function - Solution
// Call a function and return

.global _start

.section .text
_start:
    // Call my_function
    bl my_function

    // Load exit code
    mov x0, #42

    // Exit
    mov x8, #93
    svc 0

my_function:
    // Simple function that just returns
    ret
