#!/bin/bash
#
#SBATCH --job-name=nmt_training
#SBATCH --output=nmt_training_output_matrix.txt
#SBATCH --ntasks=1
#SBATCH --partition=students
#SBATCH --gres=gpu:mem11g:1
#SBATCH --mem=16000
#SBATCH --mail-user=anhtu@cl.uni-heidelberg.de
#SBATCH --mail-type=ALL

srun ./bash/run_training.sh