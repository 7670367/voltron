# this script is used to download BLAST databases from
# NCBI. it will only re-download databases that have changed since the last 
# invocation, as long as it is called from the same directory (in this case, 
# ~/blast_databases)

/gpfs0/apps/x86_64/ncbi-blast-2.9.0+/bin/update_blastdb.pl --decompress ref_prok_rep_genomes [*]

/gpfs0/apps/x86_64/ncbi-blast-2.9.0+/bin/update_blastdb.pl --decompress human_genomic  [*]

