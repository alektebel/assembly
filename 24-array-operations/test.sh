#!/bin/bash
set -e
as exercise.s -o exercise.o && ld exercise.o -o exercise
./exercise
[ $? -eq 9 ] && echo "✓ Max value = 9" || (echo "✗ Failed"; exit 1)
