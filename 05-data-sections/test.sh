#!/bin/bash
set -e

echo "Testing Exercise 05: Data Sections"
echo "=================================="

# Compile
echo "Compiling exercise.s..."
as exercise.s -o exercise.o
ld exercise.o -o exercise

# Test 1: Check exit code
echo ""
echo "Test 1: Add byte(5) + word(10) + quad(20) = 35"
./exercise
exit_code=$?
if [ $exit_code -eq 35 ]; then
    echo "✓ Exit code is 35 (correct!)"
else
    echo "✗ Exit code is $exit_code (expected 35)"
    exit 1
fi

echo ""
echo "=================================="
echo "All tests passed!"
echo "=================================="
