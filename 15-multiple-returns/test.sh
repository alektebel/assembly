#!/bin/bash
set -e
as exercise.s -o exercise.o && ld exercise.o -o exercise
./exercise
[ $? -eq 3 ] && echo "✓ divmod(17,5) = 3" || (echo "✗ Failed"; exit 1)
