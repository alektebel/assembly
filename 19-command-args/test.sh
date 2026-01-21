#!/bin/bash
set -e
as exercise.s -o exercise.o && ld exercise.o -o exercise
./exercise arg1 arg2
[ $? -eq 3 ] && echo "✓ argc = 3" || (echo "✗ Failed"; exit 1)
