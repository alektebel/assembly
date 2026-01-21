#!/bin/bash
set -e

echo "Testing Exercise 09: Nested Loops"
echo "=================================="

# Compile
echo "Compiling exercise.s..."
as exercise.s -o exercise.o
ld exercise.o -o exercise

# Test 1: Check exit code
echo ""
echo "Test 1: Sum of (i*j) for i,j from 1 to 3"
./exercise
exit_code=$?
if [ $exit_code -eq 36 ]; then
    echo "✓ Exit code is 36 (correct!)"
else
    echo "✗ Exit code is $exit_code (expected 36)"
    exit 1
fi

echo ""
echo "=================================="
echo "All tests passed!"
echo "=================================="
