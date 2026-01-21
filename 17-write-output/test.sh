#!/bin/bash
set -e
as exercise.s -o exercise.o && ld exercise.o -o exercise
output=$(./exercise)
[ "$output" = "OK" ] && [ $? -eq 0 ] && echo "✓ Test passed" || (echo "✗ Failed"; exit 1)
