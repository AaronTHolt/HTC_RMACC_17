#!/bin/bash
#SBATCH --nodes 
#SBATCH --ntasks-per-node
#SBATCH --time
#SBATCH --partition sknl
#SBATCH --reservation htc-tutorial

## Change --ntasks-per-node so that each process has a cpu
## Change the wall time to 2 minutes
## Run on 1 node

#Don't change this
module load intel/16.0.3


## Modify the following so that each binary runs at the same time
./matrix_mul
./matrix_mul
./matrix_mul
./matrix_mul
./matrix_mul
./matrix_mul
