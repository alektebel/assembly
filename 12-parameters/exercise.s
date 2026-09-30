// Exercise 12: Parameters
// Function that adds two parameters

.global _start

.section .text
_start:
    // TODO: Load 15 into x0 (first parameter)
    mov x0, #15
    // TODO: Load 27 into x1 (second parameter)
    mov x1, #27
    // TODO: Call add_two function
    bl add_two
    // TODO: Exit with result in x0
    mov x8, #93
    svc 0
// TODO: Define add_two function
add_two:
   add x0, x0, x1
   ret
// Takes parameters in x0 and x1
// Returns sum in x0
