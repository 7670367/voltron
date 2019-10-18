#!/usr/bin/bash
#SBATCH -o slurm.cent_test.%j.out # Standard output and error log
#SBATCH -e slurm.cent_test.%j.err # Standard output and error log
#SBATCH -t 5-00:00:00
#SBATCH --mem=80GB
#SBATCH -p x86
##SBATCH --mail-user=$USER@hi-c.io
#SBATCH --mail-type=ALL
date
echo script: srun_cent_test_1l_1f_allr.sh
echo centrifuge test: 1 lane, 1 file, all reads
echo centrifuge report file name: L001.centrep
echo centrifuge classification output file name: L001.centclass

less /gpfs0/work/joshua.theisen/projects/species_identification/data/HIC11383_S45_L001_R1_001_190927.fastq.gz > \
	/gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R1.fastq
less /gpfs0/work/joshua.theisen/projects/species_identification/data/HIC11383_S45_L001_R2_001_190927.fastq.gz > \
	/gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R2.fastq

CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/centrifuge_indices/p_h_v_index"
cd /gpfs0/work/joshua.theisen/centrifuge_indices/p_h_v_index

centrifuge \
	-x p+h+v \
	-1 /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R1.fastq \
	-2 /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R2.fastq \
	--report-file /gpfs0/work/joshua.theisen/projects/species_identification/L001.centrep \
	-S /gpfs0/work/joshua.theisen/projects/species_identification/L001.centclass

date
