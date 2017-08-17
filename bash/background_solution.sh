#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks-per-node 6
#SBATCH --partition sknl
#SBATCH --time 00:02:00
#SBATCH --reservation htc-tutorial

module load intel/16.0.3

./matrix_mul &
./matrix_mul &
./matrix_mul &
./matrix_mul &
./matrix_mul &
./matrix_mul &
wait

