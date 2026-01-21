#!/bin/bash
set -e
as exercise.s -o exercise.o && ld exercise.o -o exercise
./exercise
[ $? -eq 0 ] && echo "✓ String copy successful" || (echo "✗ Failed"; exit 1)
