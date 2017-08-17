#!/bin/bash

## Create load balancer input file
for i in {1..100}; do 
    echo "sleep 2; echo process $i" >> cmd_file ;
done

