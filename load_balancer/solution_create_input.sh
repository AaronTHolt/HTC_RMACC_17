#!/bin/bash

## Create load balancer input file
# input file called cmd_file_2
# contain at least 2 commands per line
# one command should be 'hostname' another should be 'sleep 2'
# 50 lines long


# remove old file if it exists
rm -f cmd_file_2

# Possible solution
for i in {1..50}; do 
    echo "hostname; sleep 2; echo process $i" >> cmd_file_2 ;
done

