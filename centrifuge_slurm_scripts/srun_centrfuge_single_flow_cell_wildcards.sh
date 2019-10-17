#!/usr/bin/bash
#SBATCH -o slurm.cent_test.%j.out # Standard output and error log
#SBATCH -e slurm.cent_test.%j.err # Standard output and error log
#SBATCH -t 5-00:00:00
#SBATCH --mem=80GB
#SBATCH -p x86
##SBATCH --mail-user=$USER@hi-c.io
#SBATCH --mail-type=ALL
date
echo script: srun_centrifuge_single_flow_cell.sh
echo centrifuge report file name: HIC11383.centrep
echo centrifuge classification output file name: HIC11383.centclass

less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383*L001*R1*.fastq.gz > \
	        /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq//HIC11383*L001*R2*.fastq.gz > \
	        /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq//HIC11383*L002*R1*.fastq.gz > \
	        /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq//HIC11383*L002*R2*.fastq.gz > \
	        /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq//HIC11383*L003*R1*.fastq.gz > \
	        /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq//HIC11383*L003*R2*.fastq.gz > \
	        /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq//HIC11383*L004*R1*.fastq.gz > \
	        /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq//HIC11383*L004*R2*.fastq.gz > \
	        /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L004_R2.fastq

CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/centrifuge_indices/p_h_v_index"  # this line should set the index, but doesn't seem to work, 
cd /gpfs0/work/joshua.theisen/centrifuge_indices/p_h_v_index                    # so I'm using this line to run centrifuge from the folde with the index

centrifuge \
	# specifies index
	-x p+h+v \
	# comma separated list of the read 1 files
	-1 /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L004_R1.fastq \
	# comma separated list of the read 2 files
	-2 /gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_identification/test_fastq/L004_R2.fastq \
	# output files
	--report-file /gpfs0/work/joshua.theisen/projects/species_identification/HIC11383.centrep \
	-S /gpfs0/work/joshua.theisen/projects/species_identification/HIC11383.centclass


#sort -t $'\t' -nk5 HIC11383.centrep | column -ts $'\t' > HIC11383_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test

date
