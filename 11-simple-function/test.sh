#!/bin/bash
set -e

echo "Testing Exercise 11: Simple Function"
echo "=================================="

# Compile
echo "Compiling exercise.s..."
as exercise.s -o exercise.o
ld exercise.o -o exercise

# Test 1: Check exit code
echo ""
echo "Test 1: Call function and exit with 42"
./exercise
exit_code=$?
if [ $exit_code -eq 42 ]; then
    echo "✓ Exit code is 42 (correct!)"
else
    echo "✗ Exit code is $exit_code (expected 42)"
    exit 1
fi

echo ""
echo "=================================="
echo "All tests passed!"
echo "=================================="
