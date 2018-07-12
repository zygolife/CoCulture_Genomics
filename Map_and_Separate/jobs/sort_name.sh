#!/bin/bash
#SBATCH --nodes 1 --ntasks 4 --mem 16G --time 5:00:00  -p shared

module load samtools
samtools sort --threads 4 -n  -o unmapped.qsort.bam unmapped.both.bam
