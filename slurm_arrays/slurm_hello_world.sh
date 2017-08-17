#!/bin/bash
#SBATCH --nodes 1
#SBATCH --partition sknl
#SBATCH --output slurm-hello-world
#SBATCH --reservation htc-tutorial

echo "Hello World"

