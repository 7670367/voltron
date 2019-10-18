
echo centrifuge analysis of HIC11383 fastq files
echo centrifuge report file name: HIC11383.centrep
echo centrifuge classification output file name: HIC11383.centclass

less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383*L001*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383*L001*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383*L002*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383*L002*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383*L003*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383*L003*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383*L004*R1*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq
less /mnt/HIC4000/MiSeq/HIC11383/fastq/HIC11383*L004*R2*.fastq.gz > /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq

# this line should set the index, but doesn't seem to work, 
CENTRIFUGE_INDEXES="/gpfs0/work/joshua.theisen/centrifuge_indices/p_h_v_index"
# so I'm using this line to run centrifuge from the folder with the index
cd /gpfs0/work/joshua.theisen/centrifuge_indices/p_h_v_index

centrifuge -x p+h+v -1 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R1.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R1.fastq -2 /gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L001_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L002_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L003_R2.fastq,/gpfs0/work/joshua.theisen/projects/species_calls/test_fastq/L004_R2.fastq --report-file /gpfs0/work/joshua.theisen/projects/species_calls/HIC11383.centrep -S /gpfs0/work/joshua.theisen/projects/species_calls/HIC11383.centclass

column -ts $'\t' HIC11489.centrep | head -1 > HIC11489_top.txt && sort -rt $'\t' -nk5 HIC11489.centrep | column -ts $'\t' | head -10 | cat >> HIC11489_top.txt
