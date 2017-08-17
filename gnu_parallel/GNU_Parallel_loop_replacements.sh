#!/bin/bash

### Bash Loops
echo "BASH Loops"
for i in {1..10}; do
    echo $i;
done 

for i in {1..100}; do
    echo $i | grep 1$;
done 

### GNU parallel Replacements
echo "GNU Parallel Loops"
seq 1 10 | parallel echo {}

seq 1 100 | parallel 'echo {} | grep 1$'