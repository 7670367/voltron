#!/usr/bin/bash
#SBATCH -o slurm.cent_test.%j.out # Standard output and error log
#SBATCH -e slurm.cent_test.%j.err # Standard output and error log
#SBATCH -t 5-00:00:00
#SBATCH --mem=80GB
#SBATCH -p x86
##SBATCH --mail-user=$USER@hi-c.io
#SBATCH --mail-type=ALL
date

less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383*L001*R1*.fastq.gz | \
head -4000 > /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R1_head.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383*L001*R2*.fastq.gz | head -4000 > /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R2_head.fastq

CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/centrifuge_indices/p_h_v_index"
cd /gpfs0/work/joshua.theisen/centrifuge_indices/p_h_v_index

centrifuge \
	-x p+h+v \
	-1 				/gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R1_head.fastq \
	-2 				/gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R2_head.fastq \
	--report-file 	/gpfs0/work/joshua.theisen/projects/species_identification/L001_head.centrep \
	-S 				/gpfs0/work/joshua.theisen/projects/species_identification/L001_head.centclass

date
