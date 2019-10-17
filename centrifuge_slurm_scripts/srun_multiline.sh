#!/usr/bin/bash
#SBATCH -o slurm.cent_test.%j.out # Standard output and error log
#SBATCH -e slurm.cent_test.%j.err # Standard output and error log
#SBATCH -t 5-00:00:00
#SBATCH --mem=80GB
#SBATCH -p x86
##SBATCH --mail-user=$USER@hi-c.io
#SBATCH --mail-type=ALL
date

rm /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001*

less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383_S45_L001_R1_001_190927.fastq.gz | \
head -4000 > /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R1_head.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383_S45_L001_R2_001_190927.fastq.gz | \
head -4000 > /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R2_head.fastq

date
