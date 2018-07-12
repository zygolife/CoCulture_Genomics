#!/bin/bash
#SBATCH --ntasks 24 --time 16:00:00

bbmap.sh ref=genome/Umbsp_AD052_1.fasta in=input/12263.8.247499.GTGAAA.filter-METAGENOME.fastq.gz out=CHZCO.mapped.sam
