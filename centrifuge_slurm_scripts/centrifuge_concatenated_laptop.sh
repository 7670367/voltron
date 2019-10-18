#! /bin/bash
#SBATCH -o slurm.cent_contatenated.%j.out # Standard output and error log
#SBATCH -e slurm.cent_concatenated.%j.err # Standard output and error log
#SBATCH -t 5-00:00:00
#SBATCH --mem=80GB
#SBATCH -p x86
##SBATCH --mail-user=$USER@hi-c.io
#SBATCH --mail-type=ALL
date

echo centrifuge analysis of HIC11489 fastq files
echo centrifuge report file name: HIC11489.centrep
echo centrifuge classification output file name: HIC11489.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11489/fastq/HIC11489*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11489/fastq//HIC11489*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11489/fastq//HIC11489*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11489/fastq//HIC11489*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11489/fastq//HIC11489*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11489/fastq//HIC11489*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11489/fastq//HIC11489*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11489/fastq//HIC11489*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11489.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11489.centclass


#sort -t $'\t' -nk5 HIC11489.centrep | column -ts $'\t' > HIC11489_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11490 fastq files
echo centrifuge report file name: HIC11490.centrep
echo centrifuge classification output file name: HIC11490.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11490/fastq/HIC11490*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11490/fastq//HIC11490*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11490/fastq//HIC11490*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11490/fastq//HIC11490*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11490/fastq//HIC11490*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11490/fastq//HIC11490*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11490/fastq//HIC11490*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11490/fastq//HIC11490*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11490.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11490.centclass


#sort -t $'\t' -nk5 HIC11490.centrep | column -ts $'\t' > HIC11490_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11491 fastq files
echo centrifuge report file name: HIC11491.centrep
echo centrifuge classification output file name: HIC11491.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11491/fastq/HIC11491*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11491/fastq//HIC11491*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11491/fastq//HIC11491*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11491/fastq//HIC11491*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11491/fastq//HIC11491*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11491/fastq//HIC11491*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11491/fastq//HIC11491*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11491/fastq//HIC11491*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11491.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11491.centclass


#sort -t $'\t' -nk5 HIC11491.centrep | column -ts $'\t' > HIC11491_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11492 fastq files
echo centrifuge report file name: HIC11492.centrep
echo centrifuge classification output file name: HIC11492.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11492/fastq/HIC11492*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11492/fastq//HIC11492*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11492/fastq//HIC11492*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11492/fastq//HIC11492*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11492/fastq//HIC11492*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11492/fastq//HIC11492*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11492/fastq//HIC11492*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11492/fastq//HIC11492*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11492.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11492.centclass


#sort -t $'\t' -nk5 HIC11492.centrep | column -ts $'\t' > HIC11492_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11493 fastq files
echo centrifuge report file name: HIC11493.centrep
echo centrifuge classification output file name: HIC11493.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11493/fastq/HIC11493*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11493/fastq//HIC11493*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11493/fastq//HIC11493*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11493/fastq//HIC11493*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11493/fastq//HIC11493*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11493/fastq//HIC11493*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11493/fastq//HIC11493*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11493/fastq//HIC11493*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11493.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11493.centclass


#sort -t $'\t' -nk5 HIC11493.centrep | column -ts $'\t' > HIC11493_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11494 fastq files
echo centrifuge report file name: HIC11494.centrep
echo centrifuge classification output file name: HIC11494.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11494/fastq/HIC11494*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11494/fastq//HIC11494*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11494/fastq//HIC11494*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11494/fastq//HIC11494*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11494/fastq//HIC11494*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11494/fastq//HIC11494*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11494/fastq//HIC11494*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11494/fastq//HIC11494*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11494.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11494.centclass


#sort -t $'\t' -nk5 HIC11494.centrep | column -ts $'\t' > HIC11494_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11495 fastq files
echo centrifuge report file name: HIC11495.centrep
echo centrifuge classification output file name: HIC11495.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11495/fastq/HIC11495*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11495/fastq//HIC11495*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11495/fastq//HIC11495*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11495/fastq//HIC11495*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11495/fastq//HIC11495*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11495/fastq//HIC11495*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11495/fastq//HIC11495*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11495/fastq//HIC11495*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11495.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11495.centclass


