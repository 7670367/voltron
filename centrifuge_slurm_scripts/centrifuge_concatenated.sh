#!/usr/bin/bash
#SBATCH -o slurm.%j.centrifuge_concatenated.out # Standard output and error log
#SBATCH -e slurm.%j.err # Standard output and error log
#SBATCH -t 5-00:00:00
#SBATCH --mem=80GB
#SBATCH -p x86
##SBATCH --mail-user=$USER@hi-c.io
#SBATCH --mail-type=ALL
date

echo centrifuge_concatenated.sh started

echo centrifuge analysis of HIC11489 fastq files
echo centrifuge report file name: HIC11489.centrep
echo centrifuge classification output file name: HIC11489.centclass

less /mnt/HIC4000/MiSeq/HIC11489/fastq/HIC11489*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11489/fastq/HIC11489*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11489/fastq/HIC11489*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11489/fastq/HIC11489*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11489/fastq/HIC11489*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11489/fastq/HIC11489*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11489/fastq/HIC11489*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11489/fastq/HIC11489*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11489.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11489.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11490 fastq files
echo centrifuge report file name: HIC11490.centrep
echo centrifuge classification output file name: HIC11490.centclass

less /mnt/HIC4000/MiSeq/HIC11490/fastq/HIC11490*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11490/fastq/HIC11490*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11490/fastq/HIC11490*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11490/fastq/HIC11490*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11490/fastq/HIC11490*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11490/fastq/HIC11490*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11490/fastq/HIC11490*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11490/fastq/HIC11490*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11490.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11490.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11491 fastq files
echo centrifuge report file name: HIC11491.centrep
echo centrifuge classification output file name: HIC11491.centclass

less /mnt/HIC4000/MiSeq/HIC11491/fastq/HIC11491*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11491/fastq/HIC11491*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11491/fastq/HIC11491*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11491/fastq/HIC11491*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11491/fastq/HIC11491*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11491/fastq/HIC11491*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11491/fastq/HIC11491*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11491/fastq/HIC11491*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11491.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11491.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11492 fastq files
echo centrifuge report file name: HIC11492.centrep
echo centrifuge classification output file name: HIC11492.centclass

less /mnt/HIC4000/MiSeq/HIC11492/fastq/HIC11492*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11492/fastq/HIC11492*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11492/fastq/HIC11492*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11492/fastq/HIC11492*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11492/fastq/HIC11492*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11492/fastq/HIC11492*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11492/fastq/HIC11492*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11492/fastq/HIC11492*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11492.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11492.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11493 fastq files
echo centrifuge report file name: HIC11493.centrep
echo centrifuge classification output file name: HIC11493.centclass

less /mnt/HIC4000/MiSeq/HIC11493/fastq/HIC11493*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11493/fastq/HIC11493*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11493/fastq/HIC11493*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11493/fastq/HIC11493*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11493/fastq/HIC11493*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11493/fastq/HIC11493*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11493/fastq/HIC11493*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11493/fastq/HIC11493*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11493.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11493.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11494 fastq files
echo centrifuge report file name: HIC11494.centrep
echo centrifuge classification output file name: HIC11494.centclass

less /mnt/HIC4000/MiSeq/HIC11494/fastq/HIC11494*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11494/fastq/HIC11494*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11494/fastq/HIC11494*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11494/fastq/HIC11494*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11494/fastq/HIC11494*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11494/fastq/HIC11494*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11494/fastq/HIC11494*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11494/fastq/HIC11494*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11494.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11494.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11495 fastq files
echo centrifuge report file name: HIC11495.centrep
echo centrifuge classification output file name: HIC11495.centclass

less /mnt/HIC4000/MiSeq/HIC11495/fastq/HIC11495*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11495/fastq/HIC11495*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11495/fastq/HIC11495*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11495/fastq/HIC11495*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11495/fastq/HIC11495*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11495/fastq/HIC11495*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11495/fastq/HIC11495*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11495/fastq/HIC11495*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11495.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11495.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11496 fastq files
echo centrifuge report file name: HIC11496.centrep
echo centrifuge classification output file name: HIC11496.centclass

less /mnt/HIC4000/MiSeq/HIC11496/fastq/HIC11496*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11496/fastq/HIC11496*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11496/fastq/HIC11496*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11496/fastq/HIC11496*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11496/fastq/HIC11496*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11496/fastq/HIC11496*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11496/fastq/HIC11496*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11496/fastq/HIC11496*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11496.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11496.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11497 fastq files
echo centrifuge report file name: HIC11497.centrep
echo centrifuge classification output file name: HIC11497.centclass

