



#!/bin/bash

HIC11489-HIC11516

for x in HIC*; do
    R1=$(ls -l $x/fastq/* | awk '{print $9}' | awk -F '_' '{if ($5=="R1") print $0}' | sed 's/gz/gz,/g')
    R2=$(ls -l $x/fastq/* | awk '{print $9}' | awk -F '_' '{if ($5=="R2") print $0}' | sed 's/gz/gz,/g')
done






# ls
# awk
# while do read 
# echo line variable
# for loop through names of files