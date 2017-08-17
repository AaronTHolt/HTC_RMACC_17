#!/bin/bash

# Make the following loop run in parallel with GNU Parallel
# Hint: use file_{}.csv instead of file_$i.csv
# You can run this file to see the expected output

for i in {1..10}; do
    python print_file_contents.py file_$i.csv;
done

