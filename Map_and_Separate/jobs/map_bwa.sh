#!/bin/bash
#SBATCH --time 8:00:00 --ntasks 24

bwa mem -p -t 24 genome/Umbsp_AD052_1.fasta input/12263.8.247499.GTGAAA.filter-METAGENOME.fastq.gz > CHZCO.bwa.sam
