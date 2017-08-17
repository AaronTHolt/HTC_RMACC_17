#!/bin/bash
#SBATCH --nodes 1
#SBATCH --partition sknl
#SBATCH --array 1-10 
#SBATCH --output slurm-array-%A.%a.out
#SBATCH --reservation htc-tutorial

module load python
echo "Master job id: ${SLURM_ARRAY_JOB_ID}"
echo "Array index: ${SLURM_ARRAY_TASK_ID}"

python print_file_contents.py data/file_${SLURM_ARRAY_TASK_ID}.txt
