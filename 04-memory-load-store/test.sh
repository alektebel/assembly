#!/bin/bash
set -e

echo "Testing Exercise 04: Memory Load/Store"
echo "=================================="

# Compile
echo "Compiling exercise.s..."
as exercise.s -o exercise.o
ld exercise.o -o exercise

# Test 1: Check exit code
echo ""
echo "Test 1: Load, add, store: 15 + 12 = 27"
./exercise
exit_code=$?
if [ $exit_code -eq 27 ]; then
    echo "✓ Exit code is 27 (correct!)"
else
    echo "✗ Exit code is $exit_code (expected 27)"
    exit 1
fi

echo ""
echo "=================================="
echo "All tests passed!"
echo "=================================="
