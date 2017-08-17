#!/bin/bash
#SBATCH --nodes 1
#SBATCH --array
#SBATCH --partition sknl
#SBATCH --output slurm-array-%A.%a.out
#SBATCH --reservation htc-tutorial

## Todo: fill in the above array directive

## Leave this alone
module load python
echo "Master job id: ${SLURM_ARRAY_JOB_ID}"
echo "Array index: ${SLURM_ARRAY_TASK_ID}"

## Todo: Submit a job array with 10 jobs,
## each job should run one of the python scripts
## located in the data directory.
## for example, the second job should execute the following:
## python print_file_contents.py file_2.txt


