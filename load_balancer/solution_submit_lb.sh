#!/bin/bash
#SBATCH --nodes 2
#SBATCH --ntasks-per-node 3 
#SBATCH --output loadbalance.out
#SBATCH --time 00:02:00
#SBATCH --partition sknl
#SBATCH --reservation htc-tutorial

module load loadbalance/0.2
mpirun lb cmd_file_2
