#!/usr/bin/bash
#SBATCH -o slurm.%j.out # Standard output and error log
#SBATCH -e slurm.%j.err # Standard output and error log
#SBATCH -t 2-00:00:00
#SBATCH --mem=20GB
#SBATCH -p x86
##SBATCH --mail-user=$USER@hi-c.io
#SBATCH --mail-type=ALL
date

/home/joshua.theisen/bact_genomes_exec_2.sh

date
