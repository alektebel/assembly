#!/bin/bash
set -e
as exercise.s -o exercise.o && ld exercise.o -o exercise
./exercise
[ $? -eq 5 ] && echo "✓ Buffer reversed, first = 5" || (echo "✗ Failed"; exit 1)
