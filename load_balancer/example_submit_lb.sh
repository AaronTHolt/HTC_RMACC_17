#!/bin/bash
#SBATCH --nodes 2
#SBATCH --ntasks-per-node 12
#SBATCH --output output.out
#SBATCH --partition sknl

module load loadbalance/0.2

mpirun lb cmd_file