#sort -t $'\t' -nk5 HIC11495.centrep | column -ts $'\t' > HIC11495_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11496 fastq files
echo centrifuge report file name: HIC11496.centrep
echo centrifuge classification output file name: HIC11496.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11496/fastq/HIC11496*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11496/fastq//HIC11496*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11496/fastq//HIC11496*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11496/fastq//HIC11496*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11496/fastq//HIC11496*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11496/fastq//HIC11496*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11496/fastq//HIC11496*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11496/fastq//HIC11496*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11496.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11496.centclass


#sort -t $'\t' -nk5 HIC11496.centrep | column -ts $'\t' > HIC11496_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11497 fastq files
echo centrifuge report file name: HIC11497.centrep
echo centrifuge classification output file name: HIC11497.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11497/fastq/HIC11497*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11497/fastq//HIC11497*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11497/fastq//HIC11497*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11497/fastq//HIC11497*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11497/fastq//HIC11497*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11497/fastq//HIC11497*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11497/fastq//HIC11497*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11497/fastq//HIC11497*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11497.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11497.centclass


#sort -t $'\t' -nk5 HIC11497.centrep | column -ts $'\t' > HIC11497_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11498 fastq files
echo centrifuge report file name: HIC11498.centrep
echo centrifuge classification output file name: HIC11498.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11498/fastq/HIC11498*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11498/fastq//HIC11498*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11498/fastq//HIC11498*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11498/fastq//HIC11498*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11498/fastq//HIC11498*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11498/fastq//HIC11498*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11498/fastq//HIC11498*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11498/fastq//HIC11498*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11498.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11498.centclass


#sort -t $'\t' -nk5 HIC11498.centrep | column -ts $'\t' > HIC11498_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11499 fastq files
echo centrifuge report file name: HIC11499.centrep
echo centrifuge classification output file name: HIC11499.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11499/fastq/HIC11499*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11499/fastq//HIC11499*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11499/fastq//HIC11499*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11499/fastq//HIC11499*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11499/fastq//HIC11499*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11499/fastq//HIC11499*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11499/fastq//HIC11499*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11499/fastq//HIC11499*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11499.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11499.centclass


#sort -t $'\t' -nk5 HIC11499.centrep | column -ts $'\t' > HIC11499_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11500 fastq files
echo centrifuge report file name: HIC11500.centrep
echo centrifuge classification output file name: HIC11500.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11500/fastq/HIC11500*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11500/fastq//HIC11500*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11500/fastq//HIC11500*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11500/fastq//HIC11500*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11500/fastq//HIC11500*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11500/fastq//HIC11500*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11500/fastq//HIC11500*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11500/fastq//HIC11500*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11500.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11500.centclass


#sort -t $'\t' -nk5 HIC11500.centrep | column -ts $'\t' > HIC11500_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11501 fastq files
echo centrifuge report file name: HIC11501.centrep
echo centrifuge classification output file name: HIC11501.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11501/fastq/HIC11501*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11501/fastq//HIC11501*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11501/fastq//HIC11501*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11501/fastq//HIC11501*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11501/fastq//HIC11501*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11501/fastq//HIC11501*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11501/fastq//HIC11501*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11501/fastq//HIC11501*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11501.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11501.centclass


#sort -t $'\t' -nk5 HIC11501.centrep | column -ts $'\t' > HIC11501_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11502 fastq files
echo centrifuge report file name: HIC11502.centrep
echo centrifuge classification output file name: HIC11502.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11502/fastq/HIC11502*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11502/fastq//HIC11502*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11502/fastq//HIC11502*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11502/fastq//HIC11502*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11502/fastq//HIC11502*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11502/fastq//HIC11502*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11502/fastq//HIC11502*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11502/fastq//HIC11502*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11502.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11502.centclass


#sort -t $'\t' -nk5 HIC11502.centrep | column -ts $'\t' > HIC11502_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11503 fastq files
echo centrifuge report file name: HIC11503.centrep
echo centrifuge classification output file name: HIC11503.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11503/fastq/HIC11503*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11503/fastq//HIC11503*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11503/fastq//HIC11503*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11503/fastq//HIC11503*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11503/fastq//HIC11503*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11503/fastq//HIC11503*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11503/fastq//HIC11503*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11503/fastq//HIC11503*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11503.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11503.centclass


