#!/bin/bash
#SBATCH --partition shas
#SBATCH --nodes 1
#SBATCH --ntasks-per-node 1
#SBATCH --partition sknl
#SBATCH --time 00:10:00

# Main.py and the input files don't exist. This
# is just to look at.

python main.py input_file_1.csv
python main.py input_file_2.csv
python main.py input_file_3.csv
python main.py input_file_4.csv
python main.py input_file_5.csv
python main.py input_file_6.csv
python main.py input_file_7.csv
python main.py input_file_8.csv
python main.py input_file_9.csv
python main.py input_file_10.csv

