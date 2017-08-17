#!/bin/bash
#SBATCH --nodes 1
#SBATCH --partition sknl
#SBATCH --array 0-2
#SBATCH --output slurm-array-%A.%a.out
#SBATCH --reservation htc-tutorial

echo "Master job id: ${SLURM_ARRAY_JOB_ID}"
echo "Array index: ${SLURM_ARRAY_TASK_ID}"