#sort -t $'\t' -nk5 HIC11503.centrep | column -ts $'\t' > HIC11503_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11504 fastq files
echo centrifuge report file name: HIC11504.centrep
echo centrifuge classification output file name: HIC11504.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11504/fastq/HIC11504*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11504/fastq//HIC11504*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11504/fastq//HIC11504*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11504/fastq//HIC11504*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11504/fastq//HIC11504*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11504/fastq//HIC11504*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11504/fastq//HIC11504*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11504/fastq//HIC11504*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11504.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11504.centclass


#sort -t $'\t' -nk5 HIC11504.centrep | column -ts $'\t' > HIC11504_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11505 fastq files
echo centrifuge report file name: HIC11505.centrep
echo centrifuge classification output file name: HIC11505.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11505/fastq/HIC11505*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11505/fastq//HIC11505*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11505/fastq//HIC11505*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11505/fastq//HIC11505*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11505/fastq//HIC11505*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11505/fastq//HIC11505*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11505/fastq//HIC11505*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11505/fastq//HIC11505*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11505.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11505.centclass


#sort -t $'\t' -nk5 HIC11505.centrep | column -ts $'\t' > HIC11505_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11506 fastq files
echo centrifuge report file name: HIC11506.centrep
echo centrifuge classification output file name: HIC11506.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11506/fastq/HIC11506*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11506/fastq//HIC11506*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11506/fastq//HIC11506*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11506/fastq//HIC11506*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11506/fastq//HIC11506*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11506/fastq//HIC11506*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11506/fastq//HIC11506*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11506/fastq//HIC11506*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11506.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11506.centclass


#sort -t $'\t' -nk5 HIC11506.centrep | column -ts $'\t' > HIC11506_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11507 fastq files
echo centrifuge report file name: HIC11507.centrep
echo centrifuge classification output file name: HIC11507.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11507/fastq/HIC11507*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11507/fastq//HIC11507*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11507/fastq//HIC11507*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11507/fastq//HIC11507*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11507/fastq//HIC11507*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11507/fastq//HIC11507*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11507/fastq//HIC11507*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11507/fastq//HIC11507*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11507.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11507.centclass


#sort -t $'\t' -nk5 HIC11507.centrep | column -ts $'\t' > HIC11507_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11508 fastq files
echo centrifuge report file name: HIC11508.centrep
echo centrifuge classification output file name: HIC11508.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11508/fastq/HIC11508*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11508/fastq//HIC11508*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11508/fastq//HIC11508*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11508/fastq//HIC11508*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11508/fastq//HIC11508*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11508/fastq//HIC11508*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11508/fastq//HIC11508*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11508/fastq//HIC11508*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11508.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11508.centclass


#sort -t $'\t' -nk5 HIC11508.centrep | column -ts $'\t' > HIC11508_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11509 fastq files
echo centrifuge report file name: HIC11509.centrep
echo centrifuge classification output file name: HIC11509.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11509/fastq/HIC11509*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11509/fastq//HIC11509*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11509/fastq//HIC11509*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11509/fastq//HIC11509*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11509/fastq//HIC11509*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11509/fastq//HIC11509*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11509/fastq//HIC11509*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11509/fastq//HIC11509*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11509.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11509.centclass


#sort -t $'\t' -nk5 HIC11509.centrep | column -ts $'\t' > HIC11509_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11510 fastq files
echo centrifuge report file name: HIC11510.centrep
echo centrifuge classification output file name: HIC11510.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11510/fastq/HIC11510*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11510/fastq//HIC11510*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11510/fastq//HIC11510*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11510/fastq//HIC11510*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11510/fastq//HIC11510*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11510/fastq//HIC11510*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11510/fastq//HIC11510*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11510/fastq//HIC11510*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11510.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11510.centclass


#sort -t $'\t' -nk5 HIC11510.centrep | column -ts $'\t' > HIC11510_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11511 fastq files
echo centrifuge report file name: HIC11511.centrep
echo centrifuge classification output file name: HIC11511.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11511/fastq/HIC11511*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11511/fastq//HIC11511*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11511/fastq//HIC11511*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11511/fastq//HIC11511*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11511/fastq//HIC11511*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11511/fastq//HIC11511*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11511/fastq//HIC11511*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11511/fastq//HIC11511*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11511.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11511.centclass