less /mnt/HIC4000/MiSeq/HIC11497/fastq/HIC11497*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11497/fastq/HIC11497*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11497/fastq/HIC11497*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11497/fastq/HIC11497*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11497/fastq/HIC11497*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11497/fastq/HIC11497*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11497/fastq/HIC11497*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11497/fastq/HIC11497*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11497.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11497.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11498 fastq files
echo centrifuge report file name: HIC11498.centrep
echo centrifuge classification output file name: HIC11498.centclass

less /mnt/HIC4000/MiSeq/HIC11498/fastq/HIC11498*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11498/fastq/HIC11498*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11498/fastq/HIC11498*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11498/fastq/HIC11498*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11498/fastq/HIC11498*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11498/fastq/HIC11498*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11498/fastq/HIC11498*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11498/fastq/HIC11498*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11498.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11498.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11499 fastq files
echo centrifuge report file name: HIC11499.centrep
echo centrifuge classification output file name: HIC11499.centclass

less /mnt/HIC4000/MiSeq/HIC11499/fastq/HIC11499*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11499/fastq/HIC11499*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11499/fastq/HIC11499*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11499/fastq/HIC11499*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11499/fastq/HIC11499*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11499/fastq/HIC11499*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11499/fastq/HIC11499*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11499/fastq/HIC11499*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11499.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11499.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11500 fastq files
echo centrifuge report file name: HIC11500.centrep
echo centrifuge classification output file name: HIC11500.centclass

less /mnt/HIC4000/MiSeq/HIC11500/fastq/HIC11500*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11500/fastq/HIC11500*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11500/fastq/HIC11500*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11500/fastq/HIC11500*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11500/fastq/HIC11500*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11500/fastq/HIC11500*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11500/fastq/HIC11500*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11500/fastq/HIC11500*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11500.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11500.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11501 fastq files
echo centrifuge report file name: HIC11501.centrep
echo centrifuge classification output file name: HIC11501.centclass

less /mnt/HIC4000/MiSeq/HIC11501/fastq/HIC11501*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11501/fastq/HIC11501*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11501/fastq/HIC11501*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11501/fastq/HIC11501*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11501/fastq/HIC11501*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11501/fastq/HIC11501*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11501/fastq/HIC11501*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11501/fastq/HIC11501*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11501.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11501.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11502 fastq files
echo centrifuge report file name: HIC11502.centrep
echo centrifuge classification output file name: HIC11502.centclass

less /mnt/HIC4000/MiSeq/HIC11502/fastq/HIC11502*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11502/fastq/HIC11502*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11502/fastq/HIC11502*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11502/fastq/HIC11502*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11502/fastq/HIC11502*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11502/fastq/HIC11502*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11502/fastq/HIC11502*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11502/fastq/HIC11502*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11502.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11502.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11503 fastq files
echo centrifuge report file name: HIC11503.centrep
echo centrifuge classification output file name: HIC11503.centclass

less /mnt/HIC4000/MiSeq/HIC11503/fastq/HIC11503*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11503/fastq/HIC11503*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11503/fastq/HIC11503*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11503/fastq/HIC11503*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11503/fastq/HIC11503*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11503/fastq/HIC11503*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11503/fastq/HIC11503*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11503/fastq/HIC11503*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11503.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11503.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11504 fastq files
echo centrifuge report file name: HIC11504.centrep
echo centrifuge classification output file name: HIC11504.centclass

less /mnt/HIC4000/MiSeq/HIC11504/fastq/HIC11504*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11504/fastq/HIC11504*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11504/fastq/HIC11504*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11504/fastq/HIC11504*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11504/fastq/HIC11504*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11504/fastq/HIC11504*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11504/fastq/HIC11504*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11504/fastq/HIC11504*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11504.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11504.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11505 fastq files
echo centrifuge report file name: HIC11505.centrep
echo centrifuge classification output file name: HIC11505.centclass

less /mnt/HIC4000/MiSeq/HIC11505/fastq/HIC11505*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11505/fastq/HIC11505*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11505/fastq/HIC11505*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11505/fastq/HIC11505*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11505/fastq/HIC11505*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11505/fastq/HIC11505*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11505/fastq/HIC11505*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11505/fastq/HIC11505*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11505.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11505.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11506 fastq files
echo centrifuge report file name: HIC11506.centrep
echo centrifuge classification output file name: HIC11506.centclass

