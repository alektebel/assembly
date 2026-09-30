#!/bin/bash
set -e
as exercise.s -o exercise.o && ld exercise.o -o exercise
echo -n "5" | ./exercise
[ $? -eq 6 ] && echo "✓ Read '5', returned 6" || (echo "✗ Failed"; exit 1)