#sort -t $'\t' -nk5 HIC11511.centrep | column -ts $'\t' > HIC11511_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11512 fastq files
echo centrifuge report file name: HIC11512.centrep
echo centrifuge classification output file name: HIC11512.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11512/fastq/HIC11512*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11512/fastq//HIC11512*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11512/fastq//HIC11512*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11512/fastq//HIC11512*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11512/fastq//HIC11512*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11512/fastq//HIC11512*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11512/fastq//HIC11512*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11512/fastq//HIC11512*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11512.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11512.centclass


#sort -t $'\t' -nk5 HIC11512.centrep | column -ts $'\t' > HIC11512_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11513 fastq files
echo centrifuge report file name: HIC11513.centrep
echo centrifuge classification output file name: HIC11513.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11513/fastq/HIC11513*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11513/fastq//HIC11513*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11513/fastq//HIC11513*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11513/fastq//HIC11513*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11513/fastq//HIC11513*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11513/fastq//HIC11513*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11513/fastq//HIC11513*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11513/fastq//HIC11513*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11513.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11513.centclass


#sort -t $'\t' -nk5 HIC11513.centrep | column -ts $'\t' > HIC11513_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11514 fastq files
echo centrifuge report file name: HIC11514.centrep
echo centrifuge classification output file name: HIC11514.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11514/fastq/HIC11514*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11514/fastq//HIC11514*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11514/fastq//HIC11514*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11514/fastq//HIC11514*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11514/fastq//HIC11514*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11514/fastq//HIC11514*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11514/fastq//HIC11514*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11514/fastq//HIC11514*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11514.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11514.centclass


#sort -t $'\t' -nk5 HIC11514.centrep | column -ts $'\t' > HIC11514_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11515 fastq files
echo centrifuge report file name: HIC11515.centrep
echo centrifuge classification output file name: HIC11515.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11515/fastq/HIC11515*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11515/fastq//HIC11515*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11515/fastq//HIC11515*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11515/fastq//HIC11515*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11515/fastq//HIC11515*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11515/fastq//HIC11515*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11515/fastq//HIC11515*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11515/fastq//HIC11515*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11515.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11515.centclass


#sort -t $'\t' -nk5 HIC11515.centrep | column -ts $'\t' > HIC11515_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test







echo centrifuge analysis of HIC11516 fastq files
echo centrifuge report file name: HIC11516.centrep
echo centrifuge classification output file name: HIC11516.centclass

less /home/jt/shared_b/git/voltron/hics/HIC11516/fastq/HIC11516*L001*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11516/fastq//HIC11516*L001*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L001_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11516/fastq//HIC11516*L002*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11516/fastq//HIC11516*L002*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L002_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11516/fastq//HIC11516*L003*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11516/fastq//HIC11516*L003*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L003_R2.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11516/fastq//HIC11516*L004*R1*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R1.fastq
less /home/jt/shared_b/git/voltron/hics/HIC11516/fastq//HIC11516*L004*R2*.fastq.gz > \
	        /home/jt/shared_b/git/voltron/results/L004_R2.fastq

CENTRIFUGE_INDEXES="/home/jt/shared_b/downloads/p+h+v/"  # this line should set the index, but doesn't seem to work,
cd /home/jt/shared_b/downloads/p+h+v/                    # so I'm using this line to run centrifuge from the folder with the index

centrifuge \
	-x p+h+v \
	-1 /home/jt/shared_b/git/voltron/results/L001_R1.fastq,/home/jt/shared_b/git/voltron/results/L002_R1.fastq,/home/jt/shared_b/git/voltron/results/L003_R1.fastq,/home/jt/shared_b/git/voltron/results/L004_R1.fastq \
	-2 /home/jt/shared_b/git/voltron/results/L001_R2.fastq,/home/jt/shared_b/git/voltron/results/L002_R2.fastq,/home/jt/shared_b/git/voltron/results/L003_R2.fastq,/home/jt/shared_b/git/voltron/results/L004_R2.fastq \
	--report-file /home/jt/shared_b/git/voltron/results/HIC11516.centrep \
	-S /home/jt/shared_b/git/voltron/results/HIC11516.centclass


#sort -t $'\t' -nk5 HIC11516.centrep | column -ts $'\t' > HIC11516_top10.txt # I think I need -r in sort to get the highest number on top,
                                                                             # and I want to append the top 10 to the first line with the column
                                                                             # headers, but I can't access voltron to test


date
