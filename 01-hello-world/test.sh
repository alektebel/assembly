#!/bin/bash
set -e

echo "Testing Exercise 01: Hello World"
echo "=================================="

# Compile
echo "Compiling exercise.s..."
as exercise.s -o exercise.o
ld exercise.o -o exercise

# Test 1: Check if program runs
echo ""
echo "Test 1: Program execution"
output=$(./exercise)
echo "Output: $output"

# Test 2: Check output
echo ""
echo "Test 2: Correct output"
expected="Hello, Assembly!"
if [ "$output" = "$expected" ]; then
    echo "✓ Output matches expected: '$expected'"
else
    echo "✗ Output mismatch!"
    echo "  Expected: '$expected'"
    echo "  Got:      '$output'"
    exit 1
fi

# Test 3: Check exit code
echo ""
echo "Test 3: Exit code"
./exercise
exit_code=$?
if [ $exit_code -eq 0 ]; then
    echo "✓ Exit code is 0"
else
    echo "✗ Exit code is $exit_code (expected 0)"
    exit 1
fi

echo ""
echo "=================================="
echo "All tests passed!"
echo "=================================="
