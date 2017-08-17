#!/bin/bash
#SBATCH --nodes 
#SBATCH --ntasks-per-node 
#SBATCH --output output.out
#SBATCH --partition sknl
#SBATCH --reservation htc-tutorial

## Todo: fill in above sbatch directives (--nodes, --ntasks-per-node)

# Don't change this
module load loadbalance/0.2

## Todo, use slurm and the loadbalancer to submit your cmd_file_2 file

