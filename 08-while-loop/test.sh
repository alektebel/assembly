#!/bin/bash
set -e

echo "Testing Exercise 08: While Loop"
echo "=================================="

# Compile
echo "Compiling exercise.s..."
as exercise.s -o exercise.o
ld exercise.o -o exercise

# Test 1: Check exit code
echo ""
echo "Test 1: Count subtractions of 7 from 100"
./exercise
exit_code=$?
if [ $exit_code -eq 14 ]; then
    echo "✓ Exit code is 14 (correct!)"
else
    echo "✗ Exit code is $exit_code (expected 14)"
    exit 1
fi

echo ""
echo "=================================="
echo "All tests passed!"
echo "=================================="
