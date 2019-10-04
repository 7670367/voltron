#!/usr/bin/bash
#SBATCH -o slurm.%j.out # Standard output and error log
#SBATCH -e slurm.%j.err # Standard output and error log
#SBATCH -t 5-00:00:00
#SBATCH -p dragen2
#SBATCH --mem=80GB
#SBATCH -c 12
##SBATCH --mail-user=$USER@hi-c.io
#SBATCH --mail-type=ALL

date

PATH=$PATH:/gpfs0/apps/x86_64/ncbi-blast-2.9.0+/bin
cd /gpfs0/work/joshua.theisen/downloaded_applications/centrifuge/indices

SLURM_JTSJ='#SBATCH -p dragen2 --mem=80GB -c 12'
SETTINGS_JTSJ='make THREADS=24 IDX_NAME=bact_arch_hum COMPLETE_GENOMES=archaea COMPLETE_GENOMES=bacteria MAMMALIAN_TAXIDS=9606'

echo 'slurm settings: ' $SLURM_JTSJ
echo 'calling centrifuge index Makefile with ' $SETTINGS_JTSJ
# make THREADS=24 IDX_NAME=bact_arch_hum COMPLETE_GENOMES=archaea COMPLETE_GENOMES=bacteria MAMMALIAN_TAXIDS=9606
echo 'call to centrifuge index Makefile with ' $SETTINGS_JTSJ ' completed'



# PATH=$PATH:/gpfs0/apps/x86_64/ncbi-blast-2.9.0+/bin
# cd /gpfs0/work/joshua.theisen/downloaded_applications/centrifuge/indices
# make THREADS=12 IDX_NAME=bact_arch_hum_2 COMPLETE_GENOMES=archaea COMPLETE_GENOMES=bacteria MAMMALIAN_TAXIDS=9606

# PATH=$PATH:/gpfs0/apps/x86_64/ncbi-blast-2.9.0+/bin
# cd /gpfs0/work/joshua.theisen/downloaded_applications/centrifuge/indx2
# make THREADS=2 IDX_NAME=human MAMMALIAN_TAXIDS=9606

# PATH=$PATH:/gpfs0/apps/x86_64/ncbi-blast-2.9.0+/bin
# cd /gpfs0/work/joshua.theisen/downloaded_applications/centrifuge/indx2
# make THREADS=2 IDX_NAME=human MAMMALIAN_TAXIDS=9606

# PATH=$PATH:/gpfs0/apps/x86_64/ncbi-blast-2.9.0+/bin
# cd /gpfs0/work/joshua.theisen/downloaded_applications/centrifuge/indx2
# make THREADS=2 IDX_NAME=human MAMMALIAN_TAXIDS=9606

# PATH=$PATH:/gpfs0/apps/x86_64/ncbi-blast-2.9.0+/bin
# cd /gpfs0/work/joshua.theisen/downloaded_applications/centrifuge/indx2
# make THREADS=2 IDX_NAME=human MAMMALIAN_TAXIDS=9606

date
