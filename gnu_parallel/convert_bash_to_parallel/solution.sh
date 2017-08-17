#!/bin/bash

module load gnu_parallel

seq 1 10 | parallel python print_file_contents.py file_{}.csv

