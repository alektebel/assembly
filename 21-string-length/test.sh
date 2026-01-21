#!/bin/bash
set -e
as exercise.s -o exercise.o && ld exercise.o -o exercise
./exercise
[ $? -eq 5 ] && echo "✓ Length of 'Hello' = 5" || (echo "✗ Failed"; exit 1)
