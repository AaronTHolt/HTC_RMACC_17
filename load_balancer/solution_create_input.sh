#!/bin/bash

## Create load balancer input file
# input file called cmd_file_2
# contain at least 2 commands per line
# one command should be 'hostname' another should be 'sleep 2'
# 50 lines long


# Possible solution
for i in {1..50}; do 
    echo "hostname; sleep 2; echo process $i" >> cmd_file_2 ;
done

