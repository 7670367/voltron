echo calling centrifuge index Makefile
PATH=$PATH:/gpfs0/apps/x86_64/ncbi-blast-2.9.0+/bin 
cd ~/downloaded_applications/centrifuge/indices 
make THREADS=12 IDX_NAME=bact_arch_hum_2 COMPLETE_GENOMES=archaea COMPLETE_GENOMES=bacteria MAMMALIAN_TAXIDS=9606

