#!/usr/bin/bash
#SBATCH -o slurm.%j.out # Standard output and error log
#SBATCH -e slurm.%j.err # Standard output and error log
#SBATCH -t 5-00:00:00
#SBATCH --mem=120GB
#SBATCH -c 12
#SBATCH -p x86
##SBATCH --mail-user=$USER@hi-c.io
#SBATCH --mail-type=ALL
date

/home/joshua.theisen/downloaded_applications/centrifuge/indices/centrifuge_index.sh

date
