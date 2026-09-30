#!/bin/bash
set -e

echo "Testing Exercise 10: Switch Case"
echo "=================================="

# Compile
echo "Compiling exercise.s..."
as exercise.s -o exercise.o
ld exercise.o -o exercise

# Test 1: Check exit code (case 2 = 20)
echo ""
echo "Test 1: Switch on value 2"
./exercise
exit_code=$?
if [ $exit_code -eq 20 ]; then
    echo "✓ Exit code is 20 (correct - case 2!)"
else
    echo "✗ Exit code is $exit_code (expected 20)"
    exit 1
fi

echo ""
echo "=================================="
echo "All tests passed!"
echo "=================================="
