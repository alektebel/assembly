#!/bin/bash
set -e

echo "Testing Exercise 07: Simple Loop"
echo "=================================="

# Compile
echo "Compiling exercise.s..."
as exercise.s -o exercise.o
ld exercise.o -o exercise

# Test 1: Check exit code (sum 1 to 10 = 55)
echo ""
echo "Test 1: Sum 1 to 10 = 55"
./exercise
exit_code=$?
if [ $exit_code -eq 55 ]; then
    echo "✓ Exit code is 55 (correct!)"
else
    echo "✗ Exit code is $exit_code (expected 55)"
    exit 1
fi

echo ""
echo "=================================="
echo "All tests passed!"
echo "=================================="
