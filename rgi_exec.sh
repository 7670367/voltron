echo calling rgi
rgi load --card_json /home/joshua.theisen/antibiotic_resistance/card/card_database/card.json --local
rgi main --input_sequence /home/joshua.theisen/antibiotic_resistance/assemblies/kleb.contigs.single.fasta --output_file /home/joshua.theisen/antibiotic_resistance/resistance_calls/kleb.contigs.single.rgi --input_type contig --local --clean