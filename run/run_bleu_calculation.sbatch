#!/bin/bash

#SBATCH --job-name=BLEU_calc            # Job name
#SBATCH --output=bleu_calc.%j.out       # Standard output log
#SBATCH --error=bleu_calc.%j.err        # Standard error log
#SBATCH --time=04:00:00                 # Maximum runtime 
#SBATCH --ntasks=1                      # Number of tasks
#SBATCH --cpus-per-task=2               # Number of CPUs per task
#SBATCH --mem=16G                        # Memory per node (16 GB)

# path for input and output files
INPUT_FILE=/path/to/src/processed_txt2onto_descriptions_stem-False_lemmatize-False.tsv
OUTPUT_FILE=/path/to/results/tifours/bleu_scores_opt.csv.gz

# Run the Python script with argparse
python src/calculate_bleu_scores.py --input "$INPUT_FILE" --output "$OUTPUT_FILE"
