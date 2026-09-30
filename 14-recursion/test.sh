#!/bin/bash
set -e
as exercise.s -o exercise.o && ld exercise.o -o exercise
./exercise
[ $? -eq 120 ] && echo "✓ Factorial(5) = 120" || (echo "✗ Failed"; exit 1)
