#!/bin/bash
set -e

echo "Testing Exercise 06: Conditionals"
echo "=================================="

# Compile
echo "Compiling exercise.s..."
as exercise.s -o exercise.o
ld exercise.o -o exercise

# Test 1: Check exit code (15 > 10, so should be 1)
echo ""
echo "Test 1: Compare 15 and 10 (15 > 10)"
./exercise
exit_code=$?
if [ $exit_code -eq 1 ]; then
    echo "✓ Exit code is 1 (correct - first is greater)"
else
    echo "✗ Exit code is $exit_code (expected 1)"
    exit 1
fi

echo ""
echo "=================================="
echo "All tests passed!"
echo "=================================="
