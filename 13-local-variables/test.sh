#!/bin/bash
set -e
as exercise.s -o exercise.o && ld exercise.o -o exercise
./exercise
[ $? -eq 32 ] && echo "✓ Test passed (32)" || (echo "✗ Failed"; exit 1)