less /mnt/HIC4000/MiSeq/HIC11506/fastq/HIC11506*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11506/fastq/HIC11506*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11506/fastq/HIC11506*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11506/fastq/HIC11506*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11506/fastq/HIC11506*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11506/fastq/HIC11506*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11506/fastq/HIC11506*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11506/fastq/HIC11506*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11506.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11506.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11507 fastq files
echo centrifuge report file name: HIC11507.centrep
echo centrifuge classification output file name: HIC11507.centclass

less /mnt/HIC4000/MiSeq/HIC11507/fastq/HIC11507*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11507/fastq/HIC11507*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11507/fastq/HIC11507*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11507/fastq/HIC11507*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11507/fastq/HIC11507*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11507/fastq/HIC11507*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11507/fastq/HIC11507*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11507/fastq/HIC11507*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11507.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11507.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11508 fastq files
echo centrifuge report file name: HIC11508.centrep
echo centrifuge classification output file name: HIC11508.centclass

less /mnt/HIC4000/MiSeq/HIC11508/fastq/HIC11508*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11508/fastq/HIC11508*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11508/fastq/HIC11508*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11508/fastq/HIC11508*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11508/fastq/HIC11508*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11508/fastq/HIC11508*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11508/fastq/HIC11508*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11508/fastq/HIC11508*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11508.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11508.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11509 fastq files
echo centrifuge report file name: HIC11509.centrep
echo centrifuge classification output file name: HIC11509.centclass

less /mnt/HIC4000/MiSeq/HIC11509/fastq/HIC11509*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11509/fastq/HIC11509*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11509/fastq/HIC11509*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11509/fastq/HIC11509*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11509/fastq/HIC11509*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11509/fastq/HIC11509*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11509/fastq/HIC11509*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11509/fastq/HIC11509*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11509.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11509.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11510 fastq files
echo centrifuge report file name: HIC11510.centrep
echo centrifuge classification output file name: HIC11510.centclass

less /mnt/HIC4000/MiSeq/HIC11510/fastq/HIC11510*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11510/fastq/HIC11510*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11510/fastq/HIC11510*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11510/fastq/HIC11510*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11510/fastq/HIC11510*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11510/fastq/HIC11510*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11510/fastq/HIC11510*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11510/fastq/HIC11510*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11510.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11510.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11511 fastq files
echo centrifuge report file name: HIC11511.centrep
echo centrifuge classification output file name: HIC11511.centclass

less /mnt/HIC4000/MiSeq/HIC11511/fastq/HIC11511*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11511/fastq/HIC11511*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11511/fastq/HIC11511*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11511/fastq/HIC11511*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11511/fastq/HIC11511*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11511/fastq/HIC11511*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11511/fastq/HIC11511*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11511/fastq/HIC11511*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11511.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11511.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11512 fastq files
echo centrifuge report file name: HIC11512.centrep
echo centrifuge classification output file name: HIC11512.centclass

less /mnt/HIC4000/MiSeq/HIC11512/fastq/HIC11512*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11512/fastq/HIC11512*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11512/fastq/HIC11512*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11512/fastq/HIC11512*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11512/fastq/HIC11512*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11512/fastq/HIC11512*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11512/fastq/HIC11512*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11512/fastq/HIC11512*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11512.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11512.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11513 fastq files
echo centrifuge report file name: HIC11513.centrep
echo centrifuge classification output file name: HIC11513.centclass

less /mnt/HIC4000/MiSeq/HIC11513/fastq/HIC11513*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11513/fastq/HIC11513*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11513/fastq/HIC11513*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11513/fastq/HIC11513*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11513/fastq/HIC11513*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11513/fastq/HIC11513*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11513/fastq/HIC11513*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11513/fastq/HIC11513*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11513.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11513.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt





echo centrifuge analysis of HIC11514 fastq files
echo centrifuge report file name: HIC11514.centrep
echo centrifuge classification output file name: HIC11514.centclass

less /mnt/HIC4000/MiSeq/HIC11514/fastq/HIC11514*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11514/fastq/HIC11514*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11514/fastq/HIC11514*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11514/fastq/HIC11514*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11514/fastq/HIC11514*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11514/fastq/HIC11514*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11514/fastq/HIC11514*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11514/fastq/HIC11514*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/projects/antibiotic_resistance/species_calls/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11514.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11514.centclass
cd /gpfs0/work/joshua.theisen/projects/species_calls/
column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt
 
echo centrifuge_concatenated.sh started