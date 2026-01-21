# ARM64 Assembly Learning Project

A comprehensive, hands-on course to learn ARM64 (AArch64) assembly programming through 25 progressive exercises. Build from basic "Hello World" to systems programming with file I/O, string manipulation, and memory management.

## Prerequisites

- ARM64 device (you're on one!)
- GNU toolchain installed:
  - `as` (GNU assembler)
  - `ld` (GNU linker)
  - `gcc` (optional, for comparison)

## Quick Start

```bash
# Verify your toolchain
as --version
ld --version

# Start with exercise 01
cd 01-hello-world
cat README.md          # Read the exercise description
cat exercise.s         # See the template with TODOs
make test              # Try running tests (will fail until you implement)

# Work on the exercise, then test
vim exercise.s         # Or your preferred editor
make test              # Run tests

# Stuck? Check the solution
make solution          # Build the reference solution
./solution             # Run it
cat solution.s         # Read the code
```

## Project Structure

```
assembly/
├── README.md              # This file
├── Makefile               # Run all tests: make test-all
├── PROGRESS.md            # Track your progress
├── 01-hello-world/        # Exercise 1
│   ├── README.md          # Exercise description
│   ├── exercise.s         # YOUR code goes here
│   ├── solution.s         # Reference solution
│   ├── test.sh            # Test script
│   └── Makefile           # Build system
├── 02-registers/          # Exercise 2
└── ...                    # 25 exercises total
```

## Curriculum Overview

### Phase 1: Fundamentals (01-05)
Learn basic syntax, registers, and data movement.

- 01: Hello World - Basic program structure, syscalls
- 02: Registers - Moving data, immediate values
- 03: Arithmetic - Add, subtract, multiply
- 04: Memory Load/Store - ldr/str instructions
- 05: Data Sections - .data and .bss sections

### Phase 2: Control Flow (06-10)
Master branching and loops.

- 06: Conditionals - Comparisons and branches
- 07: Simple Loop - For-loops with counters
- 08: While Loop - Condition-based loops
- 09: Nested Loops - Multi-level iteration
- 10: Switch Case - Jump tables

### Phase 3: Functions (11-15)
Learn ARM64 calling convention and stack management.

- 11: Simple Function - Function calls without parameters
- 12: Parameters - Passing arguments via registers
- 13: Local Variables - Stack frames
- 14: Recursion - Factorial or Fibonacci
- 15: Multiple Returns - Returning multiple values

### Phase 4: System Calls & I/O (16-20)
Interact with the operating system.

- 16: Read Input - stdin via syscall
- 17: Write Output - stdout and stderr
- 18: File Operations - Open, read, write, close
- 19: Command Args - Parse argc/argv
- 20: Exit Codes - Return different codes

### Phase 5: Strings & Memory (21-25)
Manipulate strings and buffers.

- 21: String Length - Calculate length
- 22: String Compare - Compare two strings
- 23: String Copy - Copy string safely
- 24: Array Operations - Find max/min
- 25: Buffer Ops - Reverse buffers

## How to Use This Project

1. **Sequential Learning**: Start at exercise 01 and work through in order. Each builds on previous concepts.

2. **Test-Driven**: Write code to pass tests. Run `make test` frequently.

3. **Reference Solutions**: Try solving on your own first. Check solutions when stuck or to compare approaches.

4. **Track Progress**: Update PROGRESS.md as you complete exercises.

5. **Experiment**: Modify code, break things, learn by doing!

## Common Commands

```bash
# In any exercise directory:
make            # Build your exercise.s
make test       # Run tests on your code
make solution   # Build the reference solution
make clean      # Remove build artifacts

# At project root:
make test-all   # Run all exercise tests
make clean-all  # Clean all exercises
```

## ARM64 Assembly Basics

### Registers
- `x0-x30`: 64-bit general purpose registers
- `w0-w30`: 32-bit versions of above (lower half)
- `sp`: Stack pointer
- `lr` (x30): Link register (return address)
- `xzr/wzr`: Zero register

### Common Instructions
- `mov`: Move/copy data
- `ldr/str`: Load/store from memory
- `add/sub/mul`: Arithmetic
- `cmp`: Compare
- `b/bl/ret`: Branch/branch-link/return
- `svc`: System call (supervisor call)

### Syscalls (Linux ARM64)
Syscall numbers go in `x8`, arguments in `x0-x5`:
- 93: exit
- 63: read
- 64: write
- 56: openat
- 57: close

## Resources

- [ARM64 Developer Docs](https://developer.arm.com/documentation/)
- [ARM Architecture Reference Manual](https://developer.arm.com/documentation/ddi0487/latest)
- [Linux ARM64 Syscalls](https://arm64.syscall.sh/)
- [GNU Assembler Manual](https://sourceware.org/binutils/docs/as/)

## Tips

- **Read Error Messages**: The assembler and linker give helpful errors
- **Use Comments**: Document your understanding in your code
- **Check Registers**: Use gdb if you need to debug
- **Test Incrementally**: Don't write everything at once
- **Compare Solutions**: After solving, see how the solution differs

## Getting Help

If stuck:
1. Re-read the exercise README.md
2. Check the hints section
3. Review previous exercises
4. Look at solution.s structure (without reading implementation)
5. Try the solution and compare with yours

## Progress Tracking

See PROGRESS.md to track which exercises you've completed.

Happy coding! By the end, you'll be comfortable writing any program in ARM64 assembly.
