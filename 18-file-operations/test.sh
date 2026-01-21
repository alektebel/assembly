#!/bin/bash
set -e
as exercise.s -o exercise.o && ld exercise.o -o exercise
rm -f test.txt
./exercise
[ -f test.txt ] && grep -q "data" test.txt && echo "✓ File created" || (echo "✗ Failed"; exit 1)
rm -f test.txt
