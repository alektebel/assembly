#!/bin/bash
set -e
echo "Testing Exercise 12: Parameters"
echo "=================================="
as exercise.s -o exercise.o
ld exercise.o -o exercise
./exercise
exit_code=$?
if [ $exit_code -eq 42 ]; then
    echo "✓ Exit code is 42 (15 + 27)"
else
    echo "✗ Exit code is $exit_code (expected 42)"
    exit 1
fi
echo "All tests passed!"
