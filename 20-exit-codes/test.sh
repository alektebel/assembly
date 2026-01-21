#!/bin/bash
set -e
as exercise.s -o exercise.o && ld exercise.o -o exercise
./exercise
[ $? -eq 1 ] && echo "✓ Positive (5) = 1" || (echo "✗ Failed"; exit 1)
