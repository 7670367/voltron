#!/usr/bin/bash
#SBATCH -o slurm.%j.out # Standard output and error log
#SBATCH -e slurm.%j.err # Standard output and error log
#SBATCH -t 5-00:00:00
#SBATCH --mem=80GB
#SBATCH -p x86
##SBATCH --mail-user=$USER@hi-c.io
#SBATCH --mail-type=ALL
date

##########################################  
#### run for every assembly ####
##########################################
# code to convert multi-fasta assemblies to single-fasta
awk 'BEGIN {FS = "\t"} {n = split(FILENAME, a, "/")}; {if(NR==1) {$0 = gensub(/^>(\S+).+$/, ">"a[n]"_\\1", 1, $0); print} else {if($0 ~ /^>/) {printf "nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn"} else {printf $0}}}' /home/joshua.theisen/antibiotic_resistance/assemblies/kleb.contigs.fasta > /home/joshua.theisen/antibiotic_resistance/assemblies/kleb.contigs.single.fasta
# run dockerized RGI with access to shared folder
#sudo docker run -v /home/joshua.theisen/antibiotic_resistance/:/data_shared -it quay.io/biocontainers/rgi:4.2.2--py35ha92aebf_1 bash
singularity exec --bind $HOME docker://quay.io/biocontainers/rgi:4.2.2--py35ha92aebf_1 /home/joshua.theisen/rgi_exec.sh

##########################################     
# from the RGI Docker "VM" terminal
##########################################     
# load CARD database
#rgi load --card_json /data_shared/card/card_database/card.json --local
# evaluate genome for resistance
#rgi main --input_sequence /data_shared/assemblies/kleb.contigs.single.fasta --output_file /data_shared/resistance_calls/kleb.contigs.single.rgi --input_type contig --local --clean
# switch to main terminal
#exit

##########################################  
# switch to main terminal  
##########################################
# convert RGI output to BED and BEDPE format
awk 'BEGIN {FS = "\t"} FNR == 1 {next} {sub(/_[0-9]+/,"",$2)} {print $2 "\t" $3 - 1 "\t" $4 "\t" $11 ":" $9 "\t" $8 "\t" $5}' /home/joshua.theisen/antibiotic_resistance/resistance_calls/kleb.contigs.single.rgi.txt > /home/joshua.theisen/antibiotic_resistance/resistance_calls/kleb.contigs.single.resistance_calls.bed
awk 'BEGIN {FS = "\t"} FNR == 1 {next} {sub(/_[0-9]+/,"",$2)} {print $2 "\t" $3 - 1 "\t" $4 "\t" $2 "\t" $3 - 1 "\t" $4 "\t" $11 ":" $9 "\t" $8 "\t" $5 "\t" $17 "\t" $15}' /home/joshua.theisen/antibiotic_resistance/resistance_calls/kleb.contigs.single.rgi.txt > /home/joshua.theisen/antibiotic_resistance/resistance_calls/kleb.contigs.single.resistance_calls.bedpe



date
